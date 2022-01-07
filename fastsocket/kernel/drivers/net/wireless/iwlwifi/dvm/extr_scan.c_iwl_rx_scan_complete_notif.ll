; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwl_rx_scan_complete_notif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwl_rx_scan_complete_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i64 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_device_cmd = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_scancomplete_notification = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"Scan complete: %d channels (TSF 0x%08X:%08X) - %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Scan on %sGHz took %dms\0A\00", align 1
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"2.4\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"5.2\00", align 1
@jiffies = common dso_local global i64 0, align 8
@STATUS_SCAN_COMPLETE = common dso_local global i32 0, align 4
@STATUS_SCAN_HW = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IWL_BT_COEX_TRAFFIC_LOAD_HIGH = common dso_local global i32 0, align 4
@IWL_BT_COEX_TRAFFIC_LOAD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rx_cmd_buffer*, %struct.iwl_device_cmd*)* @iwl_rx_scan_complete_notif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_rx_scan_complete_notif(%struct.iwl_priv* %0, %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_device_cmd* %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %6 = alloca %struct.iwl_device_cmd*, align 8
  %7 = alloca %struct.iwl_rx_packet*, align 8
  %8 = alloca %struct.iwl_scancomplete_notification*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %5, align 8
  store %struct.iwl_device_cmd* %2, %struct.iwl_device_cmd** %6, align 8
  %9 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %5, align 8
  %10 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %9)
  store %struct.iwl_rx_packet* %10, %struct.iwl_rx_packet** %7, align 8
  %11 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %12 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.iwl_scancomplete_notification*
  store %struct.iwl_scancomplete_notification* %15, %struct.iwl_scancomplete_notification** %8, align 8
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %17 = load %struct.iwl_scancomplete_notification*, %struct.iwl_scancomplete_notification** %8, align 8
  %18 = getelementptr inbounds %struct.iwl_scancomplete_notification, %struct.iwl_scancomplete_notification* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.iwl_scancomplete_notification*, %struct.iwl_scancomplete_notification** %8, align 8
  %23 = getelementptr inbounds %struct.iwl_scancomplete_notification, %struct.iwl_scancomplete_notification* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.iwl_scancomplete_notification*, %struct.iwl_scancomplete_notification** %8, align 8
  %26 = getelementptr inbounds %struct.iwl_scancomplete_notification, %struct.iwl_scancomplete_notification* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iwl_scancomplete_notification*, %struct.iwl_scancomplete_notification** %8, align 8
  %29 = getelementptr inbounds %struct.iwl_scancomplete_notification, %struct.iwl_scancomplete_notification* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (%struct.iwl_priv*, i8*, i8*, i32, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %16, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %33 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %34 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %40 = load i64, i64* @jiffies, align 8
  %41 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %42 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %41, i32 0, i32 9
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = call i32 @jiffies_to_msecs(i64 %44)
  %46 = call i32 (%struct.iwl_priv*, i8*, i8*, i32, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %39, i32 %45)
  %47 = load i32, i32* @STATUS_SCAN_COMPLETE, align 4
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %49 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %48, i32 0, i32 8
  %50 = call i32 @set_bit(i32 %47, i32* %49)
  %51 = load i32, i32* @STATUS_SCAN_HW, align 4
  %52 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %53 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %52, i32 0, i32 8
  %54 = call i32 @clear_bit(i32 %51, i32* %53)
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %56 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %59 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %58, i32 0, i32 7
  %60 = call i32 @queue_work(i32 %57, i32* %59)
  %61 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %62 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %109

66:                                               ; preds = %3
  %67 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %68 = call i64 @iwl_advanced_bt_coexist(%struct.iwl_priv* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %109

70:                                               ; preds = %66
  %71 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %72 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.iwl_scancomplete_notification*, %struct.iwl_scancomplete_notification** %8, align 8
  %75 = getelementptr inbounds %struct.iwl_scancomplete_notification, %struct.iwl_scancomplete_notification* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %109

78:                                               ; preds = %70
  %79 = load %struct.iwl_scancomplete_notification*, %struct.iwl_scancomplete_notification** %8, align 8
  %80 = getelementptr inbounds %struct.iwl_scancomplete_notification, %struct.iwl_scancomplete_notification* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %85 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @IWL_BT_COEX_TRAFFIC_LOAD_HIGH, align 4
  %90 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %91 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %88, %83
  br label %97

93:                                               ; preds = %78
  %94 = load i32, i32* @IWL_BT_COEX_TRAFFIC_LOAD_NONE, align 4
  %95 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %96 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %93, %92
  %98 = load %struct.iwl_scancomplete_notification*, %struct.iwl_scancomplete_notification** %8, align 8
  %99 = getelementptr inbounds %struct.iwl_scancomplete_notification, %struct.iwl_scancomplete_notification* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %102 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  %103 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %104 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %107 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %106, i32 0, i32 3
  %108 = call i32 @queue_work(i32 %105, i32* %107)
  br label %109

109:                                              ; preds = %97, %70, %66, %3
  ret i32 0
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_priv*, i8*, i8*, i32, ...) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @iwl_advanced_bt_coexist(%struct.iwl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
