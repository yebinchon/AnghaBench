; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath_complete_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath_complete_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, %struct.TYPE_8__*, i32, i32, i32, %struct.TYPE_5__, %struct.ath_hw* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ath_hw = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ath_common = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Unable to restart recv logic\0A\00", align 1
@SC_OP_HW_RESET = common dso_local global i32 0, align 4
@IEEE80211_CONF_OFFCHANNEL = common dso_local global i32 0, align 4
@SC_OP_BEACONS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@SC_OP_PRIM_STA_VIF = common dso_local global i32 0, align 4
@PS_BEACON_SYNC = common dso_local global i32 0, align 4
@PS_WAIT_FOR_BEACON = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_ANT_DIV_COMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, i32)* @ath_complete_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_complete_reset(%struct.ath_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca i64, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 7
  %11 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  store %struct.ath_hw* %11, %struct.ath_hw** %6, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %13 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %12)
  store %struct.ath_common* %13, %struct.ath_common** %7, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %15 = call i64 @ath_startrecv(%struct.ath_softc* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %19 = call i32 @ath_err(%struct.ath_common* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %115

20:                                               ; preds = %2
  %21 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %22 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %26 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %30 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %29, i32 0, i32 5
  %31 = call i32 @ath9k_cmn_update_txpow(%struct.ath_hw* %21, i32 %24, i32 %28, i32* %30)
  %32 = load i32, i32* @SC_OP_HW_RESET, align 4
  %33 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %34 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %33, i32 0, i32 4
  %35 = call i32 @clear_bit(i32 %32, i32* %34)
  %36 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %37 = call i32 @ath9k_hw_set_interrupts(%struct.ath_hw* %36)
  %38 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %39 = call i32 @ath9k_hw_enable_interrupts(%struct.ath_hw* %38)
  %40 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %41 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %40, i32 0, i32 2
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IEEE80211_CONF_OFFCHANNEL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %94, label %49

49:                                               ; preds = %20
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %94

52:                                               ; preds = %49
  %53 = load i32, i32* @SC_OP_BEACONS, align 4
  %54 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %54, i32 0, i32 4
  %56 = call i64 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %91

59:                                               ; preds = %52
  %60 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %61 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %59
  %66 = load i32, i32* @SC_OP_PRIM_STA_VIF, align 4
  %67 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %68 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %67, i32 0, i32 4
  %69 = call i64 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %73 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %72, i32 0, i32 3
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load i32, i32* @PS_BEACON_SYNC, align 4
  %77 = load i32, i32* @PS_WAIT_FOR_BEACON, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %80 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %84 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %83, i32 0, i32 3
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  br label %90

87:                                               ; preds = %65, %59
  %88 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %89 = call i32 @ath9k_set_beacon(%struct.ath_softc* %88)
  br label %90

90:                                               ; preds = %87, %71
  br label %91

91:                                               ; preds = %90, %58
  %92 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %93 = call i32 @ath_restart_work(%struct.ath_softc* %92)
  br label %94

94:                                               ; preds = %91, %49, %20
  %95 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %96 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @ATH9K_HW_CAP_ANT_DIV_COMB, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %94
  %103 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %104 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 3
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %109 = call i32 @ath_ant_comb_update(%struct.ath_softc* %108)
  br label %110

110:                                              ; preds = %107, %102, %94
  %111 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %112 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %111, i32 0, i32 2
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = call i32 @ieee80211_wake_queues(%struct.TYPE_8__* %113)
  store i32 1, i32* %3, align 4
  br label %115

115:                                              ; preds = %110, %17
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @ath_startrecv(%struct.ath_softc*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath9k_cmn_update_txpow(%struct.ath_hw*, i32, i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ath9k_hw_set_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_enable_interrupts(%struct.ath_hw*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ath9k_set_beacon(%struct.ath_softc*) #1

declare dso_local i32 @ath_restart_work(%struct.ath_softc*) #1

declare dso_local i32 @ath_ant_comb_update(%struct.ath_softc*) #1

declare dso_local i32 @ieee80211_wake_queues(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
