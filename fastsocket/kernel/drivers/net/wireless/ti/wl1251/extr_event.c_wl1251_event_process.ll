; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_event.c_wl1251_event_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_event.c_wl1251_event_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i64, i64, i64, i64 }
%struct.event_mailbox = type { i32, i32 }

@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"vector: 0x%x\00", align 1
@SCAN_COMPLETE_EVENT_ID = common dso_local global i32 0, align 4
@BSS_LOSE_EVENT_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"BSS_LOSE_EVENT\00", align 1
@STATION_ACTIVE_MODE = common dso_local global i64 0, align 8
@SYNCHRONIZATION_TIMEOUT_EVENT_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"SYNCHRONIZATION_TIMEOUT_EVENT\00", align 1
@REGAINED_BSS_EVENT_ID = common dso_local global i32 0, align 4
@STATION_POWER_SAVE_MODE = common dso_local global i64 0, align 8
@ROAMING_TRIGGER_LOW_RSSI_EVENT_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"ROAMING_TRIGGER_LOW_RSSI_EVENT\00", align 1
@NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ROAMING_TRIGGER_REGAINED_RSSI_EVENT_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"ROAMING_TRIGGER_REGAINED_RSSI_EVENT\00", align 1
@NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*, %struct.event_mailbox*)* @wl1251_event_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_event_process(%struct.wl1251* %0, %struct.event_mailbox* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1251*, align 8
  %5 = alloca %struct.event_mailbox*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %4, align 8
  store %struct.event_mailbox* %1, %struct.event_mailbox** %5, align 8
  %8 = load %struct.event_mailbox*, %struct.event_mailbox** %5, align 8
  %9 = call i32 @wl1251_event_mbox_dump(%struct.event_mailbox* %8)
  %10 = load %struct.event_mailbox*, %struct.event_mailbox** %5, align 8
  %11 = getelementptr inbounds %struct.event_mailbox, %struct.event_mailbox* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.event_mailbox*, %struct.event_mailbox** %5, align 8
  %14 = getelementptr inbounds %struct.event_mailbox, %struct.event_mailbox* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %12, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @DEBUG_EVENT, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SCAN_COMPLETE_EVENT_ID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %27 = load %struct.event_mailbox*, %struct.event_mailbox** %5, align 8
  %28 = call i32 @wl1251_event_scan_complete(%struct.wl1251* %26, %struct.event_mailbox* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %134

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @BSS_LOSE_EVENT_ID, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load i32, i32* @DEBUG_EVENT, align 4
  %41 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %43 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %39
  %47 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %48 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @STATION_ACTIVE_MODE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %54 = load i64, i64* @STATION_ACTIVE_MODE, align 8
  %55 = call i32 @wl1251_ps_set_mode(%struct.wl1251* %53, i64 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %134

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %46, %39
  br label %62

62:                                               ; preds = %61, %34
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @SYNCHRONIZATION_TIMEOUT_EVENT_ID, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* @DEBUG_EVENT, align 4
  %69 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %71 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ieee80211_beacon_loss(i64 %72)
  br label %74

74:                                               ; preds = %67, %62
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @REGAINED_BSS_EVENT_ID, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %81 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %86 = load i64, i64* @STATION_POWER_SAVE_MODE, align 8
  %87 = call i32 @wl1251_ps_set_mode(%struct.wl1251* %85, i64 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %134

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %79
  br label %94

94:                                               ; preds = %93, %74
  %95 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %96 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %133

99:                                               ; preds = %94
  %100 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %101 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %133

104:                                              ; preds = %99
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @ROAMING_TRIGGER_LOW_RSSI_EVENT_ID, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load i32, i32* @DEBUG_EVENT, align 4
  %111 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %112 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %113 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* @NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW, align 4
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call i32 @ieee80211_cqm_rssi_notify(i64 %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %109, %104
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @ROAMING_TRIGGER_REGAINED_RSSI_EVENT_ID, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %118
  %124 = load i32, i32* @DEBUG_EVENT, align 4
  %125 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %126 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %127 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* @NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH, align 4
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call i32 @ieee80211_cqm_rssi_notify(i64 %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %123, %118
  br label %133

133:                                              ; preds = %132, %99, %94
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %90, %58, %31
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @wl1251_event_mbox_dump(%struct.event_mailbox*) #1

declare dso_local i32 @wl1251_debug(i32, i8*, ...) #1

declare dso_local i32 @wl1251_event_scan_complete(%struct.wl1251*, %struct.event_mailbox*) #1

declare dso_local i32 @wl1251_ps_set_mode(%struct.wl1251*, i64) #1

declare dso_local i32 @ieee80211_beacon_loss(i64) #1

declare dso_local i32 @ieee80211_cqm_rssi_notify(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
