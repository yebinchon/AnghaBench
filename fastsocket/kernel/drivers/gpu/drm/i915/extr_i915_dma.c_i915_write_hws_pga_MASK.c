#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_5__ {TYPE_1__* status_page_dmah; } ;
typedef  TYPE_2__ drm_i915_private_t ;
struct TYPE_6__ {int gen; } ;
struct TYPE_4__ {int busaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  HWS_PGA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC1 (struct drm_device*) ; 

__attribute__((used)) static void FUNC2(struct drm_device *dev)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	u32 addr;

	addr = dev_priv->status_page_dmah->busaddr;
	if (FUNC1(dev)->gen >= 4)
		addr |= (dev_priv->status_page_dmah->busaddr >> 28) & 0xf0;
	FUNC0(HWS_PGA, addr);
}