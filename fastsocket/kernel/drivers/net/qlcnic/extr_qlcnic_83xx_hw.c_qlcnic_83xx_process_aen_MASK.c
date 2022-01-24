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
typedef  int u32 ;
struct qlcnic_hardware_context {int /*<<< orphan*/  mbx_lock; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_FW_MBX_CTRL ; 
 int QLCNIC_MBX_ASYNC_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_hardware_context*,int /*<<< orphan*/ ) ; 
 int QLCNIC_SET_OWNER ; 
 int FUNC1 (struct qlcnic_hardware_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct qlcnic_adapter *adapter)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	u32 resp, event;
	unsigned long flags;

	FUNC4(&ahw->mbx_lock, flags);

	resp = FUNC1(ahw, QLCNIC_FW_MBX_CTRL);
	if (resp & QLCNIC_SET_OWNER) {
		event = FUNC3(FUNC0(ahw, 0));
		if (event &  QLCNIC_MBX_ASYNC_EVENT)
			FUNC2(adapter);
	}

	FUNC5(&ahw->mbx_lock, flags);
}