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
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {scalar_t__ current_page; scalar_t__ page_flipping; } ;
typedef  TYPE_1__ drm_i810_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 

__attribute__((used)) static int FUNC2(struct drm_device *dev)
{
	drm_i810_private_t *dev_priv = dev->dev_private;

	FUNC0("\n");
	if (dev_priv->current_page != 0)
		FUNC1(dev);

	dev_priv->page_flipping = 0;
	return 0;
}