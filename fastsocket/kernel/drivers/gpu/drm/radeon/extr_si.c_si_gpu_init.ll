; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_gpu_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_gpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TAHITI_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
@VERDE_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
@GRBM_CNTL = common dso_local global i32 0, align 4
@BIF_FB_EN = common dso_local global i32 0, align 4
@FB_READ_EN = common dso_local global i32 0, align 4
@FB_WRITE_EN = common dso_local global i32 0, align 4
@MC_SHARED_CHMAP = common dso_local global i32 0, align 4
@MC_ARB_RAMCFG = common dso_local global i32 0, align 4
@NOOFCOLS_MASK = common dso_local global i32 0, align 4
@NOOFCOLS_SHIFT = common dso_local global i32 0, align 4
@ROW_SIZE_MASK = common dso_local global i32 0, align 4
@NOOFBANK_MASK = common dso_local global i32 0, align 4
@NOOFBANK_SHIFT = common dso_local global i32 0, align 4
@PIPE_INTERLEAVE_SIZE_MASK = common dso_local global i32 0, align 4
@PIPE_INTERLEAVE_SIZE_SHIFT = common dso_local global i32 0, align 4
@ROW_SIZE_SHIFT = common dso_local global i32 0, align 4
@GB_ADDR_CONFIG = common dso_local global i32 0, align 4
@DMIF_ADDR_CONFIG = common dso_local global i32 0, align 4
@DMIF_ADDR_CALC = common dso_local global i32 0, align 4
@HDP_ADDR_CONFIG = common dso_local global i32 0, align 4
@DMA_TILING_CONFIG = common dso_local global i32 0, align 4
@DMA0_REGISTER_OFFSET = common dso_local global i32 0, align 4
@DMA1_REGISTER_OFFSET = common dso_local global i32 0, align 4
@CP_QUEUE_THRESHOLDS = common dso_local global i32 0, align 4
@CP_MEQ_THRESHOLDS = common dso_local global i32 0, align 4
@SX_DEBUG_1 = common dso_local global i32 0, align 4
@SPI_CONFIG_CNTL_1 = common dso_local global i32 0, align 4
@PA_SC_FIFO_SIZE = common dso_local global i32 0, align 4
@VGT_NUM_INSTANCES = common dso_local global i32 0, align 4
@CP_PERFMON_CNTL = common dso_local global i32 0, align 4
@SQ_CONFIG = common dso_local global i32 0, align 4
@PA_SC_FORCE_EOV_MAX_CNTS = common dso_local global i32 0, align 4
@VGT_CACHE_INVALIDATION = common dso_local global i32 0, align 4
@VC_AND_TC = common dso_local global i32 0, align 4
@ES_AND_GS_AUTO = common dso_local global i32 0, align 4
@VGT_GS_VERTEX_REUSE = common dso_local global i32 0, align 4
@PA_SC_LINE_STIPPLE_STATE = common dso_local global i32 0, align 4
@CB_PERFCOUNTER0_SELECT0 = common dso_local global i32 0, align 4
@CB_PERFCOUNTER0_SELECT1 = common dso_local global i32 0, align 4
@CB_PERFCOUNTER1_SELECT0 = common dso_local global i32 0, align 4
@CB_PERFCOUNTER1_SELECT1 = common dso_local global i32 0, align 4
@CB_PERFCOUNTER2_SELECT0 = common dso_local global i32 0, align 4
@CB_PERFCOUNTER2_SELECT1 = common dso_local global i32 0, align 4
@CB_PERFCOUNTER3_SELECT0 = common dso_local global i32 0, align 4
@CB_PERFCOUNTER3_SELECT1 = common dso_local global i32 0, align 4
@HDP_MISC_CNTL = common dso_local global i32 0, align 4
@HDP_FLUSH_INVALIDATE_CACHE = common dso_local global i32 0, align 4
@HDP_HOST_PATH_CNTL = common dso_local global i32 0, align 4
@PA_CL_ENHANCE = common dso_local global i32 0, align 4
@CLIP_VTX_REORDER_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_gpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_gpu_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %3, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %123 [
    i32 129, label %14
    i32 130, label %68
    i32 128, label %122
    i32 131, label %177
  ]

