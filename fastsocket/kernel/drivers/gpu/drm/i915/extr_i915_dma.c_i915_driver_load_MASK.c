#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct intel_device_info {int gen; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* gtt_remove ) (struct drm_device*) ;int /*<<< orphan*/ * mappable; int /*<<< orphan*/  mappable_base; int /*<<< orphan*/  mappable_end; } ;
struct TYPE_15__ {scalar_t__ shrink; } ;
struct TYPE_13__ {int suspended; int gtt_mtrr; TYPE_5__ inactive_shrinker; } ;
struct TYPE_12__ {int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  lock; } ;
struct TYPE_11__ {int /*<<< orphan*/  lock; } ;
struct drm_i915_private {int num_pipe; int /*<<< orphan*/  bridge_dev; TYPE_4__ gtt; int /*<<< orphan*/  regs; TYPE_3__ mm; int /*<<< orphan*/ * wq; int /*<<< orphan*/  modeset_restore_lock; TYPE_2__ rps; int /*<<< orphan*/  dpio_lock; TYPE_1__ gpu_error; int /*<<< orphan*/  irq_lock; struct intel_device_info* info; struct drm_device* dev; } ;
struct drm_device {int counters; TYPE_6__* pdev; void* dev_private; int /*<<< orphan*/ * types; } ;
typedef  int /*<<< orphan*/  drm_i915_private_t ;
struct TYPE_16__ {scalar_t__ msi_enabled; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 scalar_t__ FUNC4 (struct drm_device*) ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 scalar_t__ FUNC9 (struct drm_device*) ; 
 scalar_t__ FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  _DRM_STAT_DMA ; 
 int /*<<< orphan*/  _DRM_STAT_IRQ ; 
 int /*<<< orphan*/  _DRM_STAT_PRIMARY ; 
 int /*<<< orphan*/  _DRM_STAT_SECONDARY ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_i915_private*) ; 
 int FUNC18 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct drm_device*) ; 
 scalar_t__ FUNC20 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct drm_i915_private*) ; 
 int FUNC22 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC27 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC29 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC31 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC32 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC33 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC34 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC35 (struct drm_device*) ; 
 int /*<<< orphan*/ * FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC39 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC44 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC45 (TYPE_6__*,int,int) ; 
 int /*<<< orphan*/  FUNC46 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC49 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC50 (TYPE_5__*) ; 

