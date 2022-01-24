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
struct TYPE_2__ {scalar_t__ suspended; } ;
struct drm_i915_private {int enable_hotplug_processing; TYPE_1__ mm; int /*<<< orphan*/  console_resume_work; } ;
struct drm_device {int vblank_disable_allowed; int /*<<< orphan*/  pdev; int /*<<< orphan*/  struct_mutex; struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int FUNC8 (struct drm_device*) ; 
 int FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  i915_switcheroo_ops ; 
 int /*<<< orphan*/ * i915_vga_set_decode ; 
 int /*<<< orphan*/  intel_console_resume ; 
 int FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_device*) ; 
 int FUNC15 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ ,struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	int ret;

	ret = FUNC15(dev);
	if (ret)
		FUNC0("failed to find VBIOS tables\n");

	/* If we have > 1 VGA cards, then we need to arbitrate access
	 * to the common VGA resources.
	 *
	 * If we are a secondary display controller (!PCI_DISPLAY_CLASS_VGA),
	 * then we do not take part in VGA arbitration and the
	 * vga_client_register() fails with -ENODEV.
	 */
	ret = FUNC19(dev->pdev, dev, NULL, i915_vga_set_decode);
	if (ret && ret != -ENODEV)
		goto out;

	FUNC16();

	ret = FUNC20(dev->pdev, &i915_switcheroo_ops);
	if (ret)
		goto cleanup_vga_client;

	/* Initialise stolen first so that we may reserve preallocated
	 * objects for the BIOS to KMS transition.
	 */
	ret = FUNC9(dev);
	if (ret)
		goto cleanup_vga_switcheroo;

	ret = FUNC2(dev);
	if (ret)
		goto cleanup_gem_stolen;

	/* Important: The output setup functions called by modeset_init need
	 * working irqs for e.g. gmbus and dp aux transfers. */
	FUNC14(dev);

	ret = FUNC8(dev);
	if (ret)
		goto cleanup_irq;

	FUNC1(&dev_priv->console_resume_work, intel_console_resume);

	FUNC13(dev);

	/* Always safe in the mode setting case. */
	/* FIXME: do pre/post-mode set stuff in core KMS code */
	dev->vblank_disable_allowed = 1;

	ret = FUNC10(dev);
	if (ret)
		goto cleanup_gem;

	/* Only enable hotplug handling once the fbdev is fully set up. */
	FUNC12(dev);

	/*
	 * Some ports require correctly set-up hpd registers for detection to
	 * work properly (leading to ghost connected connector status), e.g. VGA
	 * on gm45.  Hence we can only set up the initial fbdev config after hpd
	 * irqs are fully enabled. Now we should scan for the initial config
	 * only once hotplug handling is enabled, but due to screwed-up locking
	 * around kms/fbdev init we can't protect the fdbev initial config
	 * scanning against hotplug events. Hence do this first and ignore the
	 * tiny window where we will loose hotplug notifactions.
	 */
	FUNC11(dev);

	/* Only enable hotplug handling once the fbdev is fully set up. */
	dev_priv->enable_hotplug_processing = true;

	FUNC4(dev);

	/* We're off and running w/KMS */
	dev_priv->mm.suspended = 0;

	return 0;

cleanup_gem:
	FUNC17(&dev->struct_mutex);
	FUNC6(dev);
	FUNC18(&dev->struct_mutex);
	FUNC5(dev);
cleanup_irq:
	FUNC3(dev);
cleanup_gem_stolen:
	FUNC7(dev);
cleanup_vga_switcheroo:
	FUNC21(dev->pdev);
cleanup_vga_client:
	FUNC19(dev->pdev, NULL, NULL, NULL);
out:
	return ret;
}