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
struct TYPE_3__ {void* saveFBC_CONTROL; void* saveFBC_CONTROL2; void* saveFBC_LL_BASE; void* saveFBC_CFB_BASE; void* saveDPFC_CB_BASE; void* savePP_DIVISOR; void* savePP_OFF_DELAYS; void* savePP_ON_DELAYS; void* savePFIT_CONTROL; void* saveLVDS; void* saveBLC_PWM_CTL2; void* saveBLC_HIST_CTL; void* saveBLC_PWM_CTL; void* savePFIT_PGM_RATIOS; void* savePP_CONTROL; void* saveBLC_CPU_PWM_CTL2; void* saveBLC_CPU_PWM_CTL; void* saveDSPARB; } ;
struct drm_i915_private {TYPE_1__ regfile; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLC_HIST_CTL ; 
 int /*<<< orphan*/  BLC_PWM_CPU_CTL ; 
 int /*<<< orphan*/  BLC_PWM_CPU_CTL2 ; 
 int /*<<< orphan*/  BLC_PWM_CTL ; 
 int /*<<< orphan*/  BLC_PWM_CTL2 ; 
 int /*<<< orphan*/  BLC_PWM_PCH_CTL1 ; 
 int /*<<< orphan*/  BLC_PWM_PCH_CTL2 ; 
 int /*<<< orphan*/  DPFC_CB_BASE ; 
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  DSPARB ; 
 int /*<<< orphan*/  FBC_CFB_BASE ; 
 int /*<<< orphan*/  FBC_CONTROL ; 
 int /*<<< orphan*/  FBC_CONTROL2 ; 
 int /*<<< orphan*/  FBC_LL_BASE ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ILK_DPFC_CB_BASE ; 
 TYPE_2__* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 scalar_t__ FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  LVDS ; 
 int /*<<< orphan*/  PCH_LVDS ; 
 int /*<<< orphan*/  PCH_PP_CONTROL ; 
 int /*<<< orphan*/  PCH_PP_DIVISOR ; 
 int /*<<< orphan*/  PCH_PP_OFF_DELAYS ; 
 int /*<<< orphan*/  PCH_PP_ON_DELAYS ; 
 int /*<<< orphan*/  PFIT_CONTROL ; 
 int /*<<< orphan*/  PFIT_PGM_RATIOS ; 
 int /*<<< orphan*/  PP_CONTROL ; 
 int /*<<< orphan*/  PP_DIVISOR ; 
 int /*<<< orphan*/  PP_OFF_DELAYS ; 
 int /*<<< orphan*/  PP_ON_DELAYS ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 

__attribute__((used)) static void FUNC11(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	/* Display arbitration control */
	if (FUNC3(dev)->gen <= 4)
		dev_priv->regfile.saveDSPARB = FUNC2(DSPARB);

	/* This is only meaningful in non-KMS mode */
	/* Don't regfile.save them in KMS mode */
	if (!FUNC8(dev, DRIVER_MODESET))
		FUNC9(dev);

	/* LVDS state */
	if (FUNC0(dev)) {
		dev_priv->regfile.savePP_CONTROL = FUNC2(PCH_PP_CONTROL);
		dev_priv->regfile.saveBLC_PWM_CTL = FUNC2(BLC_PWM_PCH_CTL1);
		dev_priv->regfile.saveBLC_PWM_CTL2 = FUNC2(BLC_PWM_PCH_CTL2);
		dev_priv->regfile.saveBLC_CPU_PWM_CTL = FUNC2(BLC_PWM_CPU_CTL);
		dev_priv->regfile.saveBLC_CPU_PWM_CTL2 = FUNC2(BLC_PWM_CPU_CTL2);
		dev_priv->regfile.saveLVDS = FUNC2(PCH_LVDS);
	} else {
		dev_priv->regfile.savePP_CONTROL = FUNC2(PP_CONTROL);
		dev_priv->regfile.savePFIT_PGM_RATIOS = FUNC2(PFIT_PGM_RATIOS);
		dev_priv->regfile.saveBLC_PWM_CTL = FUNC2(BLC_PWM_CTL);
		dev_priv->regfile.saveBLC_HIST_CTL = FUNC2(BLC_HIST_CTL);
		if (FUNC3(dev)->gen >= 4)
			dev_priv->regfile.saveBLC_PWM_CTL2 = FUNC2(BLC_PWM_CTL2);
		if (FUNC7(dev) && !FUNC6(dev))
			dev_priv->regfile.saveLVDS = FUNC2(LVDS);
	}

	if (!FUNC6(dev) && !FUNC4(dev) && !FUNC0(dev))
		dev_priv->regfile.savePFIT_CONTROL = FUNC2(PFIT_CONTROL);

	if (FUNC0(dev)) {
		dev_priv->regfile.savePP_ON_DELAYS = FUNC2(PCH_PP_ON_DELAYS);
		dev_priv->regfile.savePP_OFF_DELAYS = FUNC2(PCH_PP_OFF_DELAYS);
		dev_priv->regfile.savePP_DIVISOR = FUNC2(PCH_PP_DIVISOR);
	} else {
		dev_priv->regfile.savePP_ON_DELAYS = FUNC2(PP_ON_DELAYS);
		dev_priv->regfile.savePP_OFF_DELAYS = FUNC2(PP_OFF_DELAYS);
		dev_priv->regfile.savePP_DIVISOR = FUNC2(PP_DIVISOR);
	}

	/* Only regfile.save FBC state on the platform that supports FBC */
	if (FUNC1(dev)) {
		if (FUNC0(dev)) {
			dev_priv->regfile.saveDPFC_CB_BASE = FUNC2(ILK_DPFC_CB_BASE);
		} else if (FUNC5(dev)) {
			dev_priv->regfile.saveDPFC_CB_BASE = FUNC2(DPFC_CB_BASE);
		} else {
			dev_priv->regfile.saveFBC_CFB_BASE = FUNC2(FBC_CFB_BASE);
			dev_priv->regfile.saveFBC_LL_BASE = FUNC2(FBC_LL_BASE);
			dev_priv->regfile.saveFBC_CONTROL2 = FUNC2(FBC_CONTROL2);
			dev_priv->regfile.saveFBC_CONTROL = FUNC2(FBC_CONTROL);
		}
	}

	if (!FUNC8(dev, DRIVER_MODESET))
		FUNC10(dev);
}