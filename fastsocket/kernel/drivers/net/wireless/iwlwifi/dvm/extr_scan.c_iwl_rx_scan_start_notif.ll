; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwl_rx_scan_start_notif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwl_rx_scan_start_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i32, i32, i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_device_cmd = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_scanstart_notification = type { i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [69 x i8] c"Scan start: %d [802.11%s] (TSF: 0x%08X:%08X) - %d (beacon timer %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"bg\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@IWL_SCAN_ROC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rx_cmd_buffer*, %struct.iwl_device_cmd*)* @iwl_rx_scan_start_notif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_rx_scan_start_notif(%struct.iwl_priv* %0, %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_device_cmd* %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %6 = alloca %struct.iwl_device_cmd*, align 8
  %7 = alloca %struct.iwl_rx_packet*, align 8
  %8 = alloca %struct.iwl_scanstart_notification*, align 8
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
  %15 = bitcast i8* %14 to %struct.iwl_scanstart_notification*
  store %struct.iwl_scanstart_notification* %15, %struct.iwl_scanstart_notification** %8, align 8
  %16 = load %struct.iwl_scanstart_notification*, %struct.iwl_scanstart_notification** %8, align 8
  %17 = getelementptr inbounds %struct.iwl_scanstart_notification, %struct.iwl_scanstart_notification* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @le32_to_cpu(i32 %18)
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %23 = load %struct.iwl_scanstart_notification*, %struct.iwl_scanstart_notification** %8, align 8
  %24 = getelementptr inbounds %struct.iwl_scanstart_notification, %struct.iwl_scanstart_notification* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.iwl_scanstart_notification*, %struct.iwl_scanstart_notification** %8, align 8
  %27 = getelementptr inbounds %struct.iwl_scanstart_notification, %struct.iwl_scanstart_notification* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %32 = load %struct.iwl_scanstart_notification*, %struct.iwl_scanstart_notification** %8, align 8
  %33 = getelementptr inbounds %struct.iwl_scanstart_notification, %struct.iwl_scanstart_notification* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load %struct.iwl_scanstart_notification*, %struct.iwl_scanstart_notification** %8, align 8
  %37 = getelementptr inbounds %struct.iwl_scanstart_notification, %struct.iwl_scanstart_notification* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = load %struct.iwl_scanstart_notification*, %struct.iwl_scanstart_notification** %8, align 8
  %41 = getelementptr inbounds %struct.iwl_scanstart_notification, %struct.iwl_scanstart_notification* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iwl_scanstart_notification*, %struct.iwl_scanstart_notification** %8, align 8
  %44 = getelementptr inbounds %struct.iwl_scanstart_notification, %struct.iwl_scanstart_notification* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @IWL_DEBUG_SCAN(%struct.iwl_priv* %22, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %31, i32 %35, i32 %39, i32 %42, i32 %45)
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %48 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IWL_SCAN_ROC, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %3
  %53 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %54 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %52
  %58 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %59 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ieee80211_ready_on_channel(i32 %60)
  %62 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %63 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %62, i32 0, i32 1
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %57, %52, %3
  ret i32 0
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_priv*, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ieee80211_ready_on_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
