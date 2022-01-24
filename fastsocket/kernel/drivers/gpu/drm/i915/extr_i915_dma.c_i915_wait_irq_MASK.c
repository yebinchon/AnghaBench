#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct intel_ring_buffer {int /*<<< orphan*/  (* irq_put ) (struct intel_ring_buffer*) ;int /*<<< orphan*/  irq_queue; scalar_t__ (* irq_get ) (struct intel_ring_buffer*) ;} ;
struct drm_i915_master_private {TYPE_3__* sarea_priv; } ;
struct drm_device {TYPE_2__* primary; scalar_t__ dev_private; } ;
struct TYPE_11__ {scalar_t__ counter; } ;
struct TYPE_12__ {TYPE_4__ dri1; } ;
typedef  TYPE_5__ drm_i915_private_t ;
struct TYPE_10__ {int last_dispatch; int /*<<< orphan*/  perf_boxes; } ;
struct TYPE_9__ {TYPE_1__* master; } ;
struct TYPE_8__ {struct drm_i915_master_private* driver_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int DRM_HZ ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int,int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  I915_BOX_WAIT ; 
 struct intel_ring_buffer* FUNC3 (TYPE_5__*) ; 
 int FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (struct intel_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_ring_buffer*) ; 
 scalar_t__ FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct drm_device * dev, int irq_nr)
{
	drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
	struct drm_i915_master_private *master_priv = dev->primary->master->driver_priv;
	int ret = 0;
	struct intel_ring_buffer *ring = FUNC3(dev_priv);

	FUNC0("irq_nr=%d breadcrumb=%d\n", irq_nr,
		  FUNC4(dev_priv));

	if (FUNC4(dev_priv) >= irq_nr) {
		if (master_priv->sarea_priv)
			master_priv->sarea_priv->last_dispatch = FUNC4(dev_priv);
		return 0;
	}

	if (master_priv->sarea_priv)
		master_priv->sarea_priv->perf_boxes |= I915_BOX_WAIT;

	if (ring->irq_get(ring)) {
		FUNC2(ret, ring->irq_queue, 3 * DRM_HZ,
			    FUNC4(dev_priv) >= irq_nr);
		ring->irq_put(ring);
	} else if (FUNC7(FUNC4(dev_priv) >= irq_nr, 3000))
		ret = -EBUSY;

	if (ret == -EBUSY) {
		FUNC1("EBUSY -- rec: %d emitted: %d\n",
			  FUNC4(dev_priv), (int)dev_priv->dri1.counter);
	}

	return ret;
}