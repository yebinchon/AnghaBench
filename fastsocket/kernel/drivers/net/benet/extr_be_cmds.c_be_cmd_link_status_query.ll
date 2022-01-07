; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_link_status_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_link_status_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_link_status = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.be_cmd_resp_link_status = type { i64, i32, i64 }

@LINK_DOWN = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_NTWK_LINK_STATUS_QUERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_link_status_query(%struct.be_adapter* %0, i32* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.be_mcc_wrb*, align 8
  %10 = alloca %struct.be_cmd_req_link_status*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.be_cmd_resp_link_status*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load i64*, i64** %7, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i64, i64* @LINK_DOWN, align 8
  %20 = load i64*, i64** %7, align 8
  store i64 %19, i64* %20, align 8
  br label %21

21:                                               ; preds = %18, %4
  %22 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %23 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %22)
  store %struct.be_mcc_wrb* %23, %struct.be_mcc_wrb** %9, align 8
  %24 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %25 = icmp ne %struct.be_mcc_wrb* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %11, align 4
  br label %97

29:                                               ; preds = %21
  %30 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %31 = call i8* @embedded_payload(%struct.be_mcc_wrb* %30)
  %32 = bitcast i8* %31 to %struct.be_cmd_req_link_status*
  store %struct.be_cmd_req_link_status* %32, %struct.be_cmd_req_link_status** %10, align 8
  %33 = load %struct.be_cmd_req_link_status*, %struct.be_cmd_req_link_status** %10, align 8
  %34 = getelementptr inbounds %struct.be_cmd_req_link_status, %struct.be_cmd_req_link_status* %33, i32 0, i32 0
  %35 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %36 = load i32, i32* @OPCODE_COMMON_NTWK_LINK_STATUS_QUERY, align 4
  %37 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %38 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %34, i32 %35, i32 %36, i32 8, %struct.be_mcc_wrb* %37, i32* null)
  %39 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %40 = call i32 @BE2_chip(%struct.be_adapter* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %29
  %43 = load %struct.be_cmd_req_link_status*, %struct.be_cmd_req_link_status** %10, align 8
  %44 = getelementptr inbounds %struct.be_cmd_req_link_status, %struct.be_cmd_req_link_status* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %29
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.be_cmd_req_link_status*, %struct.be_cmd_req_link_status** %10, align 8
  %49 = getelementptr inbounds %struct.be_cmd_req_link_status, %struct.be_cmd_req_link_status* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %52 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %96, label %55

55:                                               ; preds = %46
  %56 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %57 = call i8* @embedded_payload(%struct.be_mcc_wrb* %56)
  %58 = bitcast i8* %57 to %struct.be_cmd_resp_link_status*
  store %struct.be_cmd_resp_link_status* %58, %struct.be_cmd_resp_link_status** %12, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %87

61:                                               ; preds = %55
  %62 = load %struct.be_cmd_resp_link_status*, %struct.be_cmd_resp_link_status** %12, align 8
  %63 = getelementptr inbounds %struct.be_cmd_resp_link_status, %struct.be_cmd_resp_link_status* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.be_cmd_resp_link_status*, %struct.be_cmd_resp_link_status** %12, align 8
  %68 = getelementptr inbounds %struct.be_cmd_resp_link_status, %struct.be_cmd_resp_link_status* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @le16_to_cpu(i64 %69)
  %71 = mul nsw i32 %70, 10
  br label %77

72:                                               ; preds = %61
  %73 = load %struct.be_cmd_resp_link_status*, %struct.be_cmd_resp_link_status** %12, align 8
  %74 = getelementptr inbounds %struct.be_cmd_resp_link_status, %struct.be_cmd_resp_link_status* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @be_mac_to_link_speed(i32 %75)
  br label %77

77:                                               ; preds = %72, %66
  %78 = phi i32 [ %71, %66 ], [ %76, %72 ]
  %79 = load i32*, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct.be_cmd_resp_link_status*, %struct.be_cmd_resp_link_status** %12, align 8
  %81 = getelementptr inbounds %struct.be_cmd_resp_link_status, %struct.be_cmd_resp_link_status* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %77
  %85 = load i32*, i32** %6, align 8
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %84, %77
  br label %87

87:                                               ; preds = %86, %55
  %88 = load i64*, i64** %7, align 8
  %89 = icmp ne i64* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.be_cmd_resp_link_status*, %struct.be_cmd_resp_link_status** %12, align 8
  %92 = getelementptr inbounds %struct.be_cmd_resp_link_status, %struct.be_cmd_resp_link_status* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64*, i64** %7, align 8
  store i64 %93, i64* %94, align 8
  br label %95

95:                                               ; preds = %90, %87
  br label %96

96:                                               ; preds = %95, %46
  br label %97

97:                                               ; preds = %96, %26
  %98 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %99 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock_bh(i32* %99)
  %101 = load i32, i32* %11, align 4
  ret i32 %101
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @BE2_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @be_mac_to_link_speed(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
