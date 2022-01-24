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
struct slgt_info {int init_error; int /*<<< orphan*/  device_name; int /*<<< orphan*/  irq_level; int /*<<< orphan*/  phys_reg_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct slgt_info*) ; 
 scalar_t__ FUNC2 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC4 (struct slgt_info*) ; 

__attribute__((used)) static int FUNC5(struct slgt_info *info)
{
	FUNC0(("testing %s\n", info->device_name));
	if (FUNC4(info) < 0) {
		FUNC3("register test failure %s addr=%08X\n",
			info->device_name, info->phys_reg_addr);
	} else if (FUNC1(info) < 0) {
		FUNC3("IRQ test failure %s IRQ=%d\n",
			info->device_name, info->irq_level);
	} else if (FUNC2(info) < 0) {
		FUNC3("loopback test failure %s\n", info->device_name);
	}
	return info->init_error;
}