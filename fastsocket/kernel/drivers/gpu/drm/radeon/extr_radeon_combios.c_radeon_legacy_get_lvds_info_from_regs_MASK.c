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
struct TYPE_2__ {int vdisplay; int hdisplay; } ;
struct radeon_encoder_lvds {int panel_pwr_delay; int panel_vcc_delay; int lvds_gen_cntl; int panel_digon_delay; int panel_blon_delay; int use_bios_dividers; int panel_ref_divider; int panel_post_divider; int panel_fb_divider; TYPE_1__ native_mode; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ RADEON_CLOCK_CNTL_INDEX ; 
 int /*<<< orphan*/  RADEON_CRTC_H_TOTAL_DISP ; 
 int /*<<< orphan*/  RADEON_CRTC_V_TOTAL_DISP ; 
 int /*<<< orphan*/  RADEON_FP_HORZ_STRETCH ; 
 int /*<<< orphan*/  RADEON_FP_VERT_STRETCH ; 
 int RADEON_HORZ_PANEL_SHIFT ; 
 int RADEON_HORZ_PANEL_SIZE ; 
 int RADEON_HORZ_STRETCH_ENABLE ; 
 int /*<<< orphan*/  RADEON_LVDS_GEN_CNTL ; 
 int RADEON_LVDS_PWRSEQ_DELAY1_SHIFT ; 
 int RADEON_LVDS_PWRSEQ_DELAY2_SHIFT ; 
 int /*<<< orphan*/  RADEON_LVDS_SS_GEN_CNTL ; 
 scalar_t__ RADEON_PPLL_DIV_0 ; 
 scalar_t__ RADEON_PPLL_REF_DIV ; 
 int RADEON_VERT_PANEL_SHIFT ; 
 int RADEON_VERT_PANEL_SIZE ; 
 int RADEON_VERT_STRETCH_ENABLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 struct radeon_encoder_lvds* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct radeon_encoder_lvds *FUNC5(struct
									 radeon_device
									 *rdev)
{
	struct radeon_encoder_lvds *lvds = NULL;
	uint32_t fp_vert_stretch, fp_horz_stretch;
	uint32_t ppll_div_sel, ppll_val;
	uint32_t lvds_ss_gen_cntl = FUNC1(RADEON_LVDS_SS_GEN_CNTL);

	lvds = FUNC4(sizeof(struct radeon_encoder_lvds), GFP_KERNEL);

	if (!lvds)
		return NULL;

	fp_vert_stretch = FUNC1(RADEON_FP_VERT_STRETCH);
	fp_horz_stretch = FUNC1(RADEON_FP_HORZ_STRETCH);

	/* These should be fail-safe defaults, fingers crossed */
	lvds->panel_pwr_delay = 200;
	lvds->panel_vcc_delay = 2000;

	lvds->lvds_gen_cntl = FUNC1(RADEON_LVDS_GEN_CNTL);
	lvds->panel_digon_delay = (lvds_ss_gen_cntl >> RADEON_LVDS_PWRSEQ_DELAY1_SHIFT) & 0xf;
	lvds->panel_blon_delay = (lvds_ss_gen_cntl >> RADEON_LVDS_PWRSEQ_DELAY2_SHIFT) & 0xf;

	if (fp_vert_stretch & RADEON_VERT_STRETCH_ENABLE)
		lvds->native_mode.vdisplay =
		    ((fp_vert_stretch & RADEON_VERT_PANEL_SIZE) >>
		     RADEON_VERT_PANEL_SHIFT) + 1;
	else
		lvds->native_mode.vdisplay =
		    (FUNC1(RADEON_CRTC_V_TOTAL_DISP) >> 16) + 1;

	if (fp_horz_stretch & RADEON_HORZ_STRETCH_ENABLE)
		lvds->native_mode.hdisplay =
		    (((fp_horz_stretch & RADEON_HORZ_PANEL_SIZE) >>
		      RADEON_HORZ_PANEL_SHIFT) + 1) * 8;
	else
		lvds->native_mode.hdisplay =
		    ((FUNC1(RADEON_CRTC_H_TOTAL_DISP) >> 16) + 1) * 8;

	if ((lvds->native_mode.hdisplay < 640) ||
	    (lvds->native_mode.vdisplay < 480)) {
		lvds->native_mode.hdisplay = 640;
		lvds->native_mode.vdisplay = 480;
	}

	ppll_div_sel = FUNC3(RADEON_CLOCK_CNTL_INDEX + 1) & 0x3;
	ppll_val = FUNC2(RADEON_PPLL_DIV_0 + ppll_div_sel);
	if ((ppll_val & 0x000707ff) == 0x1bb)
		lvds->use_bios_dividers = false;
	else {
		lvds->panel_ref_divider =
		    FUNC2(RADEON_PPLL_REF_DIV) & 0x3ff;
		lvds->panel_post_divider = (ppll_val >> 16) & 0x7;
		lvds->panel_fb_divider = ppll_val & 0x7ff;

		if ((lvds->panel_ref_divider != 0) &&
		    (lvds->panel_fb_divider > 3))
			lvds->use_bios_dividers = true;
	}
	lvds->panel_vcc_delay = 200;

	FUNC0("Panel info derived from registers\n");
	FUNC0("Panel Size %dx%d\n", lvds->native_mode.hdisplay,
		 lvds->native_mode.vdisplay);

	return lvds;
}