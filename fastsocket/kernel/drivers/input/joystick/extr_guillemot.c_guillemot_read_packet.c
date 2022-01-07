
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct gameport {int dummy; } ;


 int GUILLEMOT_MAX_LENGTH ;
 int GUILLEMOT_MAX_START ;
 int GUILLEMOT_MAX_STROBE ;
 unsigned char gameport_read (struct gameport*) ;
 unsigned int gameport_time (struct gameport*,int ) ;
 int gameport_trigger (struct gameport*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static int guillemot_read_packet(struct gameport *gameport, u8 *data)
{
 unsigned long flags;
 unsigned char u, v;
 unsigned int t, s;
 int i;

 for (i = 0; i < GUILLEMOT_MAX_LENGTH; i++)
  data[i] = 0;

 i = 0;
 t = gameport_time(gameport, GUILLEMOT_MAX_START);
 s = gameport_time(gameport, GUILLEMOT_MAX_STROBE);

 local_irq_save(flags);
 gameport_trigger(gameport);
 v = gameport_read(gameport);

 while (t > 0 && i < GUILLEMOT_MAX_LENGTH * 8) {
  t--;
  u = v; v = gameport_read(gameport);
  if (v & ~u & 0x10) {
   data[i >> 3] |= ((v >> 5) & 1) << (i & 7);
   i++;
   t = s;
  }
 }

 local_irq_restore(flags);

 return i;
}
