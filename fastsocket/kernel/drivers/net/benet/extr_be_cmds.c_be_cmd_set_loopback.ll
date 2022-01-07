; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_set_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_set_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_set_lmode = type { i8*, i8*, i8*, i8*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_LOWLEVEL = common dso_local global i32 0, align 4
@OPCODE_LOWLEVEL_SET_LOOPBACK_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_set_loopback(%struct.be_adapter* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.be_mcc_wrb*, align 8
  %10 = alloca %struct.be_cmd_req_set_lmode*, align 8
  %11 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %16 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %15)
  store %struct.be_mcc_wrb* %16, %struct.be_mcc_wrb** %9, align 8
  %17 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %18 = icmp ne %struct.be_mcc_wrb* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  br label %45

22:                                               ; preds = %4
  %23 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %24 = call %struct.be_cmd_req_set_lmode* @embedded_payload(%struct.be_mcc_wrb* %23)
  store %struct.be_cmd_req_set_lmode* %24, %struct.be_cmd_req_set_lmode** %10, align 8
  %25 = load %struct.be_cmd_req_set_lmode*, %struct.be_cmd_req_set_lmode** %10, align 8
  %26 = getelementptr inbounds %struct.be_cmd_req_set_lmode, %struct.be_cmd_req_set_lmode* %25, i32 0, i32 4
  %27 = load i32, i32* @CMD_SUBSYSTEM_LOWLEVEL, align 4
  %28 = load i32, i32* @OPCODE_LOWLEVEL_SET_LOOPBACK_MODE, align 4
  %29 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %30 = call i32 @be_wrb_cmd_hdr_prepare(i32* %26, i32 %27, i32 %28, i32 40, %struct.be_mcc_wrb* %29, i32* null)
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.be_cmd_req_set_lmode*, %struct.be_cmd_req_set_lmode** %10, align 8
  %33 = getelementptr inbounds %struct.be_cmd_req_set_lmode, %struct.be_cmd_req_set_lmode* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.be_cmd_req_set_lmode*, %struct.be_cmd_req_set_lmode** %10, align 8
  %36 = getelementptr inbounds %struct.be_cmd_req_set_lmode, %struct.be_cmd_req_set_lmode* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.be_cmd_req_set_lmode*, %struct.be_cmd_req_set_lmode** %10, align 8
  %39 = getelementptr inbounds %struct.be_cmd_req_set_lmode, %struct.be_cmd_req_set_lmode* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.be_cmd_req_set_lmode*, %struct.be_cmd_req_set_lmode** %10, align 8
  %42 = getelementptr inbounds %struct.be_cmd_req_set_lmode, %struct.be_cmd_req_set_lmode* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %44 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %43)
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %22, %19
  %46 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_bh(i32* %47)
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_req_set_lmode* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
