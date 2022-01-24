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
typedef  int /*<<< orphan*/  u32 ;
struct bnx2x_mcast_ramrod_params {int dummy; } ;
struct bnx2x_mcast_obj {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct bnx2x_mcast_obj*,int) ; 

__attribute__((used)) static inline void FUNC3(struct bnx2x *bp,
	struct bnx2x_mcast_obj *o, struct bnx2x_mcast_ramrod_params *p,
	u32 *mc_filter)
{
	int bit;

	for (bit = FUNC2(o, 0);
	     bit >= 0;
	     bit = FUNC2(o, bit + 1)) {
		FUNC0(mc_filter, bit);
		FUNC1(BNX2X_MSG_SP, "About to set bin %d\n", bit);
	}
}