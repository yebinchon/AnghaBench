
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct plx_dma_desc {int dummy; } ;
struct comedi_device {int minor; scalar_t__ irq; } ;
struct TYPE_2__ {long intCount; int fifoLen; scalar_t__ pci_dev; scalar_t__ got_regions; scalar_t__ lcfg; scalar_t__ las1; scalar_t__ las0; int * dma0Chain; int dma0ChainPhysAddr; int ** dma0Buff; int * dma0BuffPhysAddr; } ;


 int DMA_CHAIN_COUNT ;
 int DPRINTK (char*,int,int,...) ;
 int ICS_DMA0_E ;
 int ICS_DMA1_E ;
 int ICS_PIE ;
 int ICS_PLIE ;
 int RtdDma0Control (struct comedi_device*,int ) ;
 int RtdDma1Control (struct comedi_device*,int ) ;
 int RtdFifoStatus (struct comedi_device*) ;
 int RtdInterruptClear (struct comedi_device*) ;
 int RtdInterruptClearMask (struct comedi_device*,int ) ;
 int RtdInterruptMask (struct comedi_device*,int ) ;
 int RtdInterruptOverrunStatus (struct comedi_device*) ;
 int RtdInterruptStatus (struct comedi_device*) ;
 int RtdPlxInterruptRead (struct comedi_device*) ;
 int RtdPlxInterruptWrite (struct comedi_device*,int) ;
 int RtdResetBoard (struct comedi_device*) ;
 int comedi_pci_disable (scalar_t__) ;
 TYPE_1__* devpriv ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int iounmap (scalar_t__) ;
 int pci_dev_put (scalar_t__) ;
 int pci_free_consistent (scalar_t__,int,int *,int ) ;
 int printk (char*,int ) ;

__attribute__((used)) static int rtd_detach(struct comedi_device *dev)
{




 DPRINTK("comedi%d: rtd520: removing (%ld ints)\n",
  dev->minor, (devpriv ? devpriv->intCount : 0L));
 if (devpriv && devpriv->lcfg) {
  DPRINTK
      ("(int status 0x%x, overrun status 0x%x, fifo status 0x%x)...\n",
       0xffff & RtdInterruptStatus(dev),
       0xffff & RtdInterruptOverrunStatus(dev),
       (0xffff & RtdFifoStatus(dev)) ^ 0x6666);
 }

 if (devpriv) {
  if (devpriv->las0) {
   RtdResetBoard(dev);
   RtdInterruptMask(dev, 0);
   RtdInterruptClearMask(dev, ~0);
   RtdInterruptClear(dev);
  }
  if (dev->irq) {

   RtdPlxInterruptWrite(dev, RtdPlxInterruptRead(dev)
          & ~(ICS_PLIE | ICS_DMA0_E |
       ICS_DMA1_E));
   free_irq(dev->irq, dev);
  }


  if (devpriv->las0) {
   iounmap(devpriv->las0);
  }
  if (devpriv->las1) {
   iounmap(devpriv->las1);
  }
  if (devpriv->lcfg) {
   iounmap(devpriv->lcfg);
  }
  if (devpriv->pci_dev) {
   if (devpriv->got_regions) {
    comedi_pci_disable(devpriv->pci_dev);
   }
   pci_dev_put(devpriv->pci_dev);
  }
 }

 printk("comedi%d: rtd520: removed.\n", dev->minor);

 return 0;
}
