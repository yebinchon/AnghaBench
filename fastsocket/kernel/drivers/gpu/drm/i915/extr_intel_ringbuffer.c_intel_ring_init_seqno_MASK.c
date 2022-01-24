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
typedef  int /*<<< orphan*/  u32 ;
struct intel_ring_buffer {int /*<<< orphan*/  (* set_seqno ) (struct intel_ring_buffer*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  mmio_base; TYPE_2__* dev; int /*<<< orphan*/  outstanding_lazy_request; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {struct drm_i915_private* dev_private; } ;
struct TYPE_3__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_ring_buffer*,int /*<<< orphan*/ ) ; 

void FUNC6(struct intel_ring_buffer *ring, u32 seqno)
{
	struct drm_i915_private *dev_priv = ring->dev->dev_private;

	FUNC0(ring->outstanding_lazy_request);

	if (FUNC2(ring->dev)->gen >= 6) {
		FUNC1(FUNC3(ring->mmio_base), 0);
		FUNC1(FUNC4(ring->mmio_base), 0);
	}

	ring->set_seqno(ring, seqno);
}