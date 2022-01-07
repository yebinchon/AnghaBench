; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_start_nfcal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_start_nfcal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_ENABLE_NF = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_NO_UPDATE_NF = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_NF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_start_nfcal(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %6 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %16 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %17 = load i32, i32* @AR_PHY_AGC_CONTROL_ENABLE_NF, align 4
  %18 = call i32 @REG_SET_BIT(%struct.ath_hw* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %24 = load i32, i32* @AR_PHY_AGC_CONTROL_NO_UPDATE_NF, align 4
  %25 = call i32 @REG_CLR_BIT(%struct.ath_hw* %22, i32 %23, i32 %24)
  br label %31

26:                                               ; preds = %14
  %27 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %28 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %29 = load i32, i32* @AR_PHY_AGC_CONTROL_NO_UPDATE_NF, align 4
  %30 = call i32 @REG_SET_BIT(%struct.ath_hw* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %33 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %34 = load i32, i32* @AR_PHY_AGC_CONTROL_NF, align 4
  %35 = call i32 @REG_SET_BIT(%struct.ath_hw* %32, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
