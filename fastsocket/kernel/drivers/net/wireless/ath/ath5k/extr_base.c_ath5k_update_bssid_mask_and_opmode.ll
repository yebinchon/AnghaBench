; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_update_bssid_mask_and_opmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_update_bssid_mask_and_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath5k_vif_iter_data = type { i32, i32, i32, i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@ATH5K_DEBUG_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"mode setup opmode %d (%s)\0A\00", align 1
@AR5K_RX_FILTER_PROM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"RX filter 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_update_bssid_mask_and_opmode(%struct.ath5k_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath5k_vif_iter_data, align 4
  %7 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %9 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %8)
  store %struct.ath_common* %9, %struct.ath_common** %5, align 8
  %10 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %11 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %6, i32 0, i32 6
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %6, i32 0, i32 5
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = call i32 @memset(i32* %14, i32 255, i32 %15)
  %17 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %6, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %6, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  %20 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %6, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %6, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %23 = icmp ne %struct.ieee80211_vif* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %29 = call i32 @ath5k_vif_iter(%struct.ath5k_vif_iter_data* %6, i32 %27, %struct.ieee80211_vif* %28)
  br label %30

30:                                               ; preds = %24, %2
  %31 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %32 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %35 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %33, i32 %34, i32 (%struct.ath5k_vif_iter_data*, i32, %struct.ieee80211_vif*)* @ath5k_vif_iter, %struct.ath5k_vif_iter_data* %6)
  %36 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %37 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %6, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @memcpy(i32 %38, i32 %40, i32 %41)
  %43 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %6, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %46 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %48 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %30
  %53 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %54 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %55 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %30
  %57 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %58 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %59 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ath5k_hw_set_opmode(%struct.ath5k_hw* %57, i32 %60)
  %62 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %63 = load i32, i32* @ATH5K_DEBUG_MODE, align 4
  %64 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %65 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %68 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ath_opmode_to_string(i32 %69)
  %71 = call i32 (%struct.ath5k_hw*, i32, i8*, i32, ...) @ATH5K_DBG(%struct.ath5k_hw* %62, i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %70)
  %72 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %6, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %56
  %76 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %6, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %81 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %6, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ath5k_hw_set_lladdr(%struct.ath5k_hw* %80, i32 %82)
  br label %84

84:                                               ; preds = %79, %75, %56
  %85 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %86 = call i64 @ath5k_hw_hasbssidmask(%struct.ath5k_hw* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %90 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %91 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ath5k_hw_set_bssid_mask(%struct.ath5k_hw* %89, i32 %92)
  br label %94

94:                                               ; preds = %88, %84
  %95 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %6, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i32, i32* @AR5K_RX_FILTER_PROM, align 4
  %100 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %101 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %94
  %105 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %106 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %7, align 4
  %108 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @ath5k_hw_set_rx_filter(%struct.ath5k_hw* %108, i32 %109)
  %111 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %112 = load i32, i32* @ATH5K_DEBUG_MODE, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 (%struct.ath5k_hw*, i32, i8*, i32, ...) @ATH5K_DBG(%struct.ath5k_hw* %111, i32 %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  ret void
}

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ath5k_vif_iter(%struct.ath5k_vif_iter_data*, i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32 (%struct.ath5k_vif_iter_data*, i32, %struct.ieee80211_vif*)*, %struct.ath5k_vif_iter_data*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ath5k_hw_set_opmode(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*, i32, ...) #1

declare dso_local i32 @ath_opmode_to_string(i32) #1

declare dso_local i32 @ath5k_hw_set_lladdr(%struct.ath5k_hw*, i32) #1

declare dso_local i64 @ath5k_hw_hasbssidmask(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_set_bssid_mask(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_set_rx_filter(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
