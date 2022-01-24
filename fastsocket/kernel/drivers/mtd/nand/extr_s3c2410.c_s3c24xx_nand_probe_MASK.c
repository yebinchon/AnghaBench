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
struct s3c2410_platform_nand {int nr_sets; struct s3c2410_nand_set* sets; } ;
struct s3c2410_nand_set {int nr_chips; } ;
struct TYPE_3__ {int /*<<< orphan*/  wq; int /*<<< orphan*/  lock; } ;
struct s3c2410_nand_mtd {int cpu_type; int mtd_count; scalar_t__ scan_res; int /*<<< orphan*/  clk; int /*<<< orphan*/  mtd; struct s3c2410_nand_mtd* mtds; int /*<<< orphan*/ * regs; struct s3c2410_platform_nand* platform; int /*<<< orphan*/ * device; int /*<<< orphan*/ * area; TYPE_1__ controller; } ;
struct s3c2410_nand_info {int cpu_type; int mtd_count; scalar_t__ scan_res; int /*<<< orphan*/  clk; int /*<<< orphan*/  mtd; struct s3c2410_nand_info* mtds; int /*<<< orphan*/ * regs; struct s3c2410_platform_nand* platform; int /*<<< orphan*/ * device; int /*<<< orphan*/ * area; TYPE_1__ controller; } ;
struct resource {int end; int start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; struct resource* resource; } ;
typedef  enum s3c_cpu_type { ____Placeholder_s3c_cpu_type } s3c_cpu_type ;
struct TYPE_4__ {int driver_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct s3c2410_nand_mtd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int,int) ; 
 void* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct s3c2410_nand_mtd*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC14 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct s3c2410_nand_mtd*) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/ * FUNC17 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct s3c2410_nand_mtd*,struct s3c2410_nand_mtd*,struct s3c2410_nand_set*) ; 
 int FUNC19 (struct s3c2410_nand_mtd*) ; 
 int /*<<< orphan*/  FUNC20 (struct s3c2410_nand_mtd*,struct s3c2410_nand_mtd*,struct s3c2410_nand_set*) ; 
 int FUNC21 (struct s3c2410_nand_mtd*) ; 
 int /*<<< orphan*/  FUNC22 (struct s3c2410_nand_mtd*,struct s3c2410_nand_mtd*) ; 
 int /*<<< orphan*/  FUNC23 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 struct s3c2410_platform_nand* FUNC25 (struct platform_device*) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct s3c2410_platform_nand *plat = FUNC25(pdev);
	enum s3c_cpu_type cpu_type; 
	struct s3c2410_nand_info *info;
	struct s3c2410_nand_mtd *nmtd;
	struct s3c2410_nand_set *sets;
	struct resource *res;
	int err = 0;
	int size;
	int nr_sets;
	int setno;

	cpu_type = FUNC14(pdev)->driver_data;

	FUNC16("s3c2410_nand_probe(%p)\n", pdev);

	info = FUNC10(sizeof(*info), GFP_KERNEL);
	if (info == NULL) {
		FUNC6(&pdev->dev, "no memory for flash info\n");
		err = -ENOMEM;
		goto exit_error;
	}

	FUNC11(info, 0, sizeof(*info));
	FUNC15(pdev, info);

	FUNC24(&info->controller.lock);
	FUNC8(&info->controller.wq);

	/* get the clock source and enable it */

	info->clk = FUNC4(&pdev->dev, "nand");
	if (FUNC0(info->clk)) {
		FUNC6(&pdev->dev, "failed to get clock\n");
		err = -ENOENT;
		goto exit_error;
	}

	FUNC3(info->clk);

	/* allocate and map the resource */

	/* currently we assume we have the one resource */
	res  = pdev->resource;
	size = res->end - res->start + 1;

	info->area = FUNC17(res->start, size, pdev->name);

	if (info->area == NULL) {
		FUNC6(&pdev->dev, "cannot reserve register region\n");
		err = -ENOENT;
		goto exit_error;
	}

	info->device     = &pdev->dev;
	info->platform   = plat;
	info->regs       = FUNC9(res->start, size);
	info->cpu_type   = cpu_type;

	if (info->regs == NULL) {
		FUNC6(&pdev->dev, "cannot reserve register region\n");
		err = -EIO;
		goto exit_error;
	}

	FUNC5(&pdev->dev, "mapped registers at %p\n", info->regs);

	/* initialise the hardware */

	err = FUNC21(info);
	if (err != 0)
		goto exit_error;

	sets = (plat != NULL) ? plat->sets : NULL;
	nr_sets = (plat != NULL) ? plat->nr_sets : 1;

	info->mtd_count = nr_sets;

	/* allocate our information */

	size = nr_sets * sizeof(*info->mtds);
	info->mtds = FUNC10(size, GFP_KERNEL);
	if (info->mtds == NULL) {
		FUNC6(&pdev->dev, "failed to allocate mtd storage\n");
		err = -ENOMEM;
		goto exit_error;
	}

	FUNC11(info->mtds, 0, size);

	/* initialise all possible chips */

	nmtd = info->mtds;

	for (setno = 0; setno < nr_sets; setno++, nmtd++) {
		FUNC16("initialising set %d (%p, info %p)\n", setno, nmtd, info);

		FUNC20(info, nmtd, sets);

		nmtd->scan_res = FUNC12(&nmtd->mtd,
						 (sets) ? sets->nr_chips : 1);

		if (nmtd->scan_res == 0) {
			FUNC22(info, nmtd);
			FUNC13(&nmtd->mtd);
			FUNC18(info, nmtd, sets);
		}

		if (sets != NULL)
			sets++;
	}

	err = FUNC19(info);
	if (err < 0) {
		FUNC6(&pdev->dev, "failed to init cpufreq support\n");
		goto exit_error;
	}

	if (FUNC1(info)) {
		FUNC7(&pdev->dev, "clock idle support enabled\n");
		FUNC2(info->clk);
	}

	FUNC16("initialised ok\n");
	return 0;

 exit_error:
	FUNC23(pdev);

	if (err == 0)
		err = -EINVAL;
	return err;
}