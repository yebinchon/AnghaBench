
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {int dummy; } ;
struct adi_port {struct gameport* gameport; struct adi* adi; } ;
struct adi {int ret; unsigned char* data; } ;


 int ADI_MAX_LENGTH ;
 int ADI_MAX_START ;
 int ADI_MAX_STROBE ;
 unsigned char gameport_read (struct gameport*) ;
 int gameport_time (struct gameport*,int ) ;
 int gameport_trigger (struct gameport*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void adi_read_packet(struct adi_port *port)
{
 struct adi *adi = port->adi;
 struct gameport *gameport = port->gameport;
 unsigned char u, v, w, x, z;
 int t[2], s[2], i;
 unsigned long flags;

 for (i = 0; i < 2; i++) {
  adi[i].ret = -1;
  t[i] = gameport_time(gameport, ADI_MAX_START);
  s[i] = 0;
 }

 local_irq_save(flags);

 gameport_trigger(gameport);
 v = z = gameport_read(gameport);

 do {
  u = v;
  w = u ^ (v = x = gameport_read(gameport));
  for (i = 0; i < 2; i++, w >>= 2, x >>= 2) {
   t[i]--;
   if ((w & 0x30) && s[i]) {
    if ((w & 0x30) < 0x30 && adi[i].ret < ADI_MAX_LENGTH && t[i] > 0) {
     adi[i].data[++adi[i].ret] = w;
     t[i] = gameport_time(gameport, ADI_MAX_STROBE);
    } else t[i] = 0;
   } else if (!(x & 0x30)) s[i] = 1;
  }
 } while (t[0] > 0 || t[1] > 0);

 local_irq_restore(flags);

 return;
}
