; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_cp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_cp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__, %struct.radeon_ring*, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_ring = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Failed to register debugfs file for CP !\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to load firmware!\0A\00", align 1
@RADEON_WB_CP_RPTR_OFFSET = common dso_local global i32 0, align 4
@RADEON_CP_RB_RPTR = common dso_local global i32 0, align 4
@RADEON_CP_RB_WPTR = common dso_local global i32 0, align 4
@RADEON_CP_PACKET2 = common dso_local global i32 0, align 4
@RADEON_RB_BUFSZ = common dso_local global i32 0, align 4
@RADEON_RB_BLKSZ = common dso_local global i32 0, align 4
@RADEON_MAX_FETCH = common dso_local global i32 0, align 4
@RADEON_CP_RB_CNTL = common dso_local global i32 0, align 4
@RADEON_RB_NO_UPDATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"radeon: ring at 0x%016lX\0A\00", align 1
@RADEON_CP_RB_BASE = common dso_local global i32 0, align 4
@RADEON_RB_RPTR_WR_ENA = common dso_local global i32 0, align 4
@RADEON_CP_RB_RPTR_WR = common dso_local global i32 0, align 4
@R_00070C_CP_RB_RPTR_ADDR = common dso_local global i32 0, align 4
@R_000774_SCRATCH_ADDR = common dso_local global i32 0, align 4
@RADEON_WB_SCRATCH_OFFSET = common dso_local global i32 0, align 4
@R_000770_SCRATCH_UMSK = common dso_local global i32 0, align 4
@RADEON_CP_CSQ_MODE = common dso_local global i32 0, align 4
@RADEON_INDIRECT2_START = common dso_local global i32 0, align 4
@RADEON_INDIRECT1_START = common dso_local global i32 0, align 4
@RADEON_CP_RB_WPTR_DELAY = common dso_local global i32 0, align 4
@RADEON_CP_CSQ_CNTL = common dso_local global i32 0, align 4
@RADEON_CSQ_PRIBM_INDBM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"radeon: cp isn't working (%d).\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"failed to get scratch reg for rptr save (%d).\0A\00", align 1
@RADEON_BUF_SWAP_32BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_cp_init(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 1
  %18 = load %struct.radeon_ring*, %struct.radeon_ring** %17, align 8
  %19 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %20 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %18, i64 %19
  store %struct.radeon_ring* %20, %struct.radeon_ring** %6, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %22 = call i64 @r100_debugfs_cp_init(%struct.radeon_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %2
  %27 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %33 = call i32 @r100_cp_init_microcode(%struct.radeon_device* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %3, align 4
  br label %223

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i32, i32* %5, align 4
  %42 = udiv i32 %41, 8
  %43 = call i32 @drm_order(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, 1
  %46 = shl i32 1, %45
  %47 = mul nsw i32 %46, 4
  store i32 %47, i32* %5, align 4
  %48 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %49 = call i32 @r100_cp_load_microcode(%struct.radeon_device* %48)
  %50 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %54 = load i32, i32* @RADEON_CP_RB_RPTR, align 4
  %55 = load i32, i32* @RADEON_CP_RB_WPTR, align 4
  %56 = load i32, i32* @RADEON_CP_PACKET2, align 4
  %57 = call i32 @radeon_ring_init(%struct.radeon_device* %50, %struct.radeon_ring* %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 0, i32 8388607, i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %40
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %3, align 4
  br label %223

62:                                               ; preds = %40
  store i32 9, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %63 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %64 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %63, i32 0, i32 0
  store i32 15, i32* %64, align 8
  store i32 64, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 80, i32* %12, align 4
  store i32 16, i32* %13, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = shl i32 %66, 28
  %68 = or i32 %65, %67
  %69 = call i32 @WREG32(i32 1816, i32 %68)
  %70 = load i32, i32* @RADEON_RB_BUFSZ, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @REG_SET(i32 %70, i32 %71)
  %73 = load i32, i32* @RADEON_RB_BLKSZ, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @REG_SET(i32 %73, i32 %74)
  %76 = or i32 %72, %75
  %77 = load i32, i32* @RADEON_MAX_FETCH, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @REG_SET(i32 %77, i32 %78)
  %80 = or i32 %76, %79
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* @RADEON_CP_RB_CNTL, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @RADEON_RB_NO_UPDATE, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @WREG32(i32 %81, i32 %84)
  %86 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %87 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = call i32 @DRM_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %89)
  %91 = load i32, i32* @RADEON_CP_RB_BASE, align 4
  %92 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %93 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @WREG32(i32 %91, i32 %94)
  %96 = load i32, i32* @RADEON_CP_RB_CNTL, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @RADEON_RB_RPTR_WR_ENA, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @RADEON_RB_NO_UPDATE, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @WREG32(i32 %96, i32 %101)
  %103 = load i32, i32* @RADEON_CP_RB_RPTR_WR, align 4
  %104 = call i32 @WREG32(i32 %103, i32 0)
  %105 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %106 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %105, i32 0, i32 2
  store i32 0, i32* %106, align 8
  %107 = load i32, i32* @RADEON_CP_RB_WPTR, align 4
  %108 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %109 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @WREG32(i32 %107, i32 %110)
  %112 = load i32, i32* @R_00070C_CP_RB_RPTR_ADDR, align 4
  %113 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %118 = add nsw i32 %116, %117
  %119 = ashr i32 %118, 2
  %120 = call i32 @S_00070C_RB_RPTR_ADDR(i32 %119)
  %121 = call i32 @WREG32(i32 %112, i32 %120)
  %122 = load i32, i32* @R_000774_SCRATCH_ADDR, align 4
  %123 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %124 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @RADEON_WB_SCRATCH_OFFSET, align 4
  %128 = add nsw i32 %126, %127
  %129 = call i32 @WREG32(i32 %122, i32 %128)
  %130 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %131 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %62
  %136 = load i32, i32* @R_000770_SCRATCH_UMSK, align 4
  %137 = call i32 @WREG32(i32 %136, i32 255)
  br label %144

138:                                              ; preds = %62
  %139 = load i32, i32* @RADEON_RB_NO_UPDATE, align 4
  %140 = load i32, i32* %14, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* @R_000770_SCRATCH_UMSK, align 4
  %143 = call i32 @WREG32(i32 %142, i32 0)
  br label %144

144:                                              ; preds = %138, %135
  %145 = load i32, i32* @RADEON_CP_RB_CNTL, align 4
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @WREG32(i32 %145, i32 %146)
  %148 = call i32 @udelay(i32 10)
  %149 = load i32, i32* @RADEON_CP_RB_RPTR, align 4
  %150 = call i32 @RREG32(i32 %149)
  %151 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %152 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* @RADEON_CP_CSQ_MODE, align 4
  %154 = load i32, i32* @RADEON_INDIRECT2_START, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @REG_SET(i32 %154, i32 %155)
  %157 = load i32, i32* @RADEON_INDIRECT1_START, align 4
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @REG_SET(i32 %157, i32 %158)
  %160 = or i32 %156, %159
  %161 = call i32 @WREG32(i32 %153, i32 %160)
  %162 = load i32, i32* @RADEON_CP_RB_WPTR_DELAY, align 4
  %163 = call i32 @WREG32(i32 %162, i32 0)
  %164 = load i32, i32* @RADEON_CP_CSQ_MODE, align 4
  %165 = call i32 @WREG32(i32 %164, i32 19789)
  %166 = load i32, i32* @RADEON_CP_CSQ_CNTL, align 4
  %167 = load i32, i32* @RADEON_CSQ_PRIBM_INDBM, align 4
  %168 = call i32 @WREG32(i32 %166, i32 %167)
  %169 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %170 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @pci_set_master(i32 %171)
  %173 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %174 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %175 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %176 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %175, i32 0, i32 1
  %177 = load %struct.radeon_ring*, %struct.radeon_ring** %176, align 8
  %178 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %179 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %177, i64 %178
  %180 = call i32 @radeon_ring_start(%struct.radeon_device* %173, i64 %174, %struct.radeon_ring* %179)
  %181 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %182 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %183 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %184 = call i32 @radeon_ring_test(%struct.radeon_device* %181, i64 %182, %struct.radeon_ring* %183)
  store i32 %184, i32* %15, align 4
  %185 = load i32, i32* %15, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %144
  %188 = load i32, i32* %15, align 4
  %189 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* %15, align 4
  store i32 %190, i32* %3, align 4
  br label %223

191:                                              ; preds = %144
  %192 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %193 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %192, i32 0, i32 3
  store i32 1, i32* %193, align 4
  %194 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %195 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %196 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device* %194, i32 %198)
  %200 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %201 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %200, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %222, label %204

204:                                              ; preds = %191
  %205 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %206 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %207 = call i64 @radeon_ring_supports_scratch_reg(%struct.radeon_device* %205, %struct.radeon_ring* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %222

209:                                              ; preds = %204
  %210 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %211 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %212 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %211, i32 0, i32 4
  %213 = call i32 @radeon_scratch_get(%struct.radeon_device* %210, i64* %212)
  store i32 %213, i32* %15, align 4
  %214 = load i32, i32* %15, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %209
  %217 = load i32, i32* %15, align 4
  %218 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %217)
  %219 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %220 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %219, i32 0, i32 4
  store i64 0, i64* %220, align 8
  br label %221

221:                                              ; preds = %216, %209
  br label %222

222:                                              ; preds = %221, %204, %191
  store i32 0, i32* %3, align 4
  br label %223

223:                                              ; preds = %222, %187, %60, %36
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i64 @r100_debugfs_cp_init(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @r100_cp_init_microcode(%struct.radeon_device*) #1

declare dso_local i32 @drm_order(i32) #1

declare dso_local i32 @r100_cp_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ring_init(%struct.radeon_device*, %struct.radeon_ring*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*, i64) #1

declare dso_local i32 @S_00070C_RB_RPTR_ADDR(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @pci_set_master(i32) #1

declare dso_local i32 @radeon_ring_start(%struct.radeon_device*, i64, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ring_test(%struct.radeon_device*, i64, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device*, i32) #1

declare dso_local i64 @radeon_ring_supports_scratch_reg(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_scratch_get(%struct.radeon_device*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
