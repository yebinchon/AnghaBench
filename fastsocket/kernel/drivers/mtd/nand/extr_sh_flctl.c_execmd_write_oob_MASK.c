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
struct sh_flctl {int seqin_page_addr; scalar_t__ page_size; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sh_flctl*) ; 
 int NAND_CMD_PAGEPROG ; 
 int NAND_CMD_SEQIN ; 
 int /*<<< orphan*/  FUNC1 (struct sh_flctl*) ; 
 struct sh_flctl* FUNC2 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtd_info*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mtd_info*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC6 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC7 (struct sh_flctl*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct mtd_info *mtd)
{
	struct sh_flctl *flctl = FUNC2(mtd);
	int page_addr = flctl->seqin_page_addr;
	int sector, page_sectors;

	if (flctl->page_size) {
		sector = 3;
		page_sectors = 4;
	} else {
		sector = 0;
		page_sectors = 1;
	}

	FUNC4(mtd, NAND_CMD_PAGEPROG,
			(NAND_CMD_PAGEPROG << 8) | NAND_CMD_SEQIN);

	for (; sector < page_sectors; sector++) {
		FUNC1(flctl);
		FUNC3(mtd, sector * 528 + 512, page_addr);
		FUNC8(16, FUNC0(flctl));	/* set read size */

		FUNC5(flctl);
		FUNC7(flctl, 16, 16 * sector);
		FUNC6(flctl);
	}
}