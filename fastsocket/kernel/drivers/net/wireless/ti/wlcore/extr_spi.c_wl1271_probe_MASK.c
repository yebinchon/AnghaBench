#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct wlcore_platdev_data {TYPE_2__* core; TYPE_7__* dev; int /*<<< orphan*/ * if_ops; int /*<<< orphan*/  pdata; } ;
struct wl12xx_spi_glue {TYPE_2__* core; TYPE_7__* dev; int /*<<< orphan*/ * if_ops; int /*<<< orphan*/  pdata; } ;
struct TYPE_10__ {int /*<<< orphan*/  platform_data; } ;
struct spi_device {int bits_per_word; int /*<<< orphan*/  irq; TYPE_7__ dev; } ;
struct resource {char* name; int /*<<< orphan*/  flags; int /*<<< orphan*/  start; } ;
typedef  int /*<<< orphan*/  res ;
struct TYPE_8__ {TYPE_7__* parent; } ;
struct TYPE_9__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct resource*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wlcore_platdev_data*) ; 
 struct wlcore_platdev_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*,int,int) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,struct wlcore_platdev_data*,int) ; 
 int FUNC7 (TYPE_2__*,struct resource*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  spi_ops ; 
 int /*<<< orphan*/  FUNC10 (struct spi_device*,struct wlcore_platdev_data*) ; 
 int FUNC11 (struct spi_device*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct wl12xx_spi_glue *glue;
	struct wlcore_platdev_data *pdev_data;
	struct resource res[1];
	int ret = -ENOMEM;

	pdev_data = FUNC3(sizeof(*pdev_data), GFP_KERNEL);
	if (!pdev_data)
		goto out;

	pdev_data->pdata = spi->dev.platform_data;
	if (!pdev_data->pdata) {
		FUNC1(&spi->dev, "no platform data\n");
		ret = -ENODEV;
		goto out_free_pdev_data;
	}

	pdev_data->if_ops = &spi_ops;

	glue = FUNC3(sizeof(*glue), GFP_KERNEL);
	if (!glue) {
		FUNC1(&spi->dev, "can't allocate glue\n");
		goto out_free_pdev_data;
	}

	glue->dev = &spi->dev;

	FUNC10(spi, glue);

	/* This is the only SPI value that we need to set here, the rest
	 * comes from the board-peripherals file */
	spi->bits_per_word = 32;

	ret = FUNC11(spi);
	if (ret < 0) {
		FUNC1(glue->dev, "spi_setup failed\n");
		goto out_free_glue;
	}

	glue->core = FUNC8("wl12xx", PLATFORM_DEVID_AUTO);
	if (!glue->core) {
		FUNC1(glue->dev, "can't allocate platform_device\n");
		ret = -ENOMEM;
		goto out_free_glue;
	}

	glue->core->dev.parent = &spi->dev;

	FUNC4(res, 0x00, sizeof(res));

	res[0].start = spi->irq;
	res[0].flags = IORESOURCE_IRQ;
	res[0].name = "irq";

	ret = FUNC7(glue->core, res, FUNC0(res));
	if (ret) {
		FUNC1(glue->dev, "can't add resources\n");
		goto out_dev_put;
	}

	ret = FUNC6(glue->core, pdev_data,
				       sizeof(*pdev_data));
	if (ret) {
		FUNC1(glue->dev, "can't add platform data\n");
		goto out_dev_put;
	}

	ret = FUNC5(glue->core);
	if (ret) {
		FUNC1(glue->dev, "can't register platform device\n");
		goto out_dev_put;
	}

	return 0;

out_dev_put:
	FUNC9(glue->core);

out_free_glue:
	FUNC2(glue);

out_free_pdev_data:
	FUNC2(pdev_data);

out:
	return ret;
}