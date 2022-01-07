; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_gpu_soft_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_gpu_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.evergreen_mc_save = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"GPU softreset: 0x%08X\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\0A\00", align 1
@VM_CONTEXT1_PROTECTION_FAULT_ADDR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\0A\00", align 1
@VM_CONTEXT1_PROTECTION_FAULT_STATUS = common dso_local global i64 0, align 8
@CP_ME_CNTL = common dso_local global i64 0, align 8
@CP_ME_HALT = common dso_local global i32 0, align 4
@CP_PFP_HALT = common dso_local global i32 0, align 4
@CP_CE_HALT = common dso_local global i32 0, align 4
@RADEON_RESET_DMA = common dso_local global i32 0, align 4
@DMA_RB_CNTL = common dso_local global i64 0, align 8
@DMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@DMA_RB_ENABLE = common dso_local global i32 0, align 4
@RADEON_RESET_DMA1 = common dso_local global i32 0, align 4
@DMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Wait for MC idle timedout !\0A\00", align 1
@RADEON_RESET_GFX = common dso_local global i32 0, align 4
@RADEON_RESET_COMPUTE = common dso_local global i32 0, align 4
@RADEON_RESET_CP = common dso_local global i32 0, align 4
@SOFT_RESET_CB = common dso_local global i32 0, align 4
@SOFT_RESET_DB = common dso_local global i32 0, align 4
@SOFT_RESET_GDS = common dso_local global i32 0, align 4
@SOFT_RESET_PA = common dso_local global i32 0, align 4
@SOFT_RESET_SC = common dso_local global i32 0, align 4
@SOFT_RESET_BCI = common dso_local global i32 0, align 4
@SOFT_RESET_SPI = common dso_local global i32 0, align 4
@SOFT_RESET_SX = common dso_local global i32 0, align 4
@SOFT_RESET_TC = common dso_local global i32 0, align 4
@SOFT_RESET_TA = common dso_local global i32 0, align 4
@SOFT_RESET_VGT = common dso_local global i32 0, align 4
@SOFT_RESET_IA = common dso_local global i32 0, align 4
@SOFT_RESET_CP = common dso_local global i32 0, align 4
@SOFT_RESET_GRBM = common dso_local global i32 0, align 4
@SOFT_RESET_DMA = common dso_local global i32 0, align 4
@SOFT_RESET_DMA1 = common dso_local global i32 0, align 4
@RADEON_RESET_DISPLAY = common dso_local global i32 0, align 4
@SOFT_RESET_DC = common dso_local global i32 0, align 4
@RADEON_RESET_RLC = common dso_local global i32 0, align 4
@SOFT_RESET_RLC = common dso_local global i32 0, align 4
@RADEON_RESET_SEM = common dso_local global i32 0, align 4
@SOFT_RESET_SEM = common dso_local global i32 0, align 4
@RADEON_RESET_IH = common dso_local global i32 0, align 4
@SOFT_RESET_IH = common dso_local global i32 0, align 4
@RADEON_RESET_GRBM = common dso_local global i32 0, align 4
@RADEON_RESET_VMC = common dso_local global i32 0, align 4
@SOFT_RESET_VMC = common dso_local global i32 0, align 4
@RADEON_RESET_MC = common dso_local global i32 0, align 4
@SOFT_RESET_MC = common dso_local global i32 0, align 4
@GRBM_SOFT_RESET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"GRBM_SOFT_RESET=0x%08X\0A\00", align 1
@SRBM_SOFT_RESET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"SRBM_SOFT_RESET=0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @si_gpu_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_gpu_soft_reset(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evergreen_mc_save, align 4
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
  br label %281

