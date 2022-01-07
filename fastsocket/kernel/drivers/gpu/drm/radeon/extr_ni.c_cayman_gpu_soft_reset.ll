; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_gpu_soft_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_gpu_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32 }
%struct.evergreen_mc_save = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"GPU softreset: 0x%08X\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT0_PROTECTION_FAULT_ADDR   0x%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT0_PROTECTION_FAULT_STATUS 0x%08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\0A\00", align 1
@CP_ME_CNTL = common dso_local global i32 0, align 4
@CP_ME_HALT = common dso_local global i32 0, align 4
@CP_PFP_HALT = common dso_local global i32 0, align 4
@RADEON_RESET_DMA = common dso_local global i32 0, align 4
@DMA_RB_CNTL = common dso_local global i32 0, align 4
@DMA0_REGISTER_OFFSET = common dso_local global i32 0, align 4
@DMA_RB_ENABLE = common dso_local global i32 0, align 4
@RADEON_RESET_DMA1 = common dso_local global i32 0, align 4
@DMA1_REGISTER_OFFSET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Wait for MC idle timedout !\0A\00", align 1
@RADEON_RESET_GFX = common dso_local global i32 0, align 4
@RADEON_RESET_COMPUTE = common dso_local global i32 0, align 4
@SOFT_RESET_CB = common dso_local global i32 0, align 4
@SOFT_RESET_DB = common dso_local global i32 0, align 4
@SOFT_RESET_GDS = common dso_local global i32 0, align 4
@SOFT_RESET_PA = common dso_local global i32 0, align 4
@SOFT_RESET_SC = common dso_local global i32 0, align 4
@SOFT_RESET_SPI = common dso_local global i32 0, align 4
@SOFT_RESET_SH = common dso_local global i32 0, align 4
@SOFT_RESET_SX = common dso_local global i32 0, align 4
@SOFT_RESET_TC = common dso_local global i32 0, align 4
@SOFT_RESET_TA = common dso_local global i32 0, align 4
@SOFT_RESET_VGT = common dso_local global i32 0, align 4
@SOFT_RESET_IA = common dso_local global i32 0, align 4
@RADEON_RESET_CP = common dso_local global i32 0, align 4
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
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@RADEON_RESET_MC = common dso_local global i32 0, align 4
@SOFT_RESET_MC = common dso_local global i32 0, align 4
@GRBM_SOFT_RESET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"GRBM_SOFT_RESET=0x%08X\0A\00", align 1
@SRBM_SOFT_RESET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"SRBM_SOFT_RESET=0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @cayman_gpu_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cayman_gpu_soft_reset(%struct.radeon_device* %0, i32 %1) #0 {
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
  br label %293

12:                                               ; preds = %2
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dev_info(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call i32 @evergreen_print_gpu_status_regs(%struct.radeon_device* %18)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @RREG32(i32 5368)
  %24 = call i32 @dev_info(i32 %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @RREG32(i32 5336)
  %29 = call i32 @dev_info(i32 %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @RREG32(i32 5372)
  %34 = call i32 @dev_info(i32 %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @RREG32(i32 5340)
  %39 = call i32 @dev_info(i32 %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @CP_ME_CNTL, align 4
  %41 = load i32, i32* @CP_ME_HALT, align 4
  %42 = load i32, i32* @CP_PFP_HALT, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @WREG32(i32 %40, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @RADEON_RESET_DMA, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %12
  %50 = load i32, i32* @DMA_RB_CNTL, align 4
  %51 = load i32, i32* @DMA0_REGISTER_OFFSET, align 4
  %52 = add nsw i32 %50, %51
  %53 = call i32 @RREG32(i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @DMA_RB_ENABLE, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @DMA_RB_CNTL, align 4
  %59 = load i32, i32* @DMA0_REGISTER_OFFSET, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @WREG32(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %49, %12
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @RADEON_RESET_DMA1, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load i32, i32* @DMA_RB_CNTL, align 4
  %70 = load i32, i32* @DMA1_REGISTER_OFFSET, align 4
  %71 = add nsw i32 %69, %70
  %72 = call i32 @RREG32(i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* @DMA_RB_ENABLE, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* @DMA_RB_CNTL, align 4
  %78 = load i32, i32* @DMA1_REGISTER_OFFSET, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @WREG32(i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %68, %63
  %83 = call i32 @udelay(i32 50)
  %84 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %85 = call i32 @evergreen_mc_stop(%struct.radeon_device* %84, %struct.evergreen_mc_save* %5)
  %86 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %87 = call i64 @evergreen_mc_wait_for_idle(%struct.radeon_device* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %91 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_warn(i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %94

94:                                               ; preds = %89, %82
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @RADEON_RESET_GFX, align 4
  %97 = load i32, i32* @RADEON_RESET_COMPUTE, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %125

101:                                              ; preds = %94
  %102 = load i32, i32* @SOFT_RESET_CB, align 4
  %103 = load i32, i32* @SOFT_RESET_DB, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @SOFT_RESET_GDS, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @SOFT_RESET_PA, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @SOFT_RESET_SC, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @SOFT_RESET_SPI, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @SOFT_RESET_SH, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @SOFT_RESET_SX, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @SOFT_RESET_TC, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @SOFT_RESET_TA, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @SOFT_RESET_VGT, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @SOFT_RESET_IA, align 4
  %124 = or i32 %122, %123
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %101, %94
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @RADEON_RESET_CP, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %125
  %131 = load i32, i32* @SOFT_RESET_CP, align 4
  %132 = load i32, i32* @SOFT_RESET_VGT, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* %6, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* @SOFT_RESET_GRBM, align 4
  %137 = load i32, i32* %7, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %130, %125
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @RADEON_RESET_DMA, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load i32, i32* @SOFT_RESET_DMA, align 4
  %146 = load i32, i32* %7, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %144, %139
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* @RADEON_RESET_DMA1, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i32, i32* @SOFT_RESET_DMA1, align 4
  %155 = load i32, i32* %7, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %153, %148
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @RADEON_RESET_DISPLAY, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load i32, i32* @SOFT_RESET_DC, align 4
  %164 = load i32, i32* %7, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %162, %157
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @RADEON_RESET_RLC, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load i32, i32* @SOFT_RESET_RLC, align 4
  %173 = load i32, i32* %7, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %171, %166
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @RADEON_RESET_SEM, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load i32, i32* @SOFT_RESET_SEM, align 4
  %182 = load i32, i32* %7, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %180, %175
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @RADEON_RESET_IH, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = load i32, i32* @SOFT_RESET_IH, align 4
  %191 = load i32, i32* %7, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %7, align 4
  br label %193

193:                                              ; preds = %189, %184
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* @RADEON_RESET_GRBM, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load i32, i32* @SOFT_RESET_GRBM, align 4
  %200 = load i32, i32* %7, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %7, align 4
  br label %202

202:                                              ; preds = %198, %193
  %203 = load i32, i32* %4, align 4
  %204 = load i32, i32* @RADEON_RESET_VMC, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %202
  %208 = load i32, i32* @SOFT_RESET_VMC, align 4
  %209 = load i32, i32* %7, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %7, align 4
  br label %211

211:                                              ; preds = %207, %202
  %212 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %213 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @RADEON_IS_IGP, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %228, label %218

218:                                              ; preds = %211
  %219 = load i32, i32* %4, align 4
  %220 = load i32, i32* @RADEON_RESET_MC, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = load i32, i32* @SOFT_RESET_MC, align 4
  %225 = load i32, i32* %7, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %7, align 4
  br label %227

227:                                              ; preds = %223, %218
  br label %228

228:                                              ; preds = %227, %211
  %229 = load i32, i32* %6, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %257

231:                                              ; preds = %228
  %232 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %233 = call i32 @RREG32(i32 %232)
  store i32 %233, i32* %8, align 4
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* %8, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %8, align 4
  %237 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %238 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %8, align 4
  %241 = call i32 @dev_info(i32 %239, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %240)
  %242 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @WREG32(i32 %242, i32 %243)
  %245 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %246 = call i32 @RREG32(i32 %245)
  store i32 %246, i32* %8, align 4
  %247 = call i32 @udelay(i32 50)
  %248 = load i32, i32* %6, align 4
  %249 = xor i32 %248, -1
  %250 = load i32, i32* %8, align 4
  %251 = and i32 %250, %249
  store i32 %251, i32* %8, align 4
  %252 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %253 = load i32, i32* %8, align 4
  %254 = call i32 @WREG32(i32 %252, i32 %253)
  %255 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %256 = call i32 @RREG32(i32 %255)
  store i32 %256, i32* %8, align 4
  br label %257

257:                                              ; preds = %231, %228
  %258 = load i32, i32* %7, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %286

260:                                              ; preds = %257
  %261 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %262 = call i32 @RREG32(i32 %261)
  store i32 %262, i32* %8, align 4
  %263 = load i32, i32* %7, align 4
  %264 = load i32, i32* %8, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %8, align 4
  %266 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %267 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %8, align 4
  %270 = call i32 @dev_info(i32 %268, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %269)
  %271 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %272 = load i32, i32* %8, align 4
  %273 = call i32 @WREG32(i32 %271, i32 %272)
  %274 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %275 = call i32 @RREG32(i32 %274)
  store i32 %275, i32* %8, align 4
  %276 = call i32 @udelay(i32 50)
  %277 = load i32, i32* %7, align 4
  %278 = xor i32 %277, -1
  %279 = load i32, i32* %8, align 4
  %280 = and i32 %279, %278
  store i32 %280, i32* %8, align 4
  %281 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %282 = load i32, i32* %8, align 4
  %283 = call i32 @WREG32(i32 %281, i32 %282)
  %284 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %285 = call i32 @RREG32(i32 %284)
  store i32 %285, i32* %8, align 4
  br label %286

286:                                              ; preds = %260, %257
  %287 = call i32 @udelay(i32 50)
  %288 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %289 = call i32 @evergreen_mc_resume(%struct.radeon_device* %288, %struct.evergreen_mc_save* %5)
  %290 = call i32 @udelay(i32 50)
  %291 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %292 = call i32 @evergreen_print_gpu_status_regs(%struct.radeon_device* %291)
  br label %293

293:                                              ; preds = %286, %11
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @evergreen_print_gpu_status_regs(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

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
