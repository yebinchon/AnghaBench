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
struct vga_switcheroo_client_ops {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pci_dev*,struct vga_switcheroo_client_ops const*,int,int) ; 
 struct pci_dev* FUNC1 () ; 

int FUNC2(struct pci_dev *pdev,
				   const struct vga_switcheroo_client_ops *ops)
{
	return FUNC0(pdev, ops, -1,
			       pdev == FUNC1());
}