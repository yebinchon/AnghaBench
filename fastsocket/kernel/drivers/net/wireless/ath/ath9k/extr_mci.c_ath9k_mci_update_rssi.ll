; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mci.c_ath9k_mci_update_rssi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mci.c_ath9k_mci_update_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hw*, %struct.ath_btcoex }
%struct.ath_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32 }
%struct.ath_btcoex = type { i32 }

@ATH_MCI_CONFIG_CONCUR_TX = common dso_local global i32 0, align 4
@ATH_MCI_CONCUR_TX_SWITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_mci_update_rssi(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_btcoex*, align 8
  %5 = alloca %struct.ath9k_hw_mci*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 0
  %8 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  store %struct.ath_hw* %8, %struct.ath_hw** %3, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 1
  store %struct.ath_btcoex* %10, %struct.ath_btcoex** %4, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 0
  %13 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.ath9k_hw_mci* %15, %struct.ath9k_hw_mci** %5, align 8
  %16 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %17 = call i32 @ath9k_mci_stomp_audio(%struct.ath_softc* %16)
  %18 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %19 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ATH_MCI_CONFIG_CONCUR_TX, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %74

25:                                               ; preds = %1
  %26 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %27 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 40
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load %struct.ath_btcoex*, %struct.ath_btcoex** %4, align 8
  %33 = getelementptr inbounds %struct.ath_btcoex, %struct.ath_btcoex* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.ath_btcoex*, %struct.ath_btcoex** %4, align 8
  %38 = getelementptr inbounds %struct.ath_btcoex, %struct.ath_btcoex* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.ath_btcoex*, %struct.ath_btcoex** %4, align 8
  %41 = getelementptr inbounds %struct.ath_btcoex, %struct.ath_btcoex* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @ATH_MCI_CONCUR_TX_SWITCH, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.ath_btcoex*, %struct.ath_btcoex** %4, align 8
  %48 = getelementptr inbounds %struct.ath_btcoex, %struct.ath_btcoex* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %50 = call i32 @ath9k_mci_set_txpower(%struct.ath_softc* %49, i32 0, i32 1)
  br label %51

51:                                               ; preds = %46, %39
  br label %74

52:                                               ; preds = %25
  %53 = load %struct.ath_btcoex*, %struct.ath_btcoex** %4, align 8
  %54 = getelementptr inbounds %struct.ath_btcoex, %struct.ath_btcoex* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.ath_btcoex*, %struct.ath_btcoex** %4, align 8
  %59 = getelementptr inbounds %struct.ath_btcoex, %struct.ath_btcoex* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.ath_btcoex*, %struct.ath_btcoex** %4, align 8
  %62 = getelementptr inbounds %struct.ath_btcoex, %struct.ath_btcoex* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @ATH_MCI_CONCUR_TX_SWITCH, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp sle i32 %64, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.ath_btcoex*, %struct.ath_btcoex** %4, align 8
  %70 = getelementptr inbounds %struct.ath_btcoex, %struct.ath_btcoex* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  %71 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %72 = call i32 @ath9k_mci_set_txpower(%struct.ath_softc* %71, i32 0, i32 0)
  br label %73

73:                                               ; preds = %68, %60
  br label %74

74:                                               ; preds = %24, %73, %51
  ret void
}

declare dso_local i32 @ath9k_mci_stomp_audio(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_mci_set_txpower(%struct.ath_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
