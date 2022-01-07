; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_event.c_wl12xx_process_mailbox_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_event.c_wl12xx_process_mailbox_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, %struct.wl12xx_event_mailbox* }
%struct.wl12xx_event_mailbox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"MBOX vector: 0x%x\00", align 1
@SCAN_COMPLETE_EVENT_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"status: 0x%x\00", align 1
@PERIODIC_SCAN_REPORT_EVENT_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"PERIODIC_SCAN_REPORT_EVENT (status 0x%0x)\00", align 1
@PERIODIC_SCAN_COMPLETE_EVENT_ID = common dso_local global i32 0, align 4
@SOFT_GEMINI_SENSE_EVENT_ID = common dso_local global i32 0, align 4
@BSS_LOSE_EVENT_ID = common dso_local global i32 0, align 4
@RSSI_SNR_TRIGGER_0_EVENT_ID = common dso_local global i32 0, align 4
@BA_SESSION_RX_CONSTRAINT_EVENT_ID = common dso_local global i32 0, align 4
@CHANNEL_SWITCH_COMPLETE_EVENT_ID = common dso_local global i32 0, align 4
@DUMMY_PACKET_EVENT_ID = common dso_local global i32 0, align 4
@MAX_TX_RETRY_EVENT_ID = common dso_local global i32 0, align 4
@INACTIVE_STA_EVENT_ID = common dso_local global i32 0, align 4
@REMAIN_ON_CHANNEL_COMPLETE_EVENT_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_process_mailbox_events(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca %struct.wl12xx_event_mailbox*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %5 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %6 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %5, i32 0, i32 1
  %7 = load %struct.wl12xx_event_mailbox*, %struct.wl12xx_event_mailbox** %6, align 8
  store %struct.wl12xx_event_mailbox* %7, %struct.wl12xx_event_mailbox** %3, align 8
  %8 = load %struct.wl12xx_event_mailbox*, %struct.wl12xx_event_mailbox** %3, align 8
  %9 = getelementptr inbounds %struct.wl12xx_event_mailbox, %struct.wl12xx_event_mailbox* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le32_to_cpu(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.wl12xx_event_mailbox*, %struct.wl12xx_event_mailbox** %3, align 8
  %13 = getelementptr inbounds %struct.wl12xx_event_mailbox, %struct.wl12xx_event_mailbox* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @DEBUG_EVENT, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @wl1271_debug(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SCAN_COMPLETE_EVENT_ID, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %1
  %27 = load i32, i32* @DEBUG_EVENT, align 4
  %28 = load %struct.wl12xx_event_mailbox*, %struct.wl12xx_event_mailbox** %3, align 8
  %29 = getelementptr inbounds %struct.wl12xx_event_mailbox, %struct.wl12xx_event_mailbox* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wl1271_debug(i32 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %33 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %38 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %39 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @wl12xx_scan_completed(%struct.wl1271* %37, i64 %40)
  br label %42

42:                                               ; preds = %36, %26
  br label %43

43:                                               ; preds = %42, %1
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @PERIODIC_SCAN_REPORT_EVENT_ID, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32, i32* @DEBUG_EVENT, align 4
  %50 = load %struct.wl12xx_event_mailbox*, %struct.wl12xx_event_mailbox** %3, align 8
  %51 = getelementptr inbounds %struct.wl12xx_event_mailbox, %struct.wl12xx_event_mailbox* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @wl1271_debug(i32 %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %55 = call i32 @wlcore_scan_sched_scan_results(%struct.wl1271* %54)
  br label %56

56:                                               ; preds = %48, %43
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @PERIODIC_SCAN_COMPLETE_EVENT_ID, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %63 = load %struct.wl12xx_event_mailbox*, %struct.wl12xx_event_mailbox** %3, align 8
  %64 = getelementptr inbounds %struct.wl12xx_event_mailbox, %struct.wl12xx_event_mailbox* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wlcore_event_sched_scan_completed(%struct.wl1271* %62, i32 %65)
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @SOFT_GEMINI_SENSE_EVENT_ID, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %74 = load %struct.wl12xx_event_mailbox*, %struct.wl12xx_event_mailbox** %3, align 8
  %75 = getelementptr inbounds %struct.wl12xx_event_mailbox, %struct.wl12xx_event_mailbox* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @wlcore_event_soft_gemini_sense(%struct.wl1271* %73, i32 %76)
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @BSS_LOSE_EVENT_ID, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %85 = call i32 @wlcore_event_beacon_loss(%struct.wl1271* %84, i32 255)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @RSSI_SNR_TRIGGER_0_EVENT_ID, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %93 = load %struct.wl12xx_event_mailbox*, %struct.wl12xx_event_mailbox** %3, align 8
  %94 = getelementptr inbounds %struct.wl12xx_event_mailbox, %struct.wl12xx_event_mailbox* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @wlcore_event_rssi_trigger(%struct.wl1271* %92, i32 %95)
  br label %97

97:                                               ; preds = %91, %86
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @BA_SESSION_RX_CONSTRAINT_EVENT_ID, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %104 = load %struct.wl12xx_event_mailbox*, %struct.wl12xx_event_mailbox** %3, align 8
  %105 = getelementptr inbounds %struct.wl12xx_event_mailbox, %struct.wl12xx_event_mailbox* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @BIT(i32 %106)
  %108 = load %struct.wl12xx_event_mailbox*, %struct.wl12xx_event_mailbox** %3, align 8
  %109 = getelementptr inbounds %struct.wl12xx_event_mailbox, %struct.wl12xx_event_mailbox* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @wlcore_event_ba_rx_constraint(%struct.wl1271* %103, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %102, %97
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @CHANNEL_SWITCH_COMPLETE_EVENT_ID, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %119 = load %struct.wl12xx_event_mailbox*, %struct.wl12xx_event_mailbox** %3, align 8
  %120 = getelementptr inbounds %struct.wl12xx_event_mailbox, %struct.wl12xx_event_mailbox* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @wlcore_event_channel_switch(%struct.wl1271* %118, i32 255, i32 %121)
  br label %123

123:                                              ; preds = %117, %112
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @DUMMY_PACKET_EVENT_ID, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %130 = call i32 @wlcore_event_dummy_packet(%struct.wl1271* %129)
  br label %131

131:                                              ; preds = %128, %123
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @MAX_TX_RETRY_EVENT_ID, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %138 = load %struct.wl12xx_event_mailbox*, %struct.wl12xx_event_mailbox** %3, align 8
  %139 = getelementptr inbounds %struct.wl12xx_event_mailbox, %struct.wl12xx_event_mailbox* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @le16_to_cpu(i32 %140)
  %142 = call i32 @wlcore_event_max_tx_failure(%struct.wl1271* %137, i32 %141)
  br label %143

143:                                              ; preds = %136, %131
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @INACTIVE_STA_EVENT_ID, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %150 = load %struct.wl12xx_event_mailbox*, %struct.wl12xx_event_mailbox** %3, align 8
  %151 = getelementptr inbounds %struct.wl12xx_event_mailbox, %struct.wl12xx_event_mailbox* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @le16_to_cpu(i32 %152)
  %154 = call i32 @wlcore_event_inactive_sta(%struct.wl1271* %149, i32 %153)
  br label %155

155:                                              ; preds = %148, %143
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @REMAIN_ON_CHANNEL_COMPLETE_EVENT_ID, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %162 = call i32 @wlcore_event_roc_complete(%struct.wl1271* %161)
  br label %163

163:                                              ; preds = %160, %155
  ret i32 0
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @wl12xx_scan_completed(%struct.wl1271*, i64) #1

declare dso_local i32 @wlcore_scan_sched_scan_results(%struct.wl1271*) #1

declare dso_local i32 @wlcore_event_sched_scan_completed(%struct.wl1271*, i32) #1

declare dso_local i32 @wlcore_event_soft_gemini_sense(%struct.wl1271*, i32) #1

declare dso_local i32 @wlcore_event_beacon_loss(%struct.wl1271*, i32) #1

declare dso_local i32 @wlcore_event_rssi_trigger(%struct.wl1271*, i32) #1

declare dso_local i32 @wlcore_event_ba_rx_constraint(%struct.wl1271*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wlcore_event_channel_switch(%struct.wl1271*, i32, i32) #1

declare dso_local i32 @wlcore_event_dummy_packet(%struct.wl1271*) #1

declare dso_local i32 @wlcore_event_max_tx_failure(%struct.wl1271*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @wlcore_event_inactive_sta(%struct.wl1271*, i32) #1

declare dso_local i32 @wlcore_event_roc_complete(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
