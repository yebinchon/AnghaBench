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
typedef  scalar_t__ u64 ;
typedef  unsigned long long u32 ;
struct of_device {int /*<<< orphan*/  dev; struct device_node* node; } ;
struct device_node {int name; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 scalar_t__ OF_BAD_ADDR ; 
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned long long const,int) ; 
 unsigned long long* FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct device_node*,unsigned long long const*) ; 
 scalar_t__ FUNC4 (struct device_node*,unsigned long long const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct of_device *dev)
{
	static atomic_t bus_no_reg_magic;
	struct device_node *node = dev->node;
	const u32 *reg;
	u64 addr;
	int magic;

	/*
	 * If it's a DCR based device, use 'd' for native DCRs
	 * and 'D' for MMIO DCRs.
	 */
#ifdef CONFIG_PPC_DCR
	reg = of_get_property(node, "dcr-reg", NULL);
	if (reg) {
#ifdef CONFIG_PPC_DCR_NATIVE
		dev_set_name(&dev->dev, "d%x.%s", *reg, node->name);
#else /* CONFIG_PPC_DCR_NATIVE */
		addr = of_translate_dcr_address(node, *reg, NULL);
		if (addr != OF_BAD_ADDR) {
			dev_set_name(&dev->dev, "D%llx.%s",
				     (unsigned long long)addr, node->name);
			return;
		}
#endif /* !CONFIG_PPC_DCR_NATIVE */
	}
#endif /* CONFIG_PPC_DCR */

	/*
	 * For MMIO, get the physical address
	 */
	reg = FUNC2(node, "reg", NULL);
	if (reg) {
		addr = FUNC3(node, reg);
		if (addr != OF_BAD_ADDR) {
			FUNC1(&dev->dev, "%llx.%s",
				     (unsigned long long)addr, node->name);
			return;
		}
	}

	/*
	 * No BusID, use the node name and add a globally incremented
	 * counter (and pray...)
	 */
	magic = FUNC0(1, &bus_no_reg_magic);
	FUNC1(&dev->dev, "%s.%d", node->name, magic - 1);
}