; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_req_native_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_req_native_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_set_func_cap = type { i8*, i8*, i32 }
%struct.be_cmd_resp_set_func_cap = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_SET_DRIVER_FUNCTION_CAP = common dso_local global i32 0, align 4
@CAPABILITY_SW_TIMESTAMPS = common dso_local global i32 0, align 4
@CAPABILITY_BE3_NATIVE_ERX_API = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_req_native_mode(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_mcc_wrb*, align 8
  %5 = alloca %struct.be_cmd_req_set_func_cap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_cmd_resp_set_func_cap*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %8 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 1
  %10 = call i64 @mutex_lock_interruptible(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %63

13:                                               ; preds = %1
  %14 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %15 = call %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter* %14)
  store %struct.be_mcc_wrb* %15, %struct.be_mcc_wrb** %4, align 8
  %16 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %17 = icmp ne %struct.be_mcc_wrb* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %58

21:                                               ; preds = %13
  %22 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %23 = call i8* @embedded_payload(%struct.be_mcc_wrb* %22)
  %24 = bitcast i8* %23 to %struct.be_cmd_req_set_func_cap*
  store %struct.be_cmd_req_set_func_cap* %24, %struct.be_cmd_req_set_func_cap** %5, align 8
  %25 = load %struct.be_cmd_req_set_func_cap*, %struct.be_cmd_req_set_func_cap** %5, align 8
  %26 = getelementptr inbounds %struct.be_cmd_req_set_func_cap, %struct.be_cmd_req_set_func_cap* %25, i32 0, i32 2
  %27 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %28 = load i32, i32* @OPCODE_COMMON_SET_DRIVER_FUNCTION_CAP, align 4
  %29 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %30 = call i32 @be_wrb_cmd_hdr_prepare(i32* %26, i32 %27, i32 %28, i32 24, %struct.be_mcc_wrb* %29, i32* null)
  %31 = load i32, i32* @CAPABILITY_SW_TIMESTAMPS, align 4
  %32 = load i32, i32* @CAPABILITY_BE3_NATIVE_ERX_API, align 4
  %33 = or i32 %31, %32
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = load %struct.be_cmd_req_set_func_cap*, %struct.be_cmd_req_set_func_cap** %5, align 8
  %36 = getelementptr inbounds %struct.be_cmd_req_set_func_cap, %struct.be_cmd_req_set_func_cap* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @CAPABILITY_BE3_NATIVE_ERX_API, align 4
  %38 = call i8* @cpu_to_le32(i32 %37)
  %39 = load %struct.be_cmd_req_set_func_cap*, %struct.be_cmd_req_set_func_cap** %5, align 8
  %40 = getelementptr inbounds %struct.be_cmd_req_set_func_cap, %struct.be_cmd_req_set_func_cap* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %42 = call i32 @be_mbox_notify_wait(%struct.be_adapter* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %21
  %46 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %47 = call i8* @embedded_payload(%struct.be_mcc_wrb* %46)
  %48 = bitcast i8* %47 to %struct.be_cmd_resp_set_func_cap*
  store %struct.be_cmd_resp_set_func_cap* %48, %struct.be_cmd_resp_set_func_cap** %7, align 8
  %49 = load %struct.be_cmd_resp_set_func_cap*, %struct.be_cmd_resp_set_func_cap** %7, align 8
  %50 = getelementptr inbounds %struct.be_cmd_resp_set_func_cap, %struct.be_cmd_resp_set_func_cap* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  %53 = load i32, i32* @CAPABILITY_BE3_NATIVE_ERX_API, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %45, %21
  br label %58

58:                                               ; preds = %57, %18
  %59 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %58, %12
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter*) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @be_mbox_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
