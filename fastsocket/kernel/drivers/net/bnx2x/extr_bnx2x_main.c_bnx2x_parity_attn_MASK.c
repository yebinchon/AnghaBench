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
struct bnx2x {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,int,int) ; 
 int HW_PRTY_ASSERT_SET_0 ; 
 int HW_PRTY_ASSERT_SET_1 ; 
 int HW_PRTY_ASSERT_SET_2 ; 
 int HW_PRTY_ASSERT_SET_3 ; 
 int HW_PRTY_ASSERT_SET_4 ; 
 int /*<<< orphan*/  NETIF_MSG_HW ; 
 int FUNC1 (struct bnx2x*,int,int,int) ; 
 int FUNC2 (struct bnx2x*,int,int,int*,int) ; 
 int FUNC3 (struct bnx2x*,int,int,int) ; 
 int FUNC4 (int,int,int*,int) ; 
 int FUNC5 (struct bnx2x*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static bool FUNC8(struct bnx2x *bp, bool *global, bool print,
			      u32 *sig)
{
	if ((sig[0] & HW_PRTY_ASSERT_SET_0) ||
	    (sig[1] & HW_PRTY_ASSERT_SET_1) ||
	    (sig[2] & HW_PRTY_ASSERT_SET_2) ||
	    (sig[3] & HW_PRTY_ASSERT_SET_3) ||
	    (sig[4] & HW_PRTY_ASSERT_SET_4)) {
		int par_num = 0;
		FUNC0(NETIF_MSG_HW, "Was parity error: HW block parity attention:\n"
				 "[0]:0x%08x [1]:0x%08x [2]:0x%08x [3]:0x%08x [4]:0x%08x\n",
			  sig[0] & HW_PRTY_ASSERT_SET_0,
			  sig[1] & HW_PRTY_ASSERT_SET_1,
			  sig[2] & HW_PRTY_ASSERT_SET_2,
			  sig[3] & HW_PRTY_ASSERT_SET_3,
			  sig[4] & HW_PRTY_ASSERT_SET_4);
		if (print)
			FUNC6(bp->dev,
				   "Parity errors detected in blocks: ");
		par_num = FUNC1(bp,
			sig[0] & HW_PRTY_ASSERT_SET_0, par_num, print);
		par_num = FUNC2(bp,
			sig[1] & HW_PRTY_ASSERT_SET_1, par_num, global, print);
		par_num = FUNC3(bp,
			sig[2] & HW_PRTY_ASSERT_SET_2, par_num, print);
		par_num = FUNC4(
			sig[3] & HW_PRTY_ASSERT_SET_3, par_num, global, print);
		par_num = FUNC5(bp,
			sig[4] & HW_PRTY_ASSERT_SET_4, par_num, print);

		if (print)
			FUNC7("\n");

		return true;
	} else
		return false;
}