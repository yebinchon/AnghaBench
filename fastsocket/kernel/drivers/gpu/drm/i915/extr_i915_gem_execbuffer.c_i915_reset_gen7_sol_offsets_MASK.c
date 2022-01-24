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
struct intel_ring_buffer {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {struct intel_ring_buffer* ring; } ;
typedef  TYPE_1__ drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t RCS ; 
 int /*<<< orphan*/  FUNC3 (struct intel_ring_buffer*) ; 
 int FUNC4 (struct intel_ring_buffer*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_ring_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct drm_device *dev,
			    struct intel_ring_buffer *ring)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	int ret, i;

	if (!FUNC1(dev) || ring != &dev_priv->ring[RCS])
		return 0;

	ret = FUNC4(ring, 4 * 3);
	if (ret)
		return ret;

	for (i = 0; i < 4; i++) {
		FUNC5(ring, FUNC2(1));
		FUNC5(ring, FUNC0(i));
		FUNC5(ring, 0);
	}

	FUNC3(ring);

	return 0;
}