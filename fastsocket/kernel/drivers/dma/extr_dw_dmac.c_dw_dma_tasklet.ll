; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dw_dmac.c_dw_dma_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dw_dmac.c_dw_dma_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.dw_dma = type { i32, %struct.dw_dma_chan*, %struct.TYPE_4__ }
%struct.dw_dma_chan = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@RAW = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [40 x i8] c"tasklet: status_block=%x status_err=%x\0A\00", align 1
@DW_DMA_IS_CYCLIC = common dso_local global i32 0, align 4
@MASK = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dw_dma_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_dma_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.dw_dma*, align 8
  %4 = alloca %struct.dw_dma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.dw_dma*
  store %struct.dw_dma* %10, %struct.dw_dma** %3, align 8
  %11 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @RAW, i32 0, i32 2), align 4
  %13 = call i32 @dma_readl(%struct.dw_dma* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @RAW, i32 0, i32 1), align 4
  %16 = call i32 @dma_readl(%struct.dw_dma* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @RAW, i32 0, i32 0), align 4
  %19 = call i32 @dma_readl(%struct.dw_dma* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %21 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @dev_vdbg(i32 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %84, %1
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %30 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %87

34:                                               ; preds = %27
  %35 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %36 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %35, i32 0, i32 1
  %37 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %37, i64 %39
  store %struct.dw_dma_chan* %40, %struct.dw_dma_chan** %4, align 8
  %41 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %42 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %41, i32 0, i32 0
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load i32, i32* @DW_DMA_IS_CYCLIC, align 4
  %45 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %46 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %45, i32 0, i32 1
  %47 = call i64 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %34
  %50 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %51 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @dwc_handle_cyclic(%struct.dw_dma* %50, %struct.dw_dma_chan* %51, i32 %52, i32 %53, i32 %54)
  br label %80

56:                                               ; preds = %34
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %64 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %65 = call i32 @dwc_handle_error(%struct.dw_dma* %63, %struct.dw_dma_chan* %64)
  br label %79

66:                                               ; preds = %56
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %8, align 4
  %71 = shl i32 1, %70
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %76 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %77 = call i32 @dwc_scan_descriptors(%struct.dw_dma* %75, %struct.dw_dma_chan* %76)
  br label %78

78:                                               ; preds = %74, %66
  br label %79

79:                                               ; preds = %78, %62
  br label %80

80:                                               ; preds = %79, %49
  %81 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %82 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock(i32* %82)
  br label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %27

87:                                               ; preds = %27
  %88 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MASK, i32 0, i32 2), align 4
  %90 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %91 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @channel_set_bit(%struct.dw_dma* %88, i32 %89, i32 %92)
  %94 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MASK, i32 0, i32 1), align 4
  %96 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %97 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @channel_set_bit(%struct.dw_dma* %94, i32 %95, i32 %98)
  %100 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MASK, i32 0, i32 0), align 4
  %102 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %103 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @channel_set_bit(%struct.dw_dma* %100, i32 %101, i32 %104)
  ret void
}

declare dso_local i32 @dma_readl(%struct.dw_dma*, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dwc_handle_cyclic(%struct.dw_dma*, %struct.dw_dma_chan*, i32, i32, i32) #1

declare dso_local i32 @dwc_handle_error(%struct.dw_dma*, %struct.dw_dma_chan*) #1

declare dso_local i32 @dwc_scan_descriptors(%struct.dw_dma*, %struct.dw_dma_chan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @channel_set_bit(%struct.dw_dma*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
