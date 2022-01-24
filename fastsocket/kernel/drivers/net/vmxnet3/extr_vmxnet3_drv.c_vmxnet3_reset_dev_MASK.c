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
struct vmxnet3_adapter {int /*<<< orphan*/  cmd_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMXNET3_CMD_RESET_DEV ; 
 int /*<<< orphan*/  VMXNET3_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct vmxnet3_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC3(struct vmxnet3_adapter *adapter)
{
	unsigned long flags;
	FUNC1(&adapter->cmd_lock, flags);
	FUNC0(adapter, VMXNET3_REG_CMD, VMXNET3_CMD_RESET_DEV);
	FUNC2(&adapter->cmd_lock, flags);
}