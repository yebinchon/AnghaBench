#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mtd_info {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  IO_ADDR_W; } ;
struct TYPE_4__ {int /*<<< orphan*/  gpio_ale; int /*<<< orphan*/  gpio_cle; int /*<<< orphan*/  gpio_nce; } ;
struct gpiomtd {TYPE_1__ nand_chip; TYPE_2__ plat; } ;

/* Variables and functions */
 unsigned int NAND_ALE ; 
 unsigned int NAND_CLE ; 
 int NAND_CMD_NONE ; 
 unsigned int NAND_CTRL_CHANGE ; 
 unsigned int NAND_NCE ; 
 int /*<<< orphan*/  FUNC0 (struct gpiomtd*) ; 
 struct gpiomtd* FUNC1 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mtd_info *mtd, int cmd, unsigned int ctrl)
{
	struct gpiomtd *gpiomtd = FUNC1(mtd);

	FUNC0(gpiomtd);

	if (ctrl & NAND_CTRL_CHANGE) {
		FUNC2(gpiomtd->plat.gpio_nce, !(ctrl & NAND_NCE));
		FUNC2(gpiomtd->plat.gpio_cle, !!(ctrl & NAND_CLE));
		FUNC2(gpiomtd->plat.gpio_ale, !!(ctrl & NAND_ALE));
		FUNC0(gpiomtd);
	}
	if (cmd == NAND_CMD_NONE)
		return;

	FUNC3(cmd, gpiomtd->nand_chip.IO_ADDR_W);
	FUNC0(gpiomtd);
}