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
struct TYPE_2__ {void** saveSWF2; void** saveSWF1; void** saveSWF0; void* saveMI_ARB_STATE; void* saveCACHE_MODE_0; void* saveIMR; void* saveIER; void* savePCH_PORT_HOTPLUG; void* saveMCHBAR_RENDER_STANDBY; void* saveFDI_RXB_IMR; void* saveFDI_RXA_IMR; void* saveGTIMR; void* saveGTIER; void* saveDEIMR; void* saveDEIER; int /*<<< orphan*/  saveLBB; } ;
struct drm_i915_private {TYPE_1__ regfile; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; int /*<<< orphan*/  pdev; struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 scalar_t__ CACHE_MODE_0 ; 
 scalar_t__ DEIER ; 
 scalar_t__ DEIMR ; 
 int /*<<< orphan*/  DRIVER_MODESET ; 
 scalar_t__ GTIER ; 
 scalar_t__ GTIMR ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 void* FUNC1 (scalar_t__) ; 
 scalar_t__ IER ; 
 scalar_t__ IMR ; 
 int /*<<< orphan*/  LBB ; 
 scalar_t__ MI_ARB_STATE ; 
 scalar_t__ PCH_PORT_HOTPLUG ; 
 scalar_t__ RSTDBYCTL ; 
 scalar_t__ SWF00 ; 
 scalar_t__ SWF10 ; 
 scalar_t__ SWF30 ; 
 scalar_t__ _FDI_RXA_IMR ; 
 scalar_t__ _FDI_RXB_IMR ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	int i;

	FUNC7(dev->pdev, LBB, &dev_priv->regfile.saveLBB);

	FUNC5(&dev->struct_mutex);

	FUNC3(dev);

	if (!FUNC2(dev, DRIVER_MODESET)) {
		/* Interrupt state */
		if (FUNC0(dev)) {
			dev_priv->regfile.saveDEIER = FUNC1(DEIER);
			dev_priv->regfile.saveDEIMR = FUNC1(DEIMR);
			dev_priv->regfile.saveGTIER = FUNC1(GTIER);
			dev_priv->regfile.saveGTIMR = FUNC1(GTIMR);
			dev_priv->regfile.saveFDI_RXA_IMR = FUNC1(_FDI_RXA_IMR);
			dev_priv->regfile.saveFDI_RXB_IMR = FUNC1(_FDI_RXB_IMR);
			dev_priv->regfile.saveMCHBAR_RENDER_STANDBY =
				FUNC1(RSTDBYCTL);
			dev_priv->regfile.savePCH_PORT_HOTPLUG = FUNC1(PCH_PORT_HOTPLUG);
		} else {
			dev_priv->regfile.saveIER = FUNC1(IER);
			dev_priv->regfile.saveIMR = FUNC1(IMR);
		}
	}

	FUNC4(dev);

	/* Cache mode state */
	dev_priv->regfile.saveCACHE_MODE_0 = FUNC1(CACHE_MODE_0);

	/* Memory Arbitration state */
	dev_priv->regfile.saveMI_ARB_STATE = FUNC1(MI_ARB_STATE);

	/* Scratch space */
	for (i = 0; i < 16; i++) {
		dev_priv->regfile.saveSWF0[i] = FUNC1(SWF00 + (i << 2));
		dev_priv->regfile.saveSWF1[i] = FUNC1(SWF10 + (i << 2));
	}
	for (i = 0; i < 3; i++)
		dev_priv->regfile.saveSWF2[i] = FUNC1(SWF30 + (i << 2));

	FUNC6(&dev->struct_mutex);

	return 0;
}