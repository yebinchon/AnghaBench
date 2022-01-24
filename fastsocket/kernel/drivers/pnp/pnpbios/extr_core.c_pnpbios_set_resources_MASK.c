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
typedef  int /*<<< orphan*/  u8 ;
struct pnp_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  number; } ;
struct pnp_bios_node {int /*<<< orphan*/  handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_node_size; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PNPMODE_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (struct pnp_bios_node*) ; 
 struct pnp_bios_node* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ node_info ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char,struct pnp_bios_node*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char,struct pnp_bios_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pnp_dev*) ; 
 scalar_t__ FUNC6 (struct pnp_dev*,struct pnp_bios_node*) ; 

__attribute__((used)) static int FUNC7(struct pnp_dev *dev)
{
	u8 nodenum = dev->number;
	struct pnp_bios_node *node;
	int ret;

	if (!FUNC5(dev))
		return -EPERM;

	FUNC4(&dev->dev, "set resources\n");
	node = FUNC1(node_info.max_node_size, GFP_KERNEL);
	if (!node)
		return -1;
	if (FUNC2(&nodenum, (char)PNPMODE_DYNAMIC, node)) {
		FUNC0(node);
		return -ENODEV;
	}
	if (FUNC6(dev, node) < 0) {
		FUNC0(node);
		return -1;
	}
	ret = FUNC3(node->handle, (char)PNPMODE_DYNAMIC, node);
	FUNC0(node);
	if (ret > 0)
		ret = -1;
	return ret;
}