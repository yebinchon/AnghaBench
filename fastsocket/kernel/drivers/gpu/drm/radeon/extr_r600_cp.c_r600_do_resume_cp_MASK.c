#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_5__ {int flags; } ;
typedef  TYPE_1__ drm_radeon_private_t ;

/* Variables and functions */
 int CHIP_RV770 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int RADEON_FAMILY_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,TYPE_1__*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 

int FUNC7(struct drm_device *dev, struct drm_file *file_priv)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;

	FUNC0("\n");
	if (((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_RV770)) {
		FUNC6(dev);
		FUNC5(dev_priv);
	} else {
		FUNC4(dev);
		FUNC2(dev_priv);
	}
	FUNC1(dev, dev_priv, file_priv);
	FUNC3(dev);

	return 0;
}