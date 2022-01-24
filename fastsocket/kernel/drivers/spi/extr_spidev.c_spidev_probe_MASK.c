#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct spidev_data {int /*<<< orphan*/  device_entry; int /*<<< orphan*/  devt; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  spi_lock; struct spi_device* spi; } ;
struct spi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  chip_select; TYPE_1__* master; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus_num; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long N_SPI_MINORS ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  SPIDEV_MAJOR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct device* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct spidev_data*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  device_list ; 
 int /*<<< orphan*/  device_list_lock ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct spidev_data*) ; 
 struct spidev_data* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  minors ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct spi_device*,struct spidev_data*) ; 
 int /*<<< orphan*/  spidev_class ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct spi_device *spi)
{
	struct spidev_data	*spidev;
	int			status;
	unsigned long		minor;

	/* Allocate driver data */
	spidev = FUNC8(sizeof(*spidev), GFP_KERNEL);
	if (!spidev)
		return -ENOMEM;

	/* Initialize the driver data */
	spidev->spi = spi;
	FUNC15(&spidev->spi_lock);
	FUNC10(&spidev->buf_lock);

	FUNC0(&spidev->device_entry);

	/* If we can allocate a minor number, hook up this device.
	 * Reusing minors is fine so long as udev or mdev is working.
	 */
	FUNC11(&device_list_lock);
	minor = FUNC6(minors, N_SPI_MINORS);
	if (minor < N_SPI_MINORS) {
		struct device *dev;

		spidev->devt = FUNC2(SPIDEV_MAJOR, minor);
		dev = FUNC5(spidev_class, &spi->dev, spidev->devt,
				    spidev, "spidev%d.%d",
				    spi->master->bus_num, spi->chip_select);
		status = FUNC1(dev) ? FUNC3(dev) : 0;
	} else {
		FUNC4(&spi->dev, "no minor number available!\n");
		status = -ENODEV;
	}
	if (status == 0) {
		FUNC13(minor, minors);
		FUNC9(&spidev->device_entry, &device_list);
	}
	FUNC12(&device_list_lock);

	if (status == 0)
		FUNC14(spi, spidev);
	else
		FUNC7(spidev);

	return status;
}