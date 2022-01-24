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
struct spidev_data {scalar_t__ users; int /*<<< orphan*/  devt; int /*<<< orphan*/  device_entry; int /*<<< orphan*/  spi_lock; int /*<<< orphan*/ * spi; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  device_list_lock ; 
 int /*<<< orphan*/  FUNC3 (struct spidev_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  minors ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct spidev_data* FUNC7 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spidev_class ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct spi_device *spi)
{
	struct spidev_data	*spidev = FUNC7(spi);

	/* make sure ops on existing fds can abort cleanly */
	FUNC9(&spidev->spi_lock);
	spidev->spi = NULL;
	FUNC8(spi, NULL);
	FUNC10(&spidev->spi_lock);

	/* prevent new opens */
	FUNC5(&device_list_lock);
	FUNC4(&spidev->device_entry);
	FUNC2(spidev_class, spidev->devt);
	FUNC1(FUNC0(spidev->devt), minors);
	if (spidev->users == 0)
		FUNC3(spidev);
	FUNC6(&device_list_lock);

	return 0;
}