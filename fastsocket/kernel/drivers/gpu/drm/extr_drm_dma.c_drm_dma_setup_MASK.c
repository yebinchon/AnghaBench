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
struct drm_device {TYPE_1__* dma; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bufs; } ;

/* Variables and functions */
 int DRM_MAX_ORDER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct drm_device *dev)
{
	int i;

	dev->dma = FUNC0(sizeof(*dev->dma), GFP_KERNEL);
	if (!dev->dma)
		return -ENOMEM;

	for (i = 0; i <= DRM_MAX_ORDER; i++)
		FUNC1(&dev->dma->bufs[i], 0, sizeof(dev->dma->bufs[0]));

	return 0;
}