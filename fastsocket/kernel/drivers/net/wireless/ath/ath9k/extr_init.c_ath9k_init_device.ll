; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ieee80211_hw*, %struct.TYPE_2__, %struct.ath_hw* }
%struct.ieee80211_hw = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ath_hw = type { i32 }
%struct.ath_bus_ops = type { i32 }
%struct.ath_common = type { %struct.ath_regulatory }
%struct.ath_regulatory = type { i32 }

@ath9k_reg_notifier = common dso_local global i32 0, align 4
@ATH_TXBUF = common dso_local global i32 0, align 4
@ATH_RXBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unable to create debugfs files\0A\00", align 1
@IEEE80211_TPT_LEDTRIG_FL_RADIO = common dso_local global i32 0, align 4
@ath9k_tpt_blink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_init_device(i32 %0, %struct.ath_softc* %1, %struct.ath_bus_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ath_bus_ops*, align 8
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.ath_common*, align 8
  %10 = alloca %struct.ath_hw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ath_regulatory*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.ath_softc* %1, %struct.ath_softc** %6, align 8
  store %struct.ath_bus_ops* %2, %struct.ath_bus_ops** %7, align 8
  %13 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 0
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %14, align 8
  store %struct.ieee80211_hw* %15, %struct.ieee80211_hw** %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %18 = load %struct.ath_bus_ops*, %struct.ath_bus_ops** %7, align 8
  %19 = call i32 @ath9k_init_softc(i32 %16, %struct.ath_softc* %17, %struct.ath_bus_ops* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %111

24:                                               ; preds = %3
  %25 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %26 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %25, i32 0, i32 2
  %27 = load %struct.ath_hw*, %struct.ath_hw** %26, align 8
  store %struct.ath_hw* %27, %struct.ath_hw** %10, align 8
  %28 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %29 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %28)
  store %struct.ath_common* %29, %struct.ath_common** %9, align 8
  %30 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %32 = call i32 @ath9k_set_hw_capab(%struct.ath_softc* %30, %struct.ieee80211_hw* %31)
  %33 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %34 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %33, i32 0, i32 0
  %35 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %36 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %35, i32 0, i32 0
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %36, align 8
  %38 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ath9k_reg_notifier, align 4
  %41 = call i32 @ath_regd_init(%struct.ath_regulatory* %34, i32 %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %24
  br label %107

45:                                               ; preds = %24
  %46 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %47 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %46, i32 0, i32 0
  store %struct.ath_regulatory* %47, %struct.ath_regulatory** %12, align 8
  %48 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %49 = load i32, i32* @ATH_TXBUF, align 4
  %50 = call i32 @ath_tx_init(%struct.ath_softc* %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %107

54:                                               ; preds = %45
  %55 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %56 = load i32, i32* @ATH_RXBUF, align 4
  %57 = call i32 @ath_rx_init(%struct.ath_softc* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %107

61:                                               ; preds = %54
  %62 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %63 = call i32 @ath9k_init_txpower_limits(%struct.ath_softc* %62)
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %65 = call i32 @ieee80211_register_hw(%struct.ieee80211_hw* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %104

69:                                               ; preds = %61
  %70 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %71 = call i32 @ath9k_init_debug(%struct.ath_hw* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %76 = call i32 @ath_err(%struct.ath_common* %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %101

77:                                               ; preds = %69
  %78 = load %struct.ath_regulatory*, %struct.ath_regulatory** %12, align 8
  %79 = call i32 @ath_is_world_regd(%struct.ath_regulatory* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %77
  %82 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %83 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ath_regulatory*, %struct.ath_regulatory** %12, align 8
  %86 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @regulatory_hint(i32 %84, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %98

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92, %77
  %94 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %95 = call i32 @ath_init_leds(%struct.ath_softc* %94)
  %96 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %97 = call i32 @ath_start_rfkill_poll(%struct.ath_softc* %96)
  store i32 0, i32* %4, align 4
  br label %111

98:                                               ; preds = %91
  %99 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %100 = call i32 @ath9k_deinit_debug(%struct.ath_softc* %99)
  br label %101

101:                                              ; preds = %98, %74
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %103 = call i32 @ieee80211_unregister_hw(%struct.ieee80211_hw* %102)
  br label %104

104:                                              ; preds = %101, %68
  %105 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %106 = call i32 @ath_rx_cleanup(%struct.ath_softc* %105)
  br label %107

107:                                              ; preds = %104, %60, %53, %44
  %108 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %109 = call i32 @ath9k_deinit_softc(%struct.ath_softc* %108)
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %107, %93, %22
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @ath9k_init_softc(i32, %struct.ath_softc*, %struct.ath_bus_ops*) #1

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_set_hw_capab(%struct.ath_softc*, %struct.ieee80211_hw*) #1

declare dso_local i32 @ath_regd_init(%struct.ath_regulatory*, i32, i32) #1

declare dso_local i32 @ath_tx_init(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath_rx_init(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath9k_init_txpower_limits(%struct.ath_softc*) #1

declare dso_local i32 @ieee80211_register_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @ath9k_init_debug(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath_is_world_regd(%struct.ath_regulatory*) #1

declare dso_local i32 @regulatory_hint(i32, i32) #1

declare dso_local i32 @ath_init_leds(%struct.ath_softc*) #1

declare dso_local i32 @ath_start_rfkill_poll(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_deinit_debug(%struct.ath_softc*) #1

declare dso_local i32 @ieee80211_unregister_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @ath_rx_cleanup(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_deinit_softc(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
