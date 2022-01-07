; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_if_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_if_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_if_destroy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_NTWK_INTERFACE_DESTROY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_if_destroy(%struct.be_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_mcc_wrb*, align 8
  %9 = alloca %struct.be_cmd_req_if_destroy*, align 8
  %10 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

14:                                               ; preds = %3
  %15 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %19 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %18)
  store %struct.be_mcc_wrb* %19, %struct.be_mcc_wrb** %8, align 8
  %20 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %8, align 8
  %21 = icmp ne %struct.be_mcc_wrb* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %10, align 4
  br label %44

25:                                               ; preds = %14
  %26 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %8, align 8
  %27 = call %struct.be_cmd_req_if_destroy* @embedded_payload(%struct.be_mcc_wrb* %26)
  store %struct.be_cmd_req_if_destroy* %27, %struct.be_cmd_req_if_destroy** %9, align 8
  %28 = load %struct.be_cmd_req_if_destroy*, %struct.be_cmd_req_if_destroy** %9, align 8
  %29 = getelementptr inbounds %struct.be_cmd_req_if_destroy, %struct.be_cmd_req_if_destroy* %28, i32 0, i32 1
  %30 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %31 = load i32, i32* @OPCODE_COMMON_NTWK_INTERFACE_DESTROY, align 4
  %32 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %8, align 8
  %33 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %29, i32 %30, i32 %31, i32 8, %struct.be_mcc_wrb* %32, i32* null)
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.be_cmd_req_if_destroy*, %struct.be_cmd_req_if_destroy** %9, align 8
  %36 = getelementptr inbounds %struct.be_cmd_req_if_destroy, %struct.be_cmd_req_if_destroy* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @cpu_to_le32(i32 %38)
  %40 = load %struct.be_cmd_req_if_destroy*, %struct.be_cmd_req_if_destroy** %9, align 8
  %41 = getelementptr inbounds %struct.be_cmd_req_if_destroy, %struct.be_cmd_req_if_destroy* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %43 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %42)
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %25, %22
  %45 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock_bh(i32* %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %44, %13
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_req_if_destroy* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
