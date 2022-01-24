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
struct intel_ring_buffer {int size; scalar_t__ id; int (* init ) (struct intel_ring_buffer*) ;int effective_size; struct drm_i915_gem_object* obj; int /*<<< orphan*/ * virtual_start; struct drm_device* dev; int /*<<< orphan*/  irq_queue; int /*<<< orphan*/  sync_seqno; int /*<<< orphan*/  request_list; int /*<<< orphan*/  active_list; } ;
struct TYPE_2__ {scalar_t__ mappable_base; } ;
struct drm_i915_private {TYPE_1__ gtt; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  base; scalar_t__ gtt_offset; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 
 int PAGE_SIZE ; 
 scalar_t__ RCS ; 
 int /*<<< orphan*/  FUNC7 (struct intel_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct drm_i915_gem_object* FUNC9 (struct drm_device*,int) ; 
 struct drm_i915_gem_object* FUNC10 (struct drm_device*,int) ; 
 int FUNC11 (struct drm_i915_gem_object*,int,int,int) ; 
 int FUNC12 (struct drm_i915_gem_object*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_gem_object*) ; 
 int FUNC14 (struct intel_ring_buffer*) ; 
 int FUNC15 (struct intel_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (struct intel_ring_buffer*) ; 

__attribute__((used)) static int FUNC21(struct drm_device *dev,
				  struct intel_ring_buffer *ring)
{
	struct drm_i915_gem_object *obj;
	struct drm_i915_private *dev_priv = dev->dev_private;
	int ret;

	ring->dev = dev;
	FUNC4(&ring->active_list);
	FUNC4(&ring->request_list);
	ring->size = 32 * PAGE_SIZE;
	FUNC19(ring->sync_seqno, 0, sizeof(ring->sync_seqno));

	FUNC16(&ring->irq_queue);

	if (FUNC3(dev)) {
		ret = FUNC15(ring);
		if (ret)
			return ret;
	} else {
		FUNC0(ring->id != RCS);
		ret = FUNC14(ring);
		if (ret)
			return ret;
	}

	obj = NULL;
	if (!FUNC2(dev))
		obj = FUNC10(dev, ring->size);
	if (obj == NULL)
		obj = FUNC9(dev, ring->size);
	if (obj == NULL) {
		FUNC1("Failed to allocate ringbuffer\n");
		ret = -ENOMEM;
		goto err_hws;
	}

	ring->obj = obj;

	ret = FUNC11(obj, PAGE_SIZE, true, false);
	if (ret)
		goto err_unref;

	ret = FUNC12(obj, true);
	if (ret)
		goto err_unpin;

	ring->virtual_start =
		FUNC17(dev_priv->gtt.mappable_base + obj->gtt_offset,
			   ring->size);
	if (ring->virtual_start == NULL) {
		FUNC1("Failed to map ringbuffer.\n");
		ret = -EINVAL;
		goto err_unpin;
	}

	ret = ring->init(ring);
	if (ret)
		goto err_unmap;

	/* Workaround an erratum on the i830 which causes a hang if
	 * the TAIL pointer points to within the last 2 cachelines
	 * of the buffer.
	 */
	ring->effective_size = ring->size;
	if (FUNC6(ring->dev) || FUNC5(ring->dev))
		ring->effective_size -= 128;

	return 0;

err_unmap:
	FUNC18(ring->virtual_start);
err_unpin:
	FUNC13(obj);
err_unref:
	FUNC8(&obj->base);
	ring->obj = NULL;
err_hws:
	FUNC7(ring);
	return ret;
}