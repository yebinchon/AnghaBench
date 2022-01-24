#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  work; int /*<<< orphan*/  hangcheck_timer; } ;
struct TYPE_13__ {scalar_t__ shrink; } ;
struct TYPE_10__ {int gtt_mtrr; int /*<<< orphan*/  retire_work; TYPE_6__ inactive_shrinker; } ;
struct TYPE_9__ {int /*<<< orphan*/  mappable_end; int /*<<< orphan*/  mappable_base; int /*<<< orphan*/  mappable; } ;
struct drm_i915_private {int /*<<< orphan*/  bridge_dev; scalar_t__ slab; int /*<<< orphan*/  pm_qos; int /*<<< orphan*/  wq; int /*<<< orphan*/ * regs; TYPE_3__ gpu_error; scalar_t__ child_dev_num; struct drm_i915_private* child_dev; int /*<<< orphan*/  console_resume_work; TYPE_2__ mm; TYPE_1__ gtt; } ;
struct drm_device {struct drm_i915_private* dev_private; TYPE_4__* pdev; int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_12__ {scalar_t__ msi_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_device*) ; 
 int FUNC17 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_4__*) ; 

int FUNC38(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	int ret;

	FUNC20();

	FUNC18(dev);

	if (dev_priv->mm.inactive_shrinker.shrink)
		FUNC35(&dev_priv->mm.inactive_shrinker);

	FUNC29(&dev->struct_mutex);
	ret = FUNC17(dev);
	if (ret)
		FUNC0("failed to idle hardware: %d\n", ret);
	FUNC16(dev);
	FUNC30(&dev->struct_mutex);

	/* Cancel the retire work handler, which should be idle now. */
	FUNC3(&dev_priv->mm.retire_work);

	FUNC25(dev_priv->gtt.mappable);
	if (dev_priv->mm.gtt_mtrr >= 0) {
		FUNC28(dev_priv->mm.gtt_mtrr,
			 dev_priv->gtt.mappable_base,
			 dev_priv->gtt.mappable_end);
		dev_priv->mm.gtt_mtrr = -1;
	}

	FUNC2();

	if (FUNC7(dev, DRIVER_MODESET)) {
		FUNC19(dev);
		FUNC21(dev);
		FUNC4(&dev_priv->console_resume_work);

		/*
		 * free the memory space allocated for the child device
		 * config parsed from VBT
		 */
		if (dev_priv->child_dev && dev_priv->child_dev_num) {
			FUNC26(dev_priv->child_dev);
			dev_priv->child_dev = NULL;
			dev_priv->child_dev_num = 0;
		}

		FUNC37(dev->pdev);
		FUNC36(dev->pdev, NULL, NULL, NULL);
	}

	/* Free error state after interrupts are fully disabled. */
	FUNC5(&dev_priv->gpu_error.hangcheck_timer);
	FUNC4(&dev_priv->gpu_error.work);
	FUNC9(dev);

	if (dev->pdev->msi_enabled)
		FUNC32(dev->pdev);

	FUNC22(dev);

	if (FUNC7(dev, DRIVER_MODESET)) {
		/* Flush any outstanding unpin_work. */
		FUNC8(dev_priv->wq);

		FUNC29(&dev->struct_mutex);
		FUNC15(dev);
		FUNC12(dev);
		FUNC14(dev);
		FUNC30(&dev->struct_mutex);
		FUNC11(dev);
		FUNC13(dev);

		if (!FUNC1(dev))
			FUNC10(dev);
	}

	if (dev_priv->regs != NULL)
		FUNC33(dev->pdev, dev_priv->regs);

	FUNC23(dev);
	FUNC24(dev);

	FUNC6(dev_priv->wq);
	FUNC34(&dev_priv->pm_qos);

	if (dev_priv->slab)
		FUNC27(dev_priv->slab);

	FUNC31(dev_priv->bridge_dev);
	FUNC26(dev->dev_private);

	return 0;
}