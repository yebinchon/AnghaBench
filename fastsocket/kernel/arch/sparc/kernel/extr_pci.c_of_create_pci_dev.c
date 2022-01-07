
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_pbm_info {int numa_node; int stc; int iommu; } ;
struct dev_archdata {struct of_device* op; int numa_node; int * stc; int iommu; struct device_node* prom_node; struct pci_pbm_info* host_controller; } ;
struct TYPE_4__ {int * bus; int parent; struct dev_archdata archdata; } ;
struct pci_dev {int devfn; int class; int revision; int current_state; int irq; int rom_base_reg; int hdr_type; int error_state; struct pci_bus* bus; TYPE_2__ dev; int cfg_size; void* subsystem_device; void* subsystem_vendor; void* device; void* vendor; scalar_t__ multifunction; struct device_node* sysdata; } ;
struct pci_bus {int number; int bridge; } ;
struct TYPE_3__ {struct dev_archdata archdata; } ;
struct of_device {int* irqs; TYPE_1__ dev; } ;
struct device_node {char const* name; } ;


 int PCI_CLASS_REVISION ;
 int PCI_CLASS_STORAGE_IDE ;
 int PCI_FUNC (int) ;
 int PCI_HEADER_TYPE_BRIDGE ;
 int PCI_HEADER_TYPE_CARDBUS ;
 int PCI_HEADER_TYPE_NORMAL ;
 int PCI_IRQ_NONE ;
 int PCI_ROM_ADDRESS ;
 int PCI_ROM_ADDRESS1 ;
 int PCI_SLOT (int) ;
 struct pci_dev* alloc_pci_dev () ;
 int dev_set_name (TYPE_2__*,char*,int ,int ,int ,int ) ;
 struct of_device* of_find_device_by_node (struct device_node*) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 void* of_getintprop_default (struct device_node*,char*,int) ;
 int of_propagate_archdata (struct of_device*) ;
 scalar_t__ ofpci_verbose ;
 int pci_bus_type ;
 int pci_cfg_space_size (struct pci_dev*) ;
 int pci_channel_io_normal ;
 int pci_device_add (struct pci_dev*,struct pci_bus*) ;
 int pci_domain_nr (struct pci_bus*) ;
 int pci_name (struct pci_dev*) ;
 int pci_parse_of_addrs (struct of_device*,struct device_node*,struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_set_master (struct pci_dev*) ;
 int printk (char*,...) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static struct pci_dev *of_create_pci_dev(struct pci_pbm_info *pbm,
      struct device_node *node,
      struct pci_bus *bus, int devfn)
{
 struct dev_archdata *sd;
 struct of_device *op;
 struct pci_dev *dev;
 const char *type;
 u32 class;

 dev = alloc_pci_dev();
 if (!dev)
  return ((void*)0);

 sd = &dev->dev.archdata;
 sd->iommu = pbm->iommu;
 sd->stc = &pbm->stc;
 sd->host_controller = pbm;
 sd->prom_node = node;
 sd->op = op = of_find_device_by_node(node);
 sd->numa_node = pbm->numa_node;

 sd = &op->dev.archdata;
 sd->iommu = pbm->iommu;
 sd->stc = &pbm->stc;
 sd->numa_node = pbm->numa_node;

 if (!strcmp(node->name, "ebus"))
  of_propagate_archdata(op);

 type = of_get_property(node, "device_type", ((void*)0));
 if (type == ((void*)0))
  type = "";

 if (ofpci_verbose)
  printk("    create device, devfn: %x, type: %s\n",
         devfn, type);

 dev->bus = bus;
 dev->sysdata = node;
 dev->dev.parent = bus->bridge;
 dev->dev.bus = &pci_bus_type;
 dev->devfn = devfn;
 dev->multifunction = 0;

 dev->vendor = of_getintprop_default(node, "vendor-id", 0xffff);
 dev->device = of_getintprop_default(node, "device-id", 0xffff);
 dev->subsystem_vendor =
  of_getintprop_default(node, "subsystem-vendor-id", 0);
 dev->subsystem_device =
  of_getintprop_default(node, "subsystem-id", 0);

 dev->cfg_size = pci_cfg_space_size(dev);







 pci_read_config_dword(dev, PCI_CLASS_REVISION, &class);
 dev->class = class >> 8;
 dev->revision = class & 0xff;

 dev_set_name(&dev->dev, "%04x:%02x:%02x.%d", pci_domain_nr(bus),
  dev->bus->number, PCI_SLOT(devfn), PCI_FUNC(devfn));

 if (ofpci_verbose)
  printk("    class: 0x%x device name: %s\n",
         dev->class, pci_name(dev));





 if ((dev->class >> 8) == PCI_CLASS_STORAGE_IDE)
  pci_set_master(dev);

 dev->current_state = 4;
 dev->error_state = pci_channel_io_normal;

 if (!strcmp(node->name, "pci")) {

  dev->hdr_type = PCI_HEADER_TYPE_BRIDGE;
  dev->rom_base_reg = PCI_ROM_ADDRESS1;
 } else if (!strcmp(type, "cardbus")) {
  dev->hdr_type = PCI_HEADER_TYPE_CARDBUS;
 } else {
  dev->hdr_type = PCI_HEADER_TYPE_NORMAL;
  dev->rom_base_reg = PCI_ROM_ADDRESS;

  dev->irq = sd->op->irqs[0];
  if (dev->irq == 0xffffffff)
   dev->irq = PCI_IRQ_NONE;
 }

 pci_parse_of_addrs(sd->op, node, dev);

 if (ofpci_verbose)
  printk("    adding to system ...\n");

 pci_device_add(dev, bus);

 return dev;
}
