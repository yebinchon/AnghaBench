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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {int has_link_events; int /*<<< orphan*/  link_duplex; void* module_type; void* link_autoneg; int /*<<< orphan*/  link_speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  DUPLEX_HALF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*,int) ; 

__attribute__((used)) static void FUNC5(struct qlcnic_adapter *adapter,
					u32 data[])
{
	u8 link_status, duplex;
	/* link speed */
	link_status = FUNC0(data[3]) & 1;
	adapter->ahw->link_speed = FUNC3(data[2]);
	adapter->ahw->link_autoneg = FUNC2(FUNC3(data[3]));
	adapter->ahw->module_type = FUNC2(FUNC1(data[3]));
	duplex = FUNC0(FUNC3(data[3]));
	if (duplex)
		adapter->ahw->link_duplex = DUPLEX_FULL;
	else
		adapter->ahw->link_duplex = DUPLEX_HALF;
	adapter->ahw->has_link_events = 1;
	FUNC4(adapter, link_status);
}