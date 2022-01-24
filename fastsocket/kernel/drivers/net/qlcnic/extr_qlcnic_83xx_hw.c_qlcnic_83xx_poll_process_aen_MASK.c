#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_3__ {int /*<<< orphan*/  mbx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_FW_MBX_CTRL ; 
 int QLCNIC_MBX_ASYNC_EVENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int QLCNIC_SET_OWNER ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct qlcnic_adapter *adapter)
{
	u32 resp, event;
	unsigned long flags;

	FUNC5(&adapter->ahw->mbx_lock, flags);

	resp = FUNC1(adapter->ahw, QLCNIC_FW_MBX_CTRL);
	if (!(resp & QLCNIC_SET_OWNER))
		goto out;

	event = FUNC4(FUNC0(adapter->ahw, 0));
	if (event &  QLCNIC_MBX_ASYNC_EVENT)
		FUNC2(adapter);

out:
	FUNC3(adapter);
	FUNC6(&adapter->ahw->mbx_lock, flags);
}