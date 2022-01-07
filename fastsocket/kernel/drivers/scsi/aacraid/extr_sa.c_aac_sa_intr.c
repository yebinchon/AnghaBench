
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct aac_dev {TYPE_1__* queues; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int PRISETIRQMASK; } ;
struct TYPE_3__ {int * queue; } ;


 unsigned short DOORBELL_1 ;
 unsigned short DOORBELL_2 ;
 unsigned short DOORBELL_3 ;
 unsigned short DOORBELL_4 ;
 int DoorbellClrReg_p ;
 int DoorbellReg_p ;
 int DoorbellReg_s ;
 size_t HostNormCmdQueue ;
 size_t HostNormRespQueue ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int Mailbox5 ;
 unsigned short PrintfDone ;
 unsigned short PrintfReady ;
 TYPE_2__ SaDbCSR ;
 int aac_command_normal (int *) ;
 int aac_printf (struct aac_dev*,int ) ;
 int aac_response_normal (int *) ;
 int sa_readl (struct aac_dev*,int ) ;
 unsigned short sa_readw (struct aac_dev*,int ) ;
 int sa_writew (struct aac_dev*,int ,unsigned short) ;

__attribute__((used)) static irqreturn_t aac_sa_intr(int irq, void *dev_id)
{
 struct aac_dev *dev = dev_id;
 unsigned short intstat, mask;

 intstat = sa_readw(dev, DoorbellReg_p);




 mask = ~(sa_readw(dev, SaDbCSR.PRISETIRQMASK));



 if (intstat & mask) {
  if (intstat & PrintfReady) {
   aac_printf(dev, sa_readl(dev, Mailbox5));
   sa_writew(dev, DoorbellClrReg_p, PrintfReady);
   sa_writew(dev, DoorbellReg_s, PrintfDone);
  } else if (intstat & DOORBELL_1) {
   sa_writew(dev, DoorbellClrReg_p, DOORBELL_1);
   aac_command_normal(&dev->queues->queue[HostNormCmdQueue]);
  } else if (intstat & DOORBELL_2) {
   sa_writew(dev, DoorbellClrReg_p, DOORBELL_2);
   aac_response_normal(&dev->queues->queue[HostNormRespQueue]);
  } else if (intstat & DOORBELL_3) {
   sa_writew(dev, DoorbellClrReg_p, DOORBELL_3);
  } else if (intstat & DOORBELL_4) {
   sa_writew(dev, DoorbellClrReg_p, DOORBELL_4);
  }
  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}
