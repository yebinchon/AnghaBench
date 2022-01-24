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
struct sharpsl_nand {scalar_t__ io; } ;
struct nand_chip {scalar_t__ IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;

/* Variables and functions */
 scalar_t__ FLASHCTL ; 
 int NAND_CMD_NONE ; 
 unsigned int NAND_CTRL_CHANGE ; 
 struct sharpsl_nand* FUNC0 (struct mtd_info*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mtd_info *mtd, int cmd,
				   unsigned int ctrl)
{
	struct sharpsl_nand *sharpsl = FUNC0(mtd);
	struct nand_chip *chip = mtd->priv;

	if (ctrl & NAND_CTRL_CHANGE) {
		unsigned char bits = ctrl & 0x07;

		bits |= (ctrl & 0x01) << 4;

		bits ^= 0x11;

		FUNC2((FUNC1(sharpsl->io + FLASHCTL) & ~0x17) | bits, sharpsl->io + FLASHCTL);
	}

	if (cmd != NAND_CMD_NONE)
		FUNC2(cmd, chip->IO_ADDR_W);
}