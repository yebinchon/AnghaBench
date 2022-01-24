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
struct be_async_event_grp5_pvid_state {int /*<<< orphan*/  tag; scalar_t__ enabled; } ;
struct be_adapter {int pvid; } ;

/* Variables and functions */
 int VLAN_VID_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct be_adapter *adapter,
		struct be_async_event_grp5_pvid_state *evt)
{
	if (evt->enabled)
		adapter->pvid = FUNC0(evt->tag) & VLAN_VID_MASK;
	else
		adapter->pvid = 0;
}