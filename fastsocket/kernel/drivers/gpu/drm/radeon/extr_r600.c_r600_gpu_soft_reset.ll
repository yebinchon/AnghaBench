; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_gpu_soft_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_gpu_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32, i32 }
%struct.rv515_mc_save = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"GPU softreset: 0x%08X\0A\00", align 1
@CHIP_RV770 = common dso_local global i64 0, align 8
@R_0086D8_CP_ME_CNTL = common dso_local global i32 0, align 4
@RLC_CNTL = common dso_local global i32 0, align 4
@RADEON_RESET_DMA = common dso_local global i32 0, align 4
@DMA_RB_CNTL = common dso_local global i32 0, align 4
@DMA_RB_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Wait for MC idle timedout !\0A\00", align 1
@RADEON_RESET_GFX = common dso_local global i32 0, align 4
@RADEON_RESET_COMPUTE = common dso_local global i32 0, align 4
@RADEON_RESET_CP = common dso_local global i32 0, align 4
@RV770_SOFT_RESET_DMA = common dso_local global i32 0, align 4
@SOFT_RESET_DMA = common dso_local global i32 0, align 4
@RADEON_RESET_RLC = common dso_local global i32 0, align 4
@RADEON_RESET_SEM = common dso_local global i32 0, align 4
@RADEON_RESET_IH = common dso_local global i32 0, align 4
@RADEON_RESET_GRBM = common dso_local global i32 0, align 4
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@RADEON_RESET_MC = common dso_local global i32 0, align 4
@RADEON_RESET_VMC = common dso_local global i32 0, align 4
@R_008020_GRBM_SOFT_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"R_008020_GRBM_SOFT_RESET=0x%08X\0A\00", align 1
@SRBM_SOFT_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"SRBM_SOFT_RESET=0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @r600_gpu_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r600_gpu_soft_reset(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rv515_mc_save, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %291

