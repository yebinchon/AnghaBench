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
struct vga_device {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vga_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pci_dev* FUNC3 () ; 
 int /*<<< orphan*/  vga_lock ; 
 struct vga_device* FUNC4 (struct pci_dev*) ; 

void FUNC5(struct pci_dev *pdev, unsigned int rsrc)
{
	struct vga_device *vgadev;
	unsigned long flags;

	/* The one who calls us should check for this, but lets be sure... */
	if (pdev == NULL)
		pdev = FUNC3();
	if (pdev == NULL)
		return;
	FUNC1(&vga_lock, flags);
	vgadev = FUNC4(pdev);
	if (vgadev == NULL)
		goto bail;
	FUNC0(vgadev, rsrc);
bail:
	FUNC2(&vga_lock, flags);
}