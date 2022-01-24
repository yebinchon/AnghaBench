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
typedef  int uint32_t ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCH_SSKPD ; 
 int MCH_SSKPD_WM0_MASK ; 
 int MCH_SSKPD_WM0_VAL ; 

__attribute__((used)) static void FUNC2(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	uint32_t tmp;

	tmp = FUNC1(MCH_SSKPD);
	if ((tmp & MCH_SSKPD_WM0_MASK) != MCH_SSKPD_WM0_VAL) {
		FUNC0("Wrong MCH_SSKPD value: 0x%08x\n", tmp);
		FUNC0("This can cause pipe underruns and display issues.\n");
		FUNC0("Please upgrade your BIOS to fix this.\n");
	}
}