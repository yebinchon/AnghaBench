
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long u8 ;
struct aac_dev {unsigned long OIMR; TYPE_2__* queues; TYPE_1__* IndexRegs; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int ODR; int OISR; } ;
struct TYPE_5__ {int * queue; } ;
struct TYPE_4__ {int * Mailbox; } ;


 unsigned long DoorBellAdapterNormCmdNotFull ;
 unsigned long DoorBellAdapterNormCmdReady ;
 unsigned long DoorBellAdapterNormRespNotFull ;
 unsigned long DoorBellAdapterNormRespReady ;
 unsigned long DoorBellPrintfDone ;
 unsigned long DoorBellPrintfReady ;
 size_t HostNormCmdQueue ;
 size_t HostNormRespQueue ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int InboundDoorbellReg ;
 TYPE_3__ MUnit ;
 int OutboundDoorbellReg ;
 int aac_command_normal (int *) ;
 int aac_printf (struct aac_dev*,int ) ;
 int aac_response_normal (int *) ;
 scalar_t__ likely (unsigned long) ;
 int readl (int *) ;
 unsigned long rx_readb (struct aac_dev*,int ) ;
 unsigned long rx_readl (struct aac_dev*,int ) ;
 int rx_writel (struct aac_dev*,int ,unsigned long) ;
 scalar_t__ unlikely (unsigned long) ;

__attribute__((used)) static irqreturn_t aac_rx_intr_producer(int irq, void *dev_id)
{
 struct aac_dev *dev = dev_id;
 unsigned long bellbits;
 u8 intstat = rx_readb(dev, MUnit.OISR);







 if (likely(intstat & ~(dev->OIMR))) {
  bellbits = rx_readl(dev, OutboundDoorbellReg);
  if (unlikely(bellbits & DoorBellPrintfReady)) {
   aac_printf(dev, readl (&dev->IndexRegs->Mailbox[5]));
   rx_writel(dev, MUnit.ODR,DoorBellPrintfReady);
   rx_writel(dev, InboundDoorbellReg,DoorBellPrintfDone);
  }
  else if (unlikely(bellbits & DoorBellAdapterNormCmdReady)) {
   rx_writel(dev, MUnit.ODR, DoorBellAdapterNormCmdReady);
   aac_command_normal(&dev->queues->queue[HostNormCmdQueue]);
  }
  else if (likely(bellbits & DoorBellAdapterNormRespReady)) {
   rx_writel(dev, MUnit.ODR,DoorBellAdapterNormRespReady);
   aac_response_normal(&dev->queues->queue[HostNormRespQueue]);
  }
  else if (unlikely(bellbits & DoorBellAdapterNormCmdNotFull)) {
   rx_writel(dev, MUnit.ODR, DoorBellAdapterNormCmdNotFull);
  }
  else if (unlikely(bellbits & DoorBellAdapterNormRespNotFull)) {
   rx_writel(dev, MUnit.ODR, DoorBellAdapterNormCmdNotFull);
   rx_writel(dev, MUnit.ODR, DoorBellAdapterNormRespNotFull);
  }
  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}
