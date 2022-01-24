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
struct TYPE_2__ {int /*<<< orphan*/  parent; int /*<<< orphan*/ * class; } ;
struct spi_master {TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct spi_master* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spi_master_class ; 
 int /*<<< orphan*/  FUNC3 (struct spi_master*,struct spi_master*) ; 

struct spi_master *FUNC4(struct device *dev, unsigned size)
{
	struct spi_master	*master;

	if (!dev)
		return NULL;

	master = FUNC2(size + sizeof *master, GFP_KERNEL);
	if (!master)
		return NULL;

	FUNC0(&master->dev);
	master->dev.class = &spi_master_class;
	master->dev.parent = FUNC1(dev);
	FUNC3(master, &master[1]);

	return master;
}