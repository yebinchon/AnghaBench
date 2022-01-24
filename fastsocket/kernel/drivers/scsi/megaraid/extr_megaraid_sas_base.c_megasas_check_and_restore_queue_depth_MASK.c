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
struct megasas_instance {int flag; scalar_t__ throttlequeuedepth; TYPE_1__* host; scalar_t__ max_fw_cmds; scalar_t__ is_imr; int /*<<< orphan*/  fw_outstanding; scalar_t__ last_time; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; scalar_t__ can_queue; } ;

/* Variables and functions */
 int HZ ; 
 int MEGASAS_FW_BUSY ; 
 scalar_t__ MEGASAS_INT_CMDS ; 
 scalar_t__ MEGASAS_SKINNY_INT_CMDS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC4(struct megasas_instance *instance)
{
	unsigned long flags;
	if (instance->flag & MEGASAS_FW_BUSY
	    && FUNC3(jiffies, instance->last_time + 5 * HZ)
	    && FUNC0(&instance->fw_outstanding) <
	    instance->throttlequeuedepth + 1) {

		FUNC1(instance->host->host_lock, flags);
		instance->flag &= ~MEGASAS_FW_BUSY;
		if (instance->is_imr) {
			instance->host->can_queue =
				instance->max_fw_cmds - MEGASAS_SKINNY_INT_CMDS;
		} else
			instance->host->can_queue =
				instance->max_fw_cmds - MEGASAS_INT_CMDS;

		FUNC2(instance->host->host_lock, flags);
	}
}