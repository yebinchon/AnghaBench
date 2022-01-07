; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_scan.c_iwl_mvm_rx_scan_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_scan.c_iwl_mvm_rx_scan_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_device_cmd = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_scan_complete_notif = type { i64, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Scan complete: status=0x%x scanned channels=%d\0A\00", align 1
@IWL_MVM_SCAN_NONE = common dso_local global i32 0, align 4
@SCAN_COMP_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_rx_scan_complete(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_device_cmd* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %6 = alloca %struct.iwl_device_cmd*, align 8
  %7 = alloca %struct.iwl_rx_packet*, align 8
  %8 = alloca %struct.iwl_scan_complete_notif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %5, align 8
  store %struct.iwl_device_cmd* %2, %struct.iwl_device_cmd** %6, align 8
  %9 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %5, align 8
  %10 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %9)
  store %struct.iwl_rx_packet* %10, %struct.iwl_rx_packet** %7, align 8
  %11 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %12 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.iwl_scan_complete_notif*
  store %struct.iwl_scan_complete_notif* %15, %struct.iwl_scan_complete_notif** %8, align 8
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %17 = load %struct.iwl_scan_complete_notif*, %struct.iwl_scan_complete_notif** %8, align 8
  %18 = getelementptr inbounds %struct.iwl_scan_complete_notif, %struct.iwl_scan_complete_notif* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.iwl_scan_complete_notif*, %struct.iwl_scan_complete_notif** %8, align 8
  %21 = getelementptr inbounds %struct.iwl_scan_complete_notif, %struct.iwl_scan_complete_notif* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @IWL_DEBUG_SCAN(%struct.iwl_mvm* %16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %19, i32 %22)
  %24 = load i32, i32* @IWL_MVM_SCAN_NONE, align 4
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iwl_scan_complete_notif*, %struct.iwl_scan_complete_notif** %8, align 8
  %31 = getelementptr inbounds %struct.iwl_scan_complete_notif, %struct.iwl_scan_complete_notif* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SCAN_COMP_STATUS_OK, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ieee80211_scan_completed(i32 %29, i32 %35)
  ret i32 0
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_mvm*, i8*, i64, i32) #1

declare dso_local i32 @ieee80211_scan_completed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
