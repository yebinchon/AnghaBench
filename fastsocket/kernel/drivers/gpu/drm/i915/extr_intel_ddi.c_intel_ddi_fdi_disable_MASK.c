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
typedef  int uint32_t ;
struct intel_encoder {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int FDI_PCDCLK ; 
 int FDI_RX_ENABLE ; 
 int FDI_RX_PLL_ENABLE ; 
 int FDI_RX_PWRDN_LANE0_MASK ; 
 int FUNC0 (int) ; 
 int FDI_RX_PWRDN_LANE1_MASK ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  _FDI_RXA_CTL ; 
 int /*<<< orphan*/  _FDI_RXA_MISC ; 
 struct intel_encoder* FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_encoder*) ; 

void FUNC6(struct drm_crtc *crtc)
{
	struct drm_i915_private *dev_priv = crtc->dev->dev_private;
	struct intel_encoder *intel_encoder = FUNC4(crtc);
	uint32_t val;

	FUNC5(intel_encoder);

	val = FUNC2(_FDI_RXA_CTL);
	val &= ~FDI_RX_ENABLE;
	FUNC3(_FDI_RXA_CTL, val);

	val = FUNC2(_FDI_RXA_MISC);
	val &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
	val |= FUNC1(2) | FUNC0(2);
	FUNC3(_FDI_RXA_MISC, val);

	val = FUNC2(_FDI_RXA_CTL);
	val &= ~FDI_PCDCLK;
	FUNC3(_FDI_RXA_CTL, val);

	val = FUNC2(_FDI_RXA_CTL);
	val &= ~FDI_RX_PLL_ENABLE;
	FUNC3(_FDI_RXA_CTL, val);
}