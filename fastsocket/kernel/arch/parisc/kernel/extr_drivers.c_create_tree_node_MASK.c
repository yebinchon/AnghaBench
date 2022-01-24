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
struct TYPE_4__ {int* dma_mask; int coherent_dma_mask; int /*<<< orphan*/ * bus; struct device* parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  hw_type; } ;
struct parisc_device {char hw_path; int dma_mask; TYPE_2__ dev; TYPE_1__ id; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HPHW_FAULTY ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct parisc_device*) ; 
 struct parisc_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parisc_bus_type ; 
 int /*<<< orphan*/  FUNC3 (struct parisc_device*) ; 

struct parisc_device * FUNC4(char id, struct device *parent)
{
	struct parisc_device *dev = FUNC2(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return NULL;

	dev->hw_path = id;
	dev->id.hw_type = HPHW_FAULTY;

	dev->dev.parent = parent;
	FUNC3(dev);

	dev->dev.bus = &parisc_bus_type;
	dev->dma_mask = 0xffffffffUL;	/* PARISC devices are 32-bit */

	/* make the generic dma mask a pointer to the parisc one */
	dev->dev.dma_mask = &dev->dma_mask;
	dev->dev.coherent_dma_mask = dev->dma_mask;
	if (FUNC0(&dev->dev)) {
		FUNC1(dev);
		return NULL;
	}

	return dev;
}