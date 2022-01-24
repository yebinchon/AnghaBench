#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_12__ {struct ixp2000_flash_data* platform_data; } ;
struct platform_device {TYPE_5__ dev; TYPE_1__* resource; } ;
struct TYPE_11__ {unsigned long size; int bankwidth; unsigned long map_priv_2; unsigned long map_priv_1; int /*<<< orphan*/  copy_to; int /*<<< orphan*/  copy_from; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  name; int /*<<< orphan*/  phys; } ;
struct ixp2000_flash_info {int /*<<< orphan*/  partitions; TYPE_2__* mtd; TYPE_4__ map; int /*<<< orphan*/  res; } ;
struct ixp2000_flash_data {unsigned long nr_banks; scalar_t__ bank_setup; struct flash_platform_data* platform_data; } ;
struct flash_platform_data {int width; int /*<<< orphan*/  map_name; } ;
struct TYPE_10__ {int /*<<< orphan*/  owner; } ;
struct TYPE_9__ {int end; int start; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NO_XIP ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ erratum44_workaround ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  ixp2000_flash_copy_from ; 
 int /*<<< orphan*/  ixp2000_flash_copy_to ; 
 int /*<<< orphan*/  ixp2000_flash_read8 ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  ixp2000_flash_write8 ; 
 scalar_t__ FUNC7 () ; 
 struct ixp2000_flash_info* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ixp2000_flash_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (TYPE_2__*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct ixp2000_flash_info*) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct platform_device *dev)
{
	static const char *probes[] = { "RedBoot", "cmdlinepart", NULL };
	struct ixp2000_flash_data *ixp_data = dev->dev.platform_data;
	struct flash_platform_data *plat;
	struct ixp2000_flash_info *info;
	unsigned long window_size;
	int err = -1;

	if (!ixp_data)
		return -ENODEV;

	plat = ixp_data->platform_data;
	if (!plat)
		return -ENODEV;

	window_size = dev->resource->end - dev->resource->start + 1;
	FUNC2(&dev->dev, "Probe of IXP2000 flash(%d banks x %dMiB)\n",
		 ixp_data->nr_banks, ((u32)window_size >> 20));

	if (plat->width != 1) {
		FUNC1(&dev->dev, "IXP2000 MTD map only supports 8-bit mode, asking for %d\n",
			plat->width * 8);
		return -EIO;
	}

	info = FUNC8(sizeof(struct ixp2000_flash_info), GFP_KERNEL);
	if(!info) {
		err = -ENOMEM;
		goto Error;
	}
	FUNC9(info, 0, sizeof(struct ixp2000_flash_info));

	FUNC11(dev, info);

	/*
	 * Tell the MTD layer we're not 1:1 mapped so that it does
	 * not attempt to do a direct access on us.
	 */
	info->map.phys = NO_XIP;

	info->map.size = ixp_data->nr_banks * window_size;
	info->map.bankwidth = 1;

	/*
 	 * map_priv_2 is used to store a ptr to the bank_setup routine
 	 */
	info->map.map_priv_2 = (unsigned long) ixp_data->bank_setup;

	info->map.name = FUNC3(&dev->dev);
	info->map.read = ixp2000_flash_read8;
	info->map.write = ixp2000_flash_write8;
	info->map.copy_from = ixp2000_flash_copy_from;
	info->map.copy_to = ixp2000_flash_copy_to;

	info->res = FUNC12(dev->resource->start,
			dev->resource->end - dev->resource->start + 1,
			FUNC3(&dev->dev));
	if (!info->res) {
		FUNC1(&dev->dev, "Could not reserve memory region\n");
		err = -ENOMEM;
		goto Error;
	}

	info->map.map_priv_1 = (unsigned long) FUNC5(dev->resource->start,
			    	dev->resource->end - dev->resource->start + 1);
	if (!info->map.map_priv_1) {
		FUNC1(&dev->dev, "Failed to ioremap flash region\n");
		err = -EIO;
		goto Error;
	}

#if defined(__ARMEB__)
	/*
	 * Enable erratum 44 workaround for NPUs with broken slowport
	 */

	erratum44_workaround = ixp2000_has_broken_slowport();
	dev_info(&dev->dev, "Erratum 44 workaround %s\n",
	       erratum44_workaround ? "enabled" : "disabled");
#endif

	info->mtd = FUNC4(plat->map_name, &info->map);
	if (!info->mtd) {
		FUNC1(&dev->dev, "map_probe failed\n");
		err = -ENXIO;
		goto Error;
	}
	info->mtd->owner = THIS_MODULE;

	err = FUNC10(info->mtd, probes, &info->partitions, 0);
	if (err > 0) {
		err = FUNC0(info->mtd, info->partitions, err);
		if(err)
			FUNC1(&dev->dev, "Could not parse partitions\n");
	}

	if (err)
		goto Error;

	return 0;

Error:
	FUNC6(dev);
	return err;
}