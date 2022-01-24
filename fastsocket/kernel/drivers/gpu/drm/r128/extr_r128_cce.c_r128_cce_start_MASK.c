#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_4__ {scalar_t__ cce_mode; scalar_t__ cce_running; } ;
typedef  TYPE_1__ drm_r128_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_file*) ; 
 scalar_t__ R128_PM4_NONPM4 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int FUNC4(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_r128_private_t *dev_priv = dev->dev_private;
	FUNC1("\n");

	FUNC2(dev, file_priv);

	FUNC0(dev_priv);

	if (dev_priv->cce_running || dev_priv->cce_mode == R128_PM4_NONPM4) {
		FUNC1("while CCE running\n");
		return 0;
	}

	FUNC3(dev_priv);

	return 0;
}