12:                                               ; preds = %2
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dev_info(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call i32 @r600_print_gpu_status_regs(%struct.radeon_device* %18)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CHIP_RV770, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %12
  %26 = load i32, i32* @R_0086D8_CP_ME_CNTL, align 4
  %27 = call i32 @S_0086D8_CP_ME_HALT(i32 1)
  %28 = call i32 @S_0086D8_CP_PFP_HALT(i32 1)
  %29 = or i32 %27, %28
  %30 = call i32 @WREG32(i32 %26, i32 %29)
  br label %35

31:                                               ; preds = %12
  %32 = load i32, i32* @R_0086D8_CP_ME_CNTL, align 4
  %33 = call i32 @S_0086D8_CP_ME_HALT(i32 1)
  %34 = call i32 @WREG32(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* @RLC_CNTL, align 4
  %37 = call i32 @WREG32(i32 %36, i32 0)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @RADEON_RESET_DMA, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load i32, i32* @DMA_RB_CNTL, align 4
  %44 = call i32 @RREG32(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @DMA_RB_ENABLE, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @DMA_RB_CNTL, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @WREG32(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %42, %35
  %53 = call i32 @mdelay(i32 50)
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = call i32 @rv515_mc_stop(%struct.radeon_device* %54, %struct.rv515_mc_save* %5)
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = call i64 @r600_mc_wait_for_idle(%struct.radeon_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_warn(i32 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %52
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @RADEON_RESET_GFX, align 4
  %67 = load i32, i32* @RADEON_RESET_COMPUTE, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %130

71:                                               ; preds = %64
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CHIP_RV770, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %71
  %78 = call i32 @S_008020_SOFT_RESET_DB(i32 1)
  %79 = call i32 @S_008020_SOFT_RESET_CB(i32 1)
  %80 = or i32 %78, %79
  %81 = call i32 @S_008020_SOFT_RESET_PA(i32 1)
  %82 = or i32 %80, %81
  %83 = call i32 @S_008020_SOFT_RESET_SC(i32 1)
  %84 = or i32 %82, %83
  %85 = call i32 @S_008020_SOFT_RESET_SPI(i32 1)
  %86 = or i32 %84, %85
  %87 = call i32 @S_008020_SOFT_RESET_SX(i32 1)
  %88 = or i32 %86, %87
  %89 = call i32 @S_008020_SOFT_RESET_SH(i32 1)
  %90 = or i32 %88, %89
  %91 = call i32 @S_008020_SOFT_RESET_TC(i32 1)
  %92 = or i32 %90, %91
  %93 = call i32 @S_008020_SOFT_RESET_TA(i32 1)
  %94 = or i32 %92, %93
  %95 = call i32 @S_008020_SOFT_RESET_VC(i32 1)
  %96 = or i32 %94, %95
  %97 = call i32 @S_008020_SOFT_RESET_VGT(i32 1)
  %98 = or i32 %96, %97
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %6, align 4
  br label %129

101:                                              ; preds = %71
  %102 = call i32 @S_008020_SOFT_RESET_CR(i32 1)
  %103 = call i32 @S_008020_SOFT_RESET_DB(i32 1)
  %104 = or i32 %102, %103
  %105 = call i32 @S_008020_SOFT_RESET_CB(i32 1)
  %106 = or i32 %104, %105
  %107 = call i32 @S_008020_SOFT_RESET_PA(i32 1)
  %108 = or i32 %106, %107
  %109 = call i32 @S_008020_SOFT_RESET_SC(i32 1)
  %110 = or i32 %108, %109
  %111 = call i32 @S_008020_SOFT_RESET_SMX(i32 1)
  %112 = or i32 %110, %111
  %113 = call i32 @S_008020_SOFT_RESET_SPI(i32 1)
  %114 = or i32 %112, %113
  %115 = call i32 @S_008020_SOFT_RESET_SX(i32 1)
  %116 = or i32 %114, %115
  %117 = call i32 @S_008020_SOFT_RESET_SH(i32 1)
  %118 = or i32 %116, %117
  %119 = call i32 @S_008020_SOFT_RESET_TC(i32 1)
  %120 = or i32 %118, %119
  %121 = call i32 @S_008020_SOFT_RESET_TA(i32 1)
  %122 = or i32 %120, %121
  %123 = call i32 @S_008020_SOFT_RESET_VC(i32 1)
  %124 = or i32 %122, %123
  %125 = call i32 @S_008020_SOFT_RESET_VGT(i32 1)
  %126 = or i32 %124, %125
  %127 = load i32, i32* %6, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %101, %77
  br label %130

130:                                              ; preds = %129, %64
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @RADEON_RESET_CP, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %130
  %136 = call i32 @S_008020_SOFT_RESET_CP(i32 1)
  %137 = call i32 @S_008020_SOFT_RESET_VGT(i32 1)
  %138 = or i32 %136, %137
  %139 = load i32, i32* %6, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %6, align 4
  %141 = call i32 @S_000E60_SOFT_RESET_GRBM(i32 1)
  %142 = load i32, i32* %7, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %135, %130
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @RADEON_RESET_DMA, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %144
  %150 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %151 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @CHIP_RV770, align 8
  %154 = icmp sge i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load i32, i32* @RV770_SOFT_RESET_DMA, align 4
  %157 = load i32, i32* %7, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %7, align 4
  br label %163

159:                                              ; preds = %149
  %160 = load i32, i32* @SOFT_RESET_DMA, align 4
  %161 = load i32, i32* %7, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %159, %155
  br label %164

164:                                              ; preds = %163, %144
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @RADEON_RESET_RLC, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = call i32 @S_000E60_SOFT_RESET_RLC(i32 1)
  %171 = load i32, i32* %7, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %169, %164
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @RADEON_RESET_SEM, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = call i32 @S_000E60_SOFT_RESET_SEM(i32 1)
  %180 = load i32, i32* %7, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %7, align 4
  br label %182

182:                                              ; preds = %178, %173
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* @RADEON_RESET_IH, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = call i32 @S_000E60_SOFT_RESET_IH(i32 1)
  %189 = load i32, i32* %7, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %7, align 4
  br label %191

191:                                              ; preds = %187, %182
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @RADEON_RESET_GRBM, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = call i32 @S_000E60_SOFT_RESET_GRBM(i32 1)
  %198 = load i32, i32* %7, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %7, align 4
  br label %200

200:                                              ; preds = %196, %191
  %201 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %202 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @RADEON_IS_IGP, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %217, label %207

207:                                              ; preds = %200
  %208 = load i32, i32* %4, align 4
  %209 = load i32, i32* @RADEON_RESET_MC, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = call i32 @S_000E60_SOFT_RESET_MC(i32 1)
  %214 = load i32, i32* %7, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %7, align 4
  br label %216

216:                                              ; preds = %212, %207
  br label %217

217:                                              ; preds = %216, %200
  %218 = load i32, i32* %4, align 4
  %219 = load i32, i32* @RADEON_RESET_VMC, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %217
  %223 = call i32 @S_000E60_SOFT_RESET_VMC(i32 1)
  %224 = load i32, i32* %7, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %7, align 4
  br label %226

226:                                              ; preds = %222, %217
  %227 = load i32, i32* %6, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %255

229:                                              ; preds = %226
  %230 = load i32, i32* @R_008020_GRBM_SOFT_RESET, align 4
  %231 = call i32 @RREG32(i32 %230)
  store i32 %231, i32* %8, align 4
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* %8, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %8, align 4
  %235 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %236 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @dev_info(i32 %237, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %238)
  %240 = load i32, i32* @R_008020_GRBM_SOFT_RESET, align 4
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @WREG32(i32 %240, i32 %241)
  %243 = load i32, i32* @R_008020_GRBM_SOFT_RESET, align 4
  %244 = call i32 @RREG32(i32 %243)
  store i32 %244, i32* %8, align 4
  %245 = call i32 @udelay(i32 50)
  %246 = load i32, i32* %6, align 4
  %247 = xor i32 %246, -1
  %248 = load i32, i32* %8, align 4
  %249 = and i32 %248, %247
  store i32 %249, i32* %8, align 4
  %250 = load i32, i32* @R_008020_GRBM_SOFT_RESET, align 4
  %251 = load i32, i32* %8, align 4
  %252 = call i32 @WREG32(i32 %250, i32 %251)
  %253 = load i32, i32* @R_008020_GRBM_SOFT_RESET, align 4
  %254 = call i32 @RREG32(i32 %253)
  store i32 %254, i32* %8, align 4
  br label %255

255:                                              ; preds = %229, %226
  %256 = load i32, i32* %7, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %284

258:                                              ; preds = %255
  %259 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %260 = call i32 @RREG32(i32 %259)
  store i32 %260, i32* %8, align 4
  %261 = load i32, i32* %7, align 4
  %262 = load i32, i32* %8, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %8, align 4
  %264 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %265 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %8, align 4
  %268 = call i32 @dev_info(i32 %266, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %267)
  %269 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %270 = load i32, i32* %8, align 4
  %271 = call i32 @WREG32(i32 %269, i32 %270)
  %272 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %273 = call i32 @RREG32(i32 %272)
  store i32 %273, i32* %8, align 4
  %274 = call i32 @udelay(i32 50)
  %275 = load i32, i32* %7, align 4
  %276 = xor i32 %275, -1
  %277 = load i32, i32* %8, align 4
  %278 = and i32 %277, %276
  store i32 %278, i32* %8, align 4
  %279 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %280 = load i32, i32* %8, align 4
  %281 = call i32 @WREG32(i32 %279, i32 %280)
  %282 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %283 = call i32 @RREG32(i32 %282)
  store i32 %283, i32* %8, align 4
  br label %284

284:                                              ; preds = %258, %255
  %285 = call i32 @mdelay(i32 1)
  %286 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %287 = call i32 @rv515_mc_resume(%struct.radeon_device* %286, %struct.rv515_mc_save* %5)
  %288 = call i32 @udelay(i32 50)
  %289 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %290 = call i32 @r600_print_gpu_status_regs(%struct.radeon_device* %289)
  br label %291

291:                                              ; preds = %284, %11
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @r600_print_gpu_status_regs(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @S_0086D8_CP_ME_HALT(i32) #1

declare dso_local i32 @S_0086D8_CP_PFP_HALT(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rv515_mc_stop(%struct.radeon_device*, %struct.rv515_mc_save*) #1

declare dso_local i64 @r600_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @S_008020_SOFT_RESET_DB(i32) #1

declare dso_local i32 @S_008020_SOFT_RESET_CB(i32) #1

declare dso_local i32 @S_008020_SOFT_RESET_PA(i32) #1

declare dso_local i32 @S_008020_SOFT_RESET_SC(i32) #1

declare dso_local i32 @S_008020_SOFT_RESET_SPI(i32) #1

declare dso_local i32 @S_008020_SOFT_RESET_SX(i32) #1

declare dso_local i32 @S_008020_SOFT_RESET_SH(i32) #1

declare dso_local i32 @S_008020_SOFT_RESET_TC(i32) #1

declare dso_local i32 @S_008020_SOFT_RESET_TA(i32) #1

declare dso_local i32 @S_008020_SOFT_RESET_VC(i32) #1

declare dso_local i32 @S_008020_SOFT_RESET_VGT(i32) #1

declare dso_local i32 @S_008020_SOFT_RESET_CR(i32) #1

declare dso_local i32 @S_008020_SOFT_RESET_SMX(i32) #1

declare dso_local i32 @S_008020_SOFT_RESET_CP(i32) #1

declare dso_local i32 @S_000E60_SOFT_RESET_GRBM(i32) #1

declare dso_local i32 @S_000E60_SOFT_RESET_RLC(i32) #1

declare dso_local i32 @S_000E60_SOFT_RESET_SEM(i32) #1

declare dso_local i32 @S_000E60_SOFT_RESET_IH(i32) #1

declare dso_local i32 @S_000E60_SOFT_RESET_MC(i32) #1

declare dso_local i32 @S_000E60_SOFT_RESET_VMC(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rv515_mc_resume(%struct.radeon_device*, %struct.rv515_mc_save*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
