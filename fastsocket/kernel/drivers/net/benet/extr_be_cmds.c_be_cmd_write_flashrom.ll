; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_write_flashrom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_write_flashrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32, i32 }
%struct.be_dma_mem = type { i32, %struct.be_cmd_write_flashrom* }
%struct.be_cmd_write_flashrom = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8* }
%struct.be_mcc_wrb = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_WRITE_FLASHROM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_write_flashrom(%struct.be_adapter* %0, %struct.be_dma_mem* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_adapter*, align 8
  %8 = alloca %struct.be_dma_mem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.be_mcc_wrb*, align 8
  %13 = alloca %struct.be_cmd_write_flashrom*, align 8
  %14 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %7, align 8
  store %struct.be_dma_mem* %1, %struct.be_dma_mem** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %16 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %15, i32 0, i32 1
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %19 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %21 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %20)
  store %struct.be_mcc_wrb* %21, %struct.be_mcc_wrb** %12, align 8
  %22 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %12, align 8
  %23 = icmp ne %struct.be_mcc_wrb* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %14, align 4
  br label %73

27:                                               ; preds = %5
  %28 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %29 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %28, i32 0, i32 1
  %30 = load %struct.be_cmd_write_flashrom*, %struct.be_cmd_write_flashrom** %29, align 8
  store %struct.be_cmd_write_flashrom* %30, %struct.be_cmd_write_flashrom** %13, align 8
  %31 = load %struct.be_cmd_write_flashrom*, %struct.be_cmd_write_flashrom** %13, align 8
  %32 = getelementptr inbounds %struct.be_cmd_write_flashrom, %struct.be_cmd_write_flashrom* %31, i32 0, i32 1
  %33 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %34 = load i32, i32* @OPCODE_COMMON_WRITE_FLASHROM, align 4
  %35 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %36 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %12, align 8
  %39 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %40 = call i32 @be_wrb_cmd_hdr_prepare(i32* %32, i32 %33, i32 %34, i32 %37, %struct.be_mcc_wrb* %38, %struct.be_dma_mem* %39)
  %41 = load i32, i32* %9, align 4
  %42 = call i8* @cpu_to_le32(i32 %41)
  %43 = load %struct.be_cmd_write_flashrom*, %struct.be_cmd_write_flashrom** %13, align 8
  %44 = getelementptr inbounds %struct.be_cmd_write_flashrom, %struct.be_cmd_write_flashrom* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i8* %42, i8** %45, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.be_cmd_write_flashrom*, %struct.be_cmd_write_flashrom** %13, align 8
  %49 = getelementptr inbounds %struct.be_cmd_write_flashrom, %struct.be_cmd_write_flashrom* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = load %struct.be_cmd_write_flashrom*, %struct.be_cmd_write_flashrom** %13, align 8
  %54 = getelementptr inbounds %struct.be_cmd_write_flashrom, %struct.be_cmd_write_flashrom* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %57 = call i32 @be_mcc_notify(%struct.be_adapter* %56)
  %58 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %59 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %58, i32 0, i32 1
  %60 = call i32 @spin_unlock_bh(i32* %59)
  %61 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %62 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %61, i32 0, i32 2
  %63 = call i32 @msecs_to_jiffies(i32 40000)
  %64 = call i32 @wait_for_completion_timeout(i32* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %27
  store i32 -1, i32* %14, align 4
  br label %71

67:                                               ; preds = %27
  %68 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %69 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %67, %66
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %6, align 4
  br label %78

73:                                               ; preds = %24
  %74 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %75 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %74, i32 0, i32 1
  %76 = call i32 @spin_unlock_bh(i32* %75)
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %73, %71
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @be_mcc_notify(%struct.be_adapter*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
