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
 int ACM_SACCES_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_flctl*) ; 
 int NAND_CMD_PAGEPROG ; 
 int NAND_CMD_SEQIN ; 
 int /*<<< orphan*/  FUNC4 (struct sh_flctl*) ; 
 struct sh_flctl* FUNC5 (struct mtd_info*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mtd_info*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC9 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC10 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC11 (struct sh_flctl*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct mtd_info *mtd)
{
	struct sh_flctl *flctl = FUNC5(mtd);
	int i, page_addr = flctl->seqin_page_addr;
	int sector, page_sectors;

	if (flctl->page_size)
		page_sectors = 4;
	else
		page_sectors = 1;

	FUNC12(FUNC6(FUNC2(flctl)) | ACM_SACCES_MODE, FUNC2(flctl));

	FUNC7(mtd, NAND_CMD_PAGEPROG,
			(NAND_CMD_PAGEPROG << 8) | NAND_CMD_SEQIN);

	for (sector = 0; sector < page_sectors; sector++) {
		FUNC4(flctl);
		FUNC12(FUNC6(FUNC1(flctl)) | 1, FUNC1(flctl));
		FUNC12(page_addr << 2 | sector, FUNC0(flctl));

		FUNC8(flctl);
		FUNC11(flctl, 512, 512 * sector);

		for (i = 0; i < 4; i++) {
			FUNC10(flctl); /* wait for write ready */
			FUNC12(0xFFFFFFFF, FUNC3(flctl));
		}
		FUNC9(flctl);
	}

	FUNC12(FUNC6(FUNC2(flctl)) & ~ACM_SACCES_MODE, FUNC2(flctl));
}