; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_query_port_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_query_port_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_get_port_name = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.be_cmd_resp_get_port_name = type { i64* }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_GET_PORT_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_query_port_name(%struct.be_adapter* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.be_mcc_wrb*, align 8
  %7 = alloca %struct.be_cmd_req_get_port_name*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.be_cmd_resp_get_port_name*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %11 = call i32 @lancer_chip(%struct.be_adapter* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, 48
  %18 = load i64*, i64** %5, align 8
  store i64 %17, i64* %18, align 8
  store i32 0, i32* %3, align 4
  br label %72

19:                                               ; preds = %2
  %20 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %20, i32 0, i32 1
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %24 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %23)
  store %struct.be_mcc_wrb* %24, %struct.be_mcc_wrb** %6, align 8
  %25 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %26 = icmp ne %struct.be_mcc_wrb* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %67

30:                                               ; preds = %19
  %31 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %32 = call i8* @embedded_payload(%struct.be_mcc_wrb* %31)
  %33 = bitcast i8* %32 to %struct.be_cmd_req_get_port_name*
  store %struct.be_cmd_req_get_port_name* %33, %struct.be_cmd_req_get_port_name** %7, align 8
  %34 = load %struct.be_cmd_req_get_port_name*, %struct.be_cmd_req_get_port_name** %7, align 8
  %35 = getelementptr inbounds %struct.be_cmd_req_get_port_name, %struct.be_cmd_req_get_port_name* %34, i32 0, i32 0
  %36 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %37 = load i32, i32* @OPCODE_COMMON_GET_PORT_NAME, align 4
  %38 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %39 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %35, i32 %36, i32 %37, i32 4, %struct.be_mcc_wrb* %38, i32* null)
  %40 = load %struct.be_cmd_req_get_port_name*, %struct.be_cmd_req_get_port_name** %7, align 8
  %41 = getelementptr inbounds %struct.be_cmd_req_get_port_name, %struct.be_cmd_req_get_port_name* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %44 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %30
  %48 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %49 = call i8* @embedded_payload(%struct.be_mcc_wrb* %48)
  %50 = bitcast i8* %49 to %struct.be_cmd_resp_get_port_name*
  store %struct.be_cmd_resp_get_port_name* %50, %struct.be_cmd_resp_get_port_name** %9, align 8
  %51 = load %struct.be_cmd_resp_get_port_name*, %struct.be_cmd_resp_get_port_name** %9, align 8
  %52 = getelementptr inbounds %struct.be_cmd_resp_get_port_name, %struct.be_cmd_resp_get_port_name* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %55 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %5, align 8
  store i64 %58, i64* %59, align 8
  br label %66

60:                                               ; preds = %30
  %61 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %62 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 48
  %65 = load i64*, i64** %5, align 8
  store i64 %64, i64* %65, align 8
  br label %66

66:                                               ; preds = %60, %47
  br label %67

67:                                               ; preds = %66, %27
  %68 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %69 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %68, i32 0, i32 1
  %70 = call i32 @spin_unlock_bh(i32* %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %67, %13
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
