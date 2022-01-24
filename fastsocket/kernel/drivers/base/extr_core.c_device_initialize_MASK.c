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
struct TYPE_2__ {int /*<<< orphan*/  kset; } ;
struct device {int /*<<< orphan*/  devres_head; int /*<<< orphan*/  devres_lock; int /*<<< orphan*/  sem; int /*<<< orphan*/  dma_pools; TYPE_1__ kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  device_ktype ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  devices_kset ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct device *dev)
{
	dev->kobj.kset = devices_kset;
	FUNC4(&dev->kobj, &device_ktype);
	FUNC0(&dev->dma_pools);
	FUNC3(&dev->sem);
	FUNC6(&dev->devres_lock);
	FUNC0(&dev->devres_head);
	FUNC1(dev, 0);
	FUNC2(dev);
	FUNC5(dev, -1);
}