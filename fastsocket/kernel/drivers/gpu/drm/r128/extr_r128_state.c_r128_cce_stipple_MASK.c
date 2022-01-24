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
typedef  int /*<<< orphan*/  u32 ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  mask; } ;
typedef  TYPE_1__ drm_r128_stipple_t ;
typedef  int /*<<< orphan*/  drm_r128_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_r128_private_t *dev_priv = dev->dev_private;
	drm_r128_stipple_t *stipple = data;
	u32 mask[32];

	FUNC3(dev, file_priv);

	FUNC1(dev_priv);

	if (FUNC2(&mask, stipple->mask, 32 * sizeof(u32)))
		return -EFAULT;

	FUNC4(dev_priv);

	FUNC5(dev, mask);

	FUNC0();
	return 0;
}