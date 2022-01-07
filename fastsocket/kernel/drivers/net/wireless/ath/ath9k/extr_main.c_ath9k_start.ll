; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_5__, %struct.ath_softc* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.ath_softc = type { i32, i32, %struct.ath_hw*, i32 }
%struct.ath_hw = type { i32, i32, i32, i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_channel = type { i32 }

@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Starting driver with initial channel: %d MHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Unable to reset hardware; reset status %d (freq %u MHz)\0A\00", align 1
@ATH9K_INT_TX = common dso_local global i32 0, align 4
@ATH9K_INT_RXEOL = common dso_local global i32 0, align 4
@ATH9K_INT_RXORN = common dso_local global i32 0, align 4
@ATH9K_INT_FATAL = common dso_local global i32 0, align 4
@ATH9K_INT_GLOBAL = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_EDMA = common dso_local global i32 0, align 4
@ATH9K_INT_RXHP = common dso_local global i32 0, align 4
@ATH9K_INT_RXLP = common dso_local global i32 0, align 4
@ATH9K_INT_BB_WATCHDOG = common dso_local global i32 0, align 4
@ATH9K_INT_RX = common dso_local global i32 0, align 4
@ATH9K_INT_GTT = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_HT = common dso_local global i32 0, align 4
@ATH9K_INT_CST = common dso_local global i32 0, align 4
@SC_OP_INVALID = common dso_local global i32 0, align 4
@AR_GPIO_OUTPUT_MUX_AS_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @ath9k_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.ath9k_channel*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 1
  %11 = load %struct.ath_softc*, %struct.ath_softc** %10, align 8
  store %struct.ath_softc* %11, %struct.ath_softc** %3, align 8
  %12 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %12, i32 0, i32 2
  %14 = load %struct.ath_hw*, %struct.ath_hw** %13, align 8
  store %struct.ath_hw* %14, %struct.ath_hw** %4, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %16 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %15)
  store %struct.ath_common* %16, %struct.ath_common** %5, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %20, align 8
  store %struct.ieee80211_channel* %21, %struct.ieee80211_channel** %6, align 8
  %22 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %23 = load i32, i32* @CONFIG, align 4
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ath_dbg(%struct.ath_common* %22, i32 %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %29 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %28)
  %30 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %34 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %35 = call %struct.ath9k_channel* @ath9k_cmn_get_curchannel(%struct.ieee80211_hw* %33, %struct.ath_hw* %34)
  store %struct.ath9k_channel* %35, %struct.ath9k_channel** %7, align 8
  %36 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %37 = call i32 @ath9k_hw_configpcipowersave(%struct.ath_hw* %36, i32 0)
  %38 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %38, i32 0, i32 1
  %40 = call i32 @spin_lock_bh(i32* %39)
  %41 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %42 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %41, i32 0, i32 6
  %43 = call i32 @atomic_set(i32* %42, i32 -1)
  %44 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %45 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %46 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ath9k_hw_reset(%struct.ath_hw* %44, %struct.ath9k_channel* %45, i32 %48, i32 0)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %1
  %53 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %56 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ath_err(%struct.ath_common* %53, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57)
  %59 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %60 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %52, %1
  %62 = load i32, i32* @ATH9K_INT_TX, align 4
  %63 = load i32, i32* @ATH9K_INT_RXEOL, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @ATH9K_INT_RXORN, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @ATH9K_INT_FATAL, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @ATH9K_INT_GLOBAL, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %72 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %74 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @ATH9K_HW_CAP_EDMA, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %61
  %81 = load i32, i32* @ATH9K_INT_RXHP, align 4
  %82 = load i32, i32* @ATH9K_INT_RXLP, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @ATH9K_INT_BB_WATCHDOG, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %87 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %96

90:                                               ; preds = %61
  %91 = load i32, i32* @ATH9K_INT_RX, align 4
  %92 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %93 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %90, %80
  %97 = load i32, i32* @ATH9K_INT_GTT, align 4
  %98 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %99 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %103 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ATH9K_HW_CAP_HT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %96
  %110 = load i32, i32* @ATH9K_INT_CST, align 4
  %111 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %112 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %109, %96
  %116 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %117 = call i32 @ath_mci_enable(%struct.ath_softc* %116)
  %118 = load i32, i32* @SC_OP_INVALID, align 4
  %119 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %120 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %119, i32 0, i32 3
  %121 = call i32 @clear_bit(i32 %118, i32* %120)
  %122 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %123 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %122, i32 0, i32 2
  %124 = load %struct.ath_hw*, %struct.ath_hw** %123, align 8
  %125 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %124, i32 0, i32 2
  store i32 0, i32* %125, align 8
  %126 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %127 = call i32 @ath_complete_reset(%struct.ath_softc* %126, i32 0)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %115
  %130 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %131 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %130, i32 0, i32 0
  store i32 0, i32* %131, align 8
  br label %132

132:                                              ; preds = %129, %115
  %133 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %134 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp sge i64 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %132
  %138 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %139 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %140 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_OUTPUT, align 4
  %143 = call i32 @ath9k_hw_cfg_output(%struct.ath_hw* %138, i64 %141, i32 %142)
  %144 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %145 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %146 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @ath9k_hw_set_gpio(%struct.ath_hw* %144, i64 %147, i32 0)
  br label %149

149:                                              ; preds = %137, %132
  %150 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %151 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %150, i32 0, i32 2
  %152 = load %struct.ath_hw*, %struct.ath_hw** %151, align 8
  %153 = call i32 @ath9k_cmn_init_crypto(%struct.ath_hw* %152)
  %154 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %155 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %154, i32 0, i32 1
  %156 = call i32 @spin_unlock_bh(i32* %155)
  %157 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %158 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %157, i32 0, i32 0
  %159 = call i32 @mutex_unlock(i32* %158)
  %160 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %161 = call i32 @ath9k_ps_restore(%struct.ath_softc* %160)
  ret i32 0
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ath9k_channel* @ath9k_cmn_get_curchannel(%struct.ieee80211_hw*, %struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_configpcipowersave(%struct.ath_hw*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ath9k_hw_reset(%struct.ath_hw*, %struct.ath9k_channel*, i32, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32, i32) #1

declare dso_local i32 @ath_mci_enable(%struct.ath_softc*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ath_complete_reset(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath9k_hw_cfg_output(%struct.ath_hw*, i64, i32) #1

declare dso_local i32 @ath9k_hw_set_gpio(%struct.ath_hw*, i64, i32) #1

declare dso_local i32 @ath9k_cmn_init_crypto(%struct.ath_hw*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
