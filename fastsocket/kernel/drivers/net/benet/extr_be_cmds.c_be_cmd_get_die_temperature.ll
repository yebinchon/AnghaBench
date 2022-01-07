; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_die_temperature.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_die_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_get_cntl_addnl_attribs = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_GET_CNTL_ADDITIONAL_ATTRIBUTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_die_temperature(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca %struct.be_mcc_wrb*, align 8
  %4 = alloca %struct.be_cmd_req_get_cntl_addnl_attribs*, align 8
  %5 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %6 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %10 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %9)
  store %struct.be_mcc_wrb* %10, %struct.be_mcc_wrb** %3, align 8
  %11 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %3, align 8
  %12 = icmp ne %struct.be_mcc_wrb* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %3, align 8
  %18 = call %struct.be_cmd_req_get_cntl_addnl_attribs* @embedded_payload(%struct.be_mcc_wrb* %17)
  store %struct.be_cmd_req_get_cntl_addnl_attribs* %18, %struct.be_cmd_req_get_cntl_addnl_attribs** %4, align 8
  %19 = load %struct.be_cmd_req_get_cntl_addnl_attribs*, %struct.be_cmd_req_get_cntl_addnl_attribs** %4, align 8
  %20 = getelementptr inbounds %struct.be_cmd_req_get_cntl_addnl_attribs, %struct.be_cmd_req_get_cntl_addnl_attribs* %19, i32 0, i32 0
  %21 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %22 = load i32, i32* @OPCODE_COMMON_GET_CNTL_ADDITIONAL_ATTRIBUTES, align 4
  %23 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %3, align 8
  %24 = call i32 @be_wrb_cmd_hdr_prepare(i32* %20, i32 %21, i32 %22, i32 4, %struct.be_mcc_wrb* %23, i32* null)
  %25 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %26 = call i32 @be_mcc_notify(%struct.be_adapter* %25)
  br label %27

27:                                               ; preds = %16, %13
  %28 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_bh(i32* %29)
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_req_get_cntl_addnl_attribs* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @be_mcc_notify(%struct.be_adapter*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
