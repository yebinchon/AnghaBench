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
struct bnx2x_vlan_mac_obj {int (* delete_all ) (struct bnx2x*,struct bnx2x_vlan_mac_obj*,unsigned long*,unsigned long*) ;} ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int RAMROD_COMP_WAIT ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long*) ; 
 int FUNC2 (struct bnx2x*,struct bnx2x_vlan_mac_obj*,unsigned long*,unsigned long*) ; 

int FUNC3(struct bnx2x *bp,
		       struct bnx2x_vlan_mac_obj *mac_obj,
		       int mac_type, bool wait_for_comp)
{
	int rc;
	unsigned long ramrod_flags = 0, vlan_mac_flags = 0;

	/* Wait for completion of requested */
	if (wait_for_comp)
		FUNC1(RAMROD_COMP_WAIT, &ramrod_flags);

	/* Set the mac type of addresses we want to clear */
	FUNC1(mac_type, &vlan_mac_flags);

	rc = mac_obj->delete_all(bp, mac_obj, &vlan_mac_flags, &ramrod_flags);
	if (rc < 0)
		FUNC0("Failed to delete MACs: %d\n", rc);

	return rc;
}