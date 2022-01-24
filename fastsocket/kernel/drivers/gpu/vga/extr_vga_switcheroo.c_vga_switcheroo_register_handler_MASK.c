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
struct vga_switcheroo_handler {int dummy; } ;
struct TYPE_2__ {struct vga_switcheroo_handler* handler; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vgasr_mutex ; 
 TYPE_1__ vgasr_priv ; 

int FUNC2(struct vga_switcheroo_handler *handler)
{
	FUNC0(&vgasr_mutex);
	if (vgasr_priv.handler) {
		FUNC1(&vgasr_mutex);
		return -EINVAL;
	}

	vgasr_priv.handler = handler;
	FUNC1(&vgasr_mutex);
	return 0;
}