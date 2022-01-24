#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct resource {scalar_t__ start; } ;
struct TYPE_11__ {char* name; int /*<<< orphan*/ * virt; int /*<<< orphan*/  size; int /*<<< orphan*/  bankwidth; scalar_t__ phys; } ;
struct platram_info {int free_partitions; TYPE_3__* mtd; int /*<<< orphan*/  partitions; TYPE_2__ map; int /*<<< orphan*/ * area; struct platdata_mtd_ram* pdata; TYPE_5__* dev; } ;
struct TYPE_13__ {struct platdata_mtd_ram* platform_data; } ;
struct platform_device {TYPE_5__ dev; scalar_t__ name; } ;
struct platdata_mtd_ram {char** map_probes; int nr_partitions; int /*<<< orphan*/  partitions; scalar_t__ probes; int /*<<< orphan*/  bankwidth; int /*<<< orphan*/ * mapname; } ;
struct TYPE_10__ {TYPE_5__* parent; } ;
struct TYPE_12__ {TYPE_1__ dev; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  PLATRAM_RW ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,char*) ; 
 void* FUNC5 (char const*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct platram_info* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct platram_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct platram_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct platdata_mtd_ram	*pdata;
	struct platram_info *info;
	struct resource *res;
	int err = 0;

	FUNC2(&pdev->dev, "probe entered\n");

	if (pdev->dev.platform_data == NULL) {
		FUNC3(&pdev->dev, "no platform data supplied\n");
		err = -ENOENT;
		goto exit_error;
	}

	pdata = pdev->dev.platform_data;

	info = FUNC7(sizeof(*info), GFP_KERNEL);
	if (info == NULL) {
		FUNC3(&pdev->dev, "no memory for flash info\n");
		err = -ENOMEM;
		goto exit_error;
	}

	FUNC10(pdev, info);

	info->dev = &pdev->dev;
	info->pdata = pdata;

	/* get the resource for the memory mapping */

	res = FUNC9(pdev, IORESOURCE_MEM, 0);

	if (res == NULL) {
		FUNC3(&pdev->dev, "no memory resource specified\n");
		err = -ENOENT;
		goto exit_free;
	}

	FUNC2(&pdev->dev, "got platform resource %p (0x%llx)\n", res,
		(unsigned long long)res->start);

	/* setup map parameters */

	info->map.phys = res->start;
	info->map.size = FUNC14(res);
	info->map.name = pdata->mapname != NULL ?
			(char *)pdata->mapname : (char *)pdev->name;
	info->map.bankwidth = pdata->bankwidth;

	/* register our usage of the memory area */

	info->area = FUNC13(res->start, info->map.size, pdev->name);
	if (info->area == NULL) {
		FUNC3(&pdev->dev, "failed to request memory region\n");
		err = -EIO;
		goto exit_free;
	}

	/* remap the memory area */

	info->map.virt = FUNC6(res->start, info->map.size);
	FUNC2(&pdev->dev, "virt %p, %lu bytes\n", info->map.virt, info->map.size);

	if (info->map.virt == NULL) {
		FUNC3(&pdev->dev, "failed to ioremap() region\n");
		err = -EIO;
		goto exit_free;
	}

	FUNC15(&info->map);

	FUNC2(&pdev->dev, "initialised map, probing for mtd\n");

	/* probe for the right mtd map driver
	 * supplied by the platform_data struct */

	if (pdata->map_probes) {
		const char **map_probes = pdata->map_probes;

		for ( ; !info->mtd && *map_probes; map_probes++)
			info->mtd = FUNC5(*map_probes , &info->map);
	}
	/* fallback to map_ram */
	else
		info->mtd = FUNC5("map_ram", &info->map);

	if (info->mtd == NULL) {
		FUNC3(&pdev->dev, "failed to probe for map_ram\n");
		err = -ENOMEM;
		goto exit_free;
	}

	info->mtd->owner = THIS_MODULE;
	info->mtd->dev.parent = &pdev->dev;

	FUNC12(info, PLATRAM_RW);

	/* check to see if there are any available partitions, or wether
	 * to add this device whole */

#ifdef CONFIG_MTD_PARTITIONS
	if (!pdata->nr_partitions) {
		/* try to probe using the supplied probe type */
		if (pdata->probes) {
			err = parse_mtd_partitions(info->mtd, pdata->probes,
					   &info->partitions, 0);
			info->free_partitions = 1;
			if (err > 0)
				err = add_mtd_partitions(info->mtd,
					info->partitions, err);
		}
	}
	/* use the static mapping */
	else
		err = add_mtd_partitions(info->mtd, pdata->partitions,
				pdata->nr_partitions);
#endif /* CONFIG_MTD_PARTITIONS */

	if (FUNC0(info->mtd)) {
		FUNC3(&pdev->dev, "add_mtd_device() failed\n");
		err = -ENOMEM;
	}

	if (!err)
		FUNC4(&pdev->dev, "registered mtd device\n");

	return err;

 exit_free:
	FUNC11(pdev);
 exit_error:
	return err;
}