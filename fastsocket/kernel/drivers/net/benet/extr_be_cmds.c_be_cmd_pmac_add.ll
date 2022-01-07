; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_pmac_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_pmac_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_pmac_add = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.be_cmd_resp_pmac_add = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_NTWK_PMAC_ADD = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MCC_STATUS_UNAUTHORIZED_REQUEST = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_pmac_add(%struct.be_adapter* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.be_mcc_wrb*, align 8
  %12 = alloca %struct.be_cmd_req_pmac_add*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.be_cmd_resp_pmac_add*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %19 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %18)
  store %struct.be_mcc_wrb* %19, %struct.be_mcc_wrb** %11, align 8
  %20 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %21 = icmp ne %struct.be_mcc_wrb* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %13, align 4
  br label %63

25:                                               ; preds = %5
  %26 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %27 = call i8* @embedded_payload(%struct.be_mcc_wrb* %26)
  %28 = bitcast i8* %27 to %struct.be_cmd_req_pmac_add*
  store %struct.be_cmd_req_pmac_add* %28, %struct.be_cmd_req_pmac_add** %12, align 8
  %29 = load %struct.be_cmd_req_pmac_add*, %struct.be_cmd_req_pmac_add** %12, align 8
  %30 = getelementptr inbounds %struct.be_cmd_req_pmac_add, %struct.be_cmd_req_pmac_add* %29, i32 0, i32 2
  %31 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %32 = load i32, i32* @OPCODE_COMMON_NTWK_PMAC_ADD, align 4
  %33 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %34 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %30, i32 %31, i32 %32, i32 12, %struct.be_mcc_wrb* %33, i32* null)
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.be_cmd_req_pmac_add*, %struct.be_cmd_req_pmac_add** %12, align 8
  %37 = getelementptr inbounds %struct.be_cmd_req_pmac_add, %struct.be_cmd_req_pmac_add* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @cpu_to_le32(i32 %39)
  %41 = load %struct.be_cmd_req_pmac_add*, %struct.be_cmd_req_pmac_add** %12, align 8
  %42 = getelementptr inbounds %struct.be_cmd_req_pmac_add, %struct.be_cmd_req_pmac_add* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.be_cmd_req_pmac_add*, %struct.be_cmd_req_pmac_add** %12, align 8
  %44 = getelementptr inbounds %struct.be_cmd_req_pmac_add, %struct.be_cmd_req_pmac_add* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @memcpy(i32 %45, i32* %46, i32 %47)
  %49 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %50 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %25
  %54 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %55 = call i8* @embedded_payload(%struct.be_mcc_wrb* %54)
  %56 = bitcast i8* %55 to %struct.be_cmd_resp_pmac_add*
  store %struct.be_cmd_resp_pmac_add* %56, %struct.be_cmd_resp_pmac_add** %14, align 8
  %57 = load %struct.be_cmd_resp_pmac_add*, %struct.be_cmd_resp_pmac_add** %14, align 8
  %58 = getelementptr inbounds %struct.be_cmd_resp_pmac_add, %struct.be_cmd_resp_pmac_add* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %53, %25
  br label %63

63:                                               ; preds = %62, %22
  %64 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %65 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_bh(i32* %65)
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @MCC_STATUS_UNAUTHORIZED_REQUEST, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @EPERM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %70, %63
  %74 = load i32, i32* %13, align 4
  ret i32 %74
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
