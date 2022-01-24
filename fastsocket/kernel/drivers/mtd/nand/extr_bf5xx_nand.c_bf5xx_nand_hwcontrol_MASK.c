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
 unsigned int NAND_CLE ; 
 int NAND_CMD_NONE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int WB_FULL ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct mtd_info *mtd, int cmd,
				   unsigned int ctrl)
{
	if (cmd == NAND_CMD_NONE)
		return;

	while (FUNC1() & WB_FULL)
		FUNC4();

	if (ctrl & NAND_CLE)
		FUNC3(cmd);
	else
		FUNC2(cmd);
	FUNC0();
}