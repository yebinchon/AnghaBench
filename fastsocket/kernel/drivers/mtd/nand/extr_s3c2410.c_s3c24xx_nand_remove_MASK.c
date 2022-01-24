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
struct s3c2410_nand_mtd {int mtd_count; struct s3c2410_nand_mtd* area; int /*<<< orphan*/ * regs; int /*<<< orphan*/ * clk; struct s3c2410_nand_mtd* mtds; int /*<<< orphan*/  mtd; } ;
struct s3c2410_nand_info {int mtd_count; struct s3c2410_nand_info* area; int /*<<< orphan*/ * regs; int /*<<< orphan*/ * clk; struct s3c2410_nand_info* mtds; int /*<<< orphan*/  mtd; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct s3c2410_nand_mtd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct s3c2410_nand_mtd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,struct s3c2410_nand_mtd*) ; 
 int /*<<< orphan*/  FUNC9 (struct s3c2410_nand_mtd*) ; 
 int /*<<< orphan*/  FUNC10 (struct s3c2410_nand_mtd*) ; 
 struct s3c2410_nand_mtd* FUNC11 (struct platform_device*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct s3c2410_nand_info *info = FUNC11(pdev);

	FUNC7(pdev, NULL);

	if (info == NULL)
		return 0;

	FUNC10(info);

	/* Release all our mtds  and their partitions, then go through
	 * freeing the resources used
	 */

	if (info->mtds != NULL) {
		struct s3c2410_nand_mtd *ptr = info->mtds;
		int mtdno;

		for (mtdno = 0; mtdno < info->mtd_count; mtdno++, ptr++) {
			FUNC8("releasing mtd %d (%p)\n", mtdno, ptr);
			FUNC6(&ptr->mtd);
		}

		FUNC5(info->mtds);
	}

	/* free the common resources */

	if (info->clk != NULL && !FUNC0(info->clk)) {
		if (!FUNC1(info))
			FUNC2(info->clk);
		FUNC3(info->clk);
	}

	if (info->regs != NULL) {
		FUNC4(info->regs);
		info->regs = NULL;
	}

	if (info->area != NULL) {
		FUNC9(info->area);
		FUNC5(info->area);
		info->area = NULL;
	}

	FUNC5(info);

	return 0;
}