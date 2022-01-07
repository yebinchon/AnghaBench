; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_calculate_summary_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_calculate_summary_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, i32, %struct.ath_hw* }
%struct.ath_hw = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_vif_iter_data = type { i64, i64, i64, i64, i64, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@ATH9K_INT_TSFOOR = common dso_local global i32 0, align 4
@SC_OP_PRIM_STA_VIF = common dso_local global i32 0, align 4
@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@ath9k_sta_vif_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @ath9k_calculate_summary_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_calculate_summary_state(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca %struct.ath9k_vif_iter_data, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  store %struct.ath_softc* %12, %struct.ath_softc** %5, align 8
  %13 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 2
  %15 = load %struct.ath_hw*, %struct.ath_hw** %14, align 8
  store %struct.ath_hw* %15, %struct.ath_hw** %6, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %17 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %16)
  store %struct.ath_common* %17, %struct.ath_common** %7, align 8
  %18 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %19 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %23 = call i32 @ath9k_calculate_iter_data(%struct.ieee80211_hw* %21, %struct.ieee80211_vif* %22, %struct.ath9k_vif_iter_data* %8)
  %24 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %25 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %8, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ETH_ALEN, align 4
  %30 = call i32 @memcpy(i32 %26, i32 %28, i32 %29)
  %31 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %32 = call i32 @ath_hw_setbssidmask(%struct.ath_common* %31)
  %33 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %8, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %38 = call i32 @ath9k_hw_set_tsfadjust(%struct.ath_hw* %37, i32 1)
  %39 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %40 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %41 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %76

42:                                               ; preds = %2
  %43 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %44 = call i32 @ath9k_hw_set_tsfadjust(%struct.ath_hw* %43, i32 0)
  %45 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %8, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %50 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %51 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %75

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %8, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %58 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %59 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %74

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %8, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %66 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %67 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %73

68:                                               ; preds = %60
  %69 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %72 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %64
  br label %74

74:                                               ; preds = %73, %56
  br label %75

75:                                               ; preds = %74, %48
  br label %76

76:                                               ; preds = %75, %36
  %77 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %78 = call i32 @ath9k_hw_setopmode(%struct.ath_hw* %77)
  %79 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %8, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %8, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %80, %82
  %84 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %8, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %83, %85
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %76
  %89 = load i32, i32* @ATH9K_INT_TSFOOR, align 4
  %90 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %91 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %101

94:                                               ; preds = %76
  %95 = load i32, i32* @ATH9K_INT_TSFOOR, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %98 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %94, %88
  %102 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %103 = call i32 @ath9k_hw_set_interrupts(%struct.ath_hw* %102)
  %104 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %105 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %101
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = load i32, i32* @SC_OP_PRIM_STA_VIF, align 4
  %116 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %117 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %116, i32 0, i32 1
  %118 = call i64 @test_bit(i32 %115, i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %114
  %121 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %122 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %125 = load i32, i32* @ath9k_sta_vif_iter, align 4
  %126 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %127 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %123, i32 %124, i32 %125, %struct.ath_softc* %126)
  br label %128

128:                                              ; preds = %120, %114, %110, %101
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_calculate_iter_data(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ath9k_vif_iter_data*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ath_hw_setbssidmask(%struct.ath_common*) #1

declare dso_local i32 @ath9k_hw_set_tsfadjust(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_setopmode(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_set_interrupts(%struct.ath_hw*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
