
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {int dummy; } ;


 int A3D_MAX_START ;
 int A3D_MAX_STROBE ;
 unsigned char gameport_read (struct gameport*) ;
 unsigned int gameport_time (struct gameport*,int ) ;
 int gameport_trigger (struct gameport*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static int a3d_read_packet(struct gameport *gameport, int length, char *data)
{
 unsigned long flags;
 unsigned char u, v;
 unsigned int t, s;
 int i;

 i = 0;
 t = gameport_time(gameport, A3D_MAX_START);
 s = gameport_time(gameport, A3D_MAX_STROBE);

 local_irq_save(flags);
 gameport_trigger(gameport);
 v = gameport_read(gameport);

 while (t > 0 && i < length) {
  t--;
  u = v; v = gameport_read(gameport);
  if (~v & u & 0x10) {
   data[i++] = v >> 5;
   t = s;
  }
 }

 local_irq_restore(flags);

 return i;
}