int FUNC51(struct drm_device *dev, unsigned long flags)
{
	struct drm_i915_private *dev_priv;
	struct intel_device_info *info;
	int ret = 0, mmio_bar, mmio_size;
	uint32_t aperture_size;

	info = (struct intel_device_info *) flags;

	/* Refuse to load on gen6+ without kms enabled. */
	if (info->gen >= 6 && !FUNC15(dev, DRIVER_MODESET))
		return -ENODEV;

	/* i915 has 4 more counters */
	dev->counters += 4;
	dev->types[6] = _DRM_STAT_IRQ;
	dev->types[7] = _DRM_STAT_PRIMARY;
	dev->types[8] = _DRM_STAT_SECONDARY;
	dev->types[9] = _DRM_STAT_DMA;

	dev_priv = FUNC39(sizeof(drm_i915_private_t), GFP_KERNEL);
	if (dev_priv == NULL)
		return -ENOMEM;

	dev->dev_private = (void *)dev_priv;
	dev_priv->dev = dev;
	dev_priv->info = info;

	FUNC17(dev_priv);

	if (FUNC20(dev)) {
		ret = -EIO;
		goto free_priv;
	}

	ret = FUNC18(dev);
	if (ret)
		goto put_bridge;

	if (FUNC15(dev, DRIVER_MODESET))
		FUNC21(dev_priv);

	FUNC47(dev->pdev);

	/* overlay on gen2 is broken and can't address above 1G */
	if (FUNC4(dev))
		FUNC14(&dev->pdev->dev, FUNC0(30));

	/* 965GM sometimes incorrectly writes to hardware status page (HWS)
	 * using 32bit addressing, overwriting memory if HWS is located
	 * above 4GB.
	 *
	 * The documentation also mentions an issue with undefined
	 * behaviour if any general state is accessed within a page above 4GB,
	 * which also needs to be handled carefully.
	 */
	if (FUNC2(dev) || FUNC3(dev))
		FUNC14(&dev->pdev->dev, FUNC0(32));

	mmio_bar = FUNC4(dev) ? 1 : 0;
	/* Before gen4, the registers and the GTT are behind different BARs.
	 * However, from gen4 onwards, the registers and the GTT are shared
	 * in the same BAR, so we want to restrict this ioremap from
	 * clobbering the GTT which we want ioremap_wc instead. Fortunately,
	 * the register BAR remains the same size for all the earlier
	 * generations up to Ironlake.
	 */
	if (info->gen < 5)
		mmio_size = 512*1024;
	else
		mmio_size = 2*1024*1024;

	dev_priv->regs = FUNC45(dev->pdev, mmio_bar, mmio_size);
	if (!dev_priv->regs) {
		FUNC1("failed to map registers\n");
		ret = -EIO;
		goto put_gmch;
	}

	aperture_size = dev_priv->gtt.mappable_end;

	dev_priv->gtt.mappable =
		FUNC36(dev_priv->gtt.mappable_base,
				     aperture_size);
	if (dev_priv->gtt.mappable == NULL) {
		ret = -EIO;
		goto out_rmmap;
	}

	FUNC23(dev_priv, dev_priv->gtt.mappable_base,
			aperture_size);

	/* The i915 workqueue is primarily used for batched retirement of
	 * requests (and thus managing bo) once the task has been completed
	 * by the GPU. i915_gem_retire_requests() is called directly when we
	 * need high-priority retirement, such as waiting for an explicit
	 * bo.
	 *
	 * It is also used for periodic low-priority events, such as
	 * idle-timers and recording error state.
	 *
	 * All tasks on the workqueue are expected to acquire the dev mutex
	 * so there is no point in running more than one instance of the
	 * workqueue at any time.  Use an ordered one.
	 */
	dev_priv->wq = FUNC12("i915", 0);
	if (dev_priv->wq == NULL) {
		FUNC1("Failed to create our workqueue.\n");
		ret = -ENOMEM;
		goto out_mtrrfree;
	}

	/* This must be called before any calls to HAS_PCH_* */
	FUNC25(dev);

	FUNC28(dev);
	FUNC27(dev);

	/* Try to make sure MCHBAR is enabled before poking at it */
	FUNC33(dev);
	FUNC32(dev);
	FUNC30(dev);

	FUNC31(dev);

	FUNC19(dev);

	/* On the 945G/GM, the chipset reports the MSI capability on the
	 * integrated graphics even though the support isn't actually there
	 * according to the published specs.  It doesn't appear to function
	 * correctly in testing on 945G.
	 * This may be a side effect of MSI having been made available for PEG
	 * and the registers being closely associated.
	 *
	 * According to chipset errata, on the 965GM, MSI interrupts may
	 * be lost or delayed, but we use them anyways to avoid
	 * stuck interrupts on some machines.
	 */
	if (!FUNC7(dev) && !FUNC8(dev))
		FUNC44(dev->pdev);

	FUNC48(&dev_priv->irq_lock);
	FUNC48(&dev_priv->gpu_error.lock);
	FUNC48(&dev_priv->rps.lock);
	FUNC41(&dev_priv->dpio_lock);

	FUNC41(&dev_priv->rps.hw_lock);
	FUNC41(&dev_priv->modeset_restore_lock);

	if (FUNC9(dev) || FUNC6(dev))
		dev_priv->num_pipe = 3;
	else if (FUNC10(dev) || !FUNC4(dev))
		dev_priv->num_pipe = 2;
	else
		dev_priv->num_pipe = 1;

	ret = FUNC16(dev, dev_priv->num_pipe);
	if (ret)
		goto out_gem_unload;

	/* Start out suspended */
	dev_priv->mm.suspended = 1;

	if (FUNC15(dev, DRIVER_MODESET)) {
		ret = FUNC22(dev);
		if (ret < 0) {
			FUNC1("failed to init modeset\n");
			goto out_gem_unload;
		}
	}

	FUNC24(dev);

	/* Must be done after probing outputs */
	FUNC29(dev);
	FUNC11();

	if (FUNC5(dev))
		FUNC26(dev_priv);

	return 0;

out_gem_unload:
	if (dev_priv->mm.inactive_shrinker.shrink)
		FUNC50(&dev_priv->mm.inactive_shrinker);

	if (dev->pdev->msi_enabled)
		FUNC43(dev->pdev);

	FUNC34(dev);
	FUNC35(dev);
	FUNC13(dev_priv->wq);
out_mtrrfree:
	if (dev_priv->mm.gtt_mtrr >= 0) {
		FUNC40(dev_priv->mm.gtt_mtrr,
			 dev_priv->gtt.mappable_base,
			 aperture_size);
		dev_priv->mm.gtt_mtrr = -1;
	}
	FUNC37(dev_priv->gtt.mappable);
out_rmmap:
	FUNC46(dev->pdev, dev_priv->regs);
put_gmch:
	dev_priv->gtt.gtt_remove(dev);
put_bridge:
	FUNC42(dev_priv->bridge_dev);
free_priv:
	FUNC38(dev_priv);
	return ret;
}