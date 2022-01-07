; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9285_hw_cl_cal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9285_hw_cl_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32 }

@AR_PHY_CL_CAL_CTL = common dso_local global i32 0, align 4
@AR_PHY_CL_CAL_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_PARALLEL_CAL_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_TURBO = common dso_local global i32 0, align 4
@AR_PHY_FC_DYN2040_EN = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_FLTR_CAL = common dso_local global i32 0, align 4
@AR_PHY_TPCRG1 = common dso_local global i32 0, align 4
@AR_PHY_TPCRG1_PD_CAL_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_CAL = common dso_local global i32 0, align 4
@AH_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"offset calibration failed to complete in %d ms; noisy environment?\0A\00", align 1
@AR_PHY_ADC_CTL = common dso_local global i32 0, align 4
@AR_PHY_ADC_CTL_OFF_PWDADC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9285_hw_cl_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9285_hw_cl_cal(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %8 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %7)
  store %struct.ath_common* %8, %struct.ath_common** %6, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %10 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %11 = load i32, i32* @AR_PHY_CL_CAL_ENABLE, align 4
  %12 = call i32 @REG_SET_BIT(%struct.ath_hw* %9, i32 %10, i32 %11)
  %13 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %14 = call i64 @IS_CHAN_HT20(%struct.ath9k_channel* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %62

16:                                               ; preds = %2
  %17 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %18 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %19 = load i32, i32* @AR_PHY_PARALLEL_CAL_ENABLE, align 4
  %20 = call i32 @REG_SET_BIT(%struct.ath_hw* %17, i32 %18, i32 %19)
  %21 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %22 = load i32, i32* @AR_PHY_TURBO, align 4
  %23 = load i32, i32* @AR_PHY_FC_DYN2040_EN, align 4
  %24 = call i32 @REG_SET_BIT(%struct.ath_hw* %21, i32 %22, i32 %23)
  %25 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %26 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %27 = load i32, i32* @AR_PHY_AGC_CONTROL_FLTR_CAL, align 4
  %28 = call i32 @REG_CLR_BIT(%struct.ath_hw* %25, i32 %26, i32 %27)
  %29 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %30 = load i32, i32* @AR_PHY_TPCRG1, align 4
  %31 = load i32, i32* @AR_PHY_TPCRG1_PD_CAL_ENABLE, align 4
  %32 = call i32 @REG_CLR_BIT(%struct.ath_hw* %29, i32 %30, i32 %31)
  %33 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %34 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %35 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %36 = call i32 @REG_SET_BIT(%struct.ath_hw* %33, i32 %34, i32 %35)
  %37 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %38 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %39 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %40 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %41 = call i32 @ath9k_hw_wait(%struct.ath_hw* %37, i32 %38, i32 %39, i32 0, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %16
  %44 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %45 = load i32, i32* @CALIBRATE, align 4
  %46 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %47 = sdiv i32 %46, 1000
  %48 = call i32 @ath_dbg(%struct.ath_common* %44, i32 %45, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 0, i32* %3, align 4
  br label %104

49:                                               ; preds = %16
  %50 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %51 = load i32, i32* @AR_PHY_TURBO, align 4
  %52 = load i32, i32* @AR_PHY_FC_DYN2040_EN, align 4
  %53 = call i32 @REG_CLR_BIT(%struct.ath_hw* %50, i32 %51, i32 %52)
  %54 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %55 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %56 = load i32, i32* @AR_PHY_PARALLEL_CAL_ENABLE, align 4
  %57 = call i32 @REG_CLR_BIT(%struct.ath_hw* %54, i32 %55, i32 %56)
  %58 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %59 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %60 = load i32, i32* @AR_PHY_CL_CAL_ENABLE, align 4
  %61 = call i32 @REG_CLR_BIT(%struct.ath_hw* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %49, %2
  %63 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %64 = load i32, i32* @AR_PHY_ADC_CTL, align 4
  %65 = load i32, i32* @AR_PHY_ADC_CTL_OFF_PWDADC, align 4
  %66 = call i32 @REG_CLR_BIT(%struct.ath_hw* %63, i32 %64, i32 %65)
  %67 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %68 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %69 = load i32, i32* @AR_PHY_AGC_CONTROL_FLTR_CAL, align 4
  %70 = call i32 @REG_SET_BIT(%struct.ath_hw* %67, i32 %68, i32 %69)
  %71 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %72 = load i32, i32* @AR_PHY_TPCRG1, align 4
  %73 = load i32, i32* @AR_PHY_TPCRG1_PD_CAL_ENABLE, align 4
  %74 = call i32 @REG_SET_BIT(%struct.ath_hw* %71, i32 %72, i32 %73)
  %75 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %76 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %77 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %78 = call i32 @REG_SET_BIT(%struct.ath_hw* %75, i32 %76, i32 %77)
  %79 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %80 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %81 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %82 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %83 = call i32 @ath9k_hw_wait(%struct.ath_hw* %79, i32 %80, i32 %81, i32 0, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %62
  %86 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %87 = load i32, i32* @CALIBRATE, align 4
  %88 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %89 = sdiv i32 %88, 1000
  %90 = call i32 @ath_dbg(%struct.ath_common* %86, i32 %87, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %89)
  store i32 0, i32* %3, align 4
  br label %104

91:                                               ; preds = %62
  %92 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %93 = load i32, i32* @AR_PHY_ADC_CTL, align 4
  %94 = load i32, i32* @AR_PHY_ADC_CTL_OFF_PWDADC, align 4
  %95 = call i32 @REG_SET_BIT(%struct.ath_hw* %92, i32 %93, i32 %94)
  %96 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %97 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %98 = load i32, i32* @AR_PHY_CL_CAL_ENABLE, align 4
  %99 = call i32 @REG_CLR_BIT(%struct.ath_hw* %96, i32 %97, i32 %98)
  %100 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %101 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %102 = load i32, i32* @AR_PHY_AGC_CONTROL_FLTR_CAL, align 4
  %103 = call i32 @REG_CLR_BIT(%struct.ath_hw* %100, i32 %101, i32 %102)
  store i32 1, i32* %3, align 4
  br label %104

104:                                              ; preds = %91, %85, %43
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @IS_CHAN_HT20(%struct.ath9k_channel*) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
