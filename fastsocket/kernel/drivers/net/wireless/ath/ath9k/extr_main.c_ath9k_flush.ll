; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, i32, i32, %struct.TYPE_2__, i32, %struct.ath_hw* }
%struct.TYPE_2__ = type { i32* }
%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@AH_UNPLUGGED = common dso_local global i32 0, align 4
@ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Device has been unplugged!\0A\00", align 1
@SC_OP_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Device not present\0A\00", align 1
@ATH9K_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32)* @ath9k_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_flush(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_softc*, align 8
  %8 = alloca %struct.ath_hw*, align 8
  %9 = alloca %struct.ath_common*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.ath_softc*, %struct.ath_softc** %16, align 8
  store %struct.ath_softc* %17, %struct.ath_softc** %7, align 8
  %18 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 5
  %20 = load %struct.ath_hw*, %struct.ath_hw** %19, align 8
  store %struct.ath_hw* %20, %struct.ath_hw** %8, align 8
  %21 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %22 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %21)
  store %struct.ath_common* %22, %struct.ath_common** %9, align 8
  store i32 200, i32* %10, align 4
  %23 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 1
  %28 = call i32 @cancel_delayed_work_sync(i32* %27)
  %29 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AH_UNPLUGGED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %3
  %36 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %37 = load i32, i32* @ANY, align 4
  %38 = call i32 @ath_dbg(%struct.ath_common* %36, i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %40 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  br label %133

42:                                               ; preds = %3
  %43 = load i32, i32* @SC_OP_INVALID, align 4
  %44 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %45 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %44, i32 0, i32 4
  %46 = call i64 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %50 = load i32, i32* @ANY, align 4
  %51 = call i32 @ath_dbg(%struct.ath_common* %49, i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %53 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  br label %133

55:                                               ; preds = %42
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %98, %55
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %101

60:                                               ; preds = %56
  store i32 0, i32* %14, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %65

65:                                               ; preds = %63, %60
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %90, %65
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @ATH9K_NUM_TX_QUEUES, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %66
  %71 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @ATH_TXQ_SETUP(%struct.ath_softc* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  br label %90

76:                                               ; preds = %70
  %77 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %78 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %79 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = call i32 @ath9k_has_pending_frames(%struct.ath_softc* %77, i32* %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  br label %93

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %75
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %66

93:                                               ; preds = %88, %66
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  br label %101

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %56

101:                                              ; preds = %96, %56
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  %105 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %106 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %105)
  %107 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %108 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %107, i32 0, i32 2
  %109 = call i32 @spin_lock_bh(i32* %108)
  %110 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %111 = call i32 @ath_drain_all_txq(%struct.ath_softc* %110)
  store i32 %111, i32* %13, align 4
  %112 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %113 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %112, i32 0, i32 2
  %114 = call i32 @spin_unlock_bh(i32* %113)
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %104
  %118 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %119 = call i32 @ath_reset(%struct.ath_softc* %118)
  br label %120

120:                                              ; preds = %117, %104
  %121 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %122 = call i32 @ath9k_ps_restore(%struct.ath_softc* %121)
  %123 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %124 = call i32 @ieee80211_wake_queues(%struct.ieee80211_hw* %123)
  br label %125

125:                                              ; preds = %120, %101
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %127 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %128 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %127, i32 0, i32 1
  %129 = call i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw* %126, i32* %128, i32 0)
  %130 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %131 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %130, i32 0, i32 0
  %132 = call i32 @mutex_unlock(i32* %131)
  br label %133

133:                                              ; preds = %125, %48, %35
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ATH_TXQ_SETUP(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath9k_has_pending_frames(%struct.ath_softc*, i32*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath_drain_all_txq(%struct.ath_softc*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath_reset(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

declare dso_local i32 @ieee80211_wake_queues(%struct.ieee80211_hw*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
