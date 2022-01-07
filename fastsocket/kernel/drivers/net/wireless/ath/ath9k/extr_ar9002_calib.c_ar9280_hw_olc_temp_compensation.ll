; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9280_hw_olc_temp_compensation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9280_hw_olc_temp_compensation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.ath_hw*, i32)* }

@AR_PHY_TX_PWRCTRL4 = common dso_local global i32 0, align 4
@AR_PHY_TX_PWRCTRL_PD_AVG_OUT = common dso_local global i32 0, align 4
@EEP_DAC_HPWR_5G = common dso_local global i32 0, align 4
@AR9280_TX_GAIN_TABLE_SIZE = common dso_local global i64 0, align 8
@AR_PHY_TX_GAIN_TBL1 = common dso_local global i64 0, align 8
@AR_PHY_TX_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9280_hw_olc_temp_compensation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9280_hw_olc_temp_compensation(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = load i32, i32* @AR_PHY_TX_PWRCTRL4, align 4
  %10 = call i64 @REG_READ(%struct.ath_hw* %8, i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* @AR_PHY_TX_PWRCTRL_PD_AVG_OUT, align 4
  %13 = call i32 @MS(i64 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %15 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %1
  br label %87

22:                                               ; preds = %18
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64 (%struct.ath_hw*, i32)*, i64 (%struct.ath_hw*, i32)** %26, align 8
  %28 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %29 = load i32, i32* @EEP_DAC_HPWR_5G, align 4
  %30 = call i64 %27(%struct.ath_hw* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %35 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %33, %36
  %38 = add nsw i32 %37, 4
  %39 = sdiv i32 %38, 8
  store i32 %39, i32* %5, align 4
  br label %48

40:                                               ; preds = %22
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %43 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %41, %44
  %46 = add nsw i32 %45, 5
  %47 = sdiv i32 %46, 10
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %40, %32
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %51 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %48
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %57 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  store i64 1, i64* %4, align 8
  br label %58

58:                                               ; preds = %83, %54
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @AR9280_TX_GAIN_TABLE_SIZE, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  %63 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %64 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %4, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %62
  %75 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %76 = load i64, i64* @AR_PHY_TX_GAIN_TBL1, align 8
  %77 = load i64, i64* %4, align 8
  %78 = mul i64 %77, 4
  %79 = add i64 %76, %78
  %80 = load i32, i32* @AR_PHY_TX_GAIN, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %75, i64 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %74
  %84 = load i64, i64* %4, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %4, align 8
  br label %58

86:                                               ; preds = %58
  br label %87

87:                                               ; preds = %21, %86, %48
  ret void
}

declare dso_local i64 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @MS(i64, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
