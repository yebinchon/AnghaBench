; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_utils.c_iwl_mvm_rx_fw_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_utils.c_iwl_mvm_rx_fw_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_device_cmd = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_error_resp = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"FW Error notification: type 0x%08X cmd_id 0x%02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"FW Error notification: seq 0x%04X service 0x%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"FW Error notification: timestamp 0x%16llX\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_rx_fw_error(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_device_cmd* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %6 = alloca %struct.iwl_device_cmd*, align 8
  %7 = alloca %struct.iwl_rx_packet*, align 8
  %8 = alloca %struct.iwl_error_resp*, align 8
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
  %15 = bitcast i8* %14 to %struct.iwl_error_resp*
  store %struct.iwl_error_resp* %15, %struct.iwl_error_resp** %8, align 8
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %17 = load %struct.iwl_error_resp*, %struct.iwl_error_resp** %8, align 8
  %18 = getelementptr inbounds %struct.iwl_error_resp, %struct.iwl_error_resp* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  %21 = load %struct.iwl_error_resp*, %struct.iwl_error_resp** %8, align 8
  %22 = getelementptr inbounds %struct.iwl_error_resp, %struct.iwl_error_resp* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_ERR(%struct.iwl_mvm* %16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %26 = load %struct.iwl_error_resp*, %struct.iwl_error_resp** %8, align 8
  %27 = getelementptr inbounds %struct.iwl_error_resp, %struct.iwl_error_resp* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = load %struct.iwl_error_resp*, %struct.iwl_error_resp** %8, align 8
  %31 = getelementptr inbounds %struct.iwl_error_resp, %struct.iwl_error_resp* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_ERR(%struct.iwl_mvm* %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %33)
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %36 = load %struct.iwl_error_resp*, %struct.iwl_error_resp** %8, align 8
  %37 = getelementptr inbounds %struct.iwl_error_resp, %struct.iwl_error_resp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le64_to_cpu(i32 %38)
  %40 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_ERR(%struct.iwl_mvm* %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  ret i32 0
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
