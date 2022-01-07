; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, %struct.radeon_ring*, %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.radeon_ring = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Failed to load firmware!\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to load MC firmware!\0A\00", align 1
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"failed blitter (%d) falling back to memcpy\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"failed initializing CP fences (%d).\0A\00", align 1
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"failed initializing DMA fences (%d).\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"radeon: IH init failed (%d).\0A\00", align 1
@RADEON_WB_CP_RPTR_OFFSET = common dso_local global i32 0, align 4
@R600_CP_RB_RPTR = common dso_local global i32 0, align 4
@R600_CP_RB_WPTR = common dso_local global i32 0, align 4
@RADEON_CP_PACKET2 = common dso_local global i32 0, align 4
@R600_WB_DMA_RPTR_OFFSET = common dso_local global i32 0, align 4
@DMA_RB_RPTR = common dso_local global i32 0, align 4
@DMA_RB_WPTR = common dso_local global i32 0, align 4
@DMA_PACKET_NOP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"IB initialization failed (%d).\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"radeon: audio init failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @evergreen_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evergreen_startup(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 2
  %8 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %9 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %10 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %8, i64 %9
  store %struct.radeon_ring* %10, %struct.radeon_ring** %4, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call i32 @evergreen_pcie_gen2_enable(%struct.radeon_device* %11)
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31, %26, %21, %16
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = call i32 @ni_init_microcode(%struct.radeon_device* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %264

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %31
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = call i32 @ni_mc_load_microcode(%struct.radeon_device* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %264

53:                                               ; preds = %45
  br label %79

54:                                               ; preds = %1
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %64, %59, %54
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = call i32 @r600_init_microcode(%struct.radeon_device* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %264

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %64
  br label %79

79:                                               ; preds = %78, %53
  %80 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %81 = call i32 @r600_vram_scratch_init(%struct.radeon_device* %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %264

86:                                               ; preds = %79
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = call i32 @evergreen_mc_program(%struct.radeon_device* %87)
  %89 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @RADEON_IS_AGP, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = call i32 @evergreen_agp_enable(%struct.radeon_device* %96)
  br label %106

98:                                               ; preds = %86
  %99 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %100 = call i32 @evergreen_pcie_gart_enable(%struct.radeon_device* %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* %2, align 4
  br label %264

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %95
  %107 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %108 = call i32 @evergreen_gpu_init(%struct.radeon_device* %107)
  %109 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %110 = call i32 @evergreen_blit_init(%struct.radeon_device* %109)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %106
  %114 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %115 = call i32 @r600_blit_fini(%struct.radeon_device* %114)
  %116 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %117 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %116, i32 0, i32 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i32* null, i32** %120, align 8
  %121 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %122 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @dev_warn(i32 %123, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %113, %106
  %127 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %128 = call i32 @radeon_wb_init(%struct.radeon_device* %127)
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i32, i32* %5, align 4
  store i32 %132, i32* %2, align 4
  br label %264

133:                                              ; preds = %126
  %134 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %135 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %136 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %134, i64 %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %133
  %140 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %141 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @dev_err(i32 %142, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %5, align 4
  store i32 %145, i32* %2, align 4
  br label %264

146:                                              ; preds = %133
  %147 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %148 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %149 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %147, i64 %148)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %146
  %153 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %154 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @dev_err(i32 %155, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %5, align 4
  store i32 %158, i32* %2, align 4
  br label %264

159:                                              ; preds = %146
  %160 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %161 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %159
  %166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %167 = call i32 @radeon_irq_kms_init(%struct.radeon_device* %166)
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* %5, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i32, i32* %5, align 4
  store i32 %171, i32* %2, align 4
  br label %264

172:                                              ; preds = %165
  br label %173

173:                                              ; preds = %172, %159
  %174 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %175 = call i32 @r600_irq_init(%struct.radeon_device* %174)
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %5, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = load i32, i32* %5, align 4
  %180 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %179)
  %181 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %182 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %181)
  %183 = load i32, i32* %5, align 4
  store i32 %183, i32* %2, align 4
  br label %264

184:                                              ; preds = %173
  %185 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %186 = call i32 @evergreen_irq_set(%struct.radeon_device* %185)
  %187 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %188 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %189 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %190 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %193 = load i32, i32* @R600_CP_RB_RPTR, align 4
  %194 = load i32, i32* @R600_CP_RB_WPTR, align 4
  %195 = load i32, i32* @RADEON_CP_PACKET2, align 4
  %196 = call i32 @radeon_ring_init(%struct.radeon_device* %187, %struct.radeon_ring* %188, i32 %191, i32 %192, i32 %193, i32 %194, i32 0, i32 1048575, i32 %195)
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* %5, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %184
  %200 = load i32, i32* %5, align 4
  store i32 %200, i32* %2, align 4
  br label %264

201:                                              ; preds = %184
  %202 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %203 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %202, i32 0, i32 2
  %204 = load %struct.radeon_ring*, %struct.radeon_ring** %203, align 8
  %205 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %206 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %204, i64 %205
  store %struct.radeon_ring* %206, %struct.radeon_ring** %4, align 8
  %207 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %208 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %209 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %210 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @R600_WB_DMA_RPTR_OFFSET, align 4
  %213 = load i32, i32* @DMA_RB_RPTR, align 4
  %214 = load i32, i32* @DMA_RB_WPTR, align 4
  %215 = load i32, i32* @DMA_PACKET_NOP, align 4
  %216 = call i32 @DMA_PACKET(i32 %215, i32 0, i32 0)
  %217 = call i32 @radeon_ring_init(%struct.radeon_device* %207, %struct.radeon_ring* %208, i32 %211, i32 %212, i32 %213, i32 %214, i32 2, i32 262140, i32 %216)
  store i32 %217, i32* %5, align 4
  %218 = load i32, i32* %5, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %201
  %221 = load i32, i32* %5, align 4
  store i32 %221, i32* %2, align 4
  br label %264

222:                                              ; preds = %201
  %223 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %224 = call i32 @evergreen_cp_load_microcode(%struct.radeon_device* %223)
  store i32 %224, i32* %5, align 4
  %225 = load i32, i32* %5, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %222
  %228 = load i32, i32* %5, align 4
  store i32 %228, i32* %2, align 4
  br label %264

229:                                              ; preds = %222
  %230 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %231 = call i32 @evergreen_cp_resume(%struct.radeon_device* %230)
  store i32 %231, i32* %5, align 4
  %232 = load i32, i32* %5, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %229
  %235 = load i32, i32* %5, align 4
  store i32 %235, i32* %2, align 4
  br label %264

236:                                              ; preds = %229
  %237 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %238 = call i32 @r600_dma_resume(%struct.radeon_device* %237)
  store i32 %238, i32* %5, align 4
  %239 = load i32, i32* %5, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %236
  %242 = load i32, i32* %5, align 4
  store i32 %242, i32* %2, align 4
  br label %264

243:                                              ; preds = %236
  %244 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %245 = call i32 @radeon_ib_pool_init(%struct.radeon_device* %244)
  store i32 %245, i32* %5, align 4
  %246 = load i32, i32* %5, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %243
  %249 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %250 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %5, align 4
  %253 = call i32 @dev_err(i32 %251, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %252)
  %254 = load i32, i32* %5, align 4
  store i32 %254, i32* %2, align 4
  br label %264

255:                                              ; preds = %243
  %256 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %257 = call i32 @r600_audio_init(%struct.radeon_device* %256)
  store i32 %257, i32* %5, align 4
  %258 = load i32, i32* %5, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %255
  %261 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %262 = load i32, i32* %5, align 4
  store i32 %262, i32* %2, align 4
  br label %264

263:                                              ; preds = %255
  store i32 0, i32* %2, align 4
  br label %264

264:                                              ; preds = %263, %260, %248, %241, %234, %227, %220, %199, %178, %170, %152, %139, %131, %103, %84, %74, %50, %41
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

declare dso_local i32 @evergreen_pcie_gen2_enable(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE5(%struct.radeon_device*) #1

declare dso_local i32 @ni_init_microcode(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @ni_mc_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @r600_init_microcode(%struct.radeon_device*) #1

declare dso_local i32 @r600_vram_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_mc_program(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_agp_enable(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_pcie_gart_enable(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_gpu_init(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_blit_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_blit_fini(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @radeon_wb_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_driver_start_ring(%struct.radeon_device*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @radeon_irq_kms_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_irq_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_irq_set(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ring_init(%struct.radeon_device*, %struct.radeon_ring*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DMA_PACKET(i32, i32, i32) #1

declare dso_local i32 @evergreen_cp_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_cp_resume(%struct.radeon_device*) #1

declare dso_local i32 @r600_dma_resume(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_audio_init(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
