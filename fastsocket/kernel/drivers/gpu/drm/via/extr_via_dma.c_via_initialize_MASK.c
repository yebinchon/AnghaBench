#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_device {TYPE_1__* agp; } ;
struct TYPE_15__ {int /*<<< orphan*/ * handle; scalar_t__ mtrr; scalar_t__ flags; scalar_t__ type; int /*<<< orphan*/  size; scalar_t__ offset; } ;
struct TYPE_11__ {int /*<<< orphan*/ * virtual_start; TYPE_9__ map; } ;
struct TYPE_13__ {scalar_t__ chipset; TYPE_3__* mmio; int /*<<< orphan*/  volatile* hw_addr_ptr; int /*<<< orphan*/ * last_pause_ptr; scalar_t__ dma_offset; int /*<<< orphan*/  dma_wrap; int /*<<< orphan*/  dma_high; scalar_t__ dma_low; TYPE_2__ ring; int /*<<< orphan*/ * dma_ptr; } ;
typedef  TYPE_4__ drm_via_private_t ;
struct TYPE_14__ {int reg_pause_addr; scalar_t__ offset; int /*<<< orphan*/  size; } ;
typedef  TYPE_5__ drm_via_dma_init_t ;
struct TYPE_12__ {scalar_t__ handle; } ;
struct TYPE_10__ {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ VIA_DX9_0 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 

__attribute__((used)) static int FUNC4(struct drm_device *dev,
			  drm_via_private_t *dev_priv,
			  drm_via_dma_init_t *init)
{
	if (!dev_priv || !dev_priv->mmio) {
		FUNC0("via_dma_init called before via_map_init\n");
		return -EFAULT;
	}

	if (dev_priv->ring.virtual_start != NULL) {
		FUNC0("called again without calling cleanup\n");
		return -EFAULT;
	}

	if (!dev->agp || !dev->agp->base) {
		FUNC0("called with no agp memory available\n");
		return -EFAULT;
	}

	if (dev_priv->chipset == VIA_DX9_0) {
		FUNC0("AGP DMA is not supported on this chip\n");
		return -EINVAL;
	}

	dev_priv->ring.map.offset = dev->agp->base + init->offset;
	dev_priv->ring.map.size = init->size;
	dev_priv->ring.map.type = 0;
	dev_priv->ring.map.flags = 0;
	dev_priv->ring.map.mtrr = 0;

	FUNC1(&dev_priv->ring.map, dev);

	if (dev_priv->ring.map.handle == NULL) {
		FUNC3(dev);
		FUNC0("can not ioremap virtual address for"
			  " ring buffer\n");
		return -ENOMEM;
	}

	dev_priv->ring.virtual_start = dev_priv->ring.map.handle;

	dev_priv->dma_ptr = dev_priv->ring.virtual_start;
	dev_priv->dma_low = 0;
	dev_priv->dma_high = init->size;
	dev_priv->dma_wrap = init->size;
	dev_priv->dma_offset = init->offset;
	dev_priv->last_pause_ptr = NULL;
	dev_priv->hw_addr_ptr =
		(volatile uint32_t *)((char *)dev_priv->mmio->handle +
		init->reg_pause_addr);

	FUNC2(dev_priv);

	return 0;
}