14:                                               ; preds = %1
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 2, i32* %18, align 4
  %19 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 12, i32* %22, align 4
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32 8, i32* %26, align 4
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  store i32 2, i32* %30, align 4
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  store i32 4, i32* %34, align 4
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  store i32 12, i32* %38, align 4
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 6
  store i32 256, i32* %42, align 4
  %43 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 7
  store i32 32, i32* %46, align 4
  %47 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 8
  store i32 8, i32* %50, align 4
  %51 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 9
  store i32 32, i32* %54, align 4
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 10
  store i32 256, i32* %58, align 4
  %59 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 11
  store i32 48, i32* %62, align 4
  %63 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 12
  store i32 304, i32* %66, align 4
  %67 = load i32, i32* @TAHITI_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %67, i32* %3, align 4
  br label %231

68:                                               ; preds = %1
  %69 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 2, i32* %72, align 4
  %73 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 8, i32* %76, align 4
  %77 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  store i32 5, i32* %80, align 4
  %81 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  store i32 2, i32* %84, align 4
  %85 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  store i32 4, i32* %88, align 4
  %89 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 5
  store i32 8, i32* %92, align 4
  %93 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %94 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 6
  store i32 256, i32* %96, align 4
  %97 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 7
  store i32 32, i32* %100, align 4
  %101 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %102 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 8
  store i32 8, i32* %104, align 4
  %105 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %106 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 9
  store i32 32, i32* %108, align 4
  %109 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %110 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 10
  store i32 256, i32* %112, align 4
  %113 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 11
  store i32 48, i32* %116, align 4
  %117 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %118 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 12
  store i32 304, i32* %120, align 4
  %121 = load i32, i32* @TAHITI_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %121, i32* %3, align 4
  br label %231

122:                                              ; preds = %1
  br label %123

123:                                              ; preds = %1, %122
  %124 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %125 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  store i32 1, i32* %127, align 4
  %128 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  store i32 4, i32* %131, align 4
  %132 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %133 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  store i32 5, i32* %135, align 4
  %136 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %137 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  store i32 2, i32* %139, align 4
  %140 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %141 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 4
  store i32 4, i32* %143, align 4
  %144 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %145 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 5
  store i32 4, i32* %147, align 4
  %148 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 6
  store i32 256, i32* %151, align 4
  %152 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %153 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 7
  store i32 32, i32* %155, align 4
  %156 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %157 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 8
  store i32 8, i32* %159, align 4
  %160 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %161 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 9
  store i32 32, i32* %163, align 4
  %164 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %165 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 10
  store i32 64, i32* %167, align 4
  %168 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %169 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 11
  store i32 48, i32* %171, align 4
  %172 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %173 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 12
  store i32 304, i32* %175, align 4
  %176 = load i32, i32* @VERDE_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %176, i32* %3, align 4
  br label %231

177:                                              ; preds = %1
  %178 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %179 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  store i32 1, i32* %181, align 4
  %182 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %183 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  store i32 4, i32* %185, align 4
  %186 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %187 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  store i32 6, i32* %189, align 4
  %190 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %191 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 3
  store i32 1, i32* %193, align 4
  %194 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %195 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 4
  store i32 2, i32* %197, align 4
  %198 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %199 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 5
  store i32 4, i32* %201, align 4
  %202 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %203 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 6
  store i32 256, i32* %205, align 4
  %206 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %207 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 7
  store i32 16, i32* %209, align 4
  %210 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %211 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 8
  store i32 8, i32* %213, align 4
  %214 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %215 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 9
  store i32 32, i32* %217, align 4
  %218 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %219 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 10
  store i32 64, i32* %221, align 4
  %222 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %223 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 11
  store i32 48, i32* %225, align 4
  %226 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %227 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 12
  store i32 304, i32* %229, align 4
  %230 = load i32, i32* @VERDE_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %230, i32* %3, align 4
  br label %231

