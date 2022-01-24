#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct device* parent; } ;
struct spi_master {TYPE_1__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * bus; struct device* parent; } ;
struct spi_device {TYPE_2__ dev; struct spi_master* master; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct spi_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spi_bus_type ; 
 int /*<<< orphan*/  FUNC3 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_master*) ; 
 int /*<<< orphan*/  spidev_release ; 

struct spi_device *FUNC5(struct spi_master *master)
{
	struct spi_device	*spi;
	struct device		*dev = master->dev.parent;

	if (!FUNC3(master))
		return NULL;

	spi = FUNC2(sizeof *spi, GFP_KERNEL);
	if (!spi) {
		FUNC0(dev, "cannot alloc spi_device\n");
		FUNC4(master);
		return NULL;
	}

	spi->master = master;
	spi->dev.parent = dev;
	spi->dev.bus = &spi_bus_type;
	spi->dev.release = spidev_release;
	FUNC1(&spi->dev);
	return spi;
}