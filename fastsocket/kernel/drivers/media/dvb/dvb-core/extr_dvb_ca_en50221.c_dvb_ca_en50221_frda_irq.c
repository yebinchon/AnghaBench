
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_ca_private {int open; TYPE_2__* slot_info; TYPE_1__* pub; } ;
struct dvb_ca_en50221 {struct dvb_ca_private* private; } ;
struct TYPE_4__ {int slot_state; int da_irq_supported; } ;
struct TYPE_3__ {int (* read_cam_control ) (struct dvb_ca_en50221*,int,int ) ;} ;


 int CTRLIF_STATUS ;


 int STATUSREG_DA ;
 int dprintk (char*,...) ;
 int dvb_ca_en50221_thread_wakeup (struct dvb_ca_private*) ;
 int stub1 (struct dvb_ca_en50221*,int,int ) ;

void dvb_ca_en50221_frda_irq(struct dvb_ca_en50221 *pubca, int slot)
{
 struct dvb_ca_private *ca = pubca->private;
 int flags;

 dprintk("FR/DA IRQ slot:%i\n", slot);

 switch (ca->slot_info[slot].slot_state) {
 case 129:
  flags = ca->pub->read_cam_control(pubca, slot, CTRLIF_STATUS);
  if (flags & STATUSREG_DA) {
   dprintk("CAM supports DA IRQ\n");
   ca->slot_info[slot].da_irq_supported = 1;
  }
  break;

 case 128:
  if (ca->open)
   dvb_ca_en50221_thread_wakeup(ca);
  break;
 }
}
