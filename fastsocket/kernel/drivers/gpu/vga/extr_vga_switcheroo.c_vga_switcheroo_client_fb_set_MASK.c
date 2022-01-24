#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vga_switcheroo_client {struct fb_info* fb_info; } ;
struct pci_dev {int dummy; } ;
struct fb_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  clients; } ;

/* Variables and functions */
 struct vga_switcheroo_client* FUNC0 (int /*<<< orphan*/ *,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vgasr_mutex ; 
 TYPE_1__ vgasr_priv ; 

void FUNC3(struct pci_dev *pdev,
				 struct fb_info *info)
{
	struct vga_switcheroo_client *client;

	FUNC1(&vgasr_mutex);
	client = FUNC0(&vgasr_priv.clients, pdev);
	if (client)
		client->fb_info = info;
	FUNC2(&vgasr_mutex);
}