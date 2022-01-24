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
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ archdata; int /*<<< orphan*/  release; struct device* parent; int /*<<< orphan*/ * dma_mask; } ;
struct of_device {TYPE_2__ dev; int /*<<< orphan*/  dma_mask; int /*<<< orphan*/  node; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char const*) ; 
 struct of_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct of_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  of_release_dev ; 

struct of_device *FUNC4(struct device_node *np,
				  const char *bus_id,
				  struct device *parent)
{
	struct of_device *dev;

	dev = FUNC1(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return NULL;

	dev->node = FUNC3(np);
	dev->dev.dma_mask = &dev->dma_mask;
	dev->dev.parent = parent;
	dev->dev.release = of_release_dev;
	dev->dev.archdata.of_node = np;

	if (bus_id)
		FUNC0(&dev->dev, bus_id);
	else
		FUNC2(dev);

	return dev;
}