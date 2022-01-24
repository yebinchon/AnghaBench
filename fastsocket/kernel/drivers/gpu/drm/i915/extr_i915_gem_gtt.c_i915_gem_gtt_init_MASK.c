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
struct i915_gtt {int (* gtt_probe ) (struct drm_device*,int*,int*,int /*<<< orphan*/ *,int*) ;int total; int stolen_size; int mappable_end; int /*<<< orphan*/  mappable_base; int /*<<< orphan*/  gtt_remove; } ;
struct drm_i915_private {struct i915_gtt gtt; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef  int /*<<< orphan*/  gtt_pte_t ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 TYPE_1__* FUNC2 (struct drm_device*) ; 
 int PAGE_SHIFT ; 
 int FUNC3 (struct drm_device*,int*,int*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  gen6_gmch_remove ; 
 int FUNC4 (struct drm_device*,int*,int*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  i915_gmch_remove ; 
 int FUNC5 (struct drm_device*,int*,int*,int /*<<< orphan*/ *,int*) ; 

int FUNC6(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct i915_gtt *gtt = &dev_priv->gtt;
	unsigned long gtt_size;
	int ret;

	if (FUNC2(dev)->gen <= 5) {
		dev_priv->gtt.gtt_probe = i915_gmch_probe;
		dev_priv->gtt.gtt_remove = i915_gmch_remove;
	} else {
		dev_priv->gtt.gtt_probe = gen6_gmch_probe;
		dev_priv->gtt.gtt_remove = gen6_gmch_remove;
	}

	ret = dev_priv->gtt.gtt_probe(dev, &dev_priv->gtt.total,
				     &dev_priv->gtt.stolen_size,
				     &gtt->mappable_base,
				     &gtt->mappable_end);
	if (ret)
		return ret;

	gtt_size = (dev_priv->gtt.total >> PAGE_SHIFT) * sizeof(gtt_pte_t);

	/* GMADR is the PCI mmio aperture into the global GTT. */
	FUNC1("Memory usable by graphics device = %zdM\n",
		 dev_priv->gtt.total >> 20);
	FUNC0("GMADR size = %ldM\n",
			 dev_priv->gtt.mappable_end >> 20);
	FUNC0("GTT stolen size = %zdM\n",
			 dev_priv->gtt.stolen_size >> 20);

	return 0;
}