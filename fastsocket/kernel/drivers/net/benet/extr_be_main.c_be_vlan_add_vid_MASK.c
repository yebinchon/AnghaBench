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
typedef  size_t u16 ;
struct net_device {int dummy; } ;
struct be_adapter {int* vlan_tag; scalar_t__ vlans_added; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*) ; 
 int FUNC2 (struct be_adapter*) ; 
 scalar_t__ FUNC3 (struct be_adapter*) ; 
 struct be_adapter* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev, u16 vid)
{
	struct be_adapter *adapter = FUNC4(netdev);
	int status = 0;

	if (!FUNC3(adapter) && !FUNC1(adapter))
		return;

	/* Packets with VID 0 are always received by Lancer by default */
	if (FUNC3(adapter) && vid == 0)
		return;

	adapter->vlan_tag[vid] = 1;
	if (adapter->vlans_added <= (FUNC0(adapter) + 1))
		status = FUNC2(adapter);

	if (!status)
		adapter->vlans_added++;
	else
		adapter->vlan_tag[vid] = 0;
}