; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_mac_addr_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_mac_addr_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_mac_query = type { i32, i32, i32, i32, i32 }
%struct.be_cmd_resp_mac_query = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_NTWK_MAC_QUERY = common dso_local global i32 0, align 4
@MAC_ADDRESS_TYPE_NETWORK = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_mac_addr_query(%struct.be_adapter* %0, i32* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.be_mcc_wrb*, align 8
  %12 = alloca %struct.be_cmd_req_mac_query*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.be_cmd_resp_mac_query*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
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
  br label %72

25:                                               ; preds = %5
  %26 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %27 = call i8* @embedded_payload(%struct.be_mcc_wrb* %26)
  %28 = bitcast i8* %27 to %struct.be_cmd_req_mac_query*
  store %struct.be_cmd_req_mac_query* %28, %struct.be_cmd_req_mac_query** %12, align 8
  %29 = load %struct.be_cmd_req_mac_query*, %struct.be_cmd_req_mac_query** %12, align 8
  %30 = getelementptr inbounds %struct.be_cmd_req_mac_query, %struct.be_cmd_req_mac_query* %29, i32 0, i32 4
  %31 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %32 = load i32, i32* @OPCODE_COMMON_NTWK_MAC_QUERY, align 4
  %33 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %34 = call i32 @be_wrb_cmd_hdr_prepare(i32* %30, i32 %31, i32 %32, i32 20, %struct.be_mcc_wrb* %33, i32* null)
  %35 = load i32, i32* @MAC_ADDRESS_TYPE_NETWORK, align 4
  %36 = load %struct.be_cmd_req_mac_query*, %struct.be_cmd_req_mac_query** %12, align 8
  %37 = getelementptr inbounds %struct.be_cmd_req_mac_query, %struct.be_cmd_req_mac_query* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load %struct.be_cmd_req_mac_query*, %struct.be_cmd_req_mac_query** %12, align 8
  %42 = getelementptr inbounds %struct.be_cmd_req_mac_query, %struct.be_cmd_req_mac_query* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %55

43:                                               ; preds = %25
  %44 = load i64, i64* %9, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @cpu_to_le16(i32 %45)
  %47 = load %struct.be_cmd_req_mac_query*, %struct.be_cmd_req_mac_query** %12, align 8
  %48 = getelementptr inbounds %struct.be_cmd_req_mac_query, %struct.be_cmd_req_mac_query* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @cpu_to_le32(i64 %49)
  %51 = load %struct.be_cmd_req_mac_query*, %struct.be_cmd_req_mac_query** %12, align 8
  %52 = getelementptr inbounds %struct.be_cmd_req_mac_query, %struct.be_cmd_req_mac_query* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.be_cmd_req_mac_query*, %struct.be_cmd_req_mac_query** %12, align 8
  %54 = getelementptr inbounds %struct.be_cmd_req_mac_query, %struct.be_cmd_req_mac_query* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %43, %40
  %56 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %57 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %62 = call i8* @embedded_payload(%struct.be_mcc_wrb* %61)
  %63 = bitcast i8* %62 to %struct.be_cmd_resp_mac_query*
  store %struct.be_cmd_resp_mac_query* %63, %struct.be_cmd_resp_mac_query** %14, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load %struct.be_cmd_resp_mac_query*, %struct.be_cmd_resp_mac_query** %14, align 8
  %66 = getelementptr inbounds %struct.be_cmd_resp_mac_query, %struct.be_cmd_resp_mac_query* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ETH_ALEN, align 4
  %70 = call i32 @memcpy(i32* %64, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %60, %55
  br label %72

72:                                               ; preds = %71, %22
  %73 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %74 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock_bh(i32* %74)
  %76 = load i32, i32* %13, align 4
  ret i32 %76
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
