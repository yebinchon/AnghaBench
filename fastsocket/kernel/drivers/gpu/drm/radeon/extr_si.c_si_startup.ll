; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.radeon_ring*, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32, i32, i32, i32 }
%struct.radeon_ring = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [26 x i8] c"Failed to load firmware!\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to load MC firmware!\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to init rlc BOs!\0A\00", align 1
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"failed initializing CP fences (%d).\0A\00", align 1
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i64 0, align 8
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i64 0, align 8
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"failed initializing DMA fences (%d).\0A\00", align 1
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"radeon: IH init failed (%d).\0A\00", align 1
@RADEON_WB_CP_RPTR_OFFSET = common dso_local global i32 0, align 4
@CP_RB0_RPTR = common dso_local global i64 0, align 8
@CP_RB0_WPTR = common dso_local global i64 0, align 8
@RADEON_CP_PACKET2 = common dso_local global i32 0, align 4
@RADEON_WB_CP1_RPTR_OFFSET = common dso_local global i32 0, align 4
@CP_RB1_RPTR = common dso_local global i64 0, align 8
@CP_RB1_WPTR = common dso_local global i64 0, align 8
@RADEON_WB_CP2_RPTR_OFFSET = common dso_local global i32 0, align 4
@CP_RB2_RPTR = common dso_local global i64 0, align 8
@CP_RB2_WPTR = common dso_local global i64 0, align 8
@R600_WB_DMA_RPTR_OFFSET = common dso_local global i32 0, align 4
@DMA_RB_RPTR = common dso_local global i64 0, align 8
@DMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@DMA_RB_WPTR = common dso_local global i64 0, align 8
@DMA_PACKET_NOP = common dso_local global i32 0, align 4
@CAYMAN_WB_DMA1_RPTR_OFFSET = common dso_local global i32 0, align 4
@DMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"IB initialization failed (%d).\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"vm manager initialization failed (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_startup(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 8
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %25, %20, %15, %10, %1
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = call i32 @si_init_microcode(%struct.radeon_device* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %328

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %25
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = call i32 @si_mc_load_microcode(%struct.radeon_device* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %328

47:                                               ; preds = %39
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = call i32 @r600_vram_scratch_init(%struct.radeon_device* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %328

54:                                               ; preds = %47
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = call i32 @si_mc_program(%struct.radeon_device* %55)
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = call i32 @si_pcie_gart_enable(%struct.radeon_device* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %328

63:                                               ; preds = %54
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = call i32 @si_gpu_init(%struct.radeon_device* %64)
  %66 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %67 = call i32 @si_rlc_init(%struct.radeon_device* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %328

73:                                               ; preds = %63
  %74 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %75 = call i32 @radeon_wb_init(%struct.radeon_device* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %328

80:                                               ; preds = %73
  %81 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %82 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %83 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %81, i64 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %328

93:                                               ; preds = %80
  %94 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %95 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %96 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %94, i64 %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %328

106:                                              ; preds = %93
  %107 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %108 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %109 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %107, i64 %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %2, align 4
  br label %328

119:                                              ; preds = %106
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %122 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %120, i64 %121)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %127 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @dev_err(i32 %128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %5, align 4
  store i32 %131, i32* %2, align 4
  br label %328

132:                                              ; preds = %119
  %133 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %134 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %135 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %133, i64 %134)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @dev_err(i32 %141, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %5, align 4
  store i32 %144, i32* %2, align 4
  br label %328

145:                                              ; preds = %132
  %146 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %147 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %145
  %152 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %153 = call i32 @radeon_irq_kms_init(%struct.radeon_device* %152)
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i32, i32* %5, align 4
  store i32 %157, i32* %2, align 4
  br label %328

158:                                              ; preds = %151
  br label %159

159:                                              ; preds = %158, %145
  %160 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %161 = call i32 @si_irq_init(%struct.radeon_device* %160)
  store i32 %161, i32* %5, align 4
  %162 = load i32, i32* %5, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i32, i32* %5, align 4
  %166 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %165)
  %167 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %168 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %167)
  %169 = load i32, i32* %5, align 4
  store i32 %169, i32* %2, align 4
  br label %328

170:                                              ; preds = %159
  %171 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %172 = call i32 @si_irq_set(%struct.radeon_device* %171)
  %173 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %174 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %173, i32 0, i32 1
  %175 = load %struct.radeon_ring*, %struct.radeon_ring** %174, align 8
  %176 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %177 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %175, i64 %176
  store %struct.radeon_ring* %177, %struct.radeon_ring** %4, align 8
  %178 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %179 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %180 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %181 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %184 = load i64, i64* @CP_RB0_RPTR, align 8
  %185 = load i64, i64* @CP_RB0_WPTR, align 8
  %186 = load i32, i32* @RADEON_CP_PACKET2, align 4
  %187 = call i32 @radeon_ring_init(%struct.radeon_device* %178, %struct.radeon_ring* %179, i32 %182, i32 %183, i64 %184, i64 %185, i32 0, i32 1048575, i32 %186)
  store i32 %187, i32* %5, align 4
  %188 = load i32, i32* %5, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %170
  %191 = load i32, i32* %5, align 4
  store i32 %191, i32* %2, align 4
  br label %328

192:                                              ; preds = %170
  %193 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %194 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %193, i32 0, i32 1
  %195 = load %struct.radeon_ring*, %struct.radeon_ring** %194, align 8
  %196 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %197 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %195, i64 %196
  store %struct.radeon_ring* %197, %struct.radeon_ring** %4, align 8
  %198 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %199 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %200 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %201 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @RADEON_WB_CP1_RPTR_OFFSET, align 4
  %204 = load i64, i64* @CP_RB1_RPTR, align 8
  %205 = load i64, i64* @CP_RB1_WPTR, align 8
  %206 = load i32, i32* @RADEON_CP_PACKET2, align 4
  %207 = call i32 @radeon_ring_init(%struct.radeon_device* %198, %struct.radeon_ring* %199, i32 %202, i32 %203, i64 %204, i64 %205, i32 0, i32 1048575, i32 %206)
  store i32 %207, i32* %5, align 4
  %208 = load i32, i32* %5, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %192
  %211 = load i32, i32* %5, align 4
  store i32 %211, i32* %2, align 4
  br label %328

212:                                              ; preds = %192
  %213 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %214 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %213, i32 0, i32 1
  %215 = load %struct.radeon_ring*, %struct.radeon_ring** %214, align 8
  %216 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %217 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %215, i64 %216
  store %struct.radeon_ring* %217, %struct.radeon_ring** %4, align 8
  %218 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %219 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %220 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %221 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @RADEON_WB_CP2_RPTR_OFFSET, align 4
  %224 = load i64, i64* @CP_RB2_RPTR, align 8
  %225 = load i64, i64* @CP_RB2_WPTR, align 8
  %226 = load i32, i32* @RADEON_CP_PACKET2, align 4
  %227 = call i32 @radeon_ring_init(%struct.radeon_device* %218, %struct.radeon_ring* %219, i32 %222, i32 %223, i64 %224, i64 %225, i32 0, i32 1048575, i32 %226)
  store i32 %227, i32* %5, align 4
  %228 = load i32, i32* %5, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %212
  %231 = load i32, i32* %5, align 4
  store i32 %231, i32* %2, align 4
  br label %328

232:                                              ; preds = %212
  %233 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %234 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %233, i32 0, i32 1
  %235 = load %struct.radeon_ring*, %struct.radeon_ring** %234, align 8
  %236 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %237 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %235, i64 %236
  store %struct.radeon_ring* %237, %struct.radeon_ring** %4, align 8
  %238 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %239 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %240 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %241 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @R600_WB_DMA_RPTR_OFFSET, align 4
  %244 = load i64, i64* @DMA_RB_RPTR, align 8
  %245 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %246 = add nsw i64 %244, %245
  %247 = load i64, i64* @DMA_RB_WPTR, align 8
  %248 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %249 = add nsw i64 %247, %248
  %250 = load i32, i32* @DMA_PACKET_NOP, align 4
  %251 = call i32 @DMA_PACKET(i32 %250, i32 0, i32 0, i32 0, i32 0)
  %252 = call i32 @radeon_ring_init(%struct.radeon_device* %238, %struct.radeon_ring* %239, i32 %242, i32 %243, i64 %246, i64 %249, i32 2, i32 262140, i32 %251)
  store i32 %252, i32* %5, align 4
  %253 = load i32, i32* %5, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %232
  %256 = load i32, i32* %5, align 4
  store i32 %256, i32* %2, align 4
  br label %328

257:                                              ; preds = %232
  %258 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %259 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %258, i32 0, i32 1
  %260 = load %struct.radeon_ring*, %struct.radeon_ring** %259, align 8
  %261 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %262 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %260, i64 %261
  store %struct.radeon_ring* %262, %struct.radeon_ring** %4, align 8
  %263 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %264 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %265 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %266 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @CAYMAN_WB_DMA1_RPTR_OFFSET, align 4
  %269 = load i64, i64* @DMA_RB_RPTR, align 8
  %270 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %271 = add nsw i64 %269, %270
  %272 = load i64, i64* @DMA_RB_WPTR, align 8
  %273 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %274 = add nsw i64 %272, %273
  %275 = load i32, i32* @DMA_PACKET_NOP, align 4
  %276 = call i32 @DMA_PACKET(i32 %275, i32 0, i32 0, i32 0, i32 0)
  %277 = call i32 @radeon_ring_init(%struct.radeon_device* %263, %struct.radeon_ring* %264, i32 %267, i32 %268, i64 %271, i64 %274, i32 2, i32 262140, i32 %276)
  store i32 %277, i32* %5, align 4
  %278 = load i32, i32* %5, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %257
  %281 = load i32, i32* %5, align 4
  store i32 %281, i32* %2, align 4
  br label %328

282:                                              ; preds = %257
  %283 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %284 = call i32 @si_cp_load_microcode(%struct.radeon_device* %283)
  store i32 %284, i32* %5, align 4
  %285 = load i32, i32* %5, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %282
  %288 = load i32, i32* %5, align 4
  store i32 %288, i32* %2, align 4
  br label %328

289:                                              ; preds = %282
  %290 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %291 = call i32 @si_cp_resume(%struct.radeon_device* %290)
  store i32 %291, i32* %5, align 4
  %292 = load i32, i32* %5, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %289
  %295 = load i32, i32* %5, align 4
  store i32 %295, i32* %2, align 4
  br label %328

296:                                              ; preds = %289
  %297 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %298 = call i32 @cayman_dma_resume(%struct.radeon_device* %297)
  store i32 %298, i32* %5, align 4
  %299 = load i32, i32* %5, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %296
  %302 = load i32, i32* %5, align 4
  store i32 %302, i32* %2, align 4
  br label %328

303:                                              ; preds = %296
  %304 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %305 = call i32 @radeon_ib_pool_init(%struct.radeon_device* %304)
  store i32 %305, i32* %5, align 4
  %306 = load i32, i32* %5, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %315

308:                                              ; preds = %303
  %309 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %310 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* %5, align 4
  %313 = call i32 @dev_err(i32 %311, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %312)
  %314 = load i32, i32* %5, align 4
  store i32 %314, i32* %2, align 4
  br label %328

315:                                              ; preds = %303
  %316 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %317 = call i32 @radeon_vm_manager_init(%struct.radeon_device* %316)
  store i32 %317, i32* %5, align 4
  %318 = load i32, i32* %5, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %327

320:                                              ; preds = %315
  %321 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %322 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* %5, align 4
  %325 = call i32 @dev_err(i32 %323, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %324)
  %326 = load i32, i32* %5, align 4
  store i32 %326, i32* %2, align 4
  br label %328

327:                                              ; preds = %315
  store i32 0, i32* %2, align 4
  br label %328

328:                                              ; preds = %327, %320, %308, %301, %294, %287, %280, %255, %230, %210, %190, %164, %156, %138, %125, %112, %99, %86, %78, %70, %61, %52, %44, %35
  %329 = load i32, i32* %2, align 4
  ret i32 %329
}

declare dso_local i32 @si_init_microcode(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @si_mc_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @r600_vram_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @si_mc_program(%struct.radeon_device*) #1

declare dso_local i32 @si_pcie_gart_enable(%struct.radeon_device*) #1

declare dso_local i32 @si_gpu_init(%struct.radeon_device*) #1

declare dso_local i32 @si_rlc_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_driver_start_ring(%struct.radeon_device*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @radeon_irq_kms_init(%struct.radeon_device*) #1

declare dso_local i32 @si_irq_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @si_irq_set(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ring_init(%struct.radeon_device*, %struct.radeon_ring*, i32, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32, i32) #1

declare dso_local i32 @si_cp_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @si_cp_resume(%struct.radeon_device*) #1

declare dso_local i32 @cayman_dma_resume(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_vm_manager_init(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
