#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ gfx_addr; } ;
struct intel_ring_buffer {TYPE_2__ status_page; } ;
struct drm_device {TYPE_3__* dev_private; } ;
struct TYPE_5__ {int /*<<< orphan*/  gfx_hws_cpu_addr; } ;
struct TYPE_7__ {TYPE_1__ dri1; int /*<<< orphan*/ * status_page_dmah; } ;
typedef  TYPE_3__ drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  HWS_PGA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct intel_ring_buffer* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct drm_device *dev)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	struct intel_ring_buffer *ring = FUNC1(dev_priv);

	if (dev_priv->status_page_dmah) {
		FUNC2(dev, dev_priv->status_page_dmah);
		dev_priv->status_page_dmah = NULL;
	}

	if (ring->status_page.gfx_addr) {
		ring->status_page.gfx_addr = 0;
		FUNC3(dev_priv->dri1.gfx_hws_cpu_addr);
	}

	/* Need to rewrite hardware status page */
	FUNC0(HWS_PGA, 0x1ffff000);
}