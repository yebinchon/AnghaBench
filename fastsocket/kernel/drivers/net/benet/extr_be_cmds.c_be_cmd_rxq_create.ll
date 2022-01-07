; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_rxq_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_rxq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_queue_info = type { i32, i32, %struct.be_dma_mem }
%struct.be_dma_mem = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_eth_rx_create = type { i32, i8*, i8*, i8*, i32, i64, i8*, i32 }
%struct.be_cmd_resp_eth_rx_create = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_ETH = common dso_local global i32 0, align 4
@OPCODE_ETH_RX_CREATE = common dso_local global i32 0, align 4
@BE_MAX_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_rxq_create(%struct.be_adapter* %0, %struct.be_queue_info* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.be_adapter*, align 8
  %9 = alloca %struct.be_queue_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.be_mcc_wrb*, align 8
  %16 = alloca %struct.be_cmd_req_eth_rx_create*, align 8
  %17 = alloca %struct.be_dma_mem*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.be_cmd_resp_eth_rx_create*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %8, align 8
  store %struct.be_queue_info* %1, %struct.be_queue_info** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %20 = load %struct.be_queue_info*, %struct.be_queue_info** %9, align 8
  %21 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %20, i32 0, i32 2
  store %struct.be_dma_mem* %21, %struct.be_dma_mem** %17, align 8
  %22 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %23 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %26 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %25)
  store %struct.be_mcc_wrb* %26, %struct.be_mcc_wrb** %15, align 8
  %27 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %15, align 8
  %28 = icmp ne %struct.be_mcc_wrb* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %7
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %18, align 4
  br label %95

32:                                               ; preds = %7
  %33 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %15, align 8
  %34 = call i8* @embedded_payload(%struct.be_mcc_wrb* %33)
  %35 = bitcast i8* %34 to %struct.be_cmd_req_eth_rx_create*
  store %struct.be_cmd_req_eth_rx_create* %35, %struct.be_cmd_req_eth_rx_create** %16, align 8
  %36 = load %struct.be_cmd_req_eth_rx_create*, %struct.be_cmd_req_eth_rx_create** %16, align 8
  %37 = getelementptr inbounds %struct.be_cmd_req_eth_rx_create, %struct.be_cmd_req_eth_rx_create* %36, i32 0, i32 7
  %38 = load i32, i32* @CMD_SUBSYSTEM_ETH, align 4
  %39 = load i32, i32* @OPCODE_ETH_RX_CREATE, align 4
  %40 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %15, align 8
  %41 = call i32 @be_wrb_cmd_hdr_prepare(i32* %37, i32 %38, i32 %39, i32 64, %struct.be_mcc_wrb* %40, i32* null)
  %42 = load i32, i32* %10, align 4
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.be_cmd_req_eth_rx_create*, %struct.be_cmd_req_eth_rx_create** %16, align 8
  %45 = getelementptr inbounds %struct.be_cmd_req_eth_rx_create, %struct.be_cmd_req_eth_rx_create* %44, i32 0, i32 6
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @fls(i32 %46)
  %48 = sub nsw i64 %47, 1
  %49 = load %struct.be_cmd_req_eth_rx_create*, %struct.be_cmd_req_eth_rx_create** %16, align 8
  %50 = getelementptr inbounds %struct.be_cmd_req_eth_rx_create, %struct.be_cmd_req_eth_rx_create* %49, i32 0, i32 5
  store i64 %48, i64* %50, align 8
  %51 = load %struct.be_cmd_req_eth_rx_create*, %struct.be_cmd_req_eth_rx_create** %16, align 8
  %52 = getelementptr inbounds %struct.be_cmd_req_eth_rx_create, %struct.be_cmd_req_eth_rx_create* %51, i32 0, i32 0
  store i32 2, i32* %52, align 8
  %53 = load %struct.be_cmd_req_eth_rx_create*, %struct.be_cmd_req_eth_rx_create** %16, align 8
  %54 = getelementptr inbounds %struct.be_cmd_req_eth_rx_create, %struct.be_cmd_req_eth_rx_create* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.be_cmd_req_eth_rx_create*, %struct.be_cmd_req_eth_rx_create** %16, align 8
  %57 = getelementptr inbounds %struct.be_cmd_req_eth_rx_create, %struct.be_cmd_req_eth_rx_create* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = load %struct.be_dma_mem*, %struct.be_dma_mem** %17, align 8
  %61 = call i32 @be_cmd_page_addrs_prepare(i32 %55, i32 %59, %struct.be_dma_mem* %60)
  %62 = load i32, i32* %12, align 4
  %63 = call i8* @cpu_to_le32(i32 %62)
  %64 = load %struct.be_cmd_req_eth_rx_create*, %struct.be_cmd_req_eth_rx_create** %16, align 8
  %65 = getelementptr inbounds %struct.be_cmd_req_eth_rx_create, %struct.be_cmd_req_eth_rx_create* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @BE_MAX_JUMBO_FRAME_SIZE, align 4
  %67 = call i8* @cpu_to_le16(i32 %66)
  %68 = load %struct.be_cmd_req_eth_rx_create*, %struct.be_cmd_req_eth_rx_create** %16, align 8
  %69 = getelementptr inbounds %struct.be_cmd_req_eth_rx_create, %struct.be_cmd_req_eth_rx_create* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i8* @cpu_to_le32(i32 %70)
  %72 = load %struct.be_cmd_req_eth_rx_create*, %struct.be_cmd_req_eth_rx_create** %16, align 8
  %73 = getelementptr inbounds %struct.be_cmd_req_eth_rx_create, %struct.be_cmd_req_eth_rx_create* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %75 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %74)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %32
  %79 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %15, align 8
  %80 = call i8* @embedded_payload(%struct.be_mcc_wrb* %79)
  %81 = bitcast i8* %80 to %struct.be_cmd_resp_eth_rx_create*
  store %struct.be_cmd_resp_eth_rx_create* %81, %struct.be_cmd_resp_eth_rx_create** %19, align 8
  %82 = load %struct.be_cmd_resp_eth_rx_create*, %struct.be_cmd_resp_eth_rx_create** %19, align 8
  %83 = getelementptr inbounds %struct.be_cmd_resp_eth_rx_create, %struct.be_cmd_resp_eth_rx_create* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le16_to_cpu(i32 %84)
  %86 = load %struct.be_queue_info*, %struct.be_queue_info** %9, align 8
  %87 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.be_queue_info*, %struct.be_queue_info** %9, align 8
  %89 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  %90 = load %struct.be_cmd_resp_eth_rx_create*, %struct.be_cmd_resp_eth_rx_create** %19, align 8
  %91 = getelementptr inbounds %struct.be_cmd_resp_eth_rx_create, %struct.be_cmd_resp_eth_rx_create* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %14, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %78, %32
  br label %95

95:                                               ; preds = %94, %29
  %96 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %97 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock_bh(i32* %97)
  %99 = load i32, i32* %18, align 4
  ret i32 %99
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @fls(i32) #1

declare dso_local i32 @be_cmd_page_addrs_prepare(i32, i32, %struct.be_dma_mem*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
