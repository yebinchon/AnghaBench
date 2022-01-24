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
typedef  int u64 ;
typedef  int u32 ;
struct radeon_ring {int dummy; } ;
struct TYPE_2__ {int shader_gpu_addr; int state_offset; int /*<<< orphan*/  state_len; } ;
struct radeon_device {int family; TYPE_1__ r600_blit; struct radeon_ring* ring; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
#define  CHIP_BARTS 138 
#define  CHIP_CAICOS 137 
 int CHIP_CAYMAN ; 
#define  CHIP_CEDAR 136 
#define  CHIP_CYPRESS 135 
#define  CHIP_HEMLOCK 134 
#define  CHIP_JUNIPER 133 
#define  CHIP_PALM 132 
#define  CHIP_REDWOOD 131 
#define  CHIP_SUMO 130 
#define  CHIP_SUMO2 129 
#define  CHIP_TURKS 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int EXPORT_SRC_C ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
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
 int FUNC19 (int) ; 
 int FUNC20 (int) ; 
 int FUNC21 (int) ; 
 int FUNC22 (int) ; 
 int FUNC23 (int) ; 
 int FUNC24 (int) ; 
 int FUNC25 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_CLEAR_STATE ; 
 int /*<<< orphan*/  PACKET3_INDIRECT_BUFFER ; 
 int /*<<< orphan*/  PACKET3_MODE_CONTROL ; 
 int /*<<< orphan*/  PACKET3_SET_CONFIG_REG ; 
 int PACKET3_SET_CONFIG_REG_START ; 
 int FUNC26 (int /*<<< orphan*/ ) ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int SQ_CONFIG ; 
 int SQ_DYN_GPR_CNTL_PS_FLUSH_REQ ; 
 int SQ_LDS_RESOURCE_MGMT ; 
 int VC_ENABLE ; 
 int FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (struct radeon_ring*,int) ; 
 int FUNC29 (int) ; 

__attribute__((used)) static void
FUNC30(struct radeon_device *rdev)
{
	struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	u32 sq_config, sq_gpr_resource_mgmt_1, sq_gpr_resource_mgmt_2, sq_gpr_resource_mgmt_3;
	u32 sq_thread_resource_mgmt, sq_thread_resource_mgmt_2;
	u32 sq_stack_resource_mgmt_1, sq_stack_resource_mgmt_2, sq_stack_resource_mgmt_3;
	int num_ps_gprs, num_vs_gprs, num_temp_gprs;
	int num_gs_gprs, num_es_gprs, num_hs_gprs, num_ls_gprs;
	int num_ps_threads, num_vs_threads, num_gs_threads, num_es_threads;
	int num_hs_threads, num_ls_threads;
	int num_ps_stack_entries, num_vs_stack_entries, num_gs_stack_entries, num_es_stack_entries;
	int num_hs_stack_entries, num_ls_stack_entries;
	u64 gpu_addr;
	int dwords;

	/* set clear context state */
	FUNC28(ring, FUNC25(PACKET3_CLEAR_STATE, 0));
	FUNC28(ring, 0);

	if (rdev->family < CHIP_CAYMAN) {
		switch (rdev->family) {
		case CHIP_CEDAR:
		default:
			num_ps_gprs = 93;
			num_vs_gprs = 46;
			num_temp_gprs = 4;
			num_gs_gprs = 31;
			num_es_gprs = 31;
			num_hs_gprs = 23;
			num_ls_gprs = 23;
			num_ps_threads = 96;
			num_vs_threads = 16;
			num_gs_threads = 16;
			num_es_threads = 16;
			num_hs_threads = 16;
			num_ls_threads = 16;
			num_ps_stack_entries = 42;
			num_vs_stack_entries = 42;
			num_gs_stack_entries = 42;
			num_es_stack_entries = 42;
			num_hs_stack_entries = 42;
			num_ls_stack_entries = 42;
			break;
		case CHIP_REDWOOD:
			num_ps_gprs = 93;
			num_vs_gprs = 46;
			num_temp_gprs = 4;
			num_gs_gprs = 31;
			num_es_gprs = 31;
			num_hs_gprs = 23;
			num_ls_gprs = 23;
			num_ps_threads = 128;
			num_vs_threads = 20;
			num_gs_threads = 20;
			num_es_threads = 20;
			num_hs_threads = 20;
			num_ls_threads = 20;
			num_ps_stack_entries = 42;
			num_vs_stack_entries = 42;
			num_gs_stack_entries = 42;
			num_es_stack_entries = 42;
			num_hs_stack_entries = 42;
			num_ls_stack_entries = 42;
			break;
		case CHIP_JUNIPER:
			num_ps_gprs = 93;
			num_vs_gprs = 46;
			num_temp_gprs = 4;
			num_gs_gprs = 31;
			num_es_gprs = 31;
			num_hs_gprs = 23;
			num_ls_gprs = 23;
			num_ps_threads = 128;
			num_vs_threads = 20;
			num_gs_threads = 20;
			num_es_threads = 20;
			num_hs_threads = 20;
			num_ls_threads = 20;
			num_ps_stack_entries = 85;
			num_vs_stack_entries = 85;
			num_gs_stack_entries = 85;
			num_es_stack_entries = 85;
			num_hs_stack_entries = 85;
			num_ls_stack_entries = 85;
			break;
		case CHIP_CYPRESS:
		case CHIP_HEMLOCK:
			num_ps_gprs = 93;
			num_vs_gprs = 46;
			num_temp_gprs = 4;
			num_gs_gprs = 31;
			num_es_gprs = 31;
			num_hs_gprs = 23;
			num_ls_gprs = 23;
			num_ps_threads = 128;
			num_vs_threads = 20;
			num_gs_threads = 20;
			num_es_threads = 20;
			num_hs_threads = 20;
			num_ls_threads = 20;
			num_ps_stack_entries = 85;
			num_vs_stack_entries = 85;
			num_gs_stack_entries = 85;
			num_es_stack_entries = 85;
			num_hs_stack_entries = 85;
			num_ls_stack_entries = 85;
			break;
		case CHIP_PALM:
			num_ps_gprs = 93;
			num_vs_gprs = 46;
			num_temp_gprs = 4;
			num_gs_gprs = 31;
			num_es_gprs = 31;
			num_hs_gprs = 23;
			num_ls_gprs = 23;
			num_ps_threads = 96;
			num_vs_threads = 16;
			num_gs_threads = 16;
			num_es_threads = 16;
			num_hs_threads = 16;
			num_ls_threads = 16;
			num_ps_stack_entries = 42;
			num_vs_stack_entries = 42;
			num_gs_stack_entries = 42;
			num_es_stack_entries = 42;
			num_hs_stack_entries = 42;
			num_ls_stack_entries = 42;
			break;
		case CHIP_SUMO:
			num_ps_gprs = 93;
			num_vs_gprs = 46;
			num_temp_gprs = 4;
			num_gs_gprs = 31;
			num_es_gprs = 31;
			num_hs_gprs = 23;
			num_ls_gprs = 23;
			num_ps_threads = 96;
			num_vs_threads = 25;
			num_gs_threads = 25;
			num_es_threads = 25;
			num_hs_threads = 25;
			num_ls_threads = 25;
			num_ps_stack_entries = 42;
			num_vs_stack_entries = 42;
			num_gs_stack_entries = 42;
			num_es_stack_entries = 42;
			num_hs_stack_entries = 42;
			num_ls_stack_entries = 42;
			break;
		case CHIP_SUMO2:
			num_ps_gprs = 93;
			num_vs_gprs = 46;
			num_temp_gprs = 4;
			num_gs_gprs = 31;
			num_es_gprs = 31;
			num_hs_gprs = 23;
			num_ls_gprs = 23;
			num_ps_threads = 96;
			num_vs_threads = 25;
			num_gs_threads = 25;
			num_es_threads = 25;
			num_hs_threads = 25;
			num_ls_threads = 25;
			num_ps_stack_entries = 85;
			num_vs_stack_entries = 85;
			num_gs_stack_entries = 85;
			num_es_stack_entries = 85;
			num_hs_stack_entries = 85;
			num_ls_stack_entries = 85;
			break;
		case CHIP_BARTS:
			num_ps_gprs = 93;
			num_vs_gprs = 46;
			num_temp_gprs = 4;
			num_gs_gprs = 31;
			num_es_gprs = 31;
			num_hs_gprs = 23;
			num_ls_gprs = 23;
			num_ps_threads = 128;
			num_vs_threads = 20;
			num_gs_threads = 20;
			num_es_threads = 20;
			num_hs_threads = 20;
			num_ls_threads = 20;
			num_ps_stack_entries = 85;
			num_vs_stack_entries = 85;
			num_gs_stack_entries = 85;
			num_es_stack_entries = 85;
			num_hs_stack_entries = 85;
			num_ls_stack_entries = 85;
			break;
		case CHIP_TURKS:
			num_ps_gprs = 93;
			num_vs_gprs = 46;
			num_temp_gprs = 4;
			num_gs_gprs = 31;
			num_es_gprs = 31;
			num_hs_gprs = 23;
			num_ls_gprs = 23;
			num_ps_threads = 128;
			num_vs_threads = 20;
			num_gs_threads = 20;
			num_es_threads = 20;
			num_hs_threads = 20;
			num_ls_threads = 20;
			num_ps_stack_entries = 42;
			num_vs_stack_entries = 42;
			num_gs_stack_entries = 42;
			num_es_stack_entries = 42;
			num_hs_stack_entries = 42;
			num_ls_stack_entries = 42;
			break;
		case CHIP_CAICOS:
			num_ps_gprs = 93;
			num_vs_gprs = 46;
			num_temp_gprs = 4;
			num_gs_gprs = 31;
			num_es_gprs = 31;
			num_hs_gprs = 23;
			num_ls_gprs = 23;
			num_ps_threads = 128;
			num_vs_threads = 10;
			num_gs_threads = 10;
			num_es_threads = 10;
			num_hs_threads = 10;
			num_ls_threads = 10;
			num_ps_stack_entries = 42;
			num_vs_stack_entries = 42;
			num_gs_stack_entries = 42;
			num_es_stack_entries = 42;
			num_hs_stack_entries = 42;
			num_ls_stack_entries = 42;
			break;
		}

		if ((rdev->family == CHIP_CEDAR) ||
		    (rdev->family == CHIP_PALM) ||
		    (rdev->family == CHIP_SUMO) ||
		    (rdev->family == CHIP_SUMO2) ||
		    (rdev->family == CHIP_CAICOS))
			sq_config = 0;
		else
			sq_config = VC_ENABLE;

		sq_config |= (EXPORT_SRC_C |
			      FUNC1(0) |
			      FUNC5(0) |
			      FUNC4(0) |
			      FUNC26(0) |
			      FUNC27(1) |
			      FUNC3(2) |
			      FUNC2(3));

		sq_gpr_resource_mgmt_1 = (FUNC19(num_ps_gprs) |
					  FUNC22(num_vs_gprs) |
					  FUNC6(num_temp_gprs));
		sq_gpr_resource_mgmt_2 = (FUNC10(num_gs_gprs) |
					  FUNC7(num_es_gprs));
		sq_gpr_resource_mgmt_3 = (FUNC13(num_hs_gprs) |
					  FUNC16(num_ls_gprs));
		sq_thread_resource_mgmt = (FUNC21(num_ps_threads) |
					   FUNC24(num_vs_threads) |
					   FUNC12(num_gs_threads) |
					   FUNC9(num_es_threads));
		sq_thread_resource_mgmt_2 = (FUNC15(num_hs_threads) |
					     FUNC18(num_ls_threads));
		sq_stack_resource_mgmt_1 = (FUNC20(num_ps_stack_entries) |
					    FUNC23(num_vs_stack_entries));
		sq_stack_resource_mgmt_2 = (FUNC11(num_gs_stack_entries) |
					    FUNC8(num_es_stack_entries));
		sq_stack_resource_mgmt_3 = (FUNC14(num_hs_stack_entries) |
					    FUNC17(num_ls_stack_entries));

		/* disable dyn gprs */
		FUNC28(ring, FUNC25(PACKET3_SET_CONFIG_REG, 1));
		FUNC28(ring, (SQ_DYN_GPR_CNTL_PS_FLUSH_REQ - PACKET3_SET_CONFIG_REG_START) >> 2);
		FUNC28(ring, 0);

		/* setup LDS */
		FUNC28(ring, FUNC25(PACKET3_SET_CONFIG_REG, 1));
		FUNC28(ring, (SQ_LDS_RESOURCE_MGMT - PACKET3_SET_CONFIG_REG_START) >> 2);
		FUNC28(ring, 0x10001000);

		/* SQ config */
		FUNC28(ring, FUNC25(PACKET3_SET_CONFIG_REG, 11));
		FUNC28(ring, (SQ_CONFIG - PACKET3_SET_CONFIG_REG_START) >> 2);
		FUNC28(ring, sq_config);
		FUNC28(ring, sq_gpr_resource_mgmt_1);
		FUNC28(ring, sq_gpr_resource_mgmt_2);
		FUNC28(ring, sq_gpr_resource_mgmt_3);
		FUNC28(ring, 0);
		FUNC28(ring, 0);
		FUNC28(ring, sq_thread_resource_mgmt);
		FUNC28(ring, sq_thread_resource_mgmt_2);
		FUNC28(ring, sq_stack_resource_mgmt_1);
		FUNC28(ring, sq_stack_resource_mgmt_2);
		FUNC28(ring, sq_stack_resource_mgmt_3);
	}

	/* CONTEXT_CONTROL */
	FUNC28(ring, 0xc0012800);
	FUNC28(ring, 0x80000000);
	FUNC28(ring, 0x80000000);

	/* SQ_VTX_BASE_VTX_LOC */
	FUNC28(ring, 0xc0026f00);
	FUNC28(ring, 0x00000000);
	FUNC28(ring, 0x00000000);
	FUNC28(ring, 0x00000000);

	/* SET_SAMPLER */
	FUNC28(ring, 0xc0036e00);
	FUNC28(ring, 0x00000000);
	FUNC28(ring, 0x00000012);
	FUNC28(ring, 0x00000000);
	FUNC28(ring, 0x00000000);

	/* set to DX10/11 mode */
	FUNC28(ring, FUNC25(PACKET3_MODE_CONTROL, 0));
	FUNC28(ring, 1);

	/* emit an IB pointing at default state */
	dwords = FUNC0(rdev->r600_blit.state_len, 0x10);
	gpu_addr = rdev->r600_blit.shader_gpu_addr + rdev->r600_blit.state_offset;
	FUNC28(ring, FUNC25(PACKET3_INDIRECT_BUFFER, 2));
	FUNC28(ring, gpu_addr & 0xFFFFFFFC);
	FUNC28(ring, FUNC29(gpu_addr) & 0xFF);
	FUNC28(ring, dwords);

}