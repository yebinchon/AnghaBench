#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int max_shader_engines; int max_tile_pipes; int max_cu_per_sh; int max_sh_per_se; int max_backends_per_se; int max_texture_channel_caches; int max_gprs; int max_gs_threads; int max_hw_contexts; int sc_prim_fifo_size_frontend; int sc_prim_fifo_size_backend; int sc_hiz_tile_fifo_size; int sc_earlyz_tile_fifo_size; int num_tile_pipes; int mem_max_burst_length_bytes; int mem_row_size_in_kb; int shader_engine_tile_size; int num_gpus; int multi_gpu_tile_size; int tile_config; } ;
struct TYPE_4__ {TYPE_1__ si; } ;
struct radeon_device {int family; TYPE_2__ config; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int BIF_FB_EN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int CB_PERFCOUNTER0_SELECT0 ; 
 int CB_PERFCOUNTER0_SELECT1 ; 
 int CB_PERFCOUNTER1_SELECT0 ; 
 int CB_PERFCOUNTER1_SELECT1 ; 
 int CB_PERFCOUNTER2_SELECT0 ; 
 int CB_PERFCOUNTER2_SELECT1 ; 
 int CB_PERFCOUNTER3_SELECT0 ; 
 int CB_PERFCOUNTER3_SELECT1 ; 
#define  CHIP_OLAND 131 
#define  CHIP_PITCAIRN 130 
#define  CHIP_TAHITI 129 
#define  CHIP_VERDE 128 
 int CLIP_VTX_REORDER_ENA ; 
 int CP_MEQ_THRESHOLDS ; 
 int CP_PERFMON_CNTL ; 
 int CP_QUEUE_THRESHOLDS ; 
 int DMA0_REGISTER_OFFSET ; 
 int DMA1_REGISTER_OFFSET ; 
 int DMA_TILING_CONFIG ; 
 int DMIF_ADDR_CALC ; 
 int DMIF_ADDR_CONFIG ; 
 int /*<<< orphan*/  ES_AND_GS_AUTO ; 
 int FB_READ_EN ; 
 int FB_WRITE_EN ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int GB_ADDR_CONFIG ; 
 int GRBM_CNTL ; 
 int FUNC4 (int) ; 
 int HDP_ADDR_CONFIG ; 
 int HDP_FLUSH_INVALIDATE_CACHE ; 
 int HDP_HOST_PATH_CNTL ; 
 int HDP_MISC_CNTL ; 
 int MC_ARB_RAMCFG ; 
 int MC_SHARED_CHMAP ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int NOOFBANK_MASK ; 
 int NOOFBANK_SHIFT ; 
 int NOOFCOLS_MASK ; 
 int NOOFCOLS_SHIFT ; 
 int FUNC7 (int) ; 
 int PA_CL_ENHANCE ; 
 int PA_SC_FIFO_SIZE ; 
 int PA_SC_FORCE_EOV_MAX_CNTS ; 
 int PA_SC_LINE_STIPPLE_STATE ; 
 int PIPE_INTERLEAVE_SIZE_MASK ; 
 int PIPE_INTERLEAVE_SIZE_SHIFT ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int ROW_SIZE_MASK ; 
 int ROW_SIZE_SHIFT ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int SPI_CONFIG_CNTL_1 ; 
 int SQ_CONFIG ; 
 int SX_DEBUG_1 ; 
 int TAHITI_GB_ADDR_CONFIG_GOLDEN ; 
 int /*<<< orphan*/  VC_AND_TC ; 
 int VERDE_GB_ADDR_CONFIG_GOLDEN ; 
 int VGT_CACHE_INVALIDATION ; 
 int VGT_GS_VERTEX_REUSE ; 
 int VGT_NUM_INSTANCES ; 
 int FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct radeon_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct radeon_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 

__attribute__((used)) static void FUNC23(struct radeon_device *rdev)
{
	u32 gb_addr_config = 0;
	u32 mc_shared_chmap, mc_arb_ramcfg;
	u32 sx_debug_1;
	u32 hdp_host_path_cntl;
	u32 tmp;
	int i, j;

	switch (rdev->family) {
	case CHIP_TAHITI:
		rdev->config.si.max_shader_engines = 2;
		rdev->config.si.max_tile_pipes = 12;
		rdev->config.si.max_cu_per_sh = 8;
		rdev->config.si.max_sh_per_se = 2;
		rdev->config.si.max_backends_per_se = 4;
		rdev->config.si.max_texture_channel_caches = 12;
		rdev->config.si.max_gprs = 256;
		rdev->config.si.max_gs_threads = 32;
		rdev->config.si.max_hw_contexts = 8;

		rdev->config.si.sc_prim_fifo_size_frontend = 0x20;
		rdev->config.si.sc_prim_fifo_size_backend = 0x100;
		rdev->config.si.sc_hiz_tile_fifo_size = 0x30;
		rdev->config.si.sc_earlyz_tile_fifo_size = 0x130;
		gb_addr_config = TAHITI_GB_ADDR_CONFIG_GOLDEN;
		break;
	case CHIP_PITCAIRN:
		rdev->config.si.max_shader_engines = 2;
		rdev->config.si.max_tile_pipes = 8;
		rdev->config.si.max_cu_per_sh = 5;
		rdev->config.si.max_sh_per_se = 2;
		rdev->config.si.max_backends_per_se = 4;
		rdev->config.si.max_texture_channel_caches = 8;
		rdev->config.si.max_gprs = 256;
		rdev->config.si.max_gs_threads = 32;
		rdev->config.si.max_hw_contexts = 8;

		rdev->config.si.sc_prim_fifo_size_frontend = 0x20;
		rdev->config.si.sc_prim_fifo_size_backend = 0x100;
		rdev->config.si.sc_hiz_tile_fifo_size = 0x30;
		rdev->config.si.sc_earlyz_tile_fifo_size = 0x130;
		gb_addr_config = TAHITI_GB_ADDR_CONFIG_GOLDEN;
		break;
	case CHIP_VERDE:
	default:
		rdev->config.si.max_shader_engines = 1;
		rdev->config.si.max_tile_pipes = 4;
		rdev->config.si.max_cu_per_sh = 5;
		rdev->config.si.max_sh_per_se = 2;
		rdev->config.si.max_backends_per_se = 4;
		rdev->config.si.max_texture_channel_caches = 4;
		rdev->config.si.max_gprs = 256;
		rdev->config.si.max_gs_threads = 32;
		rdev->config.si.max_hw_contexts = 8;

		rdev->config.si.sc_prim_fifo_size_frontend = 0x20;
		rdev->config.si.sc_prim_fifo_size_backend = 0x40;
		rdev->config.si.sc_hiz_tile_fifo_size = 0x30;
		rdev->config.si.sc_earlyz_tile_fifo_size = 0x130;
		gb_addr_config = VERDE_GB_ADDR_CONFIG_GOLDEN;
		break;
	case CHIP_OLAND:
		rdev->config.si.max_shader_engines = 1;
		rdev->config.si.max_tile_pipes = 4;
		rdev->config.si.max_cu_per_sh = 6;
		rdev->config.si.max_sh_per_se = 1;
		rdev->config.si.max_backends_per_se = 2;
		rdev->config.si.max_texture_channel_caches = 4;
		rdev->config.si.max_gprs = 256;
		rdev->config.si.max_gs_threads = 16;
		rdev->config.si.max_hw_contexts = 8;

		rdev->config.si.sc_prim_fifo_size_frontend = 0x20;
		rdev->config.si.sc_prim_fifo_size_backend = 0x40;
		rdev->config.si.sc_hiz_tile_fifo_size = 0x30;
		rdev->config.si.sc_earlyz_tile_fifo_size = 0x130;
		gb_addr_config = VERDE_GB_ADDR_CONFIG_GOLDEN;
		break;
	}

	/* Initialize HDP */
	for (i = 0, j = 0; i < 32; i++, j += 0x18) {
		FUNC17((0x2c14 + j), 0x00000000);
		FUNC17((0x2c18 + j), 0x00000000);
		FUNC17((0x2c1c + j), 0x00000000);
		FUNC17((0x2c20 + j), 0x00000000);
		FUNC17((0x2c24 + j), 0x00000000);
	}

	FUNC17(GRBM_CNTL, FUNC4(0xff));

	FUNC18(rdev);

	FUNC17(BIF_FB_EN, FB_READ_EN | FB_WRITE_EN);

	mc_shared_chmap = FUNC11(MC_SHARED_CHMAP);
	mc_arb_ramcfg = FUNC11(MC_ARB_RAMCFG);

	rdev->config.si.num_tile_pipes = rdev->config.si.max_tile_pipes;
	rdev->config.si.mem_max_burst_length_bytes = 256;
	tmp = (mc_arb_ramcfg & NOOFCOLS_MASK) >> NOOFCOLS_SHIFT;
	rdev->config.si.mem_row_size_in_kb = (4 * (1 << (8 + tmp))) / 1024;
	if (rdev->config.si.mem_row_size_in_kb > 4)
		rdev->config.si.mem_row_size_in_kb = 4;
	/* XXX use MC settings? */
	rdev->config.si.shader_engine_tile_size = 32;
	rdev->config.si.num_gpus = 1;
	rdev->config.si.multi_gpu_tile_size = 64;

	/* fix up row size */
	gb_addr_config &= ~ROW_SIZE_MASK;
	switch (rdev->config.si.mem_row_size_in_kb) {
	case 1:
	default:
		gb_addr_config |= FUNC10(0);
		break;
	case 2:
		gb_addr_config |= FUNC10(1);
		break;
	case 4:
		gb_addr_config |= FUNC10(2);
		break;
	}

	/* setup tiling info dword.  gb_addr_config is not adequate since it does
	 * not have bank info, so create a custom tiling dword.
	 * bits 3:0   num_pipes
	 * bits 7:4   num_banks
	 * bits 11:8  group_size
	 * bits 15:12 row_size
	 */
	rdev->config.si.tile_config = 0;
	switch (rdev->config.si.num_tile_pipes) {
	case 1:
		rdev->config.si.tile_config |= (0 << 0);
		break;
	case 2:
		rdev->config.si.tile_config |= (1 << 0);
		break;
	case 4:
		rdev->config.si.tile_config |= (2 << 0);
		break;
	case 8:
	default:
		/* XXX what about 12? */
		rdev->config.si.tile_config |= (3 << 0);
		break;
	}	
	switch ((mc_arb_ramcfg & NOOFBANK_MASK) >> NOOFBANK_SHIFT) {
	case 0: /* four banks */
		rdev->config.si.tile_config |= 0 << 4;
		break;
	case 1: /* eight banks */
		rdev->config.si.tile_config |= 1 << 4;
		break;
	case 2: /* sixteen banks */
	default:
		rdev->config.si.tile_config |= 2 << 4;
		break;
	}
	rdev->config.si.tile_config |=
		((gb_addr_config & PIPE_INTERLEAVE_SIZE_MASK) >> PIPE_INTERLEAVE_SIZE_SHIFT) << 8;
	rdev->config.si.tile_config |=
		((gb_addr_config & ROW_SIZE_MASK) >> ROW_SIZE_SHIFT) << 12;

	FUNC17(GB_ADDR_CONFIG, gb_addr_config);
	FUNC17(DMIF_ADDR_CONFIG, gb_addr_config);
	FUNC17(DMIF_ADDR_CALC, gb_addr_config);
	FUNC17(HDP_ADDR_CONFIG, gb_addr_config);
	FUNC17(DMA_TILING_CONFIG + DMA0_REGISTER_OFFSET, gb_addr_config);
	FUNC17(DMA_TILING_CONFIG + DMA1_REGISTER_OFFSET, gb_addr_config);

	FUNC21(rdev);

	FUNC19(rdev, rdev->config.si.max_shader_engines,
		    rdev->config.si.max_sh_per_se,
		    rdev->config.si.max_backends_per_se);

	FUNC20(rdev, rdev->config.si.max_shader_engines,
		     rdev->config.si.max_sh_per_se,
		     rdev->config.si.max_cu_per_sh);


	/* set HW defaults for 3D engine */
	FUNC17(CP_QUEUE_THRESHOLDS, (FUNC8(0x16) |
				     FUNC9(0x2b)));
	FUNC17(CP_MEQ_THRESHOLDS, FUNC5(0x30) | FUNC6(0x60));

	sx_debug_1 = FUNC11(SX_DEBUG_1);
	FUNC17(SX_DEBUG_1, sx_debug_1);

	FUNC17(SPI_CONFIG_CNTL_1, FUNC16(4));

	FUNC17(PA_SC_FIFO_SIZE, (FUNC14(rdev->config.si.sc_prim_fifo_size_frontend) |
				 FUNC12(rdev->config.si.sc_prim_fifo_size_backend) |
				 FUNC15(rdev->config.si.sc_hiz_tile_fifo_size) |
				 FUNC13(rdev->config.si.sc_earlyz_tile_fifo_size)));

	FUNC17(VGT_NUM_INSTANCES, 1);

	FUNC17(CP_PERFMON_CNTL, 0);

	FUNC17(SQ_CONFIG, 0);

	FUNC17(PA_SC_FORCE_EOV_MAX_CNTS, (FUNC2(4095) |
					  FUNC3(255)));

	FUNC17(VGT_CACHE_INVALIDATION, FUNC1(VC_AND_TC) |
	       FUNC0(ES_AND_GS_AUTO));

	FUNC17(VGT_GS_VERTEX_REUSE, 16);
	FUNC17(PA_SC_LINE_STIPPLE_STATE, 0);

	FUNC17(CB_PERFCOUNTER0_SELECT0, 0);
	FUNC17(CB_PERFCOUNTER0_SELECT1, 0);
	FUNC17(CB_PERFCOUNTER1_SELECT0, 0);
	FUNC17(CB_PERFCOUNTER1_SELECT1, 0);
	FUNC17(CB_PERFCOUNTER2_SELECT0, 0);
	FUNC17(CB_PERFCOUNTER2_SELECT1, 0);
	FUNC17(CB_PERFCOUNTER3_SELECT0, 0);
	FUNC17(CB_PERFCOUNTER3_SELECT1, 0);

	tmp = FUNC11(HDP_MISC_CNTL);
	tmp |= HDP_FLUSH_INVALIDATE_CACHE;
	FUNC17(HDP_MISC_CNTL, tmp);

	hdp_host_path_cntl = FUNC11(HDP_HOST_PATH_CNTL);
	FUNC17(HDP_HOST_PATH_CNTL, hdp_host_path_cntl);

	FUNC17(PA_CL_ENHANCE, CLIP_VTX_REORDER_ENA | FUNC7(3));

	FUNC22(50);
}