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
struct TYPE_2__ {scalar_t__ gfx_addr; } ;
struct intel_ring_buffer {int id; TYPE_1__ status_page; int /*<<< orphan*/  mmio_base; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
typedef  int /*<<< orphan*/  drm_i915_private_t ;

/* Variables and functions */
#define  BCS 130 
 int /*<<< orphan*/  BLT_HWS_PGA_GEN7 ; 
 int /*<<< orphan*/  BSD_HWS_PGA_GEN7 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  RCS 129 
 int /*<<< orphan*/  RENDER_HWS_PGA_GEN7 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  VCS 128 

void FUNC6(struct intel_ring_buffer *ring)
{
	struct drm_device *dev = ring->dev;
	drm_i915_private_t *dev_priv = ring->dev->dev_private;
	u32 mmio = 0;

	/* The ring status page addresses are no longer next to the rest of
	 * the ring registers as of gen7.
	 */
	if (FUNC2(dev)) {
		switch (ring->id) {
		case RCS:
			mmio = RENDER_HWS_PGA_GEN7;
			break;
		case BCS:
			mmio = BLT_HWS_PGA_GEN7;
			break;
		case VCS:
			mmio = BSD_HWS_PGA_GEN7;
			break;
		}
	} else if (FUNC1(ring->dev)) {
		mmio = FUNC5(ring->mmio_base);
	} else {
		mmio = FUNC4(ring->mmio_base);
	}

	FUNC0(mmio, (u32)ring->status_page.gfx_addr);
	FUNC3(mmio);
}