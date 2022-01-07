; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath9k_process_rssi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath9k_process_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { %struct.ath_hw* }
%struct.ath_hw = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ath_rx_status = type { i32, i32, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@ATH9K_RSSI_BAD = common dso_local global i32 0, align 4
@ATH_RSSI_DUMMY_MARKER = common dso_local global i32 0, align 4
@ATH_RSSI_EP_MULTIPLIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_common*, %struct.ieee80211_hw*, %struct.ieee80211_hdr*, %struct.ath_rx_status*)* @ath9k_process_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_process_rssi(%struct.ath_common* %0, %struct.ieee80211_hw* %1, %struct.ieee80211_hdr* %2, %struct.ath_rx_status* %3) #0 {
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.ath_rx_status*, align 8
  %9 = alloca %struct.ath_softc*, align 8
  %10 = alloca %struct.ath_hw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_common* %0, %struct.ath_common** %5, align 8
  store %struct.ieee80211_hw* %1, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_hdr* %2, %struct.ieee80211_hdr** %7, align 8
  store %struct.ath_rx_status* %3, %struct.ath_rx_status** %8, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.ath_softc*, %struct.ath_softc** %14, align 8
  store %struct.ath_softc* %15, %struct.ath_softc** %9, align 8
  %16 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %17 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %16, i32 0, i32 0
  %18 = load %struct.ath_hw*, %struct.ath_hw** %17, align 8
  store %struct.ath_hw* %18, %struct.ath_hw** %10, align 8
  %19 = load %struct.ath_rx_status*, %struct.ath_rx_status** %8, align 8
  %20 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.ath_rx_status*, %struct.ath_rx_status** %8, align 8
  %23 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %4
  %27 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %34 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %4
  br label %81

39:                                               ; preds = %32, %26
  %40 = load %struct.ath_rx_status*, %struct.ath_rx_status** %8, align 8
  %41 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ATH9K_RSSI_BAD, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load %struct.ath_rx_status*, %struct.ath_rx_status** %8, align 8
  %47 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %52 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ath_rx_status*, %struct.ath_rx_status** %8, align 8
  %55 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ATH_RSSI_LPF(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %50, %45, %39
  %59 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %60 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @ATH_RSSI_DUMMY_MARKER, align 4
  %64 = icmp ne i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @likely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @ATH_RSSI_EP_MULTIPLIER, align 4
  %71 = call i32 @ATH_EP_RND(i32 %69, i32 %70)
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %68, %58
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %79 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  br label %81

81:                                               ; preds = %76, %38
  ret void
}

declare dso_local i32 @ATH_RSSI_LPF(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ATH_EP_RND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
