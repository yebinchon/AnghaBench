
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int stopper; } ;
struct cx8802_dev {TYPE_1__ mpegq; TYPE_2__* pci; } ;
struct TYPE_6__ {int irq; } ;


 int btcx_riscmem_free (TYPE_2__*,int *) ;
 int cx8802_stop_dma (struct cx8802_dev*) ;
 int dprintk (int,char*) ;
 int free_irq (int ,struct cx8802_dev*) ;
 int pci_disable_device (TYPE_2__*) ;
 int pci_set_drvdata (TYPE_2__*,int *) ;

__attribute__((used)) static void cx8802_fini_common(struct cx8802_dev *dev)
{
 dprintk( 2, "cx8802_fini_common\n" );
 cx8802_stop_dma(dev);
 pci_disable_device(dev->pci);


 free_irq(dev->pci->irq, dev);
 pci_set_drvdata(dev->pci, ((void*)0));


 btcx_riscmem_free(dev->pci,&dev->mpegq.stopper);
}
