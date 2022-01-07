
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_ca_private {TYPE_1__* slot_info; } ;
struct dvb_ca_en50221 {struct dvb_ca_private* private; } ;
struct TYPE_2__ {scalar_t__ slot_state; } ;


 scalar_t__ DVB_CA_SLOTSTATE_VALIDATE ;
 scalar_t__ DVB_CA_SLOTSTATE_WAITREADY ;
 int dprintk (char*,int) ;
 int dvb_ca_en50221_thread_wakeup (struct dvb_ca_private*) ;

void dvb_ca_en50221_camready_irq(struct dvb_ca_en50221 *pubca, int slot)
{
 struct dvb_ca_private *ca = pubca->private;

 dprintk("CAMREADY IRQ slot:%i\n", slot);

 if (ca->slot_info[slot].slot_state == DVB_CA_SLOTSTATE_WAITREADY) {
  ca->slot_info[slot].slot_state = DVB_CA_SLOTSTATE_VALIDATE;
  dvb_ca_en50221_thread_wakeup(ca);
 }
}
