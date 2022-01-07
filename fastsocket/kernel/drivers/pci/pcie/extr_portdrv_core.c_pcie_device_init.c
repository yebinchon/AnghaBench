
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * parent; int release; int * bus; } ;
struct pcie_device {int irq; int service; struct device device; struct pci_dev* port; } ;
struct pci_dev {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_name (struct device*,char*,int ,int ) ;
 int device_register (struct device*) ;
 int get_descriptor_id (int ,int) ;
 int get_device (struct device*) ;
 int kfree (struct pcie_device*) ;
 struct pcie_device* kzalloc (int,int ) ;
 int pci_name (struct pci_dev*) ;
 int pci_pcie_type (struct pci_dev*) ;
 int pcie_port_bus_type ;
 int release_pcie_device ;

__attribute__((used)) static int pcie_device_init(struct pci_dev *pdev, int service, int irq)
{
 int retval;
 struct pcie_device *pcie;
 struct device *device;

 pcie = kzalloc(sizeof(*pcie), GFP_KERNEL);
 if (!pcie)
  return -ENOMEM;
 pcie->port = pdev;
 pcie->irq = irq;
 pcie->service = service;


 device = &pcie->device;
 device->bus = &pcie_port_bus_type;
 device->release = release_pcie_device;
 dev_set_name(device, "%s:pcie%02x",
       pci_name(pdev),
       get_descriptor_id(pci_pcie_type(pdev), service));
 device->parent = &pdev->dev;

 retval = device_register(device);
 if (retval)
  kfree(pcie);
 else
  get_device(device);
 return retval;
}
