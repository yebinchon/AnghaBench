#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v3020_platform_data {int /*<<< orphan*/  gpio_io; int /*<<< orphan*/  gpio_rd; int /*<<< orphan*/  gpio_wr; int /*<<< orphan*/  gpio_cs; } ;
struct v3020 {TYPE_1__* gpio; } ;
struct platform_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  gpio; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 size_t V3020_CS ; 
 size_t V3020_IO ; 
 size_t V3020_RD ; 
 size_t V3020_WR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* v3020_gpio ; 

__attribute__((used)) static int FUNC4(struct v3020 *chip, struct platform_device *pdev,
			  struct v3020_platform_data *pdata)
{
	int i, err;

	v3020_gpio[V3020_CS].gpio = pdata->gpio_cs;
	v3020_gpio[V3020_WR].gpio = pdata->gpio_wr;
	v3020_gpio[V3020_RD].gpio = pdata->gpio_rd;
	v3020_gpio[V3020_IO].gpio = pdata->gpio_io;

	for (i = 0; i < FUNC0(v3020_gpio); i++) {
		err = FUNC3(v3020_gpio[i].gpio, v3020_gpio[i].name);
		if (err)
			goto err_request;

		FUNC1(v3020_gpio[i].gpio, 1);
	}

	chip->gpio = v3020_gpio;

	return 0;

err_request:
	while (--i >= 0)
		FUNC2(v3020_gpio[i].gpio);

	return err;
}