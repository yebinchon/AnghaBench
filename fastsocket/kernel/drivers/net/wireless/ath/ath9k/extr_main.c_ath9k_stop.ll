; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, %struct.ath_hw* }
%struct.TYPE_2__ = type { i32* }
%struct.ath_hw = type { i64, i32, i64, i32 }
%struct.ath_common = type { i32 }

@SC_OP_INVALID = common dso_local global i32 0, align 4
@ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Device not present\0A\00", align 1
@ATH9K_INT_GLOBAL = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Driver halt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @ath9k_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  store %struct.ath_softc* %9, %struct.ath_softc** %3, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 9
  %12 = load %struct.ath_hw*, %struct.ath_hw** %11, align 8
  store %struct.ath_hw* %12, %struct.ath_hw** %4, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %5, align 8
  %15 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %19 = call i32 @ath_cancel_work(%struct.ath_softc* %18)
  %20 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %20, i32 0, i32 8
  %22 = call i32 @del_timer_sync(i32* %21)
  %23 = load i32, i32* @SC_OP_INVALID, align 4
  %24 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %24, i32 0, i32 2
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %30 = load i32, i32* @ANY, align 4
  %31 = call i32 @ath_dbg(%struct.ath_common* %29, i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  br label %144

35:                                               ; preds = %1
  %36 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %37 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %36)
  %38 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %38, i32 0, i32 3
  %40 = call i32 @spin_lock_bh(i32* %39)
  %41 = load i32, i32* @ATH9K_INT_GLOBAL, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %44 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %48 = call i32 @ath9k_hw_disable_interrupts(%struct.ath_hw* %47)
  %49 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %49, i32 0, i32 3
  %51 = call i32 @spin_unlock_bh(i32* %50)
  %52 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @synchronize_irq(i32 %54)
  %56 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %56, i32 0, i32 6
  %58 = call i32 @tasklet_kill(i32* %57)
  %59 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %60 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %59, i32 0, i32 5
  %61 = call i32 @tasklet_kill(i32* %60)
  %62 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %63 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %6, align 4
  %65 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %68 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %67, i32 0, i32 3
  %69 = call i32 @spin_lock_bh(i32* %68)
  %70 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %71 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %35
  %75 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %76 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %77 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @ath9k_hw_set_gpio(%struct.ath_hw* %75, i64 %78, i32 1)
  %80 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %81 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %82 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @ath9k_hw_cfg_gpio_input(%struct.ath_hw* %80, i64 %83)
  br label %85

85:                                               ; preds = %74, %35
  %86 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %87 = call i32 @ath_prepare_reset(%struct.ath_softc* %86)
  %88 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %89 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %85
  %94 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %95 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @dev_kfree_skb_any(i32* %97)
  %99 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %100 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %93, %85
  %103 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %104 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %109 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %110 = call i64 @ath9k_cmn_get_curchannel(%struct.ieee80211_hw* %108, %struct.ath_hw* %109)
  %111 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %112 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %107, %102
  %114 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %115 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %116 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %119 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @ath9k_hw_reset(%struct.ath_hw* %114, i64 %117, i32 %120, i32 0)
  %122 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %123 = call i32 @ath9k_hw_phy_disable(%struct.ath_hw* %122)
  %124 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %125 = call i32 @ath9k_hw_configpcipowersave(%struct.ath_hw* %124, i32 1)
  %126 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %127 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %126, i32 0, i32 3
  %128 = call i32 @spin_unlock_bh(i32* %127)
  %129 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %130 = call i32 @ath9k_ps_restore(%struct.ath_softc* %129)
  %131 = load i32, i32* @SC_OP_INVALID, align 4
  %132 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %133 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %132, i32 0, i32 2
  %134 = call i32 @set_bit(i32 %131, i32* %133)
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %137 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %139 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %138, i32 0, i32 1
  %140 = call i32 @mutex_unlock(i32* %139)
  %141 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %142 = load i32, i32* @CONFIG, align 4
  %143 = call i32 @ath_dbg(%struct.ath_common* %141, i32 %142, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %144

144:                                              ; preds = %113, %28
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath_cancel_work(%struct.ath_softc*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath9k_hw_disable_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @ath9k_hw_set_gpio(%struct.ath_hw*, i64, i32) #1

declare dso_local i32 @ath9k_hw_cfg_gpio_input(%struct.ath_hw*, i64) #1

declare dso_local i32 @ath_prepare_reset(%struct.ath_softc*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i64 @ath9k_cmn_get_curchannel(%struct.ieee80211_hw*, %struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_reset(%struct.ath_hw*, i64, i32, i32) #1

declare dso_local i32 @ath9k_hw_phy_disable(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_configpcipowersave(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
