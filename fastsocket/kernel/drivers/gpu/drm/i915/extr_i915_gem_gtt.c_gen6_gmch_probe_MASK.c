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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  gtt_insert_entries; int /*<<< orphan*/  gtt_clear_range; int /*<<< orphan*/  gsm; int /*<<< orphan*/  mappable_end; } ;
struct drm_i915_private {TYPE_1__ gtt; } ;
struct drm_device {int /*<<< orphan*/  pdev; struct drm_i915_private* dev_private; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  int /*<<< orphan*/  gtt_pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 unsigned int PAGE_SHIFT ; 
 int /*<<< orphan*/  SNB_GMCH_CTRL ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gen6_ggtt_clear_range ; 
 int /*<<< orphan*/  gen6_ggtt_insert_entries ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct drm_device*) ; 

__attribute__((used)) static int FUNC13(struct drm_device *dev,
			   size_t *gtt_total,
			   size_t *stolen,
			   phys_addr_t *mappable_base,
			   unsigned long *mappable_end)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	phys_addr_t gtt_bus_addr;
	unsigned int gtt_size;
	u16 snb_gmch_ctl;
	int ret;

	*mappable_base = FUNC9(dev->pdev, 2);
	*mappable_end = FUNC8(dev->pdev, 2);

	/* 64/512MB is the current min/max we actually know of, but this is just
	 * a coarse sanity check.
	 */
	if ((*mappable_end < (64<<20) || (*mappable_end > (512<<20)))) {
		FUNC1("Unknown GMADR size (%lx)\n",
			  dev_priv->gtt.mappable_end);
		return -ENXIO;
	}

	if (!FUNC11(dev->pdev, FUNC0(40)))
		FUNC10(dev->pdev, FUNC0(40));
	FUNC7(dev->pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
	gtt_size = FUNC4(snb_gmch_ctl);

	if (FUNC2(dev))
		*stolen = FUNC5(snb_gmch_ctl);
	else
		*stolen = FUNC3(snb_gmch_ctl);

	*gtt_total = (gtt_size / sizeof(gtt_pte_t)) << PAGE_SHIFT;

	/* For GEN6+ the PTEs for the ggtt live at 2MB + BAR0 */
	gtt_bus_addr = FUNC9(dev->pdev, 0) + (2<<20);
	dev_priv->gtt.gsm = FUNC6(gtt_bus_addr, gtt_size);
	if (!dev_priv->gtt.gsm) {
		FUNC1("Failed to map the gtt page table\n");
		return -ENOMEM;
	}

	ret = FUNC12(dev);
	if (ret)
		FUNC1("Scratch setup failed\n");

	dev_priv->gtt.gtt_clear_range = gen6_ggtt_clear_range;
	dev_priv->gtt.gtt_insert_entries = gen6_ggtt_insert_entries;

	return ret;
}