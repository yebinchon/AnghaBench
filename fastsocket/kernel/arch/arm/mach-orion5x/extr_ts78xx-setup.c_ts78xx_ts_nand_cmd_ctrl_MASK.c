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
 unsigned int NAND_NCE ; 
 int /*<<< orphan*/  TS_NAND_CTRL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mtd_info *mtd, int cmd,
			unsigned int ctrl)
{
	struct nand_chip *this = mtd->priv;

	if (ctrl & NAND_CTRL_CHANGE) {
		unsigned char bits;

		bits = (ctrl & NAND_NCE) << 2;
		bits |= ctrl & NAND_CLE;
		bits |= (ctrl & NAND_ALE) >> 2;

		FUNC1((FUNC0(TS_NAND_CTRL) & ~0x7) | bits, TS_NAND_CTRL);
	}

	if (cmd != NAND_CMD_NONE)
		FUNC1(cmd, this->IO_ADDR_W);
}