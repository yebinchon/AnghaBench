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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_2__ {size_t lvdsmanufacturerpointer; int last_script_invoc; int lvds_init_run; scalar_t__ power_off_for_reset; scalar_t__ reset_after_pclk_change; } ;
struct nvbios {int* data; TYPE_1__ fp; } ;
struct nouveau_drm {struct nvbios vbios; int /*<<< orphan*/  device; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct dcb_output {int dummy; } ;
typedef  enum LVDS_script { ____Placeholder_LVDS_script } LVDS_script ;

/* Variables and functions */
 int LVDS_INIT ; 
 int LVDS_PANEL_OFF ; 
 int LVDS_PANEL_ON ; 
 int LVDS_RESET ; 
 int FUNC0 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_drm*,char*,int) ; 
 int /*<<< orphan*/  NV_PBUS_POWERCTRL_2 ; 
 int /*<<< orphan*/  NV_PRAMDAC_SEL_CLK ; 
 int FUNC3 (struct drm_device*,struct dcb_output*,int,int) ; 
 struct nouveau_drm* FUNC4 (struct drm_device*) ; 
 struct nouveau_device* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nouveau_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct drm_device*,struct dcb_output*,int,int,int) ; 

int FUNC9(struct drm_device *dev, struct dcb_output *dcbent, int head, enum LVDS_script script, int pxclk)
{
	/*
	 * LVDS operations are multiplexed in an effort to present a single API
	 * which works with two vastly differing underlying structures.
	 * This acts as the demux
	 */

	struct nouveau_drm *drm = FUNC4(dev);
	struct nouveau_device *device = FUNC5(drm->device);
	struct nvbios *bios = &drm->vbios;
	uint8_t lvds_ver = bios->data[bios->fp.lvdsmanufacturerpointer];
	uint32_t sel_clk_binding, sel_clk;
	int ret;

	if (bios->fp.last_script_invoc == (script << 1 | head) || !lvds_ver ||
	    (lvds_ver >= 0x30 && script == LVDS_INIT))
		return 0;

	if (!bios->fp.lvds_init_run) {
		bios->fp.lvds_init_run = true;
		FUNC9(dev, dcbent, head, LVDS_INIT, pxclk);
	}

	if (script == LVDS_PANEL_ON && bios->fp.reset_after_pclk_change)
		FUNC9(dev, dcbent, head, LVDS_RESET, pxclk);
	if (script == LVDS_RESET && bios->fp.power_off_for_reset)
		FUNC9(dev, dcbent, head, LVDS_PANEL_OFF, pxclk);

	FUNC2(drm, "Calling LVDS script %d:\n", script);

	/* don't let script change pll->head binding */
	sel_clk_binding = FUNC6(device, NV_PRAMDAC_SEL_CLK) & 0x50000;

	if (lvds_ver < 0x30)
		ret = FUNC3(dev, dcbent, head, script);
	else
		ret = FUNC8(dev, dcbent, head, script, pxclk);

	bios->fp.last_script_invoc = (script << 1 | head);

	sel_clk = FUNC0(dev, 0, NV_PRAMDAC_SEL_CLK) & ~0x50000;
	FUNC1(dev, 0, NV_PRAMDAC_SEL_CLK, sel_clk | sel_clk_binding);
	/* some scripts set a value in NV_PBUS_POWERCTRL_2 and break video overlay */
	FUNC7(device, NV_PBUS_POWERCTRL_2, 0);

	return ret;
}