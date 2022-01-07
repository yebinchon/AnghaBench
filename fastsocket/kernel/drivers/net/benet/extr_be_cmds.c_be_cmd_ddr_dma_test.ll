; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_ddr_dma_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_ddr_dma_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_dma_mem = type { %struct.be_cmd_resp_ddrdma_test*, i32 }
%struct.be_cmd_resp_ddrdma_test = type { i64, i64*, i32, i32, i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_ddrdma_test = type { i64, i64*, i32, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_LOWLEVEL = common dso_local global i32 0, align 4
@OPCODE_LOWLEVEL_HOST_DDR_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_ddr_dma_test(%struct.be_adapter* %0, i32 %1, i32 %2, %struct.be_dma_mem* %3) #0 {
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_dma_mem*, align 8
  %9 = alloca %struct.be_mcc_wrb*, align 8
  %10 = alloca %struct.be_cmd_req_ddrdma_test*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.be_cmd_resp_ddrdma_test*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.be_dma_mem* %3, %struct.be_dma_mem** %8, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %19 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %18)
  store %struct.be_mcc_wrb* %19, %struct.be_mcc_wrb** %9, align 8
  %20 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %21 = icmp ne %struct.be_mcc_wrb* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %11, align 4
  br label %99

25:                                               ; preds = %4
  %26 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %27 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %26, i32 0, i32 0
  %28 = load %struct.be_cmd_resp_ddrdma_test*, %struct.be_cmd_resp_ddrdma_test** %27, align 8
  %29 = bitcast %struct.be_cmd_resp_ddrdma_test* %28 to %struct.be_cmd_req_ddrdma_test*
  store %struct.be_cmd_req_ddrdma_test* %29, %struct.be_cmd_req_ddrdma_test** %10, align 8
  %30 = load %struct.be_cmd_req_ddrdma_test*, %struct.be_cmd_req_ddrdma_test** %10, align 8
  %31 = getelementptr inbounds %struct.be_cmd_req_ddrdma_test, %struct.be_cmd_req_ddrdma_test* %30, i32 0, i32 5
  %32 = load i32, i32* @CMD_SUBSYSTEM_LOWLEVEL, align 4
  %33 = load i32, i32* @OPCODE_LOWLEVEL_HOST_DDR_DMA, align 4
  %34 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %35 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %38 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %39 = call i32 @be_wrb_cmd_hdr_prepare(i32* %31, i32 %32, i32 %33, i32 %36, %struct.be_mcc_wrb* %37, %struct.be_dma_mem* %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @cpu_to_le64(i32 %40)
  %42 = load %struct.be_cmd_req_ddrdma_test*, %struct.be_cmd_req_ddrdma_test** %10, align 8
  %43 = getelementptr inbounds %struct.be_cmd_req_ddrdma_test, %struct.be_cmd_req_ddrdma_test* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @cpu_to_le32(i32 %44)
  %46 = load %struct.be_cmd_req_ddrdma_test*, %struct.be_cmd_req_ddrdma_test** %10, align 8
  %47 = getelementptr inbounds %struct.be_cmd_req_ddrdma_test, %struct.be_cmd_req_ddrdma_test* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %70, %25
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %13, align 4
  %55 = mul nsw i32 %54, 8
  %56 = ashr i32 %53, %55
  %57 = sext i32 %56 to i64
  %58 = load %struct.be_cmd_req_ddrdma_test*, %struct.be_cmd_req_ddrdma_test** %10, align 8
  %59 = getelementptr inbounds %struct.be_cmd_req_ddrdma_test, %struct.be_cmd_req_ddrdma_test* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  store i64 %57, i64* %63, align 8
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp sgt i32 %66, 7
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %68, %52
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %48

73:                                               ; preds = %48
  %74 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %75 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %73
  %79 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %80 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %79, i32 0, i32 0
  %81 = load %struct.be_cmd_resp_ddrdma_test*, %struct.be_cmd_resp_ddrdma_test** %80, align 8
  store %struct.be_cmd_resp_ddrdma_test* %81, %struct.be_cmd_resp_ddrdma_test** %14, align 8
  %82 = load %struct.be_cmd_resp_ddrdma_test*, %struct.be_cmd_resp_ddrdma_test** %14, align 8
  %83 = getelementptr inbounds %struct.be_cmd_resp_ddrdma_test, %struct.be_cmd_resp_ddrdma_test* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.be_cmd_req_ddrdma_test*, %struct.be_cmd_req_ddrdma_test** %10, align 8
  %86 = getelementptr inbounds %struct.be_cmd_req_ddrdma_test, %struct.be_cmd_req_ddrdma_test* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i64 @memcmp(i32 %84, i64* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %78
  %92 = load %struct.be_cmd_resp_ddrdma_test*, %struct.be_cmd_resp_ddrdma_test** %14, align 8
  %93 = getelementptr inbounds %struct.be_cmd_resp_ddrdma_test, %struct.be_cmd_resp_ddrdma_test* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %78
  store i32 -1, i32* %11, align 4
  br label %97

97:                                               ; preds = %96, %91
  br label %98

98:                                               ; preds = %97, %73
  br label %99

99:                                               ; preds = %98, %22
  %100 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %101 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock_bh(i32* %101)
  %103 = load i32, i32* %11, align 4
  ret i32 %103
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i64 @memcmp(i32, i64*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
