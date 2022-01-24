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
struct vga_device {int decodes; int /*<<< orphan*/  list; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int VGA_RSRC_LEGACY_IO ; 
 int VGA_RSRC_LEGACY_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct vga_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  vga_count ; 
 int /*<<< orphan*/  vga_decode_count ; 
 struct pci_dev* vga_default ; 
 int /*<<< orphan*/  vga_lock ; 
 int /*<<< orphan*/  vga_wait_queue ; 
 struct vga_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC8(struct pci_dev *pdev)
{
	struct vga_device *vgadev;
	unsigned long flags;
	bool ret = true;

	FUNC3(&vga_lock, flags);
	vgadev = FUNC6(pdev);
	if (vgadev == NULL) {
		ret = false;
		goto bail;
	}

#ifndef __ARCH_HAS_VGA_DEFAULT_DEVICE
	if (vga_default == pdev) {
		FUNC2(vga_default);
		vga_default = NULL;
	}
#endif

	if (vgadev->decodes & (VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM))
		vga_decode_count--;

	/* Remove entry from list */
	FUNC1(&vgadev->list);
	vga_count--;
	/* Notify userland driver that the device is gone so it discards
	 * it's copies of the pci_dev pointer
	 */
	FUNC5(pdev);

	/* Wake up all possible waiters */
	FUNC7(&vga_wait_queue);
bail:
	FUNC4(&vga_lock, flags);
	FUNC0(vgadev);
	return ret;
}