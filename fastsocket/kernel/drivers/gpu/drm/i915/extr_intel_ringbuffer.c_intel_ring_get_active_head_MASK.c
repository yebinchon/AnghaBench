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
struct intel_ring_buffer {int /*<<< orphan*/  mmio_base; TYPE_2__* dev; } ;
typedef  int /*<<< orphan*/  drm_i915_private_t ;
struct TYPE_4__ {int /*<<< orphan*/ * dev_private; } ;
struct TYPE_3__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTHD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

u32 FUNC3(struct intel_ring_buffer *ring)
{
	drm_i915_private_t *dev_priv = ring->dev->dev_private;
	u32 acthd_reg = FUNC1(ring->dev)->gen >= 4 ?
			FUNC2(ring->mmio_base) : ACTHD;

	return FUNC0(acthd_reg);
}