; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, %struct.radeon_ring*, %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32, i32 }
%struct.radeon_ring = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [26 x i8] c"Failed to load firmware!\0A\00", align 1
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"failed blitter (%d) falling back to memcpy\0A\00", align 1
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"failed initializing CP fences (%d).\0A\00", align 1
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"failed initializing DMA fences (%d).\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"radeon: IH init failed (%d).\0A\00", align 1
@RADEON_WB_CP_RPTR_OFFSET = common dso_local global i32 0, align 4
@R600_CP_RB_RPTR = common dso_local global i32 0, align 4
@R600_CP_RB_WPTR = common dso_local global i32 0, align 4
@RADEON_CP_PACKET2 = common dso_local global i32 0, align 4
@R600_WB_DMA_RPTR_OFFSET = common dso_local global i32 0, align 4
@DMA_RB_RPTR = common dso_local global i32 0, align 4
@DMA_RB_WPTR = common dso_local global i32 0, align 4
@DMA_PACKET_NOP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"IB initialization failed (%d).\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"radeon: audio init failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @r600_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r600_startup(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call i32 @r600_pcie_gen2_enable(%struct.radeon_device* %6)
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %17, %12, %1
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = call i32 @r600_init_microcode(%struct.radeon_device* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %221

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %17
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = call i32 @r600_vram_scratch_init(%struct.radeon_device* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %221

38:                                               ; preds = %31
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = call i32 @r600_mc_program(%struct.radeon_device* %39)
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @RADEON_IS_AGP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = call i32 @r600_agp_enable(%struct.radeon_device* %48)
  br label %58

50:                                               ; preds = %38
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = call i32 @r600_pcie_gart_enable(%struct.radeon_device* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %221

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %47
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = call i32 @r600_gpu_init(%struct.radeon_device* %59)
  %61 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %62 = call i32 @r600_blit_init(%struct.radeon_device* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %58
  %66 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %67 = call i32 @r600_blit_fini(%struct.radeon_device* %66)
  %68 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32* null, i32** %72, align 8
  %73 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @dev_warn(i32 %75, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %65, %58
  %79 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %80 = call i32 @radeon_wb_init(%struct.radeon_device* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %221

85:                                               ; preds = %78
  %86 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %87 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %88 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %86, i64 %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %93 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %221

98:                                               ; preds = %85
  %99 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %100 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %101 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %99, i64 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %106 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %221

111:                                              ; preds = %98
  %112 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %113 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %111
  %118 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %119 = call i32 @radeon_irq_kms_init(%struct.radeon_device* %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i32, i32* %5, align 4
  store i32 %123, i32* %2, align 4
  br label %221

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124, %111
  %126 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %127 = call i32 @r600_irq_init(%struct.radeon_device* %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load i32, i32* %5, align 4
  %132 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  %133 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %134 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %133)
  %135 = load i32, i32* %5, align 4
  store i32 %135, i32* %2, align 4
  br label %221

136:                                              ; preds = %125
  %137 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %138 = call i32 @r600_irq_set(%struct.radeon_device* %137)
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %139, i32 0, i32 2
  %141 = load %struct.radeon_ring*, %struct.radeon_ring** %140, align 8
  %142 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %143 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %141, i64 %142
  store %struct.radeon_ring* %143, %struct.radeon_ring** %4, align 8
  %144 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %145 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %146 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %147 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %150 = load i32, i32* @R600_CP_RB_RPTR, align 4
  %151 = load i32, i32* @R600_CP_RB_WPTR, align 4
  %152 = load i32, i32* @RADEON_CP_PACKET2, align 4
  %153 = call i32 @radeon_ring_init(%struct.radeon_device* %144, %struct.radeon_ring* %145, i32 %148, i32 %149, i32 %150, i32 %151, i32 0, i32 1048575, i32 %152)
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %136
  %157 = load i32, i32* %5, align 4
  store i32 %157, i32* %2, align 4
  br label %221

158:                                              ; preds = %136
  %159 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %160 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %159, i32 0, i32 2
  %161 = load %struct.radeon_ring*, %struct.radeon_ring** %160, align 8
  %162 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %163 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %161, i64 %162
  store %struct.radeon_ring* %163, %struct.radeon_ring** %4, align 8
  %164 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %165 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %166 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %167 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @R600_WB_DMA_RPTR_OFFSET, align 4
  %170 = load i32, i32* @DMA_RB_RPTR, align 4
  %171 = load i32, i32* @DMA_RB_WPTR, align 4
  %172 = load i32, i32* @DMA_PACKET_NOP, align 4
  %173 = call i32 @DMA_PACKET(i32 %172, i32 0, i32 0, i32 0)
  %174 = call i32 @radeon_ring_init(%struct.radeon_device* %164, %struct.radeon_ring* %165, i32 %168, i32 %169, i32 %170, i32 %171, i32 2, i32 262140, i32 %173)
  store i32 %174, i32* %5, align 4
  %175 = load i32, i32* %5, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %158
  %178 = load i32, i32* %5, align 4
  store i32 %178, i32* %2, align 4
  br label %221

179:                                              ; preds = %158
  %180 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %181 = call i32 @r600_cp_load_microcode(%struct.radeon_device* %180)
  store i32 %181, i32* %5, align 4
  %182 = load i32, i32* %5, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i32, i32* %5, align 4
  store i32 %185, i32* %2, align 4
  br label %221

186:                                              ; preds = %179
  %187 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %188 = call i32 @r600_cp_resume(%struct.radeon_device* %187)
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* %5, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load i32, i32* %5, align 4
  store i32 %192, i32* %2, align 4
  br label %221

193:                                              ; preds = %186
  %194 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %195 = call i32 @r600_dma_resume(%struct.radeon_device* %194)
  store i32 %195, i32* %5, align 4
  %196 = load i32, i32* %5, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = load i32, i32* %5, align 4
  store i32 %199, i32* %2, align 4
  br label %221

200:                                              ; preds = %193
  %201 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %202 = call i32 @radeon_ib_pool_init(%struct.radeon_device* %201)
  store i32 %202, i32* %5, align 4
  %203 = load i32, i32* %5, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %200
  %206 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %207 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %5, align 4
  %210 = call i32 @dev_err(i32 %208, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* %5, align 4
  store i32 %211, i32* %2, align 4
  br label %221

212:                                              ; preds = %200
  %213 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %214 = call i32 @r600_audio_init(%struct.radeon_device* %213)
  store i32 %214, i32* %5, align 4
  %215 = load i32, i32* %5, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %219 = load i32, i32* %5, align 4
  store i32 %219, i32* %2, align 4
  br label %221

220:                                              ; preds = %212
  store i32 0, i32* %2, align 4
  br label %221

221:                                              ; preds = %220, %217, %205, %198, %191, %184, %177, %156, %130, %122, %104, %91, %83, %55, %36, %27
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local i32 @r600_pcie_gen2_enable(%struct.radeon_device*) #1

declare dso_local i32 @r600_init_microcode(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @r600_vram_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_mc_program(%struct.radeon_device*) #1

declare dso_local i32 @r600_agp_enable(%struct.radeon_device*) #1

declare dso_local i32 @r600_pcie_gart_enable(%struct.radeon_device*) #1

declare dso_local i32 @r600_gpu_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_blit_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_blit_fini(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @radeon_wb_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_driver_start_ring(%struct.radeon_device*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @radeon_irq_kms_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_irq_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_irq_set(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ring_init(%struct.radeon_device*, %struct.radeon_ring*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32) #1

declare dso_local i32 @r600_cp_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @r600_cp_resume(%struct.radeon_device*) #1

declare dso_local i32 @r600_dma_resume(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_audio_init(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
