#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pci_pbm_info {int /*<<< orphan*/  numa_node; int /*<<< orphan*/  stc; int /*<<< orphan*/  iommu; } ;
struct dev_archdata {struct of_device* op; int /*<<< orphan*/  numa_node; int /*<<< orphan*/ * stc; int /*<<< orphan*/  iommu; struct device_node* prom_node; struct pci_pbm_info* host_controller; } ;
struct TYPE_4__ {int /*<<< orphan*/ * bus; int /*<<< orphan*/  parent; struct dev_archdata archdata; } ;
struct pci_dev {int devfn; int class; int revision; int current_state; int irq; int /*<<< orphan*/  rom_base_reg; int /*<<< orphan*/  hdr_type; int /*<<< orphan*/  error_state; struct pci_bus* bus; TYPE_2__ dev; int /*<<< orphan*/  cfg_size; void* subsystem_device; void* subsystem_vendor; void* device; void* vendor; scalar_t__ multifunction; struct device_node* sysdata; } ;
struct pci_bus {int /*<<< orphan*/  number; int /*<<< orphan*/  bridge; } ;
struct TYPE_3__ {struct dev_archdata archdata; } ;
struct of_device {int* irqs; TYPE_1__ dev; } ;
struct device_node {char const* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CLASS_REVISION ; 
 int PCI_CLASS_STORAGE_IDE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCI_HEADER_TYPE_BRIDGE ; 
 int /*<<< orphan*/  PCI_HEADER_TYPE_CARDBUS ; 
 int /*<<< orphan*/  PCI_HEADER_TYPE_NORMAL ; 
 int PCI_IRQ_NONE ; 
 int /*<<< orphan*/  PCI_ROM_ADDRESS ; 
 int /*<<< orphan*/  PCI_ROM_ADDRESS1 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct pci_dev* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct of_device* FUNC4 (struct device_node*) ; 
 char* FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct device_node*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct of_device*) ; 
 scalar_t__ ofpci_verbose ; 
 int /*<<< orphan*/  pci_bus_type ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  pci_channel_io_normal ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct of_device*,struct device_node*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char const*,char*) ; 

__attribute__((used)) static struct pci_dev *FUNC17(struct pci_pbm_info *pbm,
					 struct device_node *node,
					 struct pci_bus *bus, int devfn)
{
	struct dev_archdata *sd;
	struct of_device *op;
	struct pci_dev *dev;
	const char *type;
	u32 class;

	dev = FUNC2();
	if (!dev)
		return NULL;

	sd = &dev->dev.archdata;
	sd->iommu = pbm->iommu;
	sd->stc = &pbm->stc;
	sd->host_controller = pbm;
	sd->prom_node = node;
	sd->op = op = FUNC4(node);
	sd->numa_node = pbm->numa_node;

	sd = &op->dev.archdata;
	sd->iommu = pbm->iommu;
	sd->stc = &pbm->stc;
	sd->numa_node = pbm->numa_node;

	if (!FUNC16(node->name, "ebus"))
		FUNC7(op);

	type = FUNC5(node, "device_type", NULL);
	if (type == NULL)
		type = "";

	if (ofpci_verbose)
		FUNC15("    create device, devfn: %x, type: %s\n",
		       devfn, type);

	dev->bus = bus;
	dev->sysdata = node;
	dev->dev.parent = bus->bridge;
	dev->dev.bus = &pci_bus_type;
	dev->devfn = devfn;
	dev->multifunction = 0;		/* maybe a lie? */

	dev->vendor = FUNC6(node, "vendor-id", 0xffff);
	dev->device = FUNC6(node, "device-id", 0xffff);
	dev->subsystem_vendor =
		FUNC6(node, "subsystem-vendor-id", 0);
	dev->subsystem_device =
		FUNC6(node, "subsystem-id", 0);

	dev->cfg_size = FUNC8(dev);

	/* We can't actually use the firmware value, we have
	 * to read what is in the register right now.  One
	 * reason is that in the case of IDE interfaces the
	 * firmware can sample the value before the the IDE
	 * interface is programmed into native mode.
	 */
	FUNC13(dev, PCI_CLASS_REVISION, &class);
	dev->class = class >> 8;
	dev->revision = class & 0xff;

	FUNC3(&dev->dev, "%04x:%02x:%02x.%d", FUNC10(bus),
		dev->bus->number, FUNC1(devfn), FUNC0(devfn));

	if (ofpci_verbose)
		FUNC15("    class: 0x%x device name: %s\n",
		       dev->class, FUNC11(dev));

	/* I have seen IDE devices which will not respond to
	 * the bmdma simplex check reads if bus mastering is
	 * disabled.
	 */
	if ((dev->class >> 8) == PCI_CLASS_STORAGE_IDE)
		FUNC14(dev);

	dev->current_state = 4;		/* unknown power state */
	dev->error_state = pci_channel_io_normal;

	if (!FUNC16(node->name, "pci")) {
		/* a PCI-PCI bridge */
		dev->hdr_type = PCI_HEADER_TYPE_BRIDGE;
		dev->rom_base_reg = PCI_ROM_ADDRESS1;
	} else if (!FUNC16(type, "cardbus")) {
		dev->hdr_type = PCI_HEADER_TYPE_CARDBUS;
	} else {
		dev->hdr_type = PCI_HEADER_TYPE_NORMAL;
		dev->rom_base_reg = PCI_ROM_ADDRESS;

		dev->irq = sd->op->irqs[0];
		if (dev->irq == 0xffffffff)
			dev->irq = PCI_IRQ_NONE;
	}

	FUNC12(sd->op, node, dev);

	if (ofpci_verbose)
		FUNC15("    adding to system ...\n");

	FUNC9(dev, bus);

	return dev;
}