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
struct mtd_info {int dummy; } ;

/* Variables and functions */
 unsigned long AMS_DELTA_LATCH2_NAND_ALE ; 
 unsigned long AMS_DELTA_LATCH2_NAND_CLE ; 
 unsigned long AMS_DELTA_LATCH2_NAND_NCE ; 
 unsigned int NAND_ALE ; 
 unsigned int NAND_CLE ; 
 int NAND_CMD_NONE ; 
 unsigned int NAND_CTRL_CHANGE ; 
 unsigned int NAND_NCE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*,int) ; 

__attribute__((used)) static void FUNC2(struct mtd_info *mtd, int cmd,
				unsigned int ctrl)
{

	if (ctrl & NAND_CTRL_CHANGE) {
		unsigned long bits;

		bits = (~ctrl & NAND_NCE) ? AMS_DELTA_LATCH2_NAND_NCE : 0;
		bits |= (ctrl & NAND_CLE) ? AMS_DELTA_LATCH2_NAND_CLE : 0;
		bits |= (ctrl & NAND_ALE) ? AMS_DELTA_LATCH2_NAND_ALE : 0;

		FUNC0(AMS_DELTA_LATCH2_NAND_CLE |
				AMS_DELTA_LATCH2_NAND_ALE |
				AMS_DELTA_LATCH2_NAND_NCE, bits);
	}

	if (cmd != NAND_CMD_NONE)
		FUNC1(mtd, cmd);
}