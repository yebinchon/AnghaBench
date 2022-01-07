; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_gpu_check_soft_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_gpu_check_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@GRBM_STATUS = common dso_local global i64 0, align 8
@PA_BUSY = common dso_local global i32 0, align 4
@SC_BUSY = common dso_local global i32 0, align 4
@BCI_BUSY = common dso_local global i32 0, align 4
@SX_BUSY = common dso_local global i32 0, align 4
@TA_BUSY = common dso_local global i32 0, align 4
@VGT_BUSY = common dso_local global i32 0, align 4
@DB_BUSY = common dso_local global i32 0, align 4
@CB_BUSY = common dso_local global i32 0, align 4
@GDS_BUSY = common dso_local global i32 0, align 4
@SPI_BUSY = common dso_local global i32 0, align 4
@IA_BUSY = common dso_local global i32 0, align 4
@IA_BUSY_NO_DMA = common dso_local global i32 0, align 4
@RADEON_RESET_GFX = common dso_local global i32 0, align 4
@CF_RQ_PENDING = common dso_local global i32 0, align 4
@PF_RQ_PENDING = common dso_local global i32 0, align 4
@CP_BUSY = common dso_local global i32 0, align 4
@CP_COHERENCY_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_CP = common dso_local global i32 0, align 4
@GRBM_EE_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_GRBM = common dso_local global i32 0, align 4
@GRBM_STATUS2 = common dso_local global i64 0, align 8
@RLC_RQ_PENDING = common dso_local global i32 0, align 4
@RLC_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_RLC = common dso_local global i32 0, align 4
@DMA_STATUS_REG = common dso_local global i64 0, align 8
@DMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@DMA_IDLE = common dso_local global i32 0, align 4
@RADEON_RESET_DMA = common dso_local global i32 0, align 4
@DMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@RADEON_RESET_DMA1 = common dso_local global i32 0, align 4
@SRBM_STATUS2 = common dso_local global i64 0, align 8
@DMA_BUSY = common dso_local global i32 0, align 4
@DMA1_BUSY = common dso_local global i32 0, align 4
@SRBM_STATUS = common dso_local global i64 0, align 8
@IH_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_IH = common dso_local global i32 0, align 4
@SEM_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_SEM = common dso_local global i32 0, align 4
@GRBM_RQ_PENDING = common dso_local global i32 0, align 4
@VMC_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_VMC = common dso_local global i32 0, align 4
@MCB_BUSY = common dso_local global i32 0, align 4
@MCB_NON_DISPLAY_BUSY = common dso_local global i32 0, align 4
@MCC_BUSY = common dso_local global i32 0, align 4
@MCD_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_MC = common dso_local global i32 0, align 4
@RADEON_RESET_DISPLAY = common dso_local global i32 0, align 4
@VM_L2_STATUS = common dso_local global i64 0, align 8
@L2_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"MC busy: 0x%08X, clearing.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_gpu_check_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_gpu_check_soft_reset(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i64, i64* @GRBM_STATUS, align 8
  %6 = call i32 @RREG32(i64 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @PA_BUSY, align 4
  %9 = load i32, i32* @SC_BUSY, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @BCI_BUSY, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SX_BUSY, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @TA_BUSY, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @VGT_BUSY, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @DB_BUSY, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CB_BUSY, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @GDS_BUSY, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SPI_BUSY, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @IA_BUSY, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @IA_BUSY_NO_DMA, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %7, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i32, i32* @RADEON_RESET_GFX, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @CF_RQ_PENDING, align 4
  %40 = load i32, i32* @PF_RQ_PENDING, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @CP_BUSY, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @CP_COHERENCY_BUSY, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %38, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i32, i32* @RADEON_RESET_CP, align 4
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %37
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @GRBM_EE_BUSY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i32, i32* @RADEON_RESET_GRBM, align 4
  %59 = load i32, i32* @RADEON_RESET_GFX, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @RADEON_RESET_CP, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %57, %52
  %66 = load i64, i64* @GRBM_STATUS2, align 8
  %67 = call i32 @RREG32(i64 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @RLC_RQ_PENDING, align 4
  %70 = load i32, i32* @RLC_BUSY, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load i32, i32* @RADEON_RESET_RLC, align 4
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %65
  %79 = load i64, i64* @DMA_STATUS_REG, align 8
  %80 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @RREG32(i64 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @DMA_IDLE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %78
  %88 = load i32, i32* @RADEON_RESET_DMA, align 4
  %89 = load i32, i32* %3, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %78
  %92 = load i64, i64* @DMA_STATUS_REG, align 8
  %93 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @RREG32(i64 %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @DMA_IDLE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %91
  %101 = load i32, i32* @RADEON_RESET_DMA1, align 4
  %102 = load i32, i32* %3, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %91
  %105 = load i64, i64* @SRBM_STATUS2, align 8
  %106 = call i32 @RREG32(i64 %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @DMA_BUSY, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load i32, i32* @RADEON_RESET_DMA, align 4
  %113 = load i32, i32* %3, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %104
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @DMA1_BUSY, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @RADEON_RESET_DMA1, align 4
  %122 = load i32, i32* %3, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %120, %115
  %125 = load i64, i64* @SRBM_STATUS, align 8
  %126 = call i32 @RREG32(i64 %125)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @IH_BUSY, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i32, i32* @RADEON_RESET_IH, align 4
  %133 = load i32, i32* %3, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %131, %124
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @SEM_BUSY, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* @RADEON_RESET_SEM, align 4
  %142 = load i32, i32* %3, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %140, %135
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @GRBM_RQ_PENDING, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i32, i32* @RADEON_RESET_GRBM, align 4
  %151 = load i32, i32* %3, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %149, %144
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @VMC_BUSY, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load i32, i32* @RADEON_RESET_VMC, align 4
  %160 = load i32, i32* %3, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %158, %153
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @MCB_BUSY, align 4
  %165 = load i32, i32* @MCB_NON_DISPLAY_BUSY, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @MCC_BUSY, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @MCD_BUSY, align 4
  %170 = or i32 %168, %169
  %171 = and i32 %163, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %162
  %174 = load i32, i32* @RADEON_RESET_MC, align 4
  %175 = load i32, i32* %3, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %173, %162
  %178 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %179 = call i64 @evergreen_is_display_hung(%struct.radeon_device* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = load i32, i32* @RADEON_RESET_DISPLAY, align 4
  %183 = load i32, i32* %3, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %181, %177
  %186 = load i64, i64* @VM_L2_STATUS, align 8
  %187 = call i32 @RREG32(i64 %186)
  store i32 %187, i32* %4, align 4
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @L2_BUSY, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %185
  %193 = load i32, i32* @RADEON_RESET_VMC, align 4
  %194 = load i32, i32* %3, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %192, %185
  %197 = load i32, i32* %3, align 4
  %198 = load i32, i32* @RADEON_RESET_MC, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %196
  %202 = load i32, i32* %3, align 4
  %203 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* @RADEON_RESET_MC, align 4
  %205 = xor i32 %204, -1
  %206 = load i32, i32* %3, align 4
  %207 = and i32 %206, %205
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %201, %196
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i64 @evergreen_is_display_hung(%struct.radeon_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