12:                                               ; preds = %2
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dev_info(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call i32 @evergreen_print_gpu_status_regs(%struct.radeon_device* %18)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* @VM_CONTEXT1_PROTECTION_FAULT_ADDR, align 8
  %24 = call i32 @RREG32(i64 %23)
  %25 = call i32 @dev_info(i32 %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 8
  %30 = call i32 @RREG32(i64 %29)
  %31 = call i32 @dev_info(i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i64, i64* @CP_ME_CNTL, align 8
  %33 = load i32, i32* @CP_ME_HALT, align 4
  %34 = load i32, i32* @CP_PFP_HALT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @CP_CE_HALT, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @WREG32(i64 %32, i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @RADEON_RESET_DMA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %12
  %44 = load i64, i64* @DMA_RB_CNTL, align 8
  %45 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @RREG32(i64 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @DMA_RB_ENABLE, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load i64, i64* @DMA_RB_CNTL, align 8
  %53 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @WREG32(i64 %54, i32 %55)
  br label %57

57:                                               ; preds = %43, %12
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @RADEON_RESET_DMA1, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load i64, i64* @DMA_RB_CNTL, align 8
  %64 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @RREG32(i64 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @DMA_RB_ENABLE, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load i64, i64* @DMA_RB_CNTL, align 8
  %72 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %73 = add nsw i64 %71, %72
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @WREG32(i64 %73, i32 %74)
  br label %76

76:                                               ; preds = %62, %57
  %77 = call i32 @udelay(i32 50)
  %78 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %79 = call i32 @evergreen_mc_stop(%struct.radeon_device* %78, %struct.evergreen_mc_save* %5)
  %80 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %81 = call i64 @evergreen_mc_wait_for_idle(%struct.radeon_device* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %85 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_warn(i32 %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %83, %76
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @RADEON_RESET_GFX, align 4
  %91 = load i32, i32* @RADEON_RESET_COMPUTE, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @RADEON_RESET_CP, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %89, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %88
  %98 = load i32, i32* @SOFT_RESET_CB, align 4
  %99 = load i32, i32* @SOFT_RESET_DB, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @SOFT_RESET_GDS, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @SOFT_RESET_PA, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @SOFT_RESET_SC, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @SOFT_RESET_BCI, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @SOFT_RESET_SPI, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @SOFT_RESET_SX, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @SOFT_RESET_TC, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @SOFT_RESET_TA, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @SOFT_RESET_VGT, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @SOFT_RESET_IA, align 4
  %120 = or i32 %118, %119
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %97, %88
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @RADEON_RESET_CP, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load i32, i32* @SOFT_RESET_CP, align 4
  %128 = load i32, i32* @SOFT_RESET_VGT, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %6, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* @SOFT_RESET_GRBM, align 4
  %133 = load i32, i32* %7, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %126, %121
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @RADEON_RESET_DMA, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* @SOFT_RESET_DMA, align 4
  %142 = load i32, i32* %7, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %140, %135
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @RADEON_RESET_DMA1, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i32, i32* @SOFT_RESET_DMA1, align 4
  %151 = load i32, i32* %7, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %149, %144
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @RADEON_RESET_DISPLAY, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load i32, i32* @SOFT_RESET_DC, align 4
  %160 = load i32, i32* %7, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %158, %153
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @RADEON_RESET_RLC, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load i32, i32* @SOFT_RESET_RLC, align 4
  %169 = load i32, i32* %6, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %167, %162
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* @RADEON_RESET_SEM, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32, i32* @SOFT_RESET_SEM, align 4
  %178 = load i32, i32* %7, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %7, align 4
  br label %180

180:                                              ; preds = %176, %171
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* @RADEON_RESET_IH, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i32, i32* @SOFT_RESET_IH, align 4
  %187 = load i32, i32* %7, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %7, align 4
  br label %189

189:                                              ; preds = %185, %180
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* @RADEON_RESET_GRBM, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = load i32, i32* @SOFT_RESET_GRBM, align 4
  %196 = load i32, i32* %7, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %7, align 4
  br label %198

198:                                              ; preds = %194, %189
  %199 = load i32, i32* %4, align 4
  %200 = load i32, i32* @RADEON_RESET_VMC, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load i32, i32* @SOFT_RESET_VMC, align 4
  %205 = load i32, i32* %7, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %7, align 4
  br label %207

207:                                              ; preds = %203, %198
  %208 = load i32, i32* %4, align 4
  %209 = load i32, i32* @RADEON_RESET_MC, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = load i32, i32* @SOFT_RESET_MC, align 4
  %214 = load i32, i32* %7, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %7, align 4
  br label %216

216:                                              ; preds = %212, %207
  %217 = load i32, i32* %6, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %245

219:                                              ; preds = %216
  %220 = load i64, i64* @GRBM_SOFT_RESET, align 8
  %221 = call i32 @RREG32(i64 %220)
  store i32 %221, i32* %8, align 4
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %8, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %8, align 4
  %225 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %226 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %8, align 4
  %229 = call i32 @dev_info(i32 %227, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %228)
  %230 = load i64, i64* @GRBM_SOFT_RESET, align 8
  %231 = load i32, i32* %8, align 4
  %232 = call i32 @WREG32(i64 %230, i32 %231)
  %233 = load i64, i64* @GRBM_SOFT_RESET, align 8
  %234 = call i32 @RREG32(i64 %233)
  store i32 %234, i32* %8, align 4
  %235 = call i32 @udelay(i32 50)
  %236 = load i32, i32* %6, align 4
  %237 = xor i32 %236, -1
  %238 = load i32, i32* %8, align 4
  %239 = and i32 %238, %237
  store i32 %239, i32* %8, align 4
  %240 = load i64, i64* @GRBM_SOFT_RESET, align 8
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @WREG32(i64 %240, i32 %241)
  %243 = load i64, i64* @GRBM_SOFT_RESET, align 8
  %244 = call i32 @RREG32(i64 %243)
  store i32 %244, i32* %8, align 4
  br label %245

245:                                              ; preds = %219, %216
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %274

248:                                              ; preds = %245
  %249 = load i64, i64* @SRBM_SOFT_RESET, align 8
  %250 = call i32 @RREG32(i64 %249)
  store i32 %250, i32* %8, align 4
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* %8, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %8, align 4
  %254 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %255 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %8, align 4
  %258 = call i32 @dev_info(i32 %256, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %257)
  %259 = load i64, i64* @SRBM_SOFT_RESET, align 8
  %260 = load i32, i32* %8, align 4
  %261 = call i32 @WREG32(i64 %259, i32 %260)
  %262 = load i64, i64* @SRBM_SOFT_RESET, align 8
  %263 = call i32 @RREG32(i64 %262)
  store i32 %263, i32* %8, align 4
  %264 = call i32 @udelay(i32 50)
  %265 = load i32, i32* %7, align 4
  %266 = xor i32 %265, -1
  %267 = load i32, i32* %8, align 4
  %268 = and i32 %267, %266
  store i32 %268, i32* %8, align 4
  %269 = load i64, i64* @SRBM_SOFT_RESET, align 8
  %270 = load i32, i32* %8, align 4
  %271 = call i32 @WREG32(i64 %269, i32 %270)
  %272 = load i64, i64* @SRBM_SOFT_RESET, align 8
  %273 = call i32 @RREG32(i64 %272)
  store i32 %273, i32* %8, align 4
  br label %274

274:                                              ; preds = %248, %245
  %275 = call i32 @udelay(i32 50)
  %276 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %277 = call i32 @evergreen_mc_resume(%struct.radeon_device* %276, %struct.evergreen_mc_save* %5)
  %278 = call i32 @udelay(i32 50)
  %279 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %280 = call i32 @evergreen_print_gpu_status_regs(%struct.radeon_device* %279)
  br label %281

281:                                              ; preds = %274, %11
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @evergreen_print_gpu_status_regs(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @evergreen_mc_stop(%struct.radeon_device*, %struct.evergreen_mc_save*) #1

declare dso_local i64 @evergreen_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @evergreen_mc_resume(%struct.radeon_device*, %struct.evergreen_mc_save*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
