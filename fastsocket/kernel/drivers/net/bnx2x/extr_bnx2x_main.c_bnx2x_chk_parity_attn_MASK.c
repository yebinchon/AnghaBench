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
struct bnx2x {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  member_0; } ;
struct attn_route {void** sig; TYPE_1__ member_0; } ;

/* Variables and functions */
 int FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 scalar_t__ MISC_REG_AEU_AFTER_INVERT_1_FUNC_0 ; 
 scalar_t__ MISC_REG_AEU_AFTER_INVERT_2_FUNC_0 ; 
 scalar_t__ MISC_REG_AEU_AFTER_INVERT_3_FUNC_0 ; 
 scalar_t__ MISC_REG_AEU_AFTER_INVERT_4_FUNC_0 ; 
 scalar_t__ MISC_REG_AEU_AFTER_INVERT_5_FUNC_0 ; 
 void* FUNC2 (struct bnx2x*,scalar_t__) ; 
 int FUNC3 (struct bnx2x*,int*,int,void**) ; 

bool FUNC4(struct bnx2x *bp, bool *global, bool print)
{
	struct attn_route attn = { 0 };
	int port = FUNC0(bp);

	attn.sig[0] = FUNC2(bp,
		MISC_REG_AEU_AFTER_INVERT_1_FUNC_0 +
			     port*4);
	attn.sig[1] = FUNC2(bp,
		MISC_REG_AEU_AFTER_INVERT_2_FUNC_0 +
			     port*4);
	attn.sig[2] = FUNC2(bp,
		MISC_REG_AEU_AFTER_INVERT_3_FUNC_0 +
			     port*4);
	attn.sig[3] = FUNC2(bp,
		MISC_REG_AEU_AFTER_INVERT_4_FUNC_0 +
			     port*4);

	if (!FUNC1(bp))
		attn.sig[4] = FUNC2(bp,
			MISC_REG_AEU_AFTER_INVERT_5_FUNC_0 +
				     port*4);

	return FUNC3(bp, global, print, attn.sig);
}