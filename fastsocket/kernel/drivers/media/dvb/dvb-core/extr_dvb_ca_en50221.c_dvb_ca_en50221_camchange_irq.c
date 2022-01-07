
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_ca_private {TYPE_1__* slot_info; } ;
struct dvb_ca_en50221 {struct dvb_ca_private* private; } ;
struct TYPE_2__ {int camchange_type; int camchange_count; } ;




 int atomic_inc (int *) ;
 int dprintk (char*,int,int) ;
 int dvb_ca_en50221_thread_wakeup (struct dvb_ca_private*) ;

void dvb_ca_en50221_camchange_irq(struct dvb_ca_en50221 *pubca, int slot, int change_type)
{
 struct dvb_ca_private *ca = pubca->private;

 dprintk("CAMCHANGE IRQ slot:%i change_type:%i\n", slot, change_type);

 switch (change_type) {
 case 128:
 case 129:
  break;

 default:
  return;
 }

 ca->slot_info[slot].camchange_type = change_type;
 atomic_inc(&ca->slot_info[slot].camchange_count);
 dvb_ca_en50221_thread_wakeup(ca);
}
