; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_bt-coex.c_iwl_mvm_rx_bt_coex_notif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_bt-coex.c_iwl_mvm_rx_bt_coex_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_device_cmd = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_bt_coex_profile_notif = type { i8*, i8*, i8*, i8*, i64 }

@.str = private unnamed_addr constant [31 x i8] c"BT Coex Notification received\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\09BT %salive\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"\09BT open conn %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"\09BT traffic load %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"\09BT agg traffic load %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"\09BT ci compliance %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_rx_bt_coex_notif(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_device_cmd* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %6 = alloca %struct.iwl_device_cmd*, align 8
  %7 = alloca %struct.iwl_rx_packet*, align 8
  %8 = alloca %struct.iwl_bt_coex_profile_notif*, align 8
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
  %15 = bitcast i8* %14 to %struct.iwl_bt_coex_profile_notif*
  store %struct.iwl_bt_coex_profile_notif* %15, %struct.iwl_bt_coex_profile_notif** %8, align 8
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %17 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_COEX(%struct.iwl_mvm* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %19 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %8, align 8
  %20 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %25 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_COEX(%struct.iwl_mvm* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %27 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %8, align 8
  %28 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_COEX(%struct.iwl_mvm* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %32 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %8, align 8
  %33 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_COEX(%struct.iwl_mvm* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %34)
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %37 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %8, align 8
  %38 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_COEX(%struct.iwl_mvm* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %39)
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %42 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %8, align 8
  %43 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_COEX(%struct.iwl_mvm* %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %44)
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %47 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %46, i32 0, i32 0
  %48 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %8, align 8
  %49 = call i32 @memcpy(i32* %47, %struct.iwl_bt_coex_profile_notif* %48, i32 4)
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %51 = call i32 @iwl_mvm_bt_coex_notif_handle(%struct.iwl_mvm* %50)
  ret i32 0
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @IWL_DEBUG_COEX(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, %struct.iwl_bt_coex_profile_notif*, i32) #1

declare dso_local i32 @iwl_mvm_bt_coex_notif_handle(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
