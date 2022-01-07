; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf_gainf_corr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf_gainf_corr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_gain_opt = type { %struct.ath5k_gain_opt_step* }
%struct.ath5k_gain_opt_step = type { i32* }
%struct.ath5k_rf_reg = type { i32 }
%struct.ath5k_hw = type { i64, i64, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@AR5K_RF5112 = common dso_local global i64 0, align 8
@AR5K_SREV_RAD_5112A = common dso_local global i64 0, align 8
@rfgain_opt_5112 = common dso_local global %struct.ath5k_gain_opt zeroinitializer, align 8
@rf_regs_5112a = common dso_local global %struct.ath5k_rf_reg* null, align 8
@AR5K_RF_MIXVGA_OVR = common dso_local global i32 0, align 4
@AR5K_RF_MIXGAIN_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*)* @ath5k_hw_rf_gainf_corr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_rf_gainf_corr(%struct.ath5k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ath5k_gain_opt*, align 8
  %8 = alloca %struct.ath5k_gain_opt_step*, align 8
  %9 = alloca %struct.ath5k_rf_reg*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AR5K_RF5112, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AR5K_SREV_RAD_5112A, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %92

22:                                               ; preds = %15
  store %struct.ath5k_gain_opt* @rfgain_opt_5112, %struct.ath5k_gain_opt** %7, align 8
  %23 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** @rf_regs_5112a, align 8
  store %struct.ath5k_rf_reg* %23, %struct.ath5k_rf_reg** %9, align 8
  %24 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** @rf_regs_5112a, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.ath5k_rf_reg* %24)
  %26 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %27 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ath5k_gain_opt*, %struct.ath5k_gain_opt** %7, align 8
  %29 = getelementptr inbounds %struct.ath5k_gain_opt, %struct.ath5k_gain_opt* %28, i32 0, i32 0
  %30 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %29, align 8
  %31 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %32 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %30, i64 %34
  store %struct.ath5k_gain_opt_step* %35, %struct.ath5k_gain_opt_step** %8, align 8
  %36 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %37 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %92

41:                                               ; preds = %22
  %42 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %6, align 8
  %45 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %46 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 0, i32* %47, align 8
  %48 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %49 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %9, align 8
  %50 = load i32, i32* @AR5K_RF_MIXVGA_OVR, align 4
  %51 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %48, %struct.ath5k_rf_reg* %49, i32 0, i32 %50, i32 0)
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %92

54:                                               ; preds = %41
  %55 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %56 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %9, align 8
  %57 = load i32, i32* @AR5K_RF_MIXGAIN_STEP, align 4
  %58 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %55, %struct.ath5k_rf_reg* %56, i32 0, i32 %57, i32 0)
  store i32 %58, i32* %5, align 4
  %59 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %8, align 8
  %60 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  switch i32 %64, label %83 [
    i32 3, label %65
    i32 2, label %71
    i32 1, label %78
  ]

65:                                               ; preds = %54
  %66 = load i32, i32* %5, align 4
  %67 = mul nsw i32 %66, 2
  %68 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %69 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 8
  br label %87

71:                                               ; preds = %54
  %72 = load i32, i32* %5, align 4
  %73 = sub nsw i32 %72, 5
  %74 = mul nsw i32 %73, 2
  %75 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %76 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 8
  br label %87

78:                                               ; preds = %54
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %81 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 8
  br label %87

83:                                               ; preds = %54
  %84 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %85 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %78, %71, %65
  %88 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %89 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %87, %53, %40, %21
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @ARRAY_SIZE(%struct.ath5k_rf_reg*) #1

declare dso_local i32 @ath5k_hw_rfb_op(%struct.ath5k_hw*, %struct.ath5k_rf_reg*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
