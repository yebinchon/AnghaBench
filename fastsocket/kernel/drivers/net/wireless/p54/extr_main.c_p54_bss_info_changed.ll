; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_6__, %struct.p54_common* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.p54_common = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i32, i32, i32, i64, i64, i32, i32 }

@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@P54_SCAN_EXIT = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @p54_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.p54_common*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 1
  %12 = load %struct.p54_common*, %struct.p54_common** %11, align 8
  store %struct.p54_common* %12, %struct.p54_common** %9, align 8
  %13 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %14 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %13, i32 0, i32 3
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %4
  %21 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %22 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = call i32 @memcpy(i32 %23, i32 %26, i32 %27)
  %29 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %30 = call i32 @p54_setup_mac(%struct.p54_common* %29)
  br label %31

31:                                               ; preds = %20, %4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %38 = load i32, i32* @P54_SCAN_EXIT, align 4
  %39 = call i32 @p54_scan(%struct.p54_common* %37, i32 %38, i32 0)
  %40 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %41 = call i32 @p54_setup_mac(%struct.p54_common* %40)
  %42 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %44 = call i32 @p54_beacon_update(%struct.p54_common* %42, %struct.ieee80211_vif* %43)
  %45 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %46 = call i32 @p54_set_edcf(%struct.p54_common* %45)
  br label %47

47:                                               ; preds = %36, %31
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %50 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %59 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %61 = call i32 @p54_set_edcf(%struct.p54_common* %60)
  br label %62

62:                                               ; preds = %54, %47
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %62
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %69 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %67
  %78 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %79 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %80, 4
  %82 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %83 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %90

84:                                               ; preds = %67
  %85 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %86 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %89 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %84, %77
  %91 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %92 = call i32 @p54_setup_mac(%struct.p54_common* %91)
  %93 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %94 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp sge i32 %95, 1280
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %99 = load i32, i32* @P54_SCAN_EXIT, align 4
  %100 = call i32 @p54_scan(%struct.p54_common* %98, i32 %99, i32 0)
  br label %101

101:                                              ; preds = %97, %90
  br label %102

102:                                              ; preds = %101, %62
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %136

107:                                              ; preds = %102
  %108 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %109 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %107
  %113 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %114 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %117 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %116, i32 0, i32 4
  store i64 %115, i64* %117, align 8
  %118 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %119 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %122 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = mul nsw i32 %120, %123
  %125 = mul nsw i32 %124, 5
  %126 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %127 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %129 = call i32 @p54_setup_mac(%struct.p54_common* %128)
  br label %135

130:                                              ; preds = %107
  %131 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %132 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %131, i32 0, i32 2
  store i32 500, i32* %132, align 8
  %133 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %134 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %133, i32 0, i32 4
  store i64 0, i64* %134, align 8
  br label %135

135:                                              ; preds = %130, %112
  br label %136

136:                                              ; preds = %135, %102
  %137 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %138 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %137, i32 0, i32 3
  %139 = call i32 @mutex_unlock(i32* %138)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @p54_setup_mac(%struct.p54_common*) #1

declare dso_local i32 @p54_scan(%struct.p54_common*, i32, i32) #1

declare dso_local i32 @p54_beacon_update(%struct.p54_common*, %struct.ieee80211_vif*) #1

declare dso_local i32 @p54_set_edcf(%struct.p54_common*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
