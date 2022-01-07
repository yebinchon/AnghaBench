
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_device {int dummy; } ;
struct TYPE_7__ {int dma_handle; int * cpu_addr; } ;
struct TYPE_6__ {int dma_handle; int * cpu_addr; } ;
struct TYPE_5__ {int dma_handle; int * cpu_addr; } ;
struct saa7146_dev {int item; int mem; TYPE_4__* ext; TYPE_3__ d_rps0; TYPE_2__ d_rps1; TYPE_1__ d_i2c; } ;
struct pci_dev {int irq; } ;
typedef int dma_addr_t ;
struct TYPE_8__ {int (* detach ) (struct saa7146_dev*) ;} ;


 int DEB_EE (char*) ;
 int IER ;
 int MC1 ;
 int SAA7146_RPS_MEM ;
 int free_irq (int ,struct saa7146_dev*) ;
 int iounmap (int ) ;
 int kfree (struct saa7146_dev*) ;
 int list_del (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_consistent (struct pci_dev*,int ,void*,int ) ;
 struct v4l2_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_region (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int saa7146_num ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;
 int stub1 (struct saa7146_dev*) ;
 struct saa7146_dev* to_saa7146_dev (struct v4l2_device*) ;

__attribute__((used)) static void saa7146_remove_one(struct pci_dev *pdev)
{
 struct v4l2_device *v4l2_dev = pci_get_drvdata(pdev);
 struct saa7146_dev *dev = to_saa7146_dev(v4l2_dev);
 struct {
  void *addr;
  dma_addr_t dma;
 } dev_map[] = {
  { dev->d_i2c.cpu_addr, dev->d_i2c.dma_handle },
  { dev->d_rps1.cpu_addr, dev->d_rps1.dma_handle },
  { dev->d_rps0.cpu_addr, dev->d_rps0.dma_handle },
  { ((void*)0), 0 }
 }, *p;

 DEB_EE(("dev:%p\n",dev));

 dev->ext->detach(dev);

 pci_set_drvdata(pdev, ((void*)0));


 saa7146_write(dev, MC1, 0x00ff0000);


 saa7146_write(dev, IER, 0);

 free_irq(pdev->irq, dev);

 for (p = dev_map; p->addr; p++)
  pci_free_consistent(pdev, SAA7146_RPS_MEM, p->addr, p->dma);

 iounmap(dev->mem);
 pci_release_region(pdev, 0);
 list_del(&dev->item);
 pci_disable_device(pdev);
 kfree(dev);

 saa7146_num--;
}
