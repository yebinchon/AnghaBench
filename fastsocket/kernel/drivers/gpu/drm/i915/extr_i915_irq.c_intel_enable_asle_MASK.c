#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq_lock; } ;
typedef  TYPE_1__ drm_i915_private_t ;
struct TYPE_6__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  DE_GSE ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 TYPE_4__* FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  PIPE_LEGACY_BLC_EVENT_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct drm_device *dev)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	unsigned long irqflags;

	/* FIXME: opregion/asle for VLV */
	if (FUNC2(dev))
		return;

	FUNC5(&dev_priv->irq_lock, irqflags);

	if (FUNC0(dev))
		FUNC4(dev_priv, DE_GSE);
	else {
		FUNC3(dev_priv, 1,
				     PIPE_LEGACY_BLC_EVENT_ENABLE);
		if (FUNC1(dev)->gen >= 4)
			FUNC3(dev_priv, 0,
					     PIPE_LEGACY_BLC_EVENT_ENABLE);
	}

	FUNC6(&dev_priv->irq_lock, irqflags);
}