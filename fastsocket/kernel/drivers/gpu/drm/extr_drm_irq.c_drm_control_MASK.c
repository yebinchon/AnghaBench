#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  if_version; } ;
struct drm_control {int func; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_HAVE_IRQ ; 
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
#define  DRM_INST_HANDLER 129 
#define  DRM_UNINST_HANDLER 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_device*) ; 
 int FUNC4 (struct drm_device*) ; 

int FUNC5(struct drm_device *dev, void *data,
		struct drm_file *file_priv)
{
	struct drm_control *ctl = data;

	/* if we haven't irq we fallback for compatibility reasons -
	 * this used to be a separate function in drm_dma.h
	 */


	switch (ctl->func) {
	case DRM_INST_HANDLER:
		if (!FUNC1(dev, DRIVER_HAVE_IRQ))
			return 0;
		if (FUNC1(dev, DRIVER_MODESET))
			return 0;
		if (dev->if_version < FUNC0(1, 2) &&
		    ctl->irq != FUNC2(dev))
			return -EINVAL;
		return FUNC3(dev);
	case DRM_UNINST_HANDLER:
		if (!FUNC1(dev, DRIVER_HAVE_IRQ))
			return 0;
		if (FUNC1(dev, DRIVER_MODESET))
			return 0;
		return FUNC4(dev);
	default:
		return -EINVAL;
	}
}