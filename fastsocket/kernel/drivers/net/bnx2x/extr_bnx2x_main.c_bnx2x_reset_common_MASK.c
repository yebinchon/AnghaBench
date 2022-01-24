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
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 scalar_t__ GRCBASE_MISC ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_1_CLEAR ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_2_CLEAR ; 
 int MISC_REGISTERS_RESET_REG_2_MSTAT0 ; 
 int MISC_REGISTERS_RESET_REG_2_MSTAT1 ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(struct bnx2x *bp)
{
	u32 val = 0x1400;

	/* reset_common */
	FUNC1(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_1_CLEAR,
	       0xd3ffff7f);

	if (FUNC0(bp)) {
		val |= MISC_REGISTERS_RESET_REG_2_MSTAT0;
		val |= MISC_REGISTERS_RESET_REG_2_MSTAT1;
	}

	FUNC1(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_CLEAR, val);
}