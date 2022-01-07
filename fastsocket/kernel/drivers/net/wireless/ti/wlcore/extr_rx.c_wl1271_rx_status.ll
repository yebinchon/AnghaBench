; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_rx.c_wl1271_rx_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_rx.c_wl1271_rx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i64 }
%struct.wl1271_rx_descriptor = type { i32, i64, i32, i32, i64, i64 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i64, i32 }

@WL1271_RX_DESC_BAND_MASK = common dso_local global i32 0, align 4
@WL1271_RX_DESC_BAND_BG = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@RX_FLAG_HT = common dso_local global i32 0, align 4
@WL1271_RX_DESC_ENCRYPT_MASK = common dso_local global i32 0, align 4
@WL1271_RX_DESC_STATUS_MASK = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@WL1271_RX_DESC_MIC_FAIL = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Michael MIC error. Desc: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.wl1271_rx_descriptor*, %struct.ieee80211_rx_status*, i32)* @wl1271_rx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_rx_status(%struct.wl1271* %0, %struct.wl1271_rx_descriptor* %1, %struct.ieee80211_rx_status* %2, i32 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl1271_rx_descriptor*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl1271_rx_descriptor* %1, %struct.wl1271_rx_descriptor** %6, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %11 = call i32 @memset(%struct.ieee80211_rx_status* %10, i32 0, i32 32)
  %12 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %6, align 8
  %13 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @WL1271_RX_DESC_BAND_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @WL1271_RX_DESC_BAND_BG, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  %21 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %25 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %29 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %6, align 8
  %30 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wlcore_rate_to_idx(%struct.wl1271* %28, i64 %31, i32 %34)
  %36 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %6, align 8
  %39 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %42 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sle i64 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %27
  %46 = load i32, i32* @RX_FLAG_HT, align 4
  %47 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %48 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %27
  %52 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %6, align 8
  %53 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  %57 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %6, align 8
  %58 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %6, align 8
  %61 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = ashr i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %59, %64
  %66 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %67 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %6, align 8
  %69 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %72 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ieee80211_channel_to_frequency(i64 %70, i32 %73)
  %75 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %76 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %6, align 8
  %78 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @WL1271_RX_DESC_ENCRYPT_MASK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %112

83:                                               ; preds = %51
  %84 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %6, align 8
  %85 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @WL1271_RX_DESC_STATUS_MASK, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %90 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %95 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @WL1271_RX_DESC_MIC_FAIL, align 4
  %100 = and i32 %98, %99
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %83
  %104 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %105 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %106 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @wl1271_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %103, %83
  br label %112

112:                                              ; preds = %111, %51
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %117 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %6, align 8
  %118 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %122 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @wlcore_set_pending_regdomain_ch(%struct.wl1271* %116, i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %115, %112
  ret void
}

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @wlcore_rate_to_idx(%struct.wl1271*, i64, i32) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @wlcore_set_pending_regdomain_ch(%struct.wl1271*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
