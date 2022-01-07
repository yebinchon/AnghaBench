; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf511x_iq_calibrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf511x_iq_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AR5K_PHY_IQ = common dso_local global i32 0, align 4
@AR5K_PHY_IQ_RUN = common dso_local global i32 0, align 4
@ATH5K_DEBUG_CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"I/Q calibration still running\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@AR5K_PHY_IQRES_CAL_CORR = common dso_local global i32 0, align 4
@AR5K_PHY_IQRES_CAL_PWR_I = common dso_local global i32 0, align 4
@AR5K_PHY_IQRES_CAL_PWR_Q = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"iq_corr:%x i_pwr:%x q_pwr:%x\00", align 1
@AR5K_AR5211 = common dso_local global i64 0, align 8
@ECANCELED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"new I:%d Q:%d (i_coffd:%x q_coffd:%x)\00", align 1
@AR5K_PHY_IQ_CORR_Q_I_COFF = common dso_local global i32 0, align 4
@AR5K_PHY_IQ_CORR_Q_Q_COFF = common dso_local global i32 0, align 4
@AR5K_PHY_IQ_CORR_ENABLE = common dso_local global i32 0, align 4
@AR5K_PHY_IQ_CAL_NUM_LOG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*)* @ath5k_hw_rf511x_iq_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_rf511x_iq_calibrate(%struct.ath5k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %144

19:                                               ; preds = %1
  %20 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %21 = load i32, i32* @AR5K_PHY_IQ, align 4
  %22 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %20, i32 %21)
  %23 = load i32, i32* @AR5K_PHY_IQ_RUN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %28 = load i32, i32* @ATH5K_DEBUG_CALIBRATE, align 4
  %29 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %27, i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %144

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %60, %33
  %35 = load i32, i32* %11, align 4
  %36 = icmp sle i32 %35, 10
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  %38 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %39 = load i32, i32* @AR5K_PHY_IQRES_CAL_CORR, align 4
  %40 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %42 = load i32, i32* @AR5K_PHY_IQRES_CAL_PWR_I, align 4
  %43 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %45 = load i32, i32* @AR5K_PHY_IQRES_CAL_PWR_Q, align 4
  %46 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %48 = load i32, i32* @ATH5K_DEBUG_CALIBRATE, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %47, i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %37
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %63

59:                                               ; preds = %55, %37
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %34

63:                                               ; preds = %58, %34
  %64 = load i32, i32* %4, align 4
  %65 = ashr i32 %64, 1
  %66 = load i32, i32* %5, align 4
  %67 = ashr i32 %66, 1
  %68 = add nsw i32 %65, %67
  %69 = ashr i32 %68, 7
  store i32 %69, i32* %8, align 4
  %70 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %71 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AR5K_AR5211, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %63
  %76 = load i32, i32* %5, align 4
  %77 = ashr i32 %76, 6
  store i32 %77, i32* %10, align 4
  br label %81

78:                                               ; preds = %63
  %79 = load i32, i32* %5, align 4
  %80 = ashr i32 %79, 7
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 2
  br i1 %86, label %87, label %90

87:                                               ; preds = %84, %81
  %88 = load i32, i32* @ECANCELED, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %144

90:                                               ; preds = %84
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 0, %91
  %93 = load i32, i32* %8, align 4
  %94 = sdiv i32 %92, %93
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @clamp(i32 %95, i32 -32, i32 31)
  store i32 %96, i32* %7, align 4
  %97 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %98 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @AR5K_AR5211, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %90
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %10, align 4
  %105 = sdiv i32 %103, %104
  %106 = sub nsw i32 %105, 64
  store i32 %106, i32* %9, align 4
  br label %112

107:                                              ; preds = %90
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %10, align 4
  %110 = sdiv i32 %108, %109
  %111 = sub nsw i32 %110, 128
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @clamp(i32 %113, i32 -16, i32 15)
  store i32 %114, i32* %9, align 4
  %115 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %116 = load i32, i32* @ATH5K_DEBUG_CALIBRATE, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %115, i32 %116, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %123 = load i32, i32* @AR5K_PHY_IQ, align 4
  %124 = load i32, i32* @AR5K_PHY_IQ_CORR_Q_I_COFF, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %122, i32 %123, i32 %124, i32 %125)
  %127 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %128 = load i32, i32* @AR5K_PHY_IQ, align 4
  %129 = load i32, i32* @AR5K_PHY_IQ_CORR_Q_Q_COFF, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %127, i32 %128, i32 %129, i32 %130)
  %132 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %133 = load i32, i32* @AR5K_PHY_IQ, align 4
  %134 = load i32, i32* @AR5K_PHY_IQ_CORR_ENABLE, align 4
  %135 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %132, i32 %133, i32 %134)
  %136 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %137 = load i32, i32* @AR5K_PHY_IQ, align 4
  %138 = load i32, i32* @AR5K_PHY_IQ_CAL_NUM_LOG_MAX, align 4
  %139 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %136, i32 %137, i32 %138, i32 15)
  %140 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %141 = load i32, i32* @AR5K_PHY_IQ, align 4
  %142 = load i32, i32* @AR5K_PHY_IQ_RUN, align 4
  %143 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %140, i32 %141, i32 %142)
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %112, %87, %26, %16
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw*, i32, i8*, ...) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i32) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
