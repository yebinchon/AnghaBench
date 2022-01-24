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
typedef  scalar_t__ u64 ;
struct ehea_eq {int /*<<< orphan*/  hw_queue; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  fw_handle; TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 scalar_t__ H_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ehea_eq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u64 FUNC5(struct ehea_eq *eq, u64 force)
{
	u64 hret;
	unsigned long flags;

	FUNC3(&eq->spinlock, flags);

	hret = FUNC0(eq->adapter->handle, eq->fw_handle, force);
	FUNC4(&eq->spinlock, flags);

	if (hret != H_SUCCESS)
		return hret;

	FUNC1(&eq->hw_queue);
	FUNC2(eq);

	return hret;
}