231:                                              ; preds = %177, %123, %68, %14
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %232

232:                                              ; preds = %251, %231
  %233 = load i32, i32* %9, align 4
  %234 = icmp slt i32 %233, 32
  br i1 %234, label %235, label %256

235:                                              ; preds = %232
  %236 = load i32, i32* %10, align 4
  %237 = add nsw i32 11284, %236
  %238 = call i32 @WREG32(i32 %237, i32 0)
  %239 = load i32, i32* %10, align 4
  %240 = add nsw i32 11288, %239
  %241 = call i32 @WREG32(i32 %240, i32 0)
  %242 = load i32, i32* %10, align 4
  %243 = add nsw i32 11292, %242
  %244 = call i32 @WREG32(i32 %243, i32 0)
  %245 = load i32, i32* %10, align 4
  %246 = add nsw i32 11296, %245
  %247 = call i32 @WREG32(i32 %246, i32 0)
  %248 = load i32, i32* %10, align 4
  %249 = add nsw i32 11300, %248
  %250 = call i32 @WREG32(i32 %249, i32 0)
  br label %251

251:                                              ; preds = %235
  %252 = load i32, i32* %9, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %9, align 4
  %254 = load i32, i32* %10, align 4
  %255 = add nsw i32 %254, 24
  store i32 %255, i32* %10, align 4
  br label %232

256:                                              ; preds = %232
  %257 = load i32, i32* @GRBM_CNTL, align 4
  %258 = call i32 @GRBM_READ_TIMEOUT(i32 255)
  %259 = call i32 @WREG32(i32 %257, i32 %258)
  %260 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %261 = call i32 @evergreen_fix_pci_max_read_req_size(%struct.radeon_device* %260)
  %262 = load i32, i32* @BIF_FB_EN, align 4
  %263 = load i32, i32* @FB_READ_EN, align 4
  %264 = load i32, i32* @FB_WRITE_EN, align 4
  %265 = or i32 %263, %264
  %266 = call i32 @WREG32(i32 %262, i32 %265)
  %267 = load i32, i32* @MC_SHARED_CHMAP, align 4
  %268 = call i32 @RREG32(i32 %267)
  store i32 %268, i32* %4, align 4
  %269 = load i32, i32* @MC_ARB_RAMCFG, align 4
  %270 = call i32 @RREG32(i32 %269)
  store i32 %270, i32* %5, align 4
  %271 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %272 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %277 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 13
  store i32 %275, i32* %279, align 4
  %280 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %281 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 14
  store i32 256, i32* %283, align 4
  %284 = load i32, i32* %5, align 4
  %285 = load i32, i32* @NOOFCOLS_MASK, align 4
  %286 = and i32 %284, %285
  %287 = load i32, i32* @NOOFCOLS_SHIFT, align 4
  %288 = ashr i32 %286, %287
  store i32 %288, i32* %8, align 4
  %289 = load i32, i32* %8, align 4
  %290 = add nsw i32 8, %289
  %291 = shl i32 1, %290
  %292 = mul nsw i32 4, %291
  %293 = sdiv i32 %292, 1024
  %294 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %295 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 15
  store i32 %293, i32* %297, align 4
  %298 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %299 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 15
  %302 = load i32, i32* %301, align 4
  %303 = icmp sgt i32 %302, 4
  br i1 %303, label %304, label %309

304:                                              ; preds = %256
  %305 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %306 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 15
  store i32 4, i32* %308, align 4
  br label %309

