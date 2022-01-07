
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_ca_private {int slot_count; int flags; int delay; TYPE_1__* slot_info; int open; } ;
struct TYPE_2__ {int slot_state; int da_irq_supported; } ;


 int DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE ;
 int DVB_CA_EN50221_FLAG_IRQ_DA ;
 int HZ ;

__attribute__((used)) static void dvb_ca_en50221_thread_update_delay(struct dvb_ca_private *ca)
{
 int delay;
 int curdelay = 100000000;
 int slot;




 for (slot = 0; slot < ca->slot_count; slot++) {
  switch (ca->slot_info[slot].slot_state) {
  default:
  case 133:
   delay = HZ * 60;
   if (!(ca->flags & DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE))
    delay = HZ * 5;
   break;
  case 135:
   delay = HZ * 60;
   if (!(ca->flags & DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE))
    delay = HZ / 10;
   break;

  case 131:
  case 128:
  case 130:
  case 129:
  case 134:
   delay = HZ / 10;
   break;

  case 132:
   delay = HZ * 60;
   if (!(ca->flags & DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE))
    delay = HZ / 10;
   if (ca->open) {
    if ((!ca->slot_info[slot].da_irq_supported) ||
        (!(ca->flags & DVB_CA_EN50221_FLAG_IRQ_DA)))
     delay = HZ / 10;
   }
   break;
  }

  if (delay < curdelay)
   curdelay = delay;
 }

 ca->delay = curdelay;
}
