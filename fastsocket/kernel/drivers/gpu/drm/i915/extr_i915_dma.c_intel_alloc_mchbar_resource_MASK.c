#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_9__ {char* name; scalar_t__ start; int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {TYPE_4__ mch_res; TYPE_2__* bridge_dev; } ;
typedef  TYPE_1__ drm_i915_private_t ;
struct TYPE_10__ {int gen; } ;
struct TYPE_8__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 TYPE_6__* FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int MCHBAR_I915 ; 
 int MCHBAR_I965 ; 
 scalar_t__ MCHBAR_SIZE ; 
 int /*<<< orphan*/  PCIBIOS_MIN_MEM ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcibios_align_resource ; 
 scalar_t__ FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static int
FUNC8(struct drm_device *dev)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	int reg = FUNC1(dev)->gen >= 4 ? MCHBAR_I965 : MCHBAR_I915;
	u32 temp_lo, temp_hi = 0;
	u64 mchbar_addr;
	int ret;

	if (FUNC1(dev)->gen >= 4)
		FUNC4(dev_priv->bridge_dev, reg + 4, &temp_hi);
	FUNC4(dev_priv->bridge_dev, reg, &temp_lo);
	mchbar_addr = ((u64)temp_hi << 32) | temp_lo;

	/* If ACPI doesn't have it, assume we need to allocate it ourselves */
#ifdef CONFIG_PNP
	if (mchbar_addr &&
	    pnp_range_reserved(mchbar_addr, mchbar_addr + MCHBAR_SIZE))
		return 0;
#endif

	/* Get some space for it */
	dev_priv->mch_res.name = "i915 MCHBAR";
	dev_priv->mch_res.flags = IORESOURCE_MEM;
	ret = FUNC3(dev_priv->bridge_dev->bus,
				     &dev_priv->mch_res,
				     MCHBAR_SIZE, MCHBAR_SIZE,
				     PCIBIOS_MIN_MEM,
				     0, pcibios_align_resource,
				     dev_priv->bridge_dev);
	if (ret) {
		FUNC0("failed bus alloc: %d\n", ret);
		dev_priv->mch_res.start = 0;
		return ret;
	}

	if (FUNC1(dev)->gen >= 4)
		FUNC5(dev_priv->bridge_dev, reg + 4,
				       FUNC7(dev_priv->mch_res.start));

	FUNC5(dev_priv->bridge_dev, reg,
			       FUNC2(dev_priv->mch_res.start));
	return 0;
}