; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_stop_bt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_stop_bt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32, i32 }

@AR_BTCOEX_CTRL = common dso_local global i32 0, align 4
@MCI_BT_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_mci_stop_bt(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_hw_mci*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.ath9k_hw_mci* %8, %struct.ath9k_hw_mci** %5, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = call i32 @ar9003_mci_disable_interrupt(%struct.ath_hw* %9)
  %11 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %12 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %20 = call i32 @ar9003_mci_mute_bt(%struct.ath_hw* %19)
  %21 = call i32 @udelay(i32 20)
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = load i32, i32* @AR_BTCOEX_CTRL, align 4
  %24 = call i32 @REG_WRITE(%struct.ath_hw* %22, i32 %23, i32 0)
  br label %25

25:                                               ; preds = %18, %15, %2
  %26 = load i32, i32* @MCI_BT_SLEEP, align 4
  %27 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %28 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %30 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  ret void
}

declare dso_local i32 @ar9003_mci_disable_interrupt(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_mute_bt(%struct.ath_hw*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
