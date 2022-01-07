
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {scalar_t__ vendor; scalar_t__ device; int devfn; TYPE_1__* bus; } ;
struct das08_private_struct {int dummy; } ;
struct comedi_device {int minor; } ;
struct comedi_devconfig {unsigned long* options; } ;
struct TYPE_6__ {unsigned long pci_iobase; struct pci_dev* pdev; } ;
struct TYPE_5__ {scalar_t__ bustype; } ;
struct TYPE_4__ {unsigned long number; } ;


 scalar_t__ CNTRL ;
 int CNTRL_DIR ;
 int CNTRL_INTR ;
 int DRV_NAME ;
 int EINVAL ;
 int EIO ;
 scalar_t__ INTCSR ;
 int INTR1_ENABLE ;
 int PCI_ANY_ID ;
 scalar_t__ PCI_DEVICE_ID_PCIDAS08 ;
 int PCI_INTR_ENABLE ;
 unsigned long PCI_SLOT (int ) ;
 scalar_t__ PCI_VENDOR_ID_COMPUTERBOARDS ;
 int alloc_private (struct comedi_device*,int) ;
 scalar_t__ comedi_pci_enable (struct pci_dev*,int ) ;
 int das08_common_attach (struct comedi_device*,unsigned long) ;
 TYPE_3__* devpriv ;
 int outb (int,scalar_t__) ;
 int outw (int,scalar_t__) ;
 scalar_t__ pci ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 unsigned long pci_resource_start (struct pci_dev*,int) ;
 int printk (char*,...) ;
 TYPE_2__* thisboard ;

__attribute__((used)) static int das08_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 int ret;
 unsigned long iobase;





 ret = alloc_private(dev, sizeof(struct das08_private_struct));
 if (ret < 0)
  return ret;

 printk("comedi%d: das08: ", dev->minor);

 if (thisboard->bustype == pci) {
  printk("this driver has not been built with PCI support.\n");
  return -EINVAL;

 } else {
  iobase = it->options[0];
 }
 printk("\n");

 return das08_common_attach(dev, iobase);
}
