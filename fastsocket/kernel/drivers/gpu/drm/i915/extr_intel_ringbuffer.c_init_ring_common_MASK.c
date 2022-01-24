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
typedef  int u32 ;
struct intel_ring_buffer {int size; int head; int tail; int last_retired_head; int /*<<< orphan*/  space; struct drm_device* dev; int /*<<< orphan*/  name; int /*<<< orphan*/  (* write_tail ) (struct intel_ring_buffer*,int /*<<< orphan*/ ) ;struct drm_i915_gem_object* obj; } ;
struct drm_i915_gem_object {scalar_t__ gtt_offset; } ;
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
typedef  int /*<<< orphan*/  drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,int,scalar_t__) ; 
 int EIO ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int HEAD_ADDR ; 
 int FUNC3 (struct intel_ring_buffer*) ; 
 int FUNC4 (struct intel_ring_buffer*) ; 
 scalar_t__ FUNC5 (struct intel_ring_buffer*) ; 
 int FUNC6 (struct intel_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_ring_buffer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_ring_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_ring_buffer*,scalar_t__) ; 
 int PAGE_SIZE ; 
 int RING_NR_PAGES ; 
 int RING_VALID ; 
 int TAIL_ADDR ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_ring_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int,int) ; 

__attribute__((used)) static int FUNC17(struct intel_ring_buffer *ring)
{
	struct drm_device *dev = ring->dev;
	drm_i915_private_t *dev_priv = dev->dev_private;
	struct drm_i915_gem_object *obj = ring->obj;
	int ret = 0;
	u32 head;

	if (FUNC2(dev))
		FUNC11(dev_priv);

	/* Stop the ring if it's running. */
	FUNC7(ring, 0);
	FUNC8(ring, 0);
	ring->write_tail(ring, 0);

	head = FUNC4(ring) & HEAD_ADDR;

	/* G45 ring initialization fails to reset head to zero */
	if (head != 0) {
		FUNC0("%s head not reset to zero "
			      "ctl %08x head %08x tail %08x start %08x\n",
			      ring->name,
			      FUNC3(ring),
			      FUNC4(ring),
			      FUNC6(ring),
			      FUNC5(ring));

		FUNC8(ring, 0);

		if (FUNC4(ring) & HEAD_ADDR) {
			FUNC1("failed to set %s head to zero "
				  "ctl %08x head %08x tail %08x start %08x\n",
				  ring->name,
				  FUNC3(ring),
				  FUNC4(ring),
				  FUNC6(ring),
				  FUNC5(ring));
		}
	}

	/* Initialize the ring. This must happen _after_ we've cleared the ring
	 * registers with the above sequence (the readback of the HEAD registers
	 * also enforces ordering), otherwise the hw might lose the new ring
	 * register values. */
	FUNC9(ring, obj->gtt_offset);
	FUNC7(ring,
			((ring->size - PAGE_SIZE) & RING_NR_PAGES)
			| RING_VALID);

	/* If the head is still not zero, the ring is dead */
	if (FUNC16((FUNC3(ring) & RING_VALID) != 0 &&
		     FUNC5(ring) == obj->gtt_offset &&
		     (FUNC4(ring) & HEAD_ADDR) == 0, 50)) {
		FUNC1("%s initialization failed "
				"ctl %08x head %08x tail %08x start %08x\n",
				ring->name,
				FUNC3(ring),
				FUNC4(ring),
				FUNC6(ring),
				FUNC5(ring));
		ret = -EIO;
		goto out;
	}

	if (!FUNC10(ring->dev, DRIVER_MODESET))
		FUNC13(ring->dev);
	else {
		ring->head = FUNC4(ring);
		ring->tail = FUNC6(ring) & TAIL_ADDR;
		ring->space = FUNC14(ring);
		ring->last_retired_head = -1;
	}

out:
	if (FUNC2(dev))
		FUNC12(dev_priv);

	return ret;
}