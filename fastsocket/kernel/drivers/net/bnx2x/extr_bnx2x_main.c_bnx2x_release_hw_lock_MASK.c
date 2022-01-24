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
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (struct bnx2x*) ; 
 int EFAULT ; 
 int EINVAL ; 
 int HW_LOCK_MAX_RESOURCE_VALUE ; 
 int MISC_REG_DRIVER_CONTROL_1 ; 
 int MISC_REG_DRIVER_CONTROL_7 ; 
 int FUNC2 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int,int) ; 

int FUNC4(struct bnx2x *bp, u32 resource)
{
	u32 lock_status;
	u32 resource_bit = (1 << resource);
	int func = FUNC1(bp);
	u32 hw_lock_control_reg;

	/* Validating that the resource is within range */
	if (resource > HW_LOCK_MAX_RESOURCE_VALUE) {
		FUNC0("resource(0x%x) > HW_LOCK_MAX_RESOURCE_VALUE(0x%x)\n",
		   resource, HW_LOCK_MAX_RESOURCE_VALUE);
		return -EINVAL;
	}

	if (func <= 5) {
		hw_lock_control_reg = (MISC_REG_DRIVER_CONTROL_1 + func*8);
	} else {
		hw_lock_control_reg =
				(MISC_REG_DRIVER_CONTROL_7 + (func - 6)*8);
	}

	/* Validating that the resource is currently taken */
	lock_status = FUNC2(bp, hw_lock_control_reg);
	if (!(lock_status & resource_bit)) {
		FUNC0("lock_status 0x%x resource_bit 0x%x. Unlock was called but lock wasn't taken!\n",
			  lock_status, resource_bit);
		return -EFAULT;
	}

	FUNC3(bp, hw_lock_control_reg, resource_bit);
	return 0;
}