309:                                              ; preds = %304, %256
  %310 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %311 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 16
  store i32 32, i32* %313, align 4
  %314 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %315 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 17
  store i32 1, i32* %317, align 4
  %318 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %319 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 18
  store i32 64, i32* %321, align 4
  %322 = load i32, i32* @ROW_SIZE_MASK, align 4
  %323 = xor i32 %322, -1
  %324 = load i32, i32* %3, align 4
  %325 = and i32 %324, %323
  store i32 %325, i32* %3, align 4
  %326 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %327 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 15
  %330 = load i32, i32* %329, align 4
  switch i32 %330, label %332 [
    i32 1, label %331
    i32 2, label %336
    i32 4, label %340
  ]

331:                                              ; preds = %309
  br label %332

332:                                              ; preds = %309, %331
  %333 = call i32 @ROW_SIZE(i32 0)
  %334 = load i32, i32* %3, align 4
  %335 = or i32 %334, %333
  store i32 %335, i32* %3, align 4
  br label %344

336:                                              ; preds = %309
  %337 = call i32 @ROW_SIZE(i32 1)
  %338 = load i32, i32* %3, align 4
  %339 = or i32 %338, %337
  store i32 %339, i32* %3, align 4
  br label %344

340:                                              ; preds = %309
  %341 = call i32 @ROW_SIZE(i32 2)
  %342 = load i32, i32* %3, align 4
  %343 = or i32 %342, %341
  store i32 %343, i32* %3, align 4
  br label %344

344:                                              ; preds = %340, %336, %332
  %345 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %346 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %347, i32 0, i32 19
  store i32 0, i32* %348, align 4
  %349 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %350 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 13
  %353 = load i32, i32* %352, align 4
  switch i32 %353, label %375 [
    i32 1, label %354
    i32 2, label %360
    i32 4, label %367
    i32 8, label %374
  ]

354:                                              ; preds = %344
  %355 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %356 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %357, i32 0, i32 19
  %359 = load i32, i32* %358, align 4
  store i32 %359, i32* %358, align 4
  br label %382

360:                                              ; preds = %344
  %361 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %362 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %363, i32 0, i32 19
  %365 = load i32, i32* %364, align 4
  %366 = or i32 %365, 1
  store i32 %366, i32* %364, align 4
  br label %382

367:                                              ; preds = %344
  %368 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %369 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %370, i32 0, i32 19
  %372 = load i32, i32* %371, align 4
  %373 = or i32 %372, 2
  store i32 %373, i32* %371, align 4
  br label %382

374:                                              ; preds = %344
  br label %375

375:                                              ; preds = %344, %374
  %376 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %377 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i32 0, i32 19
  %380 = load i32, i32* %379, align 4
  %381 = or i32 %380, 3
  store i32 %381, i32* %379, align 4
  br label %382

382:                                              ; preds = %375, %367, %360, %354
  %383 = load i32, i32* %5, align 4
  %384 = load i32, i32* @NOOFBANK_MASK, align 4
  %385 = and i32 %383, %384
  %386 = load i32, i32* @NOOFBANK_SHIFT, align 4
  %387 = ashr i32 %385, %386
  switch i32 %387, label %402 [
    i32 0, label %388
    i32 1, label %394
    i32 2, label %401
  ]

388:                                              ; preds = %382
  %389 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %390 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %391, i32 0, i32 19
  %393 = load i32, i32* %392, align 4
  store i32 %393, i32* %392, align 4
  br label %409

394:                                              ; preds = %382
  %395 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %396 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %397, i32 0, i32 19
  %399 = load i32, i32* %398, align 4
  %400 = or i32 %399, 16
  store i32 %400, i32* %398, align 4
  br label %409

401:                                              ; preds = %382
  br label %402

402:                                              ; preds = %382, %401
  %403 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %404 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %405, i32 0, i32 19
  %407 = load i32, i32* %406, align 4
  %408 = or i32 %407, 32
  store i32 %408, i32* %406, align 4
  br label %409

