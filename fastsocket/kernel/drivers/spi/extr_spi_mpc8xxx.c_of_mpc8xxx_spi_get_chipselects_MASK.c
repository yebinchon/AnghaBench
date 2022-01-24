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
struct mpc8xxx_spi_probe_info {int* gpios; int* alow_flags; } ;
struct fsl_spi_platform_data {int max_chipselect; int /*<<< orphan*/  cs_control; } ;
struct device_node {int dummy; } ;
struct device {struct fsl_spi_platform_data* platform_data; int /*<<< orphan*/  archdata; } ;
typedef  enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int OF_GPIO_ACTIVE_LOW ; 
 struct device_node* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int* FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 
 int* FUNC9 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*,int,unsigned int) ; 
 int /*<<< orphan*/  mpc8xxx_spi_cs_control ; 
 int FUNC11 (struct device_node*,int,int*) ; 
 unsigned int FUNC12 (struct device_node*) ; 
 struct mpc8xxx_spi_probe_info* FUNC13 (struct fsl_spi_platform_data*) ; 

__attribute__((used)) static int FUNC14(struct device *dev)
{
	struct device_node *np = FUNC0(&dev->archdata);
	struct fsl_spi_platform_data *pdata = dev->platform_data;
	struct mpc8xxx_spi_probe_info *pinfo = FUNC13(pdata);
	unsigned int ngpios;
	int i = 0;
	int ret;

	ngpios = FUNC12(np);
	if (!ngpios) {
		/*
		 * SPI w/o chip-select line. One SPI device is still permitted
		 * though.
		 */
		pdata->max_chipselect = 1;
		return 0;
	}

	pinfo->gpios = FUNC8(ngpios * sizeof(*pinfo->gpios), GFP_KERNEL);
	if (!pinfo->gpios)
		return -ENOMEM;
	FUNC10(pinfo->gpios, -1, ngpios * sizeof(*pinfo->gpios));

	pinfo->alow_flags = FUNC9(ngpios * sizeof(*pinfo->alow_flags),
				    GFP_KERNEL);
	if (!pinfo->alow_flags) {
		ret = -ENOMEM;
		goto err_alloc_flags;
	}

	for (; i < ngpios; i++) {
		int gpio;
		enum of_gpio_flags flags;

		gpio = FUNC11(np, i, &flags);
		if (!FUNC5(gpio)) {
			FUNC1(dev, "invalid gpio #%d: %d\n", i, gpio);
			goto err_loop;
		}

		ret = FUNC6(gpio, FUNC2(dev));
		if (ret) {
			FUNC1(dev, "can't request gpio #%d: %d\n", i, ret);
			goto err_loop;
		}

		pinfo->gpios[i] = gpio;
		pinfo->alow_flags[i] = flags & OF_GPIO_ACTIVE_LOW;

		ret = FUNC3(pinfo->gpios[i],
					    pinfo->alow_flags[i]);
		if (ret) {
			FUNC1(dev, "can't set output direction for gpio "
				"#%d: %d\n", i, ret);
			goto err_loop;
		}
	}

	pdata->max_chipselect = ngpios;
	pdata->cs_control = mpc8xxx_spi_cs_control;

	return 0;

err_loop:
	while (i >= 0) {
		if (FUNC5(pinfo->gpios[i]))
			FUNC4(pinfo->gpios[i]);
		i--;
	}

	FUNC7(pinfo->alow_flags);
	pinfo->alow_flags = NULL;
err_alloc_flags:
	FUNC7(pinfo->gpios);
	pinfo->gpios = NULL;
	return ret;
}