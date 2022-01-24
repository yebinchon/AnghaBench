#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct v3020_platform_data {scalar_t__ use_gpio; } ;
struct v3020 {TYPE_3__* ops; struct rtc_device* rtc; int /*<<< orphan*/  leftshift; TYPE_1__* gpio; } ;
struct rtc_device {int dummy; } ;
struct TYPE_10__ {struct v3020_platform_data* platform_data; } ;
struct platform_device {TYPE_5__ dev; TYPE_2__* resource; } ;
struct TYPE_9__ {int (* map_io ) (struct v3020*,struct platform_device*,struct v3020_platform_data*) ;int (* read_bit ) (struct v3020*) ;int /*<<< orphan*/  (* unmap_io ) (struct v3020*) ;} ;
struct TYPE_8__ {scalar_t__ start; } ;
struct TYPE_7__ {int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int FUNC1 (struct rtc_device*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 size_t V3020_CS ; 
 size_t V3020_IO ; 
 size_t V3020_RD ; 
 int /*<<< orphan*/  V3020_SECONDS ; 
 int /*<<< orphan*/  V3020_STATUS_0 ; 
 size_t V3020_WR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*,unsigned long long,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct v3020*) ; 
 struct v3020* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct v3020*) ; 
 struct rtc_device* FUNC6 (char*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct v3020*,struct platform_device*,struct v3020_platform_data*) ; 
 int FUNC8 (struct v3020*) ; 
 int /*<<< orphan*/  FUNC9 (struct v3020*) ; 
 int FUNC10 (struct v3020*,int /*<<< orphan*/ ) ; 
 TYPE_3__ v3020_gpio_ops ; 
 TYPE_3__ v3020_mmio_ops ; 
 int /*<<< orphan*/  v3020_rtc_ops ; 
 int /*<<< orphan*/  FUNC11 (struct v3020*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct v3020_platform_data *pdata = pdev->dev.platform_data;
	struct v3020 *chip;
	struct rtc_device *rtc;
	int retval = -EBUSY;
	int i;
	int temp;

	chip = FUNC4(sizeof *chip, GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	if (pdata->use_gpio)
		chip->ops = &v3020_gpio_ops;
	else
		chip->ops = &v3020_mmio_ops;

	retval = chip->ops->map_io(chip, pdev, pdata);
	if (retval)
		goto err_chip;

	/* Make sure the v3020 expects a communication cycle
	 * by reading 8 times */
	for (i = 0; i < 8; i++)
		temp = chip->ops->read_bit(chip);

	/* Test chip by doing a write/read sequence
	 * to the chip ram */
	FUNC11(chip, V3020_SECONDS, 0x33);
	if (FUNC10(chip, V3020_SECONDS) != 0x33) {
		retval = -ENODEV;
		goto err_io;
	}

	/* Make sure frequency measurment mode, test modes, and lock
	 * are all disabled */
	FUNC11(chip, V3020_STATUS_0, 0x0);

	if (pdata->use_gpio)
		FUNC2(&pdev->dev, "Chip available at GPIOs "
			 "%d, %d, %d, %d\n",
			 chip->gpio[V3020_CS].gpio, chip->gpio[V3020_WR].gpio,
			 chip->gpio[V3020_RD].gpio, chip->gpio[V3020_IO].gpio);
	else
		FUNC2(&pdev->dev, "Chip available at "
			 "physical address 0x%llx,"
			 "data connected to D%d\n",
			 (unsigned long long)pdev->resource[0].start,
			 chip->leftshift);

	FUNC5(pdev, chip);

	rtc = FUNC6("v3020",
				&pdev->dev, &v3020_rtc_ops, THIS_MODULE);
	if (FUNC0(rtc)) {
		retval = FUNC1(rtc);
		goto err_io;
	}
	chip->rtc = rtc;

	return 0;

err_io:
	chip->ops->unmap_io(chip);
err_chip:
	FUNC3(chip);

	return retval;
}