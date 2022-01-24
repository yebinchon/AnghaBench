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
typedef  scalar_t__ u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  HW_LOCK_RESOURCE_DRV_FLAGS ; 
 int /*<<< orphan*/  NETIF_MSG_IFUP ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct bnx2x*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv_flags ; 

__attribute__((used)) static inline void FUNC8(struct bnx2x *bp, u32 flags, u32 set)
{
	if (FUNC3(bp, drv_flags)) {
		u32 drv_flags;
		FUNC6(bp, HW_LOCK_RESOURCE_DRV_FLAGS);
		drv_flags = FUNC4(bp, drv_flags);

		if (set)
			FUNC2(drv_flags, flags);
		else
			FUNC1(drv_flags, flags);

		FUNC5(bp, drv_flags, drv_flags);
		FUNC0(NETIF_MSG_IFUP, "drv_flags 0x%08x\n", drv_flags);
		FUNC7(bp, HW_LOCK_RESOURCE_DRV_FLAGS);
	}
}