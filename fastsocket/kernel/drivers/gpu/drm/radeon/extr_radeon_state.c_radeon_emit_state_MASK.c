#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  pp_border_color; int /*<<< orphan*/  pp_tfactor; int /*<<< orphan*/  pp_txablend; int /*<<< orphan*/  pp_txcblend; int /*<<< orphan*/  pp_txoffset; int /*<<< orphan*/  pp_txformat; int /*<<< orphan*/  pp_txfilter; } ;
typedef  TYPE_1__ drm_radeon_texture_regs_t ;
typedef  int /*<<< orphan*/  drm_radeon_private_t ;
struct TYPE_6__ {int /*<<< orphan*/  re_misc; int /*<<< orphan*/  se_cntl_status; int /*<<< orphan*/  se_cntl; int /*<<< orphan*/  se_vport_zoffset; int /*<<< orphan*/  se_vport_zscale; int /*<<< orphan*/  se_vport_yoffset; int /*<<< orphan*/  se_vport_yscale; int /*<<< orphan*/  se_vport_xoffset; int /*<<< orphan*/  se_vport_xscale; int /*<<< orphan*/  rb3d_planemask; int /*<<< orphan*/  rb3d_ropcntl; int /*<<< orphan*/  rb3d_stencilrefmask; int /*<<< orphan*/  pp_rot_matrix_1; int /*<<< orphan*/  pp_rot_matrix_0; int /*<<< orphan*/  pp_lum_matrix; int /*<<< orphan*/  se_line_width; int /*<<< orphan*/  re_line_state; int /*<<< orphan*/  re_line_pattern; int /*<<< orphan*/  se_coord_fmt; int /*<<< orphan*/  rb3d_colorpitch; int /*<<< orphan*/  rb3d_coloroffset; int /*<<< orphan*/  rb3d_cntl; int /*<<< orphan*/  pp_cntl; int /*<<< orphan*/  rb3d_zstencilcntl; int /*<<< orphan*/  rb3d_depthpitch; int /*<<< orphan*/  rb3d_depthoffset; int /*<<< orphan*/  rb3d_blendcntl; int /*<<< orphan*/  re_solid_color; int /*<<< orphan*/  pp_fog_color; int /*<<< orphan*/  pp_misc; } ;
typedef  TYPE_2__ drm_radeon_context_regs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RADEON_PP_BORDER_COLOR_0 ; 
 int /*<<< orphan*/  RADEON_PP_BORDER_COLOR_1 ; 
 int /*<<< orphan*/  RADEON_PP_BORDER_COLOR_2 ; 
 int /*<<< orphan*/  RADEON_PP_CNTL ; 
 int /*<<< orphan*/  RADEON_PP_LUM_MATRIX ; 
 int /*<<< orphan*/  RADEON_PP_MISC ; 
 int /*<<< orphan*/  RADEON_PP_ROT_MATRIX_0 ; 
 int /*<<< orphan*/  RADEON_PP_TXFILTER_0 ; 
 int /*<<< orphan*/  RADEON_PP_TXFILTER_1 ; 
 int /*<<< orphan*/  RADEON_PP_TXFILTER_2 ; 
 int /*<<< orphan*/  RADEON_RB3D_COLORPITCH ; 
 int /*<<< orphan*/  RADEON_RB3D_STENCILREFMASK ; 
 int /*<<< orphan*/  RADEON_RE_LINE_PATTERN ; 
 int /*<<< orphan*/  RADEON_RE_MISC ; 
 int /*<<< orphan*/  RADEON_SE_CNTL ; 
 int /*<<< orphan*/  RADEON_SE_CNTL_STATUS ; 
 int /*<<< orphan*/  RADEON_SE_COORD_FMT ; 
 int /*<<< orphan*/  RADEON_SE_LINE_WIDTH ; 
 int /*<<< orphan*/  RADEON_SE_VPORT_XSCALE ; 
 unsigned int RADEON_UPLOAD_BUMPMAP ; 
 unsigned int RADEON_UPLOAD_CONTEXT ; 
 unsigned int RADEON_UPLOAD_LINE ; 
 unsigned int RADEON_UPLOAD_MASKS ; 
 unsigned int RADEON_UPLOAD_MISC ; 
 unsigned int RADEON_UPLOAD_SETUP ; 
 unsigned int RADEON_UPLOAD_TEX0 ; 
 unsigned int RADEON_UPLOAD_TEX1 ; 
 unsigned int RADEON_UPLOAD_TEX2 ; 
 unsigned int RADEON_UPLOAD_VERTFMT ; 
 unsigned int RADEON_UPLOAD_VIEWPORT ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct drm_file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(drm_radeon_private_t * dev_priv,
			     struct drm_file *file_priv,
			     drm_radeon_context_regs_t * ctx,
			     drm_radeon_texture_regs_t * tex,
			     unsigned int dirty)
{
	RING_LOCALS;
	FUNC3("dirty=0x%08x\n", dirty);

	if (dirty & RADEON_UPLOAD_CONTEXT) {
		if (FUNC6(dev_priv, file_priv,
						  &ctx->rb3d_depthoffset)) {
			FUNC4("Invalid depth buffer offset\n");
			return -EINVAL;
		}

		if (FUNC6(dev_priv, file_priv,
						  &ctx->rb3d_coloroffset)) {
			FUNC4("Invalid depth buffer offset\n");
			return -EINVAL;
		}

		FUNC1(14);
		FUNC5(FUNC2(RADEON_PP_MISC, 6));
		FUNC5(ctx->pp_misc);
		FUNC5(ctx->pp_fog_color);
		FUNC5(ctx->re_solid_color);
		FUNC5(ctx->rb3d_blendcntl);
		FUNC5(ctx->rb3d_depthoffset);
		FUNC5(ctx->rb3d_depthpitch);
		FUNC5(ctx->rb3d_zstencilcntl);
		FUNC5(FUNC2(RADEON_PP_CNTL, 2));
		FUNC5(ctx->pp_cntl);
		FUNC5(ctx->rb3d_cntl);
		FUNC5(ctx->rb3d_coloroffset);
		FUNC5(FUNC2(RADEON_RB3D_COLORPITCH, 0));
		FUNC5(ctx->rb3d_colorpitch);
		FUNC0();
	}

	if (dirty & RADEON_UPLOAD_VERTFMT) {
		FUNC1(2);
		FUNC5(FUNC2(RADEON_SE_COORD_FMT, 0));
		FUNC5(ctx->se_coord_fmt);
		FUNC0();
	}

	if (dirty & RADEON_UPLOAD_LINE) {
		FUNC1(5);
		FUNC5(FUNC2(RADEON_RE_LINE_PATTERN, 1));
		FUNC5(ctx->re_line_pattern);
		FUNC5(ctx->re_line_state);
		FUNC5(FUNC2(RADEON_SE_LINE_WIDTH, 0));
		FUNC5(ctx->se_line_width);
		FUNC0();
	}

	if (dirty & RADEON_UPLOAD_BUMPMAP) {
		FUNC1(5);
		FUNC5(FUNC2(RADEON_PP_LUM_MATRIX, 0));
		FUNC5(ctx->pp_lum_matrix);
		FUNC5(FUNC2(RADEON_PP_ROT_MATRIX_0, 1));
		FUNC5(ctx->pp_rot_matrix_0);
		FUNC5(ctx->pp_rot_matrix_1);
		FUNC0();
	}

	if (dirty & RADEON_UPLOAD_MASKS) {
		FUNC1(4);
		FUNC5(FUNC2(RADEON_RB3D_STENCILREFMASK, 2));
		FUNC5(ctx->rb3d_stencilrefmask);
		FUNC5(ctx->rb3d_ropcntl);
		FUNC5(ctx->rb3d_planemask);
		FUNC0();
	}

	if (dirty & RADEON_UPLOAD_VIEWPORT) {
		FUNC1(7);
		FUNC5(FUNC2(RADEON_SE_VPORT_XSCALE, 5));
		FUNC5(ctx->se_vport_xscale);
		FUNC5(ctx->se_vport_xoffset);
		FUNC5(ctx->se_vport_yscale);
		FUNC5(ctx->se_vport_yoffset);
		FUNC5(ctx->se_vport_zscale);
		FUNC5(ctx->se_vport_zoffset);
		FUNC0();
	}

	if (dirty & RADEON_UPLOAD_SETUP) {
		FUNC1(4);
		FUNC5(FUNC2(RADEON_SE_CNTL, 0));
		FUNC5(ctx->se_cntl);
		FUNC5(FUNC2(RADEON_SE_CNTL_STATUS, 0));
		FUNC5(ctx->se_cntl_status);
		FUNC0();
	}

	if (dirty & RADEON_UPLOAD_MISC) {
		FUNC1(2);
		FUNC5(FUNC2(RADEON_RE_MISC, 0));
		FUNC5(ctx->re_misc);
		FUNC0();
	}

	if (dirty & RADEON_UPLOAD_TEX0) {
		if (FUNC6(dev_priv, file_priv,
						  &tex[0].pp_txoffset)) {
			FUNC4("Invalid texture offset for unit 0\n");
			return -EINVAL;
		}

		FUNC1(9);
		FUNC5(FUNC2(RADEON_PP_TXFILTER_0, 5));
		FUNC5(tex[0].pp_txfilter);
		FUNC5(tex[0].pp_txformat);
		FUNC5(tex[0].pp_txoffset);
		FUNC5(tex[0].pp_txcblend);
		FUNC5(tex[0].pp_txablend);
		FUNC5(tex[0].pp_tfactor);
		FUNC5(FUNC2(RADEON_PP_BORDER_COLOR_0, 0));
		FUNC5(tex[0].pp_border_color);
		FUNC0();
	}

	if (dirty & RADEON_UPLOAD_TEX1) {
		if (FUNC6(dev_priv, file_priv,
						  &tex[1].pp_txoffset)) {
			FUNC4("Invalid texture offset for unit 1\n");
			return -EINVAL;
		}

		FUNC1(9);
		FUNC5(FUNC2(RADEON_PP_TXFILTER_1, 5));
		FUNC5(tex[1].pp_txfilter);
		FUNC5(tex[1].pp_txformat);
		FUNC5(tex[1].pp_txoffset);
		FUNC5(tex[1].pp_txcblend);
		FUNC5(tex[1].pp_txablend);
		FUNC5(tex[1].pp_tfactor);
		FUNC5(FUNC2(RADEON_PP_BORDER_COLOR_1, 0));
		FUNC5(tex[1].pp_border_color);
		FUNC0();
	}

	if (dirty & RADEON_UPLOAD_TEX2) {
		if (FUNC6(dev_priv, file_priv,
						  &tex[2].pp_txoffset)) {
			FUNC4("Invalid texture offset for unit 2\n");
			return -EINVAL;
		}

		FUNC1(9);
		FUNC5(FUNC2(RADEON_PP_TXFILTER_2, 5));
		FUNC5(tex[2].pp_txfilter);
		FUNC5(tex[2].pp_txformat);
		FUNC5(tex[2].pp_txoffset);
		FUNC5(tex[2].pp_txcblend);
		FUNC5(tex[2].pp_txablend);
		FUNC5(tex[2].pp_tfactor);
		FUNC5(FUNC2(RADEON_PP_BORDER_COLOR_2, 0));
		FUNC5(tex[2].pp_border_color);
		FUNC0();
	}

	return 0;
}