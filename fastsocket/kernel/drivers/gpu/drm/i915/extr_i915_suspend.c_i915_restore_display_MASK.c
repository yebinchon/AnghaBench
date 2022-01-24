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
struct TYPE_3__ {int /*<<< orphan*/  saveFBC_CONTROL; int /*<<< orphan*/  saveFBC_CONTROL2; int /*<<< orphan*/  saveFBC_LL_BASE; int /*<<< orphan*/  saveFBC_CFB_BASE; int /*<<< orphan*/  saveDPFC_CB_BASE; int /*<<< orphan*/  savePP_CONTROL; int /*<<< orphan*/  savePP_DIVISOR; int /*<<< orphan*/  savePP_OFF_DELAYS; int /*<<< orphan*/  savePP_ON_DELAYS; int /*<<< orphan*/  saveBLC_HIST_CTL; int /*<<< orphan*/  saveBLC_PWM_CTL; int /*<<< orphan*/  savePFIT_PGM_RATIOS; int /*<<< orphan*/  saveMCHBAR_RENDER_STANDBY; int /*<<< orphan*/  saveBLC_CPU_PWM_CTL; int /*<<< orphan*/  saveBLC_CPU_PWM_CTL2; int /*<<< orphan*/  saveBLC_PWM_CTL2; int /*<<< orphan*/  savePFIT_CONTROL; int /*<<< orphan*/  saveLVDS; int /*<<< orphan*/  saveDSPARB; } ;
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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  RSTDBYCTL ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*) ; 

__attribute__((used)) static void FUNC13(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	/* Display arbitration */
	if (FUNC3(dev)->gen <= 4)
		FUNC2(DSPARB, dev_priv->regfile.saveDSPARB);

	if (!FUNC8(dev, DRIVER_MODESET))
		FUNC10(dev);

	/* LVDS state */
	if (FUNC3(dev)->gen >= 4 && !FUNC0(dev))
		FUNC2(BLC_PWM_CTL2, dev_priv->regfile.saveBLC_PWM_CTL2);

	if (FUNC0(dev)) {
		FUNC2(PCH_LVDS, dev_priv->regfile.saveLVDS);
	} else if (FUNC7(dev) && !FUNC6(dev))
		FUNC2(LVDS, dev_priv->regfile.saveLVDS);

	if (!FUNC6(dev) && !FUNC4(dev) && !FUNC0(dev))
		FUNC2(PFIT_CONTROL, dev_priv->regfile.savePFIT_CONTROL);

	if (FUNC0(dev)) {
		FUNC2(BLC_PWM_PCH_CTL1, dev_priv->regfile.saveBLC_PWM_CTL);
		FUNC2(BLC_PWM_PCH_CTL2, dev_priv->regfile.saveBLC_PWM_CTL2);
		/* NOTE: BLC_PWM_CPU_CTL must be written after BLC_PWM_CPU_CTL2;
		 * otherwise we get blank eDP screen after S3 on some machines
		 */
		FUNC2(BLC_PWM_CPU_CTL2, dev_priv->regfile.saveBLC_CPU_PWM_CTL2);
		FUNC2(BLC_PWM_CPU_CTL, dev_priv->regfile.saveBLC_CPU_PWM_CTL);
		FUNC2(PCH_PP_ON_DELAYS, dev_priv->regfile.savePP_ON_DELAYS);
		FUNC2(PCH_PP_OFF_DELAYS, dev_priv->regfile.savePP_OFF_DELAYS);
		FUNC2(PCH_PP_DIVISOR, dev_priv->regfile.savePP_DIVISOR);
		FUNC2(PCH_PP_CONTROL, dev_priv->regfile.savePP_CONTROL);
		FUNC2(RSTDBYCTL,
			   dev_priv->regfile.saveMCHBAR_RENDER_STANDBY);
	} else {
		FUNC2(PFIT_PGM_RATIOS, dev_priv->regfile.savePFIT_PGM_RATIOS);
		FUNC2(BLC_PWM_CTL, dev_priv->regfile.saveBLC_PWM_CTL);
		FUNC2(BLC_HIST_CTL, dev_priv->regfile.saveBLC_HIST_CTL);
		FUNC2(PP_ON_DELAYS, dev_priv->regfile.savePP_ON_DELAYS);
		FUNC2(PP_OFF_DELAYS, dev_priv->regfile.savePP_OFF_DELAYS);
		FUNC2(PP_DIVISOR, dev_priv->regfile.savePP_DIVISOR);
		FUNC2(PP_CONTROL, dev_priv->regfile.savePP_CONTROL);
	}

	/* only restore FBC info on the platform that supports FBC*/
	FUNC12(dev);
	if (FUNC1(dev)) {
		if (FUNC0(dev)) {
			FUNC2(ILK_DPFC_CB_BASE, dev_priv->regfile.saveDPFC_CB_BASE);
		} else if (FUNC5(dev)) {
			FUNC2(DPFC_CB_BASE, dev_priv->regfile.saveDPFC_CB_BASE);
		} else {
			FUNC2(FBC_CFB_BASE, dev_priv->regfile.saveFBC_CFB_BASE);
			FUNC2(FBC_LL_BASE, dev_priv->regfile.saveFBC_LL_BASE);
			FUNC2(FBC_CONTROL2, dev_priv->regfile.saveFBC_CONTROL2);
			FUNC2(FBC_CONTROL, dev_priv->regfile.saveFBC_CONTROL);
		}
	}

	if (!FUNC8(dev, DRIVER_MODESET))
		FUNC11(dev);
	else
		FUNC9(dev);
}