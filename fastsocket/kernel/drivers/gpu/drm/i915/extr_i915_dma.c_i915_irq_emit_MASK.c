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
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; int /*<<< orphan*/ * dev_private; } ;
typedef  int /*<<< orphan*/  drm_i915_private_t ;
struct TYPE_3__ {int /*<<< orphan*/  irq_seq; } ;
typedef  TYPE_1__ drm_i915_irq_emit_t ;
struct TYPE_4__ {int /*<<< orphan*/  virtual_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENODEV ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_file*) ; 
 scalar_t__ FUNC4 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct drm_device *dev, void *data,
			 struct drm_file *file_priv)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	drm_i915_irq_emit_t *emit = data;
	int result;

	if (FUNC4(dev, DRIVER_MODESET))
		return -ENODEV;

	if (!dev_priv || !FUNC2(dev_priv)->virtual_start) {
		FUNC1("called with no initialization\n");
		return -EINVAL;
	}

	FUNC3(dev, file_priv);

	FUNC6(&dev->struct_mutex);
	result = FUNC5(dev);
	FUNC7(&dev->struct_mutex);

	if (FUNC0(emit->irq_seq, &result, sizeof(int))) {
		FUNC1("copy_to_user\n");
		return -EFAULT;
	}

	return 0;
}