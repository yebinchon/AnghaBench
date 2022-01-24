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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,...) ; 
 int HW_LOCK_MAX_RESOURCE_VALUE ; 
 int MISC_REG_DRIVER_CONTROL_1 ; 
 int MISC_REG_DRIVER_CONTROL_7 ; 
 int NETIF_MSG_HW ; 
 int NETIF_MSG_IFUP ; 
 int FUNC2 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int,int) ; 

__attribute__((used)) static bool FUNC4(struct bnx2x *bp, u32 resource)
{
	u32 lock_status;
	u32 resource_bit = (1 << resource);
	int func = FUNC0(bp);
	u32 hw_lock_control_reg;

	FUNC1(NETIF_MSG_HW | NETIF_MSG_IFUP,
	   "Trying to take a lock on resource %d\n", resource);

	/* Validating that the resource is within range */
	if (resource > HW_LOCK_MAX_RESOURCE_VALUE) {
		FUNC1(NETIF_MSG_HW | NETIF_MSG_IFUP,
		   "resource(0x%x) > HW_LOCK_MAX_RESOURCE_VALUE(0x%x)\n",
		   resource, HW_LOCK_MAX_RESOURCE_VALUE);
		return false;
	}

	if (func <= 5)
		hw_lock_control_reg = (MISC_REG_DRIVER_CONTROL_1 + func*8);
	else
		hw_lock_control_reg =
				(MISC_REG_DRIVER_CONTROL_7 + (func - 6)*8);

	/* Try to acquire the lock */
	FUNC3(bp, hw_lock_control_reg + 4, resource_bit);
	lock_status = FUNC2(bp, hw_lock_control_reg);
	if (lock_status & resource_bit)
		return true;

	FUNC1(NETIF_MSG_HW | NETIF_MSG_IFUP,
	   "Failed to get a lock on resource %d\n", resource);
	return false;
}