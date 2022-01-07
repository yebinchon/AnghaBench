; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_gpu_check_soft_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_gpu_check_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@R_008010_GRBM_STATUS = common dso_local global i32 0, align 4
@CHIP_RV770 = common dso_local global i64 0, align 8
@RADEON_RESET_GFX = common dso_local global i32 0, align 4
@RADEON_RESET_CP = common dso_local global i32 0, align 4
@RADEON_RESET_GRBM = common dso_local global i32 0, align 4
@DMA_STATUS_REG = common dso_local global i32 0, align 4
@DMA_IDLE = common dso_local global i32 0, align 4
@RADEON_RESET_DMA = common dso_local global i32 0, align 4
@R_000E50_SRBM_STATUS = common dso_local global i32 0, align 4
@RADEON_RESET_RLC = common dso_local global i32 0, align 4
@RADEON_RESET_IH = common dso_local global i32 0, align 4
@RADEON_RESET_SEM = common dso_local global i32 0, align 4
@RADEON_RESET_VMC = common dso_local global i32 0, align 4
@RADEON_RESET_MC = common dso_local global i32 0, align 4
@RADEON_RESET_DISPLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"MC busy: 0x%08X, clearing.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @r600_gpu_check_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r600_gpu_check_soft_reset(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @R_008010_GRBM_STATUS, align 4
  %6 = call i32 @RREG32(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CHIP_RV770, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @G_008010_PA_BUSY(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @G_008010_SC_BUSY(i32 %15)
  %17 = or i32 %14, %16
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @G_008010_SH_BUSY(i32 %18)
  %20 = or i32 %17, %19
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @G_008010_SX_BUSY(i32 %21)
  %23 = or i32 %20, %22
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @G_008010_TA_BUSY(i32 %24)
  %26 = or i32 %23, %25
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @G_008010_VGT_BUSY(i32 %27)
  %29 = or i32 %26, %28
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @G_008010_DB03_BUSY(i32 %30)
  %32 = or i32 %29, %31
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @G_008010_CB03_BUSY(i32 %33)
  %35 = or i32 %32, %34
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @G_008010_SPI03_BUSY(i32 %36)
  %38 = or i32 %35, %37
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @G_008010_VGT_BUSY_NO_DMA(i32 %39)
  %41 = or i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %12
  %44 = load i32, i32* @RADEON_RESET_GFX, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %12
  br label %84

48:                                               ; preds = %1
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @G_008010_PA_BUSY(i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @G_008010_SC_BUSY(i32 %51)
  %53 = or i32 %50, %52
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @G_008010_SH_BUSY(i32 %54)
  %56 = or i32 %53, %55
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @G_008010_SX_BUSY(i32 %57)
  %59 = or i32 %56, %58
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @G_008010_TA03_BUSY(i32 %60)
  %62 = or i32 %59, %61
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @G_008010_VGT_BUSY(i32 %63)
  %65 = or i32 %62, %64
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @G_008010_DB03_BUSY(i32 %66)
  %68 = or i32 %65, %67
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @G_008010_CB03_BUSY(i32 %69)
  %71 = or i32 %68, %70
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @G_008010_SPI03_BUSY(i32 %72)
  %74 = or i32 %71, %73
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @G_008010_VGT_BUSY_NO_DMA(i32 %75)
  %77 = or i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %48
  %80 = load i32, i32* @RADEON_RESET_GFX, align 4
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %48
  br label %84

84:                                               ; preds = %83, %47
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @G_008010_CF_RQ_PENDING(i32 %85)
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @G_008010_PF_RQ_PENDING(i32 %87)
  %89 = or i32 %86, %88
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @G_008010_CP_BUSY(i32 %90)
  %92 = or i32 %89, %91
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @G_008010_CP_COHERENCY_BUSY(i32 %93)
  %95 = or i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %84
  %98 = load i32, i32* @RADEON_RESET_CP, align 4
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %84
  %102 = load i32, i32* %4, align 4
  %103 = call i64 @G_008010_GRBM_EE_BUSY(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load i32, i32* @RADEON_RESET_GRBM, align 4
  %107 = load i32, i32* @RADEON_RESET_GFX, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @RADEON_RESET_CP, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %3, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %105, %101
  %114 = load i32, i32* @DMA_STATUS_REG, align 4
  %115 = call i32 @RREG32(i32 %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @DMA_IDLE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %113
  %121 = load i32, i32* @RADEON_RESET_DMA, align 4
  %122 = load i32, i32* %3, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %120, %113
  %125 = load i32, i32* @R_000E50_SRBM_STATUS, align 4
  %126 = call i32 @RREG32(i32 %125)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @G_000E50_RLC_RQ_PENDING(i32 %127)
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @G_000E50_RLC_BUSY(i32 %129)
  %131 = or i32 %128, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %124
  %134 = load i32, i32* @RADEON_RESET_RLC, align 4
  %135 = load i32, i32* %3, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %133, %124
  %138 = load i32, i32* %4, align 4
  %139 = call i64 @G_000E50_IH_BUSY(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i32, i32* @RADEON_RESET_IH, align 4
  %143 = load i32, i32* %3, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %141, %137
  %146 = load i32, i32* %4, align 4
  %147 = call i64 @G_000E50_SEM_BUSY(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i32, i32* @RADEON_RESET_SEM, align 4
  %151 = load i32, i32* %3, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %149, %145
  %154 = load i32, i32* %4, align 4
  %155 = call i64 @G_000E50_GRBM_RQ_PENDING(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i32, i32* @RADEON_RESET_GRBM, align 4
  %159 = load i32, i32* %3, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %157, %153
  %162 = load i32, i32* %4, align 4
  %163 = call i64 @G_000E50_VMC_BUSY(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = load i32, i32* @RADEON_RESET_VMC, align 4
  %167 = load i32, i32* %3, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %165, %161
  %170 = load i32, i32* %4, align 4
  %171 = call i32 @G_000E50_MCB_BUSY(i32 %170)
  %172 = load i32, i32* %4, align 4
  %173 = call i32 @G_000E50_MCDZ_BUSY(i32 %172)
  %174 = or i32 %171, %173
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @G_000E50_MCDY_BUSY(i32 %175)
  %177 = or i32 %174, %176
  %178 = load i32, i32* %4, align 4
  %179 = call i32 @G_000E50_MCDX_BUSY(i32 %178)
  %180 = or i32 %177, %179
  %181 = load i32, i32* %4, align 4
  %182 = call i32 @G_000E50_MCDW_BUSY(i32 %181)
  %183 = or i32 %180, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %169
  %186 = load i32, i32* @RADEON_RESET_MC, align 4
  %187 = load i32, i32* %3, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %185, %169
  %190 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %191 = call i64 @r600_is_display_hung(%struct.radeon_device* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = load i32, i32* @RADEON_RESET_DISPLAY, align 4
  %195 = load i32, i32* %3, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %193, %189
  %198 = load i32, i32* %3, align 4
  %199 = load i32, i32* @RADEON_RESET_MC, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %197
  %203 = load i32, i32* %3, align 4
  %204 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* @RADEON_RESET_MC, align 4
  %206 = xor i32 %205, -1
  %207 = load i32, i32* %3, align 4
  %208 = and i32 %207, %206
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %202, %197
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @G_008010_PA_BUSY(i32) #1

declare dso_local i32 @G_008010_SC_BUSY(i32) #1

declare dso_local i32 @G_008010_SH_BUSY(i32) #1

declare dso_local i32 @G_008010_SX_BUSY(i32) #1

declare dso_local i32 @G_008010_TA_BUSY(i32) #1

declare dso_local i32 @G_008010_VGT_BUSY(i32) #1

declare dso_local i32 @G_008010_DB03_BUSY(i32) #1

declare dso_local i32 @G_008010_CB03_BUSY(i32) #1

declare dso_local i32 @G_008010_SPI03_BUSY(i32) #1

declare dso_local i32 @G_008010_VGT_BUSY_NO_DMA(i32) #1

declare dso_local i32 @G_008010_TA03_BUSY(i32) #1

declare dso_local i32 @G_008010_CF_RQ_PENDING(i32) #1

declare dso_local i32 @G_008010_PF_RQ_PENDING(i32) #1

declare dso_local i32 @G_008010_CP_BUSY(i32) #1

declare dso_local i32 @G_008010_CP_COHERENCY_BUSY(i32) #1

declare dso_local i64 @G_008010_GRBM_EE_BUSY(i32) #1

declare dso_local i32 @G_000E50_RLC_RQ_PENDING(i32) #1

declare dso_local i32 @G_000E50_RLC_BUSY(i32) #1

declare dso_local i64 @G_000E50_IH_BUSY(i32) #1

declare dso_local i64 @G_000E50_SEM_BUSY(i32) #1

declare dso_local i64 @G_000E50_GRBM_RQ_PENDING(i32) #1

declare dso_local i64 @G_000E50_VMC_BUSY(i32) #1

declare dso_local i32 @G_000E50_MCB_BUSY(i32) #1

declare dso_local i32 @G_000E50_MCDZ_BUSY(i32) #1

declare dso_local i32 @G_000E50_MCDY_BUSY(i32) #1

declare dso_local i32 @G_000E50_MCDX_BUSY(i32) #1

declare dso_local i32 @G_000E50_MCDW_BUSY(i32) #1

declare dso_local i64 @r600_is_display_hung(%struct.radeon_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
