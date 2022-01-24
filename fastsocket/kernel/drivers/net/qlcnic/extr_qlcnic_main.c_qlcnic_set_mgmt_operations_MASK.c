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
struct qlcnic_adapter {int flags; TYPE_1__* ahw; } ;
struct TYPE_2__ {scalar_t__ op_mode; } ;

/* Variables and functions */
 int QLCNIC_ESWITCH_ENABLED ; 
 scalar_t__ QLCNIC_MGMT_FUNC ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*) ; 
 int FUNC1 (struct qlcnic_adapter*) ; 
 int FUNC2 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int
FUNC3(struct qlcnic_adapter *adapter)
{
	int err;

	if (!(adapter->flags & QLCNIC_ESWITCH_ENABLED) ||
	    adapter->ahw->op_mode != QLCNIC_MGMT_FUNC)
		return 0;

	err = FUNC2(adapter);
	if (err)
		return err;

	err = FUNC1(adapter);
	if (err)
		return err;

	FUNC0(adapter);

	return err;
}