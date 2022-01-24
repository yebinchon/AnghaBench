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
struct drm_device {TYPE_1__* driver; int /*<<< orphan*/  irq_enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* irq_postinstall ) (struct drm_device*) ;int /*<<< orphan*/  (* irq_preinstall ) (struct drm_device*) ;int /*<<< orphan*/  (* irq_uninstall ) (struct drm_device*) ;int /*<<< orphan*/  (* vgaarb_irq ) (struct drm_device*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 

__attribute__((used)) static void FUNC4(void *cookie, bool state)
{
	struct drm_device *dev = cookie;

	if (dev->driver->vgaarb_irq) {
		dev->driver->vgaarb_irq(dev, state);
		return;
	}

	if (!dev->irq_enabled)
		return;

	if (state) {
		if (dev->driver->irq_uninstall)
			dev->driver->irq_uninstall(dev);
	} else {
		if (dev->driver->irq_preinstall)
			dev->driver->irq_preinstall(dev);
		if (dev->driver->irq_postinstall)
			dev->driver->irq_postinstall(dev);
	}
}