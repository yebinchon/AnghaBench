#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  fog_color_c; int /*<<< orphan*/  texture_clr_cmp_msk_c; int /*<<< orphan*/  texture_clr_cmp_clr_c; int /*<<< orphan*/  misc_3d_state_cntl_reg; int /*<<< orphan*/  tex_cntl_c; int /*<<< orphan*/  z_sten_cntl_c; int /*<<< orphan*/  z_pitch_c; int /*<<< orphan*/  z_offset_c; int /*<<< orphan*/  sc_bottom_right_c; int /*<<< orphan*/  sc_top_left_c; int /*<<< orphan*/  dp_gui_master_cntl_c; int /*<<< orphan*/  dst_pitch_offset_c; } ;
struct TYPE_5__ {TYPE_3__ context_state; } ;
typedef  TYPE_1__ drm_r128_sarea_t ;
struct TYPE_6__ {TYPE_1__* sarea_priv; } ;
typedef  TYPE_2__ drm_r128_private_t ;
typedef  TYPE_3__ drm_r128_context_regs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R128_DST_PITCH_OFFSET_C ; 
 int /*<<< orphan*/  RING_LOCALS ; 

__attribute__((used)) static __inline__ void FUNC5(drm_r128_private_t *dev_priv)
{
	drm_r128_sarea_t *sarea_priv = dev_priv->sarea_priv;
	drm_r128_context_regs_t *ctx = &sarea_priv->context_state;
	RING_LOCALS;
	FUNC3("\n");

	FUNC1(13);

	FUNC4(FUNC2(R128_DST_PITCH_OFFSET_C, 11));
	FUNC4(ctx->dst_pitch_offset_c);
	FUNC4(ctx->dp_gui_master_cntl_c);
	FUNC4(ctx->sc_top_left_c);
	FUNC4(ctx->sc_bottom_right_c);
	FUNC4(ctx->z_offset_c);
	FUNC4(ctx->z_pitch_c);
	FUNC4(ctx->z_sten_cntl_c);
	FUNC4(ctx->tex_cntl_c);
	FUNC4(ctx->misc_3d_state_cntl_reg);
	FUNC4(ctx->texture_clr_cmp_clr_c);
	FUNC4(ctx->texture_clr_cmp_msk_c);
	FUNC4(ctx->fog_color_c);

	FUNC0();
}