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
struct ipw_hardware {scalar_t__ hw_version; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ HW_VERSION_1 ; 
 int /*<<< orphan*/  FUNC0 (int,struct ipw_hardware*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct ipw_hardware*) ; 

irqreturn_t FUNC2(int irq, void *dev_id)
{
	struct ipw_hardware *hw = dev_id;

	if (hw->hw_version == HW_VERSION_1)
		return FUNC0(irq, hw);
	else
		return FUNC1(irq, hw);
}