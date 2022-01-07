; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_fw_ver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_fw_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_get_fw_version = type { i32 }
%struct.be_cmd_resp_get_fw_version = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_GET_FW_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_fw_ver(%struct.be_adapter* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.be_mcc_wrb*, align 8
  %8 = alloca %struct.be_cmd_req_get_fw_version*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.be_cmd_resp_get_fw_version*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %15 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %14)
  store %struct.be_mcc_wrb* %15, %struct.be_mcc_wrb** %7, align 8
  %16 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %17 = icmp ne %struct.be_mcc_wrb* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  br label %54

21:                                               ; preds = %3
  %22 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %23 = call i8* @embedded_payload(%struct.be_mcc_wrb* %22)
  %24 = bitcast i8* %23 to %struct.be_cmd_req_get_fw_version*
  store %struct.be_cmd_req_get_fw_version* %24, %struct.be_cmd_req_get_fw_version** %8, align 8
  %25 = load %struct.be_cmd_req_get_fw_version*, %struct.be_cmd_req_get_fw_version** %8, align 8
  %26 = getelementptr inbounds %struct.be_cmd_req_get_fw_version, %struct.be_cmd_req_get_fw_version* %25, i32 0, i32 0
  %27 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %28 = load i32, i32* @OPCODE_COMMON_GET_FW_VERSION, align 4
  %29 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %30 = call i32 @be_wrb_cmd_hdr_prepare(i32* %26, i32 %27, i32 %28, i32 4, %struct.be_mcc_wrb* %29, i32* null)
  %31 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %32 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %21
  %36 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %37 = call i8* @embedded_payload(%struct.be_mcc_wrb* %36)
  %38 = bitcast i8* %37 to %struct.be_cmd_resp_get_fw_version*
  store %struct.be_cmd_resp_get_fw_version* %38, %struct.be_cmd_resp_get_fw_version** %10, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.be_cmd_resp_get_fw_version*, %struct.be_cmd_resp_get_fw_version** %10, align 8
  %41 = getelementptr inbounds %struct.be_cmd_resp_get_fw_version, %struct.be_cmd_resp_get_fw_version* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strcpy(i8* %39, i32 %42)
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %35
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.be_cmd_resp_get_fw_version*, %struct.be_cmd_resp_get_fw_version** %10, align 8
  %49 = getelementptr inbounds %struct.be_cmd_resp_get_fw_version, %struct.be_cmd_resp_get_fw_version* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strcpy(i8* %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %35
  br label %53

53:                                               ; preds = %52, %21
  br label %54

54:                                               ; preds = %53, %18
  %55 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock_bh(i32* %56)
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
