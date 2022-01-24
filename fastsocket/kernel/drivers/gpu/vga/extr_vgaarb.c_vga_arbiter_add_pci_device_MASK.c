#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16 ;
struct vga_device {int decodes; int owns; int locks; int /*<<< orphan*/  list; struct pci_dev* pdev; } ;
struct pci_dev {int class; struct pci_bus* bus; } ;
struct pci_bus {struct pci_bus* parent; struct pci_dev* self; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCI_BRIDGE_CONTROL ; 
 int PCI_BRIDGE_CTL_VGA ; 
 int PCI_CLASS_DISPLAY_VGA ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_IO ; 
 int PCI_COMMAND_MEMORY ; 
 int VGA_RSRC_LEGACY_IO ; 
 int VGA_RSRC_LEGACY_MASK ; 
 int VGA_RSRC_LEGACY_MEM ; 
 int VGA_RSRC_NORMAL_IO ; 
 int VGA_RSRC_NORMAL_MEM ; 
 int /*<<< orphan*/  FUNC1 (struct vga_device*) ; 
 struct vga_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vga_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct vga_device*) ; 
 int /*<<< orphan*/  vga_count ; 
 int /*<<< orphan*/  vga_decode_count ; 
 int /*<<< orphan*/ * vga_default ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  vga_list ; 
 int /*<<< orphan*/  vga_lock ; 
 int /*<<< orphan*/ * FUNC14 (struct pci_dev*) ; 

__attribute__((used)) static bool FUNC15(struct pci_dev *pdev)
{
	struct vga_device *vgadev;
	unsigned long flags;
	struct pci_bus *bus;
	struct pci_dev *bridge;
	u16 cmd;

	/* Only deal with VGA class devices */
	if ((pdev->class >> 8) != PCI_CLASS_DISPLAY_VGA)
		return false;

	/* Allocate structure */
	vgadev = FUNC2(sizeof(struct vga_device), GFP_KERNEL);
	if (vgadev == NULL) {
		FUNC8("vgaarb: failed to allocate pci device\n");
		/* What to do on allocation failure ? For now, let's
		 * just do nothing, I'm not sure there is anything saner
		 * to be done
		 */
		return false;
	}

	FUNC4(vgadev, 0, sizeof(*vgadev));

	/* Take lock & check for duplicates */
	FUNC10(&vga_lock, flags);
	if (FUNC14(pdev) != NULL) {
		FUNC0(1);
		goto fail;
	}
	vgadev->pdev = pdev;

	/* By default, assume we decode everything */
	vgadev->decodes = VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
			  VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;

	/* by default mark it as decoding */
	vga_decode_count++;
	/* Mark that we "own" resources based on our enables, we will
	 * clear that below if the bridge isn't forwarding
	 */
	FUNC7(pdev, PCI_COMMAND, &cmd);
	if (cmd & PCI_COMMAND_IO)
		vgadev->owns |= VGA_RSRC_LEGACY_IO;
	if (cmd & PCI_COMMAND_MEMORY)
		vgadev->owns |= VGA_RSRC_LEGACY_MEM;

	/* Check if VGA cycles can get down to us */
	bus = pdev->bus;
	while (bus) {
		bridge = bus->self;
		if (bridge) {
			u16 l;
			FUNC7(bridge, PCI_BRIDGE_CONTROL,
					     &l);
			if (!(l & PCI_BRIDGE_CTL_VGA)) {
				vgadev->owns = 0;
				break;
			}
		}
		bus = bus->parent;
	}

	/* Deal with VGA default device. Use first enabled one
	 * by default if arch doesn't have it's own hook
	 */
#ifndef __ARCH_HAS_VGA_DEFAULT_DEVICE
	if (vga_default == NULL &&
	    ((vgadev->owns & VGA_RSRC_LEGACY_MASK) == VGA_RSRC_LEGACY_MASK))
		vga_default = FUNC5(pdev);
#endif

	FUNC12(vgadev);

	/* Add to the list */
	FUNC3(&vgadev->list, &vga_list);
	vga_count++;
	FUNC9("vgaarb: device added: PCI:%s,decodes=%s,owns=%s,locks=%s\n",
		FUNC6(pdev),
		FUNC13(vgadev->decodes),
		FUNC13(vgadev->owns),
		FUNC13(vgadev->locks));

	FUNC11(&vga_lock, flags);
	return true;
fail:
	FUNC11(&vga_lock, flags);
	FUNC1(vgadev);
	return false;
}