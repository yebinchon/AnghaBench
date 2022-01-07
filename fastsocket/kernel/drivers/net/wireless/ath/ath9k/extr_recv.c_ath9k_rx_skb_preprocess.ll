; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath9k_rx_skb_preprocess.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath9k_rx_skb_preprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_8__, %struct.ath_hw*, %struct.ieee80211_hw* }
%struct.TYPE_8__ = type { i32 }
%struct.ath_hw = type { i64 }
%struct.ieee80211_hw = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ath_rx_status = type { i32, i64, i32, i64 }
%struct.ieee80211_rx_status = type { i32, i32, i64, i32, i32 }
%struct.ath_common = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RX_FLAG_MACTIME_END = common dso_local global i32 0, align 4
@RX_FLAG_NO_SIGNAL_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, %struct.ieee80211_hdr*, %struct.ath_rx_status*, %struct.ieee80211_rx_status*, i32*)* @ath9k_rx_skb_preprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_rx_skb_preprocess(%struct.ath_softc* %0, %struct.ieee80211_hdr* %1, %struct.ath_rx_status* %2, %struct.ieee80211_rx_status* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_softc*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.ath_rx_status*, align 8
  %10 = alloca %struct.ieee80211_rx_status*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ieee80211_hw*, align 8
  %13 = alloca %struct.ath_hw*, align 8
  %14 = alloca %struct.ath_common*, align 8
  %15 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %7, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %8, align 8
  store %struct.ath_rx_status* %2, %struct.ath_rx_status** %9, align 8
  store %struct.ieee80211_rx_status* %3, %struct.ieee80211_rx_status** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 2
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %17, align 8
  store %struct.ieee80211_hw* %18, %struct.ieee80211_hw** %12, align 8
  %19 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 1
  %21 = load %struct.ath_hw*, %struct.ath_hw** %20, align 8
  store %struct.ath_hw* %21, %struct.ath_hw** %13, align 8
  %22 = load %struct.ath_hw*, %struct.ath_hw** %13, align 8
  %23 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %22)
  store %struct.ath_common* %23, %struct.ath_common** %14, align 8
  %24 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %25 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %15, align 4
  %28 = load %struct.ath_rx_status*, %struct.ath_rx_status** %9, align 8
  %29 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %32 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %5
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %123

39:                                               ; preds = %5
  %40 = load %struct.ath_common*, %struct.ath_common** %14, align 8
  %41 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %42 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %43 = load %struct.ath_rx_status*, %struct.ath_rx_status** %9, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @ath9k_rx_accept(%struct.ath_common* %40, %struct.ieee80211_hdr* %41, %struct.ieee80211_rx_status* %42, %struct.ath_rx_status* %43, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %123

50:                                               ; preds = %39
  %51 = load %struct.ath_rx_status*, %struct.ath_rx_status** %9, align 8
  %52 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %123

56:                                               ; preds = %50
  %57 = load %struct.ath_common*, %struct.ath_common** %14, align 8
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %12, align 8
  %59 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %60 = load %struct.ath_rx_status*, %struct.ath_rx_status** %9, align 8
  %61 = call i32 @ath9k_process_rssi(%struct.ath_common* %57, %struct.ieee80211_hw* %58, %struct.ieee80211_hdr* %59, %struct.ath_rx_status* %60)
  %62 = load %struct.ath_common*, %struct.ath_common** %14, align 8
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %12, align 8
  %64 = load %struct.ath_rx_status*, %struct.ath_rx_status** %9, align 8
  %65 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %66 = call i64 @ath9k_process_rate(%struct.ath_common* %62, %struct.ieee80211_hw* %63, %struct.ath_rx_status* %64, %struct.ieee80211_rx_status* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %123

71:                                               ; preds = %56
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %12, align 8
  %73 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %80 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %12, align 8
  %82 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %89 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load %struct.ath_hw*, %struct.ath_hw** %13, align 8
  %91 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ath_rx_status*, %struct.ath_rx_status** %9, align 8
  %94 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %98 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  %99 = load %struct.ath_rx_status*, %struct.ath_rx_status** %9, align 8
  %100 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %103 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @RX_FLAG_MACTIME_END, align 4
  %105 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %106 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load %struct.ath_rx_status*, %struct.ath_rx_status** %9, align 8
  %110 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %71
  %114 = load i32, i32* @RX_FLAG_NO_SIGNAL_VAL, align 4
  %115 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %116 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %71
  %120 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %121 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i32 0, i32* %122, align 8
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %119, %68, %55, %47, %36
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_rx_accept(%struct.ath_common*, %struct.ieee80211_hdr*, %struct.ieee80211_rx_status*, %struct.ath_rx_status*, i32*) #1

declare dso_local i32 @ath9k_process_rssi(%struct.ath_common*, %struct.ieee80211_hw*, %struct.ieee80211_hdr*, %struct.ath_rx_status*) #1

declare dso_local i64 @ath9k_process_rate(%struct.ath_common*, %struct.ieee80211_hw*, %struct.ath_rx_status*, %struct.ieee80211_rx_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
