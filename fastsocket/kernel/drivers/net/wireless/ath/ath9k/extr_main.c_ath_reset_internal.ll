; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath_reset_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath_reset_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, %struct.TYPE_4__*, %struct.ath_hw*, %struct.ath9k_hw_cal_data }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ath_hw = type { %struct.ath9k_channel* }
%struct.ath9k_hw_cal_data = type { i32 }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32 }

@IEEE80211_CONF_OFFCHANNEL = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Reset to %u MHz, HT40: %d fastcc: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to reset channel, reset status %d\0A\00", align 1
@RESET_TYPE_BB_HANG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, %struct.ath9k_channel*)* @ath_reset_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_reset_internal(%struct.ath_softc* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath9k_hw_cal_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 3
  %12 = load %struct.ath_hw*, %struct.ath_hw** %11, align 8
  store %struct.ath_hw* %12, %struct.ath_hw** %5, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %6, align 8
  store %struct.ath9k_hw_cal_data* null, %struct.ath9k_hw_cal_data** %7, align 8
  store i32 1, i32* %8, align 4
  %15 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %16 = call i32 @__ath_cancel_work(%struct.ath_softc* %15)
  %17 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 0
  %19 = call i32 @tasklet_disable(i32* %18)
  %20 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %20, i32 0, i32 1
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IEEE80211_CONF_OFFCHANNEL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %33 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %33, i32 0, i32 4
  store %struct.ath9k_hw_cal_data* %34, %struct.ath9k_hw_cal_data** %7, align 8
  br label %35

35:                                               ; preds = %32, %2
  %36 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %37 = icmp ne %struct.ath9k_channel* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  %39 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %40 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %39, i32 0, i32 0
  %41 = load %struct.ath9k_channel*, %struct.ath9k_channel** %40, align 8
  store %struct.ath9k_channel* %41, %struct.ath9k_channel** %4, align 8
  br label %42

42:                                               ; preds = %38, %35
  %43 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %44 = call i32 @ath_prepare_reset(%struct.ath_softc* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %46, %42
  %48 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %49 = load i32, i32* @CONFIG, align 4
  %50 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %51 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %54 = call i32 @IS_CHAN_HT40(%struct.ath9k_channel* %53)
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @ath_dbg(%struct.ath_common* %48, i32 %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %54, i32 %55)
  %57 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %58 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %59 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @ath9k_hw_reset(%struct.ath_hw* %57, %struct.ath9k_channel* %58, %struct.ath9k_hw_cal_data* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %47
  %65 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @ath_err(%struct.ath_common* %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %69 = call i32 @ath9k_hw_enable_interrupts(%struct.ath_hw* %68)
  %70 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %71 = load i32, i32* @RESET_TYPE_BB_HANG, align 4
  %72 = call i32 @ath9k_queue_reset(%struct.ath_softc* %70, i32 %71)
  br label %100

73:                                               ; preds = %47
  %74 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %75 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %74, i32 0, i32 3
  %76 = load %struct.ath_hw*, %struct.ath_hw** %75, align 8
  %77 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @IEEE80211_CONF_OFFCHANNEL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %79
  %90 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %91 = call i32 @ath9k_mci_set_txpower(%struct.ath_softc* %90, i32 1, i32 0)
  br label %92

92:                                               ; preds = %89, %79, %73
  %93 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %94 = call i32 @ath_complete_reset(%struct.ath_softc* %93, i32 1)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %96, %92
  br label %100

100:                                              ; preds = %99, %64
  %101 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %102 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %101, i32 0, i32 1
  %103 = call i32 @spin_unlock_bh(i32* %102)
  %104 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %105 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %104, i32 0, i32 0
  %106 = call i32 @tasklet_enable(i32* %105)
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @__ath_cancel_work(%struct.ath_softc*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath_prepare_reset(%struct.ath_softc*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_reset(%struct.ath_hw*, %struct.ath9k_channel*, %struct.ath9k_hw_cal_data*, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32) #1

declare dso_local i32 @ath9k_hw_enable_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_queue_reset(%struct.ath_softc*, i32) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_mci_set_txpower(%struct.ath_softc*, i32, i32) #1

declare dso_local i32 @ath_complete_reset(%struct.ath_softc*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
