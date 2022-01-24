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
struct sh_flctl {int* hwecc_cant_correct; int /*<<< orphan*/ * done_buff; scalar_t__ page_size; } ;
struct mtd_info {int writesize; } ;

/* Variables and functions */
 int ACM_SACCES_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_flctl*) ; 
 int NAND_CMD_READ0 ; 
 int NAND_CMD_READSTART ; 
 int _4ECCCORRECT ; 
 int /*<<< orphan*/  FUNC4 (struct sh_flctl*) ; 
 struct sh_flctl* FUNC5 (struct mtd_info*) ; 
 int FUNC6 (struct sh_flctl*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sh_flctl*,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mtd_info*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC11 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct mtd_info *mtd, int page_addr)
{
	struct sh_flctl *flctl = FUNC5(mtd);
	int sector, page_sectors;

	if (flctl->page_size)
		page_sectors = 4;
	else
		page_sectors = 1;

	FUNC12(FUNC8(FUNC3(flctl)) | ACM_SACCES_MODE | _4ECCCORRECT,
		 FUNC3(flctl));

	FUNC9(mtd, NAND_CMD_READ0,
		(NAND_CMD_READSTART << 8) | NAND_CMD_READ0);

	for (sector = 0; sector < page_sectors; sector++) {
		int ret;

		FUNC4(flctl);
		FUNC12(FUNC8(FUNC2(flctl)) | 1, FUNC2(flctl));
		FUNC12(page_addr << 2 | sector, FUNC1(flctl));

		FUNC10(flctl);
		FUNC7(flctl, 512, 512 * sector);

		ret = FUNC6(flctl,
			&flctl->done_buff[mtd->writesize + 16 * sector],
			sector);

		if (ret)
			flctl->hwecc_cant_correct[sector] = 1;

		FUNC12(0x0, FUNC0(flctl));
		FUNC11(flctl);
	}
	FUNC12(FUNC8(FUNC3(flctl)) & ~(ACM_SACCES_MODE | _4ECCCORRECT),
			FUNC3(flctl));
}