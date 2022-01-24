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
struct s3c2410_nand_mtd {TYPE_2__* set; struct s3c2410_nand_info* info; } ;
struct s3c2410_nand_info {unsigned long sel_bit; int /*<<< orphan*/  clk; int /*<<< orphan*/  sel_reg; TYPE_1__* platform; int /*<<< orphan*/  device; } ;
struct nand_chip {struct s3c2410_nand_mtd* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;
struct TYPE_4__ {int nr_chips; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* select_chip ) (TYPE_2__*,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct s3c2410_nand_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct mtd_info *mtd, int chip)
{
	struct s3c2410_nand_info *info;
	struct s3c2410_nand_mtd *nmtd;
	struct nand_chip *this = mtd->priv;
	unsigned long cur;

	nmtd = this->priv;
	info = nmtd->info;

	if (chip != -1 && FUNC0(info))
		FUNC2(info->clk);

	cur = FUNC4(info->sel_reg);

	if (chip == -1) {
		cur |= info->sel_bit;
	} else {
		if (nmtd->set != NULL && chip > nmtd->set->nr_chips) {
			FUNC3(info->device, "invalid chip %d\n", chip);
			return;
		}

		if (info->platform != NULL) {
			if (info->platform->select_chip != NULL)
				(info->platform->select_chip) (nmtd->set, chip);
		}

		cur &= ~info->sel_bit;
	}

	FUNC6(cur, info->sel_reg);

	if (chip == -1 && FUNC0(info))
		FUNC1(info->clk);
}