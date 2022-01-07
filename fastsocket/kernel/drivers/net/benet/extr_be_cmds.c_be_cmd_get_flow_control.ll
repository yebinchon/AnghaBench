; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_flow_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_get_flow_control = type { i32 }
%struct.be_cmd_resp_get_flow_control = type { i32, i32 }

@OPCODE_COMMON_GET_FLOW_CONTROL = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_flow_control(%struct.be_adapter* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.be_mcc_wrb*, align 8
  %9 = alloca %struct.be_cmd_req_get_flow_control*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.be_cmd_resp_get_flow_control*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %13 = load i32, i32* @OPCODE_COMMON_GET_FLOW_CONTROL, align 4
  %14 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %15 = call i32 @be_cmd_allowed(%struct.be_adapter* %12, i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %65

20:                                               ; preds = %3
  %21 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %25 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %24)
  store %struct.be_mcc_wrb* %25, %struct.be_mcc_wrb** %8, align 8
  %26 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %8, align 8
  %27 = icmp ne %struct.be_mcc_wrb* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %10, align 4
  br label %60

31:                                               ; preds = %20
  %32 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %8, align 8
  %33 = call i8* @embedded_payload(%struct.be_mcc_wrb* %32)
  %34 = bitcast i8* %33 to %struct.be_cmd_req_get_flow_control*
  store %struct.be_cmd_req_get_flow_control* %34, %struct.be_cmd_req_get_flow_control** %9, align 8
  %35 = load %struct.be_cmd_req_get_flow_control*, %struct.be_cmd_req_get_flow_control** %9, align 8
  %36 = getelementptr inbounds %struct.be_cmd_req_get_flow_control, %struct.be_cmd_req_get_flow_control* %35, i32 0, i32 0
  %37 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %38 = load i32, i32* @OPCODE_COMMON_GET_FLOW_CONTROL, align 4
  %39 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %8, align 8
  %40 = call i32 @be_wrb_cmd_hdr_prepare(i32* %36, i32 %37, i32 %38, i32 4, %struct.be_mcc_wrb* %39, i32* null)
  %41 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %42 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %31
  %46 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %8, align 8
  %47 = call i8* @embedded_payload(%struct.be_mcc_wrb* %46)
  %48 = bitcast i8* %47 to %struct.be_cmd_resp_get_flow_control*
  store %struct.be_cmd_resp_get_flow_control* %48, %struct.be_cmd_resp_get_flow_control** %11, align 8
  %49 = load %struct.be_cmd_resp_get_flow_control*, %struct.be_cmd_resp_get_flow_control** %11, align 8
  %50 = getelementptr inbounds %struct.be_cmd_resp_get_flow_control, %struct.be_cmd_resp_get_flow_control* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.be_cmd_resp_get_flow_control*, %struct.be_cmd_resp_get_flow_control** %11, align 8
  %55 = getelementptr inbounds %struct.be_cmd_resp_get_flow_control, %struct.be_cmd_resp_get_flow_control* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %45, %31
  br label %60

60:                                               ; preds = %59, %28
  %61 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %62 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock_bh(i32* %62)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %60, %17
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @be_cmd_allowed(%struct.be_adapter*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
