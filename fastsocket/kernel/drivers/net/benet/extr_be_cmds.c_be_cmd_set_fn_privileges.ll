; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_set_fn_privileges.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_set_fn_privileges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_set_fn_privileges = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_SET_FN_PRIVILEGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_set_fn_privileges(%struct.be_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_mcc_wrb*, align 8
  %8 = alloca %struct.be_cmd_req_set_fn_privileges*, align 8
  %9 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %14 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %13)
  store %struct.be_mcc_wrb* %14, %struct.be_mcc_wrb** %7, align 8
  %15 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %16 = icmp ne %struct.be_mcc_wrb* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  br label %49

20:                                               ; preds = %3
  %21 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %22 = call %struct.be_cmd_req_set_fn_privileges* @embedded_payload(%struct.be_mcc_wrb* %21)
  store %struct.be_cmd_req_set_fn_privileges* %22, %struct.be_cmd_req_set_fn_privileges** %8, align 8
  %23 = load %struct.be_cmd_req_set_fn_privileges*, %struct.be_cmd_req_set_fn_privileges** %8, align 8
  %24 = getelementptr inbounds %struct.be_cmd_req_set_fn_privileges, %struct.be_cmd_req_set_fn_privileges* %23, i32 0, i32 2
  %25 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %26 = load i32, i32* @OPCODE_COMMON_SET_FN_PRIVILEGES, align 4
  %27 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %28 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %24, i32 %25, i32 %26, i32 24, %struct.be_mcc_wrb* %27, i32* null)
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.be_cmd_req_set_fn_privileges*, %struct.be_cmd_req_set_fn_privileges** %8, align 8
  %31 = getelementptr inbounds %struct.be_cmd_req_set_fn_privileges, %struct.be_cmd_req_set_fn_privileges* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %34 = call i64 @lancer_chip(%struct.be_adapter* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %20
  %37 = load i32, i32* %5, align 4
  %38 = call i8* @cpu_to_le32(i32 %37)
  %39 = load %struct.be_cmd_req_set_fn_privileges*, %struct.be_cmd_req_set_fn_privileges** %8, align 8
  %40 = getelementptr inbounds %struct.be_cmd_req_set_fn_privileges, %struct.be_cmd_req_set_fn_privileges* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  br label %46

41:                                               ; preds = %20
  %42 = load i32, i32* %5, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.be_cmd_req_set_fn_privileges*, %struct.be_cmd_req_set_fn_privileges** %8, align 8
  %45 = getelementptr inbounds %struct.be_cmd_req_set_fn_privileges, %struct.be_cmd_req_set_fn_privileges* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %48 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %47)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %46, %17
  %50 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_bh(i32* %51)
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_req_set_fn_privileges* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
