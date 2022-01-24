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
struct spi_driver {scalar_t__ id_table; } ;
struct spi_device {int /*<<< orphan*/  modalias; } ;
struct device_driver {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct spi_device const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct spi_device* FUNC2 (struct device*) ; 
 struct spi_driver* FUNC3 (struct device_driver*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct device_driver *drv)
{
	const struct spi_device	*spi = FUNC2(dev);
	const struct spi_driver	*sdrv = FUNC3(drv);

	if (sdrv->id_table)
		return !!FUNC0(sdrv->id_table, spi);

	return FUNC1(spi->modalias, drv->name) == 0;
}