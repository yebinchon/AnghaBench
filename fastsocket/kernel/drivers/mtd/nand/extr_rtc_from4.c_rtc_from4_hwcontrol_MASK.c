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
struct nand_chip {int IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;

/* Variables and functions */
 unsigned int NAND_CLE ; 
 int NAND_CMD_NONE ; 
 int RTC_FROM4_ALE ; 
 int RTC_FROM4_CLE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 

__attribute__((used)) static void FUNC1(struct mtd_info *mtd, int cmd,
				unsigned int ctrl)
{
	struct nand_chip *chip = (mtd->priv);

	if (cmd == NAND_CMD_NONE)
		return;

	if (ctrl & NAND_CLE)
		FUNC0(cmd, chip->IO_ADDR_W | RTC_FROM4_CLE);
	else
		FUNC0(cmd, chip->IO_ADDR_W | RTC_FROM4_ALE);
}