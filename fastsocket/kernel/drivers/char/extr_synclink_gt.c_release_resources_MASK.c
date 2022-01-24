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
struct slgt_info {int irq_requested; int reg_addr_requested; int /*<<< orphan*/ * reg_addr; int /*<<< orphan*/  phys_reg_addr; int /*<<< orphan*/  irq_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLGT_REG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct slgt_info *info)
{
	if (info->irq_requested) {
		FUNC0(info->irq_level, info);
		info->irq_requested = false;
	}

	if (info->reg_addr_requested) {
		FUNC2(info->phys_reg_addr, SLGT_REG_SIZE);
		info->reg_addr_requested = false;
	}

	if (info->reg_addr) {
		FUNC1(info->reg_addr);
		info->reg_addr = NULL;
	}
}