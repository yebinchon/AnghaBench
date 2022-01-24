#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct wlcore_platdev_data {TYPE_5__* core; int /*<<< orphan*/ * dev; TYPE_4__* pdata; int /*<<< orphan*/ * if_ops; } ;
struct wl12xx_sdio_glue {TYPE_5__* core; int /*<<< orphan*/ * dev; TYPE_4__* pdata; int /*<<< orphan*/ * if_ops; } ;
struct sdio_func {int num; int /*<<< orphan*/  dev; TYPE_2__* card; } ;
struct sdio_device_id {int dummy; } ;
struct resource {char* name; int /*<<< orphan*/  flags; int /*<<< orphan*/  start; } ;
typedef  int /*<<< orphan*/  res ;
typedef  int mmc_pm_flag_t ;
struct TYPE_14__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_16__ {TYPE_3__ dev; } ;
struct TYPE_15__ {int pwr_in_suspend; int /*<<< orphan*/  irq; } ;
struct TYPE_12__ {scalar_t__ sdio_vsn; } ;
struct TYPE_13__ {TYPE_1__ cccr; int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct resource*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int MMC_PM_KEEP_POWER ; 
 int /*<<< orphan*/  MMC_QUIRK_BLKSZ_FOR_BYTE_MODE ; 
 int /*<<< orphan*/  MMC_QUIRK_LENIENT_FN0 ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC2 (TYPE_4__*) ; 
 scalar_t__ SDIO_SDIO_REV_3_00 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct wlcore_platdev_data*) ; 
 struct wlcore_platdev_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,int,int) ; 
 int FUNC8 (TYPE_5__*) ; 
 int FUNC9 (TYPE_5__*,struct wlcore_platdev_data*,int) ; 
 int FUNC10 (TYPE_5__*,struct resource*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC11 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct sdio_func*) ; 
 int /*<<< orphan*/  sdio_ops ; 
 int /*<<< orphan*/  FUNC15 (struct sdio_func*,struct wlcore_platdev_data*) ; 
 TYPE_4__* FUNC16 () ; 

__attribute__((used)) static int FUNC17(struct sdio_func *func,
				  const struct sdio_device_id *id)
{
	struct wlcore_platdev_data *pdev_data;
	struct wl12xx_sdio_glue *glue;
	struct resource res[1];
	mmc_pm_flag_t mmcflags;
	int ret = -ENOMEM;
	const char *chip_family;

	/* We are only able to handle the wlan function */
	if (func->num != 0x02)
		return -ENODEV;

	pdev_data = FUNC6(sizeof(*pdev_data), GFP_KERNEL);
	if (!pdev_data)
		goto out;

	pdev_data->if_ops = &sdio_ops;

	glue = FUNC6(sizeof(*glue), GFP_KERNEL);
	if (!glue) {
		FUNC4(&func->dev, "can't allocate glue\n");
		goto out_free_pdev_data;
	}

	glue->dev = &func->dev;

	/* Grab access to FN0 for ELP reg. */
	func->card->quirks |= MMC_QUIRK_LENIENT_FN0;

	/* Use block mode for transferring over one block size of data */
	func->card->quirks |= MMC_QUIRK_BLKSZ_FOR_BYTE_MODE;

	pdev_data->pdata = FUNC16();
	if (FUNC1(pdev_data->pdata)) {
		ret = FUNC2(pdev_data->pdata);
		FUNC4(glue->dev, "missing wlan platform data: %d\n", ret);
		goto out_free_glue;
	}

	/* if sdio can keep power while host is suspended, enable wow */
	mmcflags = FUNC14(func);
	FUNC3(glue->dev, "sdio PM caps = 0x%x\n", mmcflags);

	if (mmcflags & MMC_PM_KEEP_POWER)
		pdev_data->pdata->pwr_in_suspend = true;

	FUNC15(func, glue);

	/* Tell PM core that we don't need the card to be powered now */
	FUNC13(&func->dev);

	/*
	 * Due to a hardware bug, we can't differentiate wl18xx from
	 * wl12xx, because both report the same device ID.  The only
	 * way to differentiate is by checking the SDIO revision,
	 * which is 3.00 on the wl18xx chips.
	 */
	if (func->card->cccr.sdio_vsn == SDIO_SDIO_REV_3_00)
		chip_family = "wl18xx";
	else
		chip_family = "wl12xx";

	glue->core = FUNC11(chip_family, PLATFORM_DEVID_AUTO);
	if (!glue->core) {
		FUNC4(glue->dev, "can't allocate platform_device");
		ret = -ENOMEM;
		goto out_free_glue;
	}

	glue->core->dev.parent = &func->dev;

	FUNC7(res, 0x00, sizeof(res));

	res[0].start = pdev_data->pdata->irq;
	res[0].flags = IORESOURCE_IRQ;
	res[0].name = "irq";

	ret = FUNC10(glue->core, res, FUNC0(res));
	if (ret) {
		FUNC4(glue->dev, "can't add resources\n");
		goto out_dev_put;
	}

	ret = FUNC9(glue->core, pdev_data,
				       sizeof(*pdev_data));
	if (ret) {
		FUNC4(glue->dev, "can't add platform data\n");
		goto out_dev_put;
	}

	ret = FUNC8(glue->core);
	if (ret) {
		FUNC4(glue->dev, "can't add platform device\n");
		goto out_dev_put;
	}
	return 0;

out_dev_put:
	FUNC12(glue->core);

out_free_glue:
	FUNC5(glue);

out_free_pdev_data:
	FUNC5(pdev_data);

out:
	return ret;
}