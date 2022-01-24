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
struct device {int /*<<< orphan*/ * platform_data; int /*<<< orphan*/  archdata; } ;
struct spi_device {struct device dev; } ;
struct of_mmc_spi {int /*<<< orphan*/ * gpios; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct of_mmc_spi*) ; 
 struct of_mmc_spi* FUNC5 (struct device*) ; 

void FUNC6(struct spi_device *spi)
{
	struct device *dev = &spi->dev;
	struct device_node *np = FUNC1(&dev->archdata);
	struct of_mmc_spi *oms = FUNC5(dev);
	int i;

	if (!dev->platform_data || !np)
		return;

	for (i = 0; i < FUNC0(oms->gpios); i++) {
		if (FUNC3(oms->gpios[i]))
			FUNC2(oms->gpios[i]);
	}
	FUNC4(oms);
	dev->platform_data = NULL;
}