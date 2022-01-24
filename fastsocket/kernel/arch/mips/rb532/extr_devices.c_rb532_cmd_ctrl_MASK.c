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
struct nand_chip {int /*<<< orphan*/  IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;

/* Variables and functions */
 unsigned int NAND_ALE ; 
 unsigned int NAND_CLE ; 
 int NAND_CMD_NONE ; 
 unsigned int NAND_CTRL_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mtd_info *mtd, int cmd, unsigned int ctrl)
{
	struct nand_chip *chip = mtd->priv;
	unsigned char orbits, nandbits;

	if (ctrl & NAND_CTRL_CHANGE) {
		orbits = (ctrl & NAND_CLE) << 1;
		orbits |= (ctrl & NAND_ALE) >> 1;

		nandbits = (~ctrl & NAND_CLE) << 1;
		nandbits |= (~ctrl & NAND_ALE) >> 1;

		FUNC0(orbits, nandbits);
	}
	if (cmd != NAND_CMD_NONE)
		FUNC1(cmd, chip->IO_ADDR_W);
}