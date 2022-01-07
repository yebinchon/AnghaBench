; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, %struct.radeon_ring*, %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.radeon_ring = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to load firmware!\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to load MC firmware!\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"failed blitter (%d) falling back to memcpy\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to init rlc BOs!\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"failed initializing CP fences (%d).\0A\00", align 1
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i64 0, align 8
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i64 0, align 8
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"failed initializing DMA fences (%d).\0A\00", align 1
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"radeon: IH init failed (%d).\0A\00", align 1
@RADEON_WB_CP_RPTR_OFFSET = common dso_local global i32 0, align 4
@CP_RB0_RPTR = common dso_local global i64 0, align 8
@CP_RB0_WPTR = common dso_local global i64 0, align 8
@RADEON_CP_PACKET2 = common dso_local global i32 0, align 4
@R600_WB_DMA_RPTR_OFFSET = common dso_local global i32 0, align 4
@DMA_RB_RPTR = common dso_local global i64 0, align 8
@DMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@DMA_RB_WPTR = common dso_local global i64 0, align 8
@DMA_PACKET_NOP = common dso_local global i32 0, align 4
@CAYMAN_WB_DMA1_RPTR_OFFSET = common dso_local global i32 0, align 4
@DMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"IB initialization failed (%d).\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"vm manager initialization failed (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cayman_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cayman_startup(%struct.radeon_device* %0) #0 {
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
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @RADEON_IS_IGP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29, %24, %19
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = call i32 @ni_init_microcode(%struct.radeon_device* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %351

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %29
  br label %82

44:                                               ; preds = %1
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %59, %54, %49, %44
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = call i32 @ni_init_microcode(%struct.radeon_device* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %351

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %59
  %74 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %75 = call i32 @ni_mc_load_microcode(%struct.radeon_device* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %351

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %43
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = call i32 @r600_vram_scratch_init(%struct.radeon_device* %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %351

89:                                               ; preds = %82
  %90 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %91 = call i32 @evergreen_mc_program(%struct.radeon_device* %90)
  %92 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %93 = call i32 @cayman_pcie_gart_enable(%struct.radeon_device* %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %351

98:                                               ; preds = %89
  %99 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %100 = call i32 @cayman_gpu_init(%struct.radeon_device* %99)
  %101 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %102 = call i32 @evergreen_blit_init(%struct.radeon_device* %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %98
  %106 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %107 = call i32 @r600_blit_fini(%struct.radeon_device* %106)
  %108 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %109 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %108, i32 0, i32 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i32* null, i32** %112, align 8
  %113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @dev_warn(i32 %115, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %105, %98
  %119 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %120 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @RADEON_IS_IGP, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %118
  %126 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %127 = call i32 @si_rlc_init(%struct.radeon_device* %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %132 = load i32, i32* %5, align 4
  store i32 %132, i32* %2, align 4
  br label %351

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133, %118
  %135 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %136 = call i32 @radeon_wb_init(%struct.radeon_device* %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* %5, align 4
  store i32 %140, i32* %2, align 4
  br label %351

141:                                              ; preds = %134
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %144 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %142, i64 %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %141
  %148 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @dev_err(i32 %150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %5, align 4
  store i32 %153, i32* %2, align 4
  br label %351

154:                                              ; preds = %141
  %155 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %156 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %157 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %155, i64 %156)
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %154
  %161 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %162 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @dev_err(i32 %163, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %5, align 4
  store i32 %166, i32* %2, align 4
  br label %351

167:                                              ; preds = %154
  %168 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %169 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %170 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %168, i64 %169)
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* %5, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %167
  %174 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %175 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @dev_err(i32 %176, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* %5, align 4
  store i32 %179, i32* %2, align 4
  br label %351

180:                                              ; preds = %167
  %181 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %182 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %183 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %181, i64 %182)
  store i32 %183, i32* %5, align 4
  %184 = load i32, i32* %5, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %180
  %187 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %188 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @dev_err(i32 %189, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* %5, align 4
  store i32 %192, i32* %2, align 4
  br label %351

193:                                              ; preds = %180
  %194 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %195 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %196 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %194, i64 %195)
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* %5, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %193
  %200 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %201 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %5, align 4
  %204 = call i32 @dev_err(i32 %202, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* %5, align 4
  store i32 %205, i32* %2, align 4
  br label %351

206:                                              ; preds = %193
  %207 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %208 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %220, label %212

212:                                              ; preds = %206
  %213 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %214 = call i32 @radeon_irq_kms_init(%struct.radeon_device* %213)
  store i32 %214, i32* %5, align 4
  %215 = load i32, i32* %5, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = load i32, i32* %5, align 4
  store i32 %218, i32* %2, align 4
  br label %351

219:                                              ; preds = %212
  br label %220

220:                                              ; preds = %219, %206
  %221 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %222 = call i32 @r600_irq_init(%struct.radeon_device* %221)
  store i32 %222, i32* %5, align 4
  %223 = load i32, i32* %5, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %220
  %226 = load i32, i32* %5, align 4
  %227 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %226)
  %228 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %229 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %228)
  %230 = load i32, i32* %5, align 4
  store i32 %230, i32* %2, align 4
  br label %351

231:                                              ; preds = %220
  %232 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %233 = call i32 @evergreen_irq_set(%struct.radeon_device* %232)
  %234 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %235 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %236 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %237 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %240 = load i64, i64* @CP_RB0_RPTR, align 8
  %241 = load i64, i64* @CP_RB0_WPTR, align 8
  %242 = load i32, i32* @RADEON_CP_PACKET2, align 4
  %243 = call i32 @radeon_ring_init(%struct.radeon_device* %234, %struct.radeon_ring* %235, i32 %238, i32 %239, i64 %240, i64 %241, i32 0, i32 1048575, i32 %242)
  store i32 %243, i32* %5, align 4
  %244 = load i32, i32* %5, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %231
  %247 = load i32, i32* %5, align 4
  store i32 %247, i32* %2, align 4
  br label %351

248:                                              ; preds = %231
  %249 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %250 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %249, i32 0, i32 2
  %251 = load %struct.radeon_ring*, %struct.radeon_ring** %250, align 8
  %252 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %253 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %251, i64 %252
  store %struct.radeon_ring* %253, %struct.radeon_ring** %4, align 8
  %254 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %255 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %256 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %257 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @R600_WB_DMA_RPTR_OFFSET, align 4
  %260 = load i64, i64* @DMA_RB_RPTR, align 8
  %261 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %262 = add nsw i64 %260, %261
  %263 = load i64, i64* @DMA_RB_WPTR, align 8
  %264 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %265 = add nsw i64 %263, %264
  %266 = load i32, i32* @DMA_PACKET_NOP, align 4
  %267 = call i32 @DMA_PACKET(i32 %266, i32 0, i32 0, i32 0)
  %268 = call i32 @radeon_ring_init(%struct.radeon_device* %254, %struct.radeon_ring* %255, i32 %258, i32 %259, i64 %262, i64 %265, i32 2, i32 262140, i32 %267)
  store i32 %268, i32* %5, align 4
  %269 = load i32, i32* %5, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %248
  %272 = load i32, i32* %5, align 4
  store i32 %272, i32* %2, align 4
  br label %351

273:                                              ; preds = %248
  %274 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %275 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %274, i32 0, i32 2
  %276 = load %struct.radeon_ring*, %struct.radeon_ring** %275, align 8
  %277 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %278 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %276, i64 %277
  store %struct.radeon_ring* %278, %struct.radeon_ring** %4, align 8
  %279 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %280 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %281 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %282 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @CAYMAN_WB_DMA1_RPTR_OFFSET, align 4
  %285 = load i64, i64* @DMA_RB_RPTR, align 8
  %286 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %287 = add nsw i64 %285, %286
  %288 = load i64, i64* @DMA_RB_WPTR, align 8
  %289 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %290 = add nsw i64 %288, %289
  %291 = load i32, i32* @DMA_PACKET_NOP, align 4
  %292 = call i32 @DMA_PACKET(i32 %291, i32 0, i32 0, i32 0)
  %293 = call i32 @radeon_ring_init(%struct.radeon_device* %279, %struct.radeon_ring* %280, i32 %283, i32 %284, i64 %287, i64 %290, i32 2, i32 262140, i32 %292)
  store i32 %293, i32* %5, align 4
  %294 = load i32, i32* %5, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %273
  %297 = load i32, i32* %5, align 4
  store i32 %297, i32* %2, align 4
  br label %351

298:                                              ; preds = %273
  %299 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %300 = call i32 @cayman_cp_load_microcode(%struct.radeon_device* %299)
  store i32 %300, i32* %5, align 4
  %301 = load i32, i32* %5, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %298
  %304 = load i32, i32* %5, align 4
  store i32 %304, i32* %2, align 4
  br label %351

305:                                              ; preds = %298
  %306 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %307 = call i32 @cayman_cp_resume(%struct.radeon_device* %306)
  store i32 %307, i32* %5, align 4
  %308 = load i32, i32* %5, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %305
  %311 = load i32, i32* %5, align 4
  store i32 %311, i32* %2, align 4
  br label %351

312:                                              ; preds = %305
  %313 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %314 = call i32 @cayman_dma_resume(%struct.radeon_device* %313)
  store i32 %314, i32* %5, align 4
  %315 = load i32, i32* %5, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %312
  %318 = load i32, i32* %5, align 4
  store i32 %318, i32* %2, align 4
  br label %351

319:                                              ; preds = %312
  %320 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %321 = call i32 @radeon_ib_pool_init(%struct.radeon_device* %320)
  store i32 %321, i32* %5, align 4
  %322 = load i32, i32* %5, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %331

324:                                              ; preds = %319
  %325 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %326 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* %5, align 4
  %329 = call i32 @dev_err(i32 %327, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %328)
  %330 = load i32, i32* %5, align 4
  store i32 %330, i32* %2, align 4
  br label %351

331:                                              ; preds = %319
  %332 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %333 = call i32 @radeon_vm_manager_init(%struct.radeon_device* %332)
  store i32 %333, i32* %5, align 4
  %334 = load i32, i32* %5, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %331
  %337 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %338 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* %5, align 4
  %341 = call i32 @dev_err(i32 %339, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %340)
  %342 = load i32, i32* %5, align 4
  store i32 %342, i32* %2, align 4
  br label %351

343:                                              ; preds = %331
  %344 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %345 = call i32 @r600_audio_init(%struct.radeon_device* %344)
  store i32 %345, i32* %5, align 4
  %346 = load i32, i32* %5, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %343
  %349 = load i32, i32* %5, align 4
  store i32 %349, i32* %2, align 4
  br label %351

350:                                              ; preds = %343
  store i32 0, i32* %2, align 4
  br label %351

351:                                              ; preds = %350, %348, %336, %324, %317, %310, %303, %296, %271, %246, %225, %217, %199, %186, %173, %160, %147, %139, %130, %96, %87, %78, %69, %39
  %352 = load i32, i32* %2, align 4
  ret i32 %352
}

declare dso_local i32 @evergreen_pcie_gen2_enable(%struct.radeon_device*) #1

declare dso_local i32 @ni_init_microcode(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @ni_mc_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @r600_vram_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_mc_program(%struct.radeon_device*) #1

declare dso_local i32 @cayman_pcie_gart_enable(%struct.radeon_device*) #1

declare dso_local i32 @cayman_gpu_init(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_blit_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_blit_fini(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @si_rlc_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_driver_start_ring(%struct.radeon_device*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @radeon_irq_kms_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_irq_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_irq_set(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ring_init(%struct.radeon_device*, %struct.radeon_ring*, i32, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32) #1

declare dso_local i32 @cayman_cp_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @cayman_cp_resume(%struct.radeon_device*) #1

declare dso_local i32 @cayman_dma_resume(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_vm_manager_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_audio_init(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
