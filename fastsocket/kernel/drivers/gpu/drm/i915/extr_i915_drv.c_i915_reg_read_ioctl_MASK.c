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
struct register_whitelist {scalar_t__ offset; int gen_bitmask; int size; } ;
struct drm_i915_reg_read {scalar_t__ offset; int /*<<< orphan*/  val; } ;
struct drm_i915_private {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 int FUNC0 (struct register_whitelist*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 TYPE_1__* FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct register_whitelist* whitelist ; 

int FUNC7(struct drm_device *dev,
			void *data, struct drm_file *file)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct drm_i915_reg_read *reg = data;
	struct register_whitelist const *entry = whitelist;
	int i;

	for (i = 0; i < FUNC0(whitelist); i++, entry++) {
		if (entry->offset == reg->offset &&
		    (1 << FUNC5(dev)->gen & entry->gen_bitmask))
			break;
	}

	if (i == FUNC0(whitelist))
		return -EINVAL;

	switch (entry->size) {
	case 8:
		reg->val = FUNC3(reg->offset);
		break;
	case 4:
		reg->val = FUNC1(reg->offset);
		break;
	case 2:
		reg->val = FUNC2(reg->offset);
		break;
	case 1:
		reg->val = FUNC4(reg->offset);
		break;
	default:
		FUNC6(1);
		return -EINVAL;
	}

	return 0;
}