#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int flags; } ;
typedef  TYPE_1__ drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  CHIP_R600 139 
#define  CHIP_RS780 138 
#define  CHIP_RS880 137 
#define  CHIP_RV610 136 
#define  CHIP_RV620 135 
#define  CHIP_RV630 134 
#define  CHIP_RV635 133 
#define  CHIP_RV670 132 
#define  CHIP_RV710 131 
#define  CHIP_RV730 130 
#define  CHIP_RV740 129 
#define  CHIP_RV770 128 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int R600_ALU_INST_PREFER_VECTOR ; 
 int R600_CACHE_FLUSH_AND_INV_EVENT ; 
 int R600_DX9_CONSTS ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  R600_IT_EVENT_WRITE ; 
 int /*<<< orphan*/  R600_IT_SET_CONFIG_REG ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int) ; 
 int FUNC18 (int) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int R600_SET_CONFIG_REG_OFFSET ; 
 int R600_SQ_CONFIG ; 
 int R600_VC_ENABLE ; 
 int FUNC20 (int) ; 
 int RADEON_FAMILY_MASK ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int r6xx_default_size ; 
 int* r6xx_default_state ; 
 int r7xx_default_size ; 
 int* r7xx_default_state ; 

__attribute__((used)) static void
FUNC21(drm_radeon_private_t *dev_priv)
{
	int i;
	u32 sq_config, sq_gpr_resource_mgmt_1, sq_gpr_resource_mgmt_2;
	u32 sq_thread_resource_mgmt, sq_stack_resource_mgmt_1, sq_stack_resource_mgmt_2;
	int num_ps_gprs, num_vs_gprs, num_temp_gprs, num_gs_gprs, num_es_gprs;
	int num_ps_threads, num_vs_threads, num_gs_threads, num_es_threads;
	int num_ps_stack_entries, num_vs_stack_entries, num_gs_stack_entries, num_es_stack_entries;
	RING_LOCALS;

	switch ((dev_priv->flags & RADEON_FAMILY_MASK)) {
	case CHIP_R600:
		num_ps_gprs = 192;
		num_vs_gprs = 56;
		num_temp_gprs = 4;
		num_gs_gprs = 0;
		num_es_gprs = 0;
		num_ps_threads = 136;
		num_vs_threads = 48;
		num_gs_threads = 4;
		num_es_threads = 4;
		num_ps_stack_entries = 128;
		num_vs_stack_entries = 128;
		num_gs_stack_entries = 0;
		num_es_stack_entries = 0;
		break;
	case CHIP_RV630:
	case CHIP_RV635:
		num_ps_gprs = 84;
		num_vs_gprs = 36;
		num_temp_gprs = 4;
		num_gs_gprs = 0;
		num_es_gprs = 0;
		num_ps_threads = 144;
		num_vs_threads = 40;
		num_gs_threads = 4;
		num_es_threads = 4;
		num_ps_stack_entries = 40;
		num_vs_stack_entries = 40;
		num_gs_stack_entries = 32;
		num_es_stack_entries = 16;
		break;
	case CHIP_RV610:
	case CHIP_RV620:
	case CHIP_RS780:
	case CHIP_RS880:
	default:
		num_ps_gprs = 84;
		num_vs_gprs = 36;
		num_temp_gprs = 4;
		num_gs_gprs = 0;
		num_es_gprs = 0;
		num_ps_threads = 136;
		num_vs_threads = 48;
		num_gs_threads = 4;
		num_es_threads = 4;
		num_ps_stack_entries = 40;
		num_vs_stack_entries = 40;
		num_gs_stack_entries = 32;
		num_es_stack_entries = 16;
		break;
	case CHIP_RV670:
		num_ps_gprs = 144;
		num_vs_gprs = 40;
		num_temp_gprs = 4;
		num_gs_gprs = 0;
		num_es_gprs = 0;
		num_ps_threads = 136;
		num_vs_threads = 48;
		num_gs_threads = 4;
		num_es_threads = 4;
		num_ps_stack_entries = 40;
		num_vs_stack_entries = 40;
		num_gs_stack_entries = 32;
		num_es_stack_entries = 16;
		break;
	case CHIP_RV770:
		num_ps_gprs = 192;
		num_vs_gprs = 56;
		num_temp_gprs = 4;
		num_gs_gprs = 0;
		num_es_gprs = 0;
		num_ps_threads = 188;
		num_vs_threads = 60;
		num_gs_threads = 0;
		num_es_threads = 0;
		num_ps_stack_entries = 256;
		num_vs_stack_entries = 256;
		num_gs_stack_entries = 0;
		num_es_stack_entries = 0;
		break;
	case CHIP_RV730:
	case CHIP_RV740:
		num_ps_gprs = 84;
		num_vs_gprs = 36;
		num_temp_gprs = 4;
		num_gs_gprs = 0;
		num_es_gprs = 0;
		num_ps_threads = 188;
		num_vs_threads = 60;
		num_gs_threads = 0;
		num_es_threads = 0;
		num_ps_stack_entries = 128;
		num_vs_stack_entries = 128;
		num_gs_stack_entries = 0;
		num_es_stack_entries = 0;
		break;
	case CHIP_RV710:
		num_ps_gprs = 192;
		num_vs_gprs = 56;
		num_temp_gprs = 4;
		num_gs_gprs = 0;
		num_es_gprs = 0;
		num_ps_threads = 144;
		num_vs_threads = 48;
		num_gs_threads = 0;
		num_es_threads = 0;
		num_ps_stack_entries = 128;
		num_vs_stack_entries = 128;
		num_gs_stack_entries = 0;
		num_es_stack_entries = 0;
		break;
	}

	if (((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RV610) ||
	    ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RV620) ||
	    ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS780) ||
	    ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS880) ||
	    ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RV710))
		sq_config = 0;
	else
		sq_config = R600_VC_ENABLE;

	sq_config |= (R600_DX9_CONSTS |
		      R600_ALU_INST_PREFER_VECTOR |
		      FUNC19(0) |
		      FUNC20(1) |
		      FUNC5(2) |
		      FUNC4(3));

	sq_gpr_resource_mgmt_1 = (FUNC13(num_ps_gprs) |
				  FUNC16(num_vs_gprs) |
				  FUNC6(num_temp_gprs));
	sq_gpr_resource_mgmt_2 = (FUNC10(num_gs_gprs) |
				  FUNC7(num_es_gprs));
	sq_thread_resource_mgmt = (FUNC15(num_ps_threads) |
				   FUNC18(num_vs_threads) |
				   FUNC12(num_gs_threads) |
				   FUNC9(num_es_threads));
	sq_stack_resource_mgmt_1 = (FUNC14(num_ps_stack_entries) |
				    FUNC17(num_vs_stack_entries));
	sq_stack_resource_mgmt_2 = (FUNC11(num_gs_stack_entries) |
				    FUNC8(num_es_stack_entries));

	if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_RV770) {
		FUNC1(r7xx_default_size + 10);
		for (i = 0; i < r7xx_default_size; i++)
			FUNC3(r7xx_default_state[i]);
	} else {
		FUNC1(r6xx_default_size + 10);
		for (i = 0; i < r6xx_default_size; i++)
			FUNC3(r6xx_default_state[i]);
	}
	FUNC3(FUNC2(R600_IT_EVENT_WRITE, 0));
	FUNC3(R600_CACHE_FLUSH_AND_INV_EVENT);
	/* SQ config */
	FUNC3(FUNC2(R600_IT_SET_CONFIG_REG, 6));
	FUNC3((R600_SQ_CONFIG - R600_SET_CONFIG_REG_OFFSET) >> 2);
	FUNC3(sq_config);
	FUNC3(sq_gpr_resource_mgmt_1);
	FUNC3(sq_gpr_resource_mgmt_2);
	FUNC3(sq_thread_resource_mgmt);
	FUNC3(sq_stack_resource_mgmt_1);
	FUNC3(sq_stack_resource_mgmt_2);
	FUNC0();
}