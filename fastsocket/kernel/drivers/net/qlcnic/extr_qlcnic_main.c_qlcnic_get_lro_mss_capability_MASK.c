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
typedef  int /*<<< orphan*/  u32 ;
struct qlcnic_adapter {int /*<<< orphan*/  flags; TYPE_1__* ahw; } ;
struct TYPE_2__ {int capabilities2; int /*<<< orphan*/  capabilities; } ;

/* Variables and functions */
 int QLCNIC_FW_CAPABILITY_2_LRO_MAX_TCP_SEG ; 
 int /*<<< orphan*/  QLCNIC_FW_LRO_MSS_CAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 

__attribute__((used)) static void FUNC2(struct qlcnic_adapter *adapter)
{
	u32 capab = 0;

	if (FUNC1(adapter)) {
		if (adapter->ahw->capabilities2 &
		    QLCNIC_FW_CAPABILITY_2_LRO_MAX_TCP_SEG)
			adapter->flags |= QLCNIC_FW_LRO_MSS_CAP;
	} else {
		capab = adapter->ahw->capabilities;
		if (FUNC0(capab))
			adapter->flags |= QLCNIC_FW_LRO_MSS_CAP;
	}
}