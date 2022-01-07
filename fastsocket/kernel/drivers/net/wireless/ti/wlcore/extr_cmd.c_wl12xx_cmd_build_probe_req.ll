; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_build_probe_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_build_probe_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i32, i32, i32, i32 }
%struct.wl12xx_vif = type { i32* }
%struct.ieee80211_vif = type { i32 }
%struct.sk_buff = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DEBUG_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"PROBE REQ: \00", align 1
@WLCORE_QUIRK_DUAL_PROBE_TMPL = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_cmd_build_probe_req(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64 %2, i64 %3, i64* %4, i64 %5, i64* %6, i64 %7, i32 %8) #0 {
  %10 = alloca %struct.wl1271*, align 8
  %11 = alloca %struct.wl12xx_vif*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ieee80211_vif*, align 8
  %20 = alloca %struct.sk_buff*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %10, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64* %4, i64** %14, align 8
  store i64 %5, i64* %15, align 8
  store i64* %6, i64** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32 %8, i32* %18, align 4
  %25 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %11, align 8
  %26 = call %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %25)
  store %struct.ieee80211_vif* %26, %struct.ieee80211_vif** %19, align 8
  %27 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %28 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %23, align 4
  %30 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %31 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %24, align 4
  %33 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %34 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %19, align 8
  %37 = load i64*, i64** %14, align 8
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* %17, align 8
  %40 = call %struct.sk_buff* @ieee80211_probereq_get(i32 %35, %struct.ieee80211_vif* %36, i64* %37, i64 %38, i64 %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %20, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %9
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %21, align 4
  br label %118

46:                                               ; preds = %9
  %47 = load i64, i64* %17, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %51 = load i64, i64* %17, align 8
  %52 = call i32 @skb_put(%struct.sk_buff* %50, i64 %51)
  %53 = load i64*, i64** %16, align 8
  %54 = load i64, i64* %17, align 8
  %55 = call i32 @memcpy(i32 %52, i64* %53, i64 %54)
  br label %56

56:                                               ; preds = %49, %46
  %57 = load i32, i32* @DEBUG_SCAN, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @wl1271_dump(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %63)
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %56
  %68 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %69 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @WLCORE_QUIRK_DUAL_PROBE_TMPL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %76 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %23, align 4
  %78 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %79 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %24, align 4
  br label %81

81:                                               ; preds = %74, %67, %56
  %82 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %83 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %11, align 8
  %84 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %13, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @wl1271_tx_min_rate_get(%struct.wl1271* %82, i32 %88)
  store i32 %89, i32* %22, align 4
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %81
  %94 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i32, i32* %23, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %22, align 4
  %104 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %94, i64 %95, i32 %96, i32 %99, i32 %102, i32 0, i32 %103)
  store i32 %104, i32* %21, align 4
  br label %117

105:                                              ; preds = %81
  %106 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i32, i32* %24, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %22, align 4
  %116 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %106, i64 %107, i32 %108, i32 %111, i32 %114, i32 0, i32 %115)
  store i32 %116, i32* %21, align 4
  br label %117

117:                                              ; preds = %105, %93
  br label %118

118:                                              ; preds = %117, %43
  %119 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %120 = call i32 @dev_kfree_skb(%struct.sk_buff* %119)
  %121 = load i32, i32* %21, align 4
  ret i32 %121
}

declare dso_local %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

declare dso_local %struct.sk_buff* @ieee80211_probereq_get(i32, %struct.ieee80211_vif*, i64*, i64, i64) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @wl1271_dump(i32, i8*, i32, i32) #1

declare dso_local i32 @wl1271_tx_min_rate_get(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_cmd_template_set(%struct.wl1271*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