409:                                              ; preds = %402, %394, %388
  %410 = load i32, i32* %3, align 4
  %411 = load i32, i32* @PIPE_INTERLEAVE_SIZE_MASK, align 4
  %412 = and i32 %410, %411
  %413 = load i32, i32* @PIPE_INTERLEAVE_SIZE_SHIFT, align 4
  %414 = ashr i32 %412, %413
  %415 = shl i32 %414, 8
  %416 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %417 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %418, i32 0, i32 19
  %420 = load i32, i32* %419, align 4
  %421 = or i32 %420, %415
  store i32 %421, i32* %419, align 4
  %422 = load i32, i32* %3, align 4
  %423 = load i32, i32* @ROW_SIZE_MASK, align 4
  %424 = and i32 %422, %423
  %425 = load i32, i32* @ROW_SIZE_SHIFT, align 4
  %426 = ashr i32 %424, %425
  %427 = shl i32 %426, 12
  %428 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %429 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %430, i32 0, i32 19
  %432 = load i32, i32* %431, align 4
  %433 = or i32 %432, %427
  store i32 %433, i32* %431, align 4
  %434 = load i32, i32* @GB_ADDR_CONFIG, align 4
  %435 = load i32, i32* %3, align 4
  %436 = call i32 @WREG32(i32 %434, i32 %435)
  %437 = load i32, i32* @DMIF_ADDR_CONFIG, align 4
  %438 = load i32, i32* %3, align 4
  %439 = call i32 @WREG32(i32 %437, i32 %438)
  %440 = load i32, i32* @DMIF_ADDR_CALC, align 4
  %441 = load i32, i32* %3, align 4
  %442 = call i32 @WREG32(i32 %440, i32 %441)
  %443 = load i32, i32* @HDP_ADDR_CONFIG, align 4
  %444 = load i32, i32* %3, align 4
  %445 = call i32 @WREG32(i32 %443, i32 %444)
  %446 = load i32, i32* @DMA_TILING_CONFIG, align 4
  %447 = load i32, i32* @DMA0_REGISTER_OFFSET, align 4
  %448 = add nsw i32 %446, %447
  %449 = load i32, i32* %3, align 4
  %450 = call i32 @WREG32(i32 %448, i32 %449)
  %451 = load i32, i32* @DMA_TILING_CONFIG, align 4
  %452 = load i32, i32* @DMA1_REGISTER_OFFSET, align 4
  %453 = add nsw i32 %451, %452
  %454 = load i32, i32* %3, align 4
  %455 = call i32 @WREG32(i32 %453, i32 %454)
  %456 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %457 = call i32 @si_tiling_mode_table_init(%struct.radeon_device* %456)
  %458 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %459 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %460 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %465 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %465, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %466, i32 0, i32 3
  %468 = load i32, i32* %467, align 4
  %469 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %470 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %471, i32 0, i32 4
  %473 = load i32, i32* %472, align 4
  %474 = call i32 @si_setup_rb(%struct.radeon_device* %458, i32 %463, i32 %468, i32 %473)
  %475 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %476 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %477 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 4
  %481 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %482 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %481, i32 0, i32 1
  %483 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %483, i32 0, i32 3
  %485 = load i32, i32* %484, align 4
  %486 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %487 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %486, i32 0, i32 1
  %488 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %488, i32 0, i32 2
  %490 = load i32, i32* %489, align 4
  %491 = call i32 @si_setup_spi(%struct.radeon_device* %475, i32 %480, i32 %485, i32 %490)
  %492 = load i32, i32* @CP_QUEUE_THRESHOLDS, align 4
  %493 = call i32 @ROQ_IB1_START(i32 22)
  %494 = call i32 @ROQ_IB2_START(i32 43)
  %495 = or i32 %493, %494
  %496 = call i32 @WREG32(i32 %492, i32 %495)
  %497 = load i32, i32* @CP_MEQ_THRESHOLDS, align 4
  %498 = call i32 @MEQ1_START(i32 48)
  %499 = call i32 @MEQ2_START(i32 96)
  %500 = or i32 %498, %499
  %501 = call i32 @WREG32(i32 %497, i32 %500)
  %502 = load i32, i32* @SX_DEBUG_1, align 4
  %503 = call i32 @RREG32(i32 %502)
  store i32 %503, i32* %6, align 4
  %504 = load i32, i32* @SX_DEBUG_1, align 4
  %505 = load i32, i32* %6, align 4
  %506 = call i32 @WREG32(i32 %504, i32 %505)
  %507 = load i32, i32* @SPI_CONFIG_CNTL_1, align 4
  %508 = call i32 @VTX_DONE_DELAY(i32 4)
  %509 = call i32 @WREG32(i32 %507, i32 %508)
  %510 = load i32, i32* @PA_SC_FIFO_SIZE, align 4
  %511 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %512 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %511, i32 0, i32 1
  %513 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %512, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %513, i32 0, i32 9
  %515 = load i32, i32* %514, align 4
  %516 = call i32 @SC_FRONTEND_PRIM_FIFO_SIZE(i32 %515)
  %517 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %518 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %517, i32 0, i32 1
  %519 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %519, i32 0, i32 10
  %521 = load i32, i32* %520, align 4
  %522 = call i32 @SC_BACKEND_PRIM_FIFO_SIZE(i32 %521)
  %523 = or i32 %516, %522
  %524 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %525 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %524, i32 0, i32 1
  %526 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %526, i32 0, i32 11
  %528 = load i32, i32* %527, align 4
  %529 = call i32 @SC_HIZ_TILE_FIFO_SIZE(i32 %528)
  %530 = or i32 %523, %529
  %531 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %532 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %531, i32 0, i32 1
  %533 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %532, i32 0, i32 0
  %534 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %533, i32 0, i32 12
  %535 = load i32, i32* %534, align 4
  %536 = call i32 @SC_EARLYZ_TILE_FIFO_SIZE(i32 %535)
  %537 = or i32 %530, %536
  %538 = call i32 @WREG32(i32 %510, i32 %537)
  %539 = load i32, i32* @VGT_NUM_INSTANCES, align 4
  %540 = call i32 @WREG32(i32 %539, i32 1)
  %541 = load i32, i32* @CP_PERFMON_CNTL, align 4
  %542 = call i32 @WREG32(i32 %541, i32 0)
  %543 = load i32, i32* @SQ_CONFIG, align 4
  %544 = call i32 @WREG32(i32 %543, i32 0)
  %545 = load i32, i32* @PA_SC_FORCE_EOV_MAX_CNTS, align 4
  %546 = call i32 @FORCE_EOV_MAX_CLK_CNT(i32 4095)
  %547 = call i32 @FORCE_EOV_MAX_REZ_CNT(i32 255)
  %548 = or i32 %546, %547
  %549 = call i32 @WREG32(i32 %545, i32 %548)
  %550 = load i32, i32* @VGT_CACHE_INVALIDATION, align 4
  %551 = load i32, i32* @VC_AND_TC, align 4
  %552 = call i32 @CACHE_INVALIDATION(i32 %551)
  %553 = load i32, i32* @ES_AND_GS_AUTO, align 4
  %554 = call i32 @AUTO_INVLD_EN(i32 %553)
  %555 = or i32 %552, %554
  %556 = call i32 @WREG32(i32 %550, i32 %555)
  %557 = load i32, i32* @VGT_GS_VERTEX_REUSE, align 4
  %558 = call i32 @WREG32(i32 %557, i32 16)
  %559 = load i32, i32* @PA_SC_LINE_STIPPLE_STATE, align 4
  %560 = call i32 @WREG32(i32 %559, i32 0)
  %561 = load i32, i32* @CB_PERFCOUNTER0_SELECT0, align 4
  %562 = call i32 @WREG32(i32 %561, i32 0)
  %563 = load i32, i32* @CB_PERFCOUNTER0_SELECT1, align 4
  %564 = call i32 @WREG32(i32 %563, i32 0)
  %565 = load i32, i32* @CB_PERFCOUNTER1_SELECT0, align 4
  %566 = call i32 @WREG32(i32 %565, i32 0)
  %567 = load i32, i32* @CB_PERFCOUNTER1_SELECT1, align 4
  %568 = call i32 @WREG32(i32 %567, i32 0)
  %569 = load i32, i32* @CB_PERFCOUNTER2_SELECT0, align 4
  %570 = call i32 @WREG32(i32 %569, i32 0)
  %571 = load i32, i32* @CB_PERFCOUNTER2_SELECT1, align 4
  %572 = call i32 @WREG32(i32 %571, i32 0)
  %573 = load i32, i32* @CB_PERFCOUNTER3_SELECT0, align 4
  %574 = call i32 @WREG32(i32 %573, i32 0)
  %575 = load i32, i32* @CB_PERFCOUNTER3_SELECT1, align 4
  %576 = call i32 @WREG32(i32 %575, i32 0)
  %577 = load i32, i32* @HDP_MISC_CNTL, align 4
  %578 = call i32 @RREG32(i32 %577)
  store i32 %578, i32* %8, align 4
  %579 = load i32, i32* @HDP_FLUSH_INVALIDATE_CACHE, align 4
  %580 = load i32, i32* %8, align 4
  %581 = or i32 %580, %579
  store i32 %581, i32* %8, align 4
  %582 = load i32, i32* @HDP_MISC_CNTL, align 4
  %583 = load i32, i32* %8, align 4
  %584 = call i32 @WREG32(i32 %582, i32 %583)
  %585 = load i32, i32* @HDP_HOST_PATH_CNTL, align 4
  %586 = call i32 @RREG32(i32 %585)
  store i32 %586, i32* %7, align 4
  %587 = load i32, i32* @HDP_HOST_PATH_CNTL, align 4
  %588 = load i32, i32* %7, align 4
  %589 = call i32 @WREG32(i32 %587, i32 %588)
  %590 = load i32, i32* @PA_CL_ENHANCE, align 4
  %591 = load i32, i32* @CLIP_VTX_REORDER_ENA, align 4
  %592 = call i32 @NUM_CLIP_SEQ(i32 3)
  %593 = or i32 %591, %592
  %594 = call i32 @WREG32(i32 %590, i32 %593)
  %595 = call i32 @udelay(i32 50)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @GRBM_READ_TIMEOUT(i32) #1

