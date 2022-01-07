; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_gpu_check_soft_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_gpu_check_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@GRBM_STATUS = common dso_local global i64 0, align 8
@PA_BUSY = common dso_local global i32 0, align 4
@SC_BUSY = common dso_local global i32 0, align 4
@SH_BUSY = common dso_local global i32 0, align 4
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
@RLC_RQ_PENDING = common dso_local global i32 0, align 4
@RLC_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_RLC = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cayman_gpu_check_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cayman_gpu_check_soft_reset(%struct.radeon_device* %0) #0 {
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
  %11 = load i32, i32* @SH_BUSY, align 4
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
  %66 = load i64, i64* @DMA_STATUS_REG, align 8
  %67 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @RREG32(i64 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @DMA_IDLE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* @RADEON_RESET_DMA, align 4
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %65
  %79 = load i64, i64* @DMA_STATUS_REG, align 8
  %80 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @RREG32(i64 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @DMA_IDLE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %78
  %88 = load i32, i32* @RADEON_RESET_DMA1, align 4
  %89 = load i32, i32* %3, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %78
  %92 = load i64, i64* @SRBM_STATUS2, align 8
  %93 = call i32 @RREG32(i64 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @DMA_BUSY, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i32, i32* @RADEON_RESET_DMA, align 4
  %100 = load i32, i32* %3, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %91
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @DMA1_BUSY, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @RADEON_RESET_DMA1, align 4
  %109 = load i32, i32* %3, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %102
  %112 = load i64, i64* @SRBM_STATUS, align 8
  %113 = call i32 @RREG32(i64 %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @RLC_RQ_PENDING, align 4
  %116 = load i32, i32* @RLC_BUSY, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = load i32, i32* @RADEON_RESET_RLC, align 4
  %122 = load i32, i32* %3, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %120, %111
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @IH_BUSY, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* @RADEON_RESET_IH, align 4
  %131 = load i32, i32* %3, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %129, %124
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @SEM_BUSY, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i32, i32* @RADEON_RESET_SEM, align 4
  %140 = load i32, i32* %3, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %138, %133
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @GRBM_RQ_PENDING, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i32, i32* @RADEON_RESET_GRBM, align 4
  %149 = load i32, i32* %3, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %147, %142
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @VMC_BUSY, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load i32, i32* @RADEON_RESET_VMC, align 4
  %158 = load i32, i32* %3, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %156, %151
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @MCB_BUSY, align 4
  %163 = load i32, i32* @MCB_NON_DISPLAY_BUSY, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @MCC_BUSY, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @MCD_BUSY, align 4
  %168 = or i32 %166, %167
  %169 = and i32 %161, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %160
  %172 = load i32, i32* @RADEON_RESET_MC, align 4
  %173 = load i32, i32* %3, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %171, %160
  %176 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %177 = call i64 @evergreen_is_display_hung(%struct.radeon_device* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = load i32, i32* @RADEON_RESET_DISPLAY, align 4
  %181 = load i32, i32* %3, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %179, %175
  %184 = load i64, i64* @VM_L2_STATUS, align 8
  %185 = call i32 @RREG32(i64 %184)
  store i32 %185, i32* %4, align 4
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* @L2_BUSY, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %183
  %191 = load i32, i32* @RADEON_RESET_VMC, align 4
  %192 = load i32, i32* %3, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %190, %183
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* @RADEON_RESET_MC, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %194
  %200 = load i32, i32* %3, align 4
  %201 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* @RADEON_RESET_MC, align 4
  %203 = xor i32 %202, -1
  %204 = load i32, i32* %3, align 4
  %205 = and i32 %204, %203
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %199, %194
  %207 = load i32, i32* %3, align 4
  ret i32 %207
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
