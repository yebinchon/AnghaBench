; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32 }
%struct.be_dma_mem = type { i32, %struct.be_cmd_req_hdr* }
%struct.be_cmd_req_hdr = type { i32 }
%struct.be_mcc_wrb = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_ETH = common dso_local global i32 0, align 4
@OPCODE_ETH_GET_STATISTICS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_stats(%struct.be_adapter* %0, %struct.be_dma_mem* %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_dma_mem*, align 8
  %5 = alloca %struct.be_mcc_wrb*, align 8
  %6 = alloca %struct.be_cmd_req_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store %struct.be_dma_mem* %1, %struct.be_dma_mem** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 1
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %12 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %11)
  store %struct.be_mcc_wrb* %12, %struct.be_mcc_wrb** %5, align 8
  %13 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %14 = icmp ne %struct.be_mcc_wrb* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %20 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %19, i32 0, i32 1
  %21 = load %struct.be_cmd_req_hdr*, %struct.be_cmd_req_hdr** %20, align 8
  store %struct.be_cmd_req_hdr* %21, %struct.be_cmd_req_hdr** %6, align 8
  %22 = load %struct.be_cmd_req_hdr*, %struct.be_cmd_req_hdr** %6, align 8
  %23 = load i32, i32* @CMD_SUBSYSTEM_ETH, align 4
  %24 = load i32, i32* @OPCODE_ETH_GET_STATISTICS, align 4
  %25 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %26 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %29 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %30 = call i32 @be_wrb_cmd_hdr_prepare(%struct.be_cmd_req_hdr* %22, i32 %23, i32 %24, i32 %27, %struct.be_mcc_wrb* %28, %struct.be_dma_mem* %29)
  %31 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %32 = call i32 @BE2_chip(%struct.be_adapter* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %18
  %35 = load %struct.be_cmd_req_hdr*, %struct.be_cmd_req_hdr** %6, align 8
  %36 = getelementptr inbounds %struct.be_cmd_req_hdr, %struct.be_cmd_req_hdr* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %18
  %38 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %39 = call i32 @be_mcc_notify(%struct.be_adapter* %38)
  %40 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %15
  %43 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock_bh(i32* %44)
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.be_cmd_req_hdr*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i32 @BE2_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_mcc_notify(%struct.be_adapter*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