declare dso_local i32 @evergreen_fix_pci_max_read_req_size(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @ROW_SIZE(i32) #1

declare dso_local i32 @si_tiling_mode_table_init(%struct.radeon_device*) #1

declare dso_local i32 @si_setup_rb(%struct.radeon_device*, i32, i32, i32) #1

declare dso_local i32 @si_setup_spi(%struct.radeon_device*, i32, i32, i32) #1

declare dso_local i32 @ROQ_IB1_START(i32) #1

declare dso_local i32 @ROQ_IB2_START(i32) #1

declare dso_local i32 @MEQ1_START(i32) #1

declare dso_local i32 @MEQ2_START(i32) #1

declare dso_local i32 @VTX_DONE_DELAY(i32) #1

declare dso_local i32 @SC_FRONTEND_PRIM_FIFO_SIZE(i32) #1

declare dso_local i32 @SC_BACKEND_PRIM_FIFO_SIZE(i32) #1

declare dso_local i32 @SC_HIZ_TILE_FIFO_SIZE(i32) #1

declare dso_local i32 @SC_EARLYZ_TILE_FIFO_SIZE(i32) #1

declare dso_local i32 @FORCE_EOV_MAX_CLK_CNT(i32) #1

declare dso_local i32 @FORCE_EOV_MAX_REZ_CNT(i32) #1

declare dso_local i32 @CACHE_INVALIDATION(i32) #1

declare dso_local i32 @AUTO_INVLD_EN(i32) #1

declare dso_local i32 @NUM_CLIP_SEQ(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
