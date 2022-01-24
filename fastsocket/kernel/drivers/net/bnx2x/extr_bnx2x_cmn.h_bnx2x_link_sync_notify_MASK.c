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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bnx2x*) ; 
 int FUNC1 (struct bnx2x*) ; 
 int LINK_SYNC_ATTENTION_BIT_FUNC_0 ; 
 scalar_t__ MISC_REG_AEU_GENERAL_ATTN_0 ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,scalar_t__,int) ; 
 int VN_0 ; 
 int FUNC3 (struct bnx2x*,int) ; 

__attribute__((used)) static inline void FUNC4(struct bnx2x *bp)
{
	int func;
	int vn;

	/* Set the attention towards other drivers on the same port */
	for (vn = VN_0; vn < FUNC0(bp); vn++) {
		if (vn == FUNC1(bp))
			continue;

		func = FUNC3(bp, vn);
		FUNC2(bp, MISC_REG_AEU_GENERAL_ATTN_0 +
		       (LINK_SYNC_ATTENTION_BIT_FUNC_0 + func)*4, 1);
	}
}