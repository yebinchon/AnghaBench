; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_loopback_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_loopback_test = type { i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.be_cmd_resp_loopback_test = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_LOWLEVEL = common dso_local global i32 0, align 4
@OPCODE_LOWLEVEL_LOOPBACK_TEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_loopback_test(%struct.be_adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.be_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.be_mcc_wrb*, align 8
  %14 = alloca %struct.be_cmd_req_loopback_test*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.be_cmd_resp_loopback_test*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %18 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %21 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %20)
  store %struct.be_mcc_wrb* %21, %struct.be_mcc_wrb** %13, align 8
  %22 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %13, align 8
  %23 = icmp ne %struct.be_mcc_wrb* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %15, align 4
  br label %78

27:                                               ; preds = %6
  %28 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %13, align 8
  %29 = call i8* @embedded_payload(%struct.be_mcc_wrb* %28)
  %30 = bitcast i8* %29 to %struct.be_cmd_req_loopback_test*
  store %struct.be_cmd_req_loopback_test* %30, %struct.be_cmd_req_loopback_test** %14, align 8
  %31 = load %struct.be_cmd_req_loopback_test*, %struct.be_cmd_req_loopback_test** %14, align 8
  %32 = getelementptr inbounds %struct.be_cmd_req_loopback_test, %struct.be_cmd_req_loopback_test* %31, i32 0, i32 6
  %33 = load i32, i32* @CMD_SUBSYSTEM_LOWLEVEL, align 4
  %34 = load i32, i32* @OPCODE_LOWLEVEL_LOOPBACK_TEST, align 4
  %35 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %13, align 8
  %36 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %32, i32 %33, i32 %34, i32 56, %struct.be_mcc_wrb* %35, i32* null)
  %37 = call i8* @cpu_to_le32(i32 4)
  %38 = load %struct.be_cmd_req_loopback_test*, %struct.be_cmd_req_loopback_test** %14, align 8
  %39 = getelementptr inbounds %struct.be_cmd_req_loopback_test, %struct.be_cmd_req_loopback_test* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @cpu_to_le64(i32 %41)
  %43 = load %struct.be_cmd_req_loopback_test*, %struct.be_cmd_req_loopback_test** %14, align 8
  %44 = getelementptr inbounds %struct.be_cmd_req_loopback_test, %struct.be_cmd_req_loopback_test* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.be_cmd_req_loopback_test*, %struct.be_cmd_req_loopback_test** %14, align 8
  %48 = getelementptr inbounds %struct.be_cmd_req_loopback_test, %struct.be_cmd_req_loopback_test* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.be_cmd_req_loopback_test*, %struct.be_cmd_req_loopback_test** %14, align 8
  %52 = getelementptr inbounds %struct.be_cmd_req_loopback_test, %struct.be_cmd_req_loopback_test* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i8* @cpu_to_le32(i32 %53)
  %55 = load %struct.be_cmd_req_loopback_test*, %struct.be_cmd_req_loopback_test** %14, align 8
  %56 = getelementptr inbounds %struct.be_cmd_req_loopback_test, %struct.be_cmd_req_loopback_test* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = load %struct.be_cmd_req_loopback_test*, %struct.be_cmd_req_loopback_test** %14, align 8
  %60 = getelementptr inbounds %struct.be_cmd_req_loopback_test, %struct.be_cmd_req_loopback_test* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = load %struct.be_cmd_req_loopback_test*, %struct.be_cmd_req_loopback_test** %14, align 8
  %64 = getelementptr inbounds %struct.be_cmd_req_loopback_test, %struct.be_cmd_req_loopback_test* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %66 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %27
  %70 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %13, align 8
  %71 = call i8* @embedded_payload(%struct.be_mcc_wrb* %70)
  %72 = bitcast i8* %71 to %struct.be_cmd_resp_loopback_test*
  store %struct.be_cmd_resp_loopback_test* %72, %struct.be_cmd_resp_loopback_test** %16, align 8
  %73 = load %struct.be_cmd_resp_loopback_test*, %struct.be_cmd_resp_loopback_test** %16, align 8
  %74 = getelementptr inbounds %struct.be_cmd_resp_loopback_test, %struct.be_cmd_resp_loopback_test* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le32_to_cpu(i32 %75)
  store i32 %76, i32* %15, align 4
  br label %77

77:                                               ; preds = %69, %27
  br label %78

78:                                               ; preds = %77, %24
  %79 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %80 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock_bh(i32* %80)
  %82 = load i32, i32* %15, align 4
  ret i32 %82
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
