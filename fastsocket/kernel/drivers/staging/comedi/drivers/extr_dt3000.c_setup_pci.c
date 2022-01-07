
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
typedef scalar_t__ resource_size_t ;
struct TYPE_2__ {int io_addr; scalar_t__ phys_addr; int pci_dev; } ;


 int DT3000_SIZE ;
 int ENOMEM ;
 int comedi_pci_enable (int ,char*) ;
 TYPE_1__* devpriv ;
 int ioremap (scalar_t__,int ) ;
 scalar_t__ pci_resource_start (int ,int ) ;
 int printk (char*,unsigned long long,int ) ;

__attribute__((used)) static int setup_pci(struct comedi_device *dev)
{
 resource_size_t addr;
 int ret;

 ret = comedi_pci_enable(devpriv->pci_dev, "dt3000");
 if (ret < 0)
  return ret;

 addr = pci_resource_start(devpriv->pci_dev, 0);
 devpriv->phys_addr = addr;
 devpriv->io_addr = ioremap(devpriv->phys_addr, DT3000_SIZE);
 if (!devpriv->io_addr)
  return -ENOMEM;





 return 0;
}
