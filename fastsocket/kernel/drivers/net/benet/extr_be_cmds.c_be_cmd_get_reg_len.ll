; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_reg_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_reg_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_get_fat = type { i32, i32 }
%struct.be_cmd_resp_get_fat = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_MANAGE_FAT = common dso_local global i32 0, align 4
@QUERY_FAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_reg_len(%struct.be_adapter* %0, i64* %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.be_mcc_wrb*, align 8
  %6 = alloca %struct.be_cmd_req_get_fat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_cmd_resp_get_fat*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store i64* %1, i64** %4, align 8
  %9 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %13 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %12)
  store %struct.be_mcc_wrb* %13, %struct.be_mcc_wrb** %5, align 8
  %14 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %15 = icmp ne %struct.be_mcc_wrb* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  br label %57

19:                                               ; preds = %2
  %20 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %21 = call i8* @embedded_payload(%struct.be_mcc_wrb* %20)
  %22 = bitcast i8* %21 to %struct.be_cmd_req_get_fat*
  store %struct.be_cmd_req_get_fat* %22, %struct.be_cmd_req_get_fat** %6, align 8
  %23 = load %struct.be_cmd_req_get_fat*, %struct.be_cmd_req_get_fat** %6, align 8
  %24 = getelementptr inbounds %struct.be_cmd_req_get_fat, %struct.be_cmd_req_get_fat* %23, i32 0, i32 1
  %25 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %26 = load i32, i32* @OPCODE_COMMON_MANAGE_FAT, align 4
  %27 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %28 = call i32 @be_wrb_cmd_hdr_prepare(i32* %24, i32 %25, i32 %26, i32 8, %struct.be_mcc_wrb* %27, i32* null)
  %29 = load i32, i32* @QUERY_FAT, align 4
  %30 = call i32 @cpu_to_le32(i32 %29)
  %31 = load %struct.be_cmd_req_get_fat*, %struct.be_cmd_req_get_fat** %6, align 8
  %32 = getelementptr inbounds %struct.be_cmd_req_get_fat, %struct.be_cmd_req_get_fat* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %34 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %19
  %38 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %39 = call i8* @embedded_payload(%struct.be_mcc_wrb* %38)
  %40 = bitcast i8* %39 to %struct.be_cmd_resp_get_fat*
  store %struct.be_cmd_resp_get_fat* %40, %struct.be_cmd_resp_get_fat** %8, align 8
  %41 = load i64*, i64** %4, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load %struct.be_cmd_resp_get_fat*, %struct.be_cmd_resp_get_fat** %8, align 8
  %45 = getelementptr inbounds %struct.be_cmd_resp_get_fat, %struct.be_cmd_resp_get_fat* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.be_cmd_resp_get_fat*, %struct.be_cmd_resp_get_fat** %8, align 8
  %50 = getelementptr inbounds %struct.be_cmd_resp_get_fat, %struct.be_cmd_resp_get_fat* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @le32_to_cpu(i64 %51)
  %53 = sub i64 %52, 8
  %54 = load i64*, i64** %4, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %48, %43, %37
  br label %56

56:                                               ; preds = %55, %19
  br label %57

57:                                               ; preds = %56, %16
  %58 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock_bh(i32* %59)
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
