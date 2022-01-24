#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FBC_CONTROL ; 
 int FBC_CTL_EN ; 
 int /*<<< orphan*/  FBC_STATUS ; 
 int FBC_STAT_COMPRESSING ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 fbc_ctl;

	/* Disable compression */
	fbc_ctl = FUNC1(FBC_CONTROL);
	if ((fbc_ctl & FBC_CTL_EN) == 0)
		return;

	fbc_ctl &= ~FBC_CTL_EN;
	FUNC2(FBC_CONTROL, fbc_ctl);

	/* Wait for compressing bit to clear */
	if (FUNC3((FUNC1(FBC_STATUS) & FBC_STAT_COMPRESSING) == 0, 10)) {
		FUNC0("FBC idle timed out\n");
		return;
	}

	FUNC0("disabled FBC\n");
}