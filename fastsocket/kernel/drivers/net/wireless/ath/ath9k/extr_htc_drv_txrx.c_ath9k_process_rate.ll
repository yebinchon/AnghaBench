; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_process_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_process_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_rx_status = type { i32, i32 }

@RX_FLAG_HT = common dso_local global i32 0, align 4
@ATH9K_RX_2040 = common dso_local global i32 0, align 4
@RX_FLAG_40MHZ = common dso_local global i32 0, align 4
@ATH9K_RX_GI = common dso_local global i32 0, align 4
@RX_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@RX_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_rx_status*, i32, i32)* @ath9k_process_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_process_rate(%struct.ieee80211_hw* %0, %struct.ieee80211_rx_status* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_rx_status*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_supported_band*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_rx_status* %1, %struct.ieee80211_rx_status** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 128
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %4
  %16 = load i32, i32* @RX_FLAG_HT, align 4
  %17 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ATH9K_RX_2040, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load i32, i32* @RX_FLAG_40MHZ, align 4
  %27 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %25, %15
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @ATH9K_RX_GI, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* @RX_FLAG_SHORT_GI, align 4
  %38 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 127
  %45 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %109

47:                                               ; preds = %4
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %49 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  %55 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %59, i64 %61
  %63 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %62, align 8
  store %struct.ieee80211_supported_band* %63, %struct.ieee80211_supported_band** %9, align 8
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %106, %47
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %67 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %70, label %109

70:                                               ; preds = %64
  %71 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %72 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %70
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %84 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %109

85:                                               ; preds = %70
  %86 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %87 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %85
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %99 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @RX_FLAG_SHORTPRE, align 4
  %101 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %102 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %109

105:                                              ; preds = %85
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %11, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %64

109:                                              ; preds = %42, %81, %96, %64
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
