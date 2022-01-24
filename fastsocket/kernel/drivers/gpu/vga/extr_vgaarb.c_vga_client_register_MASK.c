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
struct vga_device {void (* irq_set_state ) (void*,int) ;unsigned int (* set_vga_decode ) (void*,int) ;void* cookie; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  vga_lock ; 
 struct vga_device* FUNC2 (struct pci_dev*) ; 

int FUNC3(struct pci_dev *pdev, void *cookie,
			void (*irq_set_state)(void *cookie, bool state),
			unsigned int (*set_vga_decode)(void *cookie, bool decode))
{
	int ret = -ENODEV;
	struct vga_device *vgadev;
	unsigned long flags;

	FUNC0(&vga_lock, flags);
	vgadev = FUNC2(pdev);
	if (!vgadev)
		goto bail;

	vgadev->irq_set_state = irq_set_state;
	vgadev->set_vga_decode = set_vga_decode;
	vgadev->cookie = cookie;
	ret = 0;

bail:
	FUNC1(&vga_lock, flags);
	return ret;

}