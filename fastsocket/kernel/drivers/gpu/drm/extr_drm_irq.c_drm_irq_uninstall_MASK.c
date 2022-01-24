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
struct drm_device {int irq_enabled; int num_crtcs; TYPE_1__* driver; int /*<<< orphan*/  pdev; int /*<<< orphan*/  vbl_lock; int /*<<< orphan*/ * last_vblank; scalar_t__* vblank_enabled; int /*<<< orphan*/ * vbl_queue; int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* irq_uninstall ) (struct drm_device*) ;int /*<<< orphan*/  (* get_vblank_counter ) (struct drm_device*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_HAVE_IRQ ; 
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC12(struct drm_device *dev)
{
	unsigned long irqflags;
	int irq_enabled, i;

	if (!FUNC2(dev, DRIVER_HAVE_IRQ))
		return -EINVAL;

	FUNC5(&dev->struct_mutex);
	irq_enabled = dev->irq_enabled;
	dev->irq_enabled = 0;
	FUNC6(&dev->struct_mutex);

	/*
	 * Wake up any waiters so they don't hang.
	 */
	if (dev->num_crtcs) {
		FUNC7(&dev->vbl_lock, irqflags);
		for (i = 0; i < dev->num_crtcs; i++) {
			FUNC1(&dev->vbl_queue[i]);
			dev->vblank_enabled[i] = 0;
			dev->last_vblank[i] =
				dev->driver->get_vblank_counter(dev, i);
		}
		FUNC8(&dev->vbl_lock, irqflags);
	}

	if (!irq_enabled)
		return -EINVAL;

	FUNC0("irq=%d\n", FUNC3(dev));

	if (!FUNC2(dev, DRIVER_MODESET))
		FUNC11(dev->pdev, NULL, NULL, NULL);

	if (dev->driver->irq_uninstall)
		dev->driver->irq_uninstall(dev);

	FUNC4(FUNC3(dev), dev);

	return 0;
}