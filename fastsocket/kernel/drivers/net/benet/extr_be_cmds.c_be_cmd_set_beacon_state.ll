; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_set_beacon_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_set_beacon_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_enable_disable_beacon = type { i8*, i8*, i8*, i8*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_ENABLE_DISABLE_BEACON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_set_beacon_state(%struct.be_adapter* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.be_mcc_wrb*, align 8
  %12 = alloca %struct.be_cmd_req_enable_disable_beacon*, align 8
  %13 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %18 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %17)
  store %struct.be_mcc_wrb* %18, %struct.be_mcc_wrb** %11, align 8
  %19 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %20 = icmp ne %struct.be_mcc_wrb* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %13, align 4
  br label %47

24:                                               ; preds = %5
  %25 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %26 = call %struct.be_cmd_req_enable_disable_beacon* @embedded_payload(%struct.be_mcc_wrb* %25)
  store %struct.be_cmd_req_enable_disable_beacon* %26, %struct.be_cmd_req_enable_disable_beacon** %12, align 8
  %27 = load %struct.be_cmd_req_enable_disable_beacon*, %struct.be_cmd_req_enable_disable_beacon** %12, align 8
  %28 = getelementptr inbounds %struct.be_cmd_req_enable_disable_beacon, %struct.be_cmd_req_enable_disable_beacon* %27, i32 0, i32 4
  %29 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %30 = load i32, i32* @OPCODE_COMMON_ENABLE_DISABLE_BEACON, align 4
  %31 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %32 = call i32 @be_wrb_cmd_hdr_prepare(i32* %28, i32 %29, i32 %30, i32 40, %struct.be_mcc_wrb* %31, i32* null)
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.be_cmd_req_enable_disable_beacon*, %struct.be_cmd_req_enable_disable_beacon** %12, align 8
  %35 = getelementptr inbounds %struct.be_cmd_req_enable_disable_beacon, %struct.be_cmd_req_enable_disable_beacon* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.be_cmd_req_enable_disable_beacon*, %struct.be_cmd_req_enable_disable_beacon** %12, align 8
  %38 = getelementptr inbounds %struct.be_cmd_req_enable_disable_beacon, %struct.be_cmd_req_enable_disable_beacon* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.be_cmd_req_enable_disable_beacon*, %struct.be_cmd_req_enable_disable_beacon** %12, align 8
  %41 = getelementptr inbounds %struct.be_cmd_req_enable_disable_beacon, %struct.be_cmd_req_enable_disable_beacon* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.be_cmd_req_enable_disable_beacon*, %struct.be_cmd_req_enable_disable_beacon** %12, align 8
  %44 = getelementptr inbounds %struct.be_cmd_req_enable_disable_beacon, %struct.be_cmd_req_enable_disable_beacon* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %46 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %45)
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %24, %21
  %48 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %49 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_bh(i32* %49)
  %51 = load i32, i32* %13, align 4
  ret i32 %51
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_req_enable_disable_beacon* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
