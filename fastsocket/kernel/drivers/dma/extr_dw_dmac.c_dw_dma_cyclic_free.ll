; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dw_dmac.c_dw_dma_cyclic_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dw_dmac.c_dw_dma_cyclic_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.dma_chan = type { i32 }
%struct.dw_dma_chan = type { i32, i32, i32, %struct.TYPE_3__, %struct.dw_cyclic_desc* }
%struct.TYPE_3__ = type { i32 }
%struct.dw_cyclic_desc = type { i32, %struct.dw_cyclic_desc* }
%struct.dw_dma = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"cyclic free\0A\00", align 1
@CH_EN = common dso_local global i32 0, align 4
@CLEAR = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@DW_DMA_IS_CYCLIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_dma_cyclic_free(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.dw_dma_chan*, align 8
  %4 = alloca %struct.dw_dma*, align 8
  %5 = alloca %struct.dw_cyclic_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = call %struct.dw_dma_chan* @to_dw_dma_chan(%struct.dma_chan* %7)
  store %struct.dw_dma_chan* %8, %struct.dw_dma_chan** %3, align 8
  %9 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.dw_dma* @to_dw_dma(i32 %12)
  store %struct.dw_dma* %13, %struct.dw_dma** %4, align 8
  %14 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %15 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %14, i32 0, i32 4
  %16 = load %struct.dw_cyclic_desc*, %struct.dw_cyclic_desc** %15, align 8
  store %struct.dw_cyclic_desc* %16, %struct.dw_cyclic_desc** %5, align 8
  %17 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %18 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %17, i32 0, i32 3
  %19 = call i32 @chan2dev(%struct.TYPE_3__* %18)
  %20 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.dw_cyclic_desc*, %struct.dw_cyclic_desc** %5, align 8
  %22 = icmp ne %struct.dw_cyclic_desc* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %101

24:                                               ; preds = %1
  %25 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %26 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %25, i32 0, i32 2
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %29 = load i32, i32* @CH_EN, align 4
  %30 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %31 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @channel_clear_bit(%struct.dw_dma* %28, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %43, %24
  %35 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %36 = load i32, i32* @CH_EN, align 4
  %37 = call i32 @dma_readl(%struct.dw_dma* %35, i32 %36)
  %38 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %39 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = call i32 (...) @cpu_relax()
  br label %34

45:                                               ; preds = %34
  %46 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CLEAR, i32 0, i32 2), align 4
  %48 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %49 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dma_writel(%struct.dw_dma* %46, i32 %47, i32 %50)
  %52 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CLEAR, i32 0, i32 1), align 4
  %54 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %55 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dma_writel(%struct.dw_dma* %52, i32 %53, i32 %56)
  %58 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CLEAR, i32 0, i32 0), align 4
  %60 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %61 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dma_writel(%struct.dw_dma* %58, i32 %59, i32 %62)
  %64 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %65 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %64, i32 0, i32 2
  %66 = call i32 @spin_unlock_bh(i32* %65)
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %87, %45
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.dw_cyclic_desc*, %struct.dw_cyclic_desc** %5, align 8
  %70 = getelementptr inbounds %struct.dw_cyclic_desc, %struct.dw_cyclic_desc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %75 = load %struct.dw_cyclic_desc*, %struct.dw_cyclic_desc** %5, align 8
  %76 = getelementptr inbounds %struct.dw_cyclic_desc, %struct.dw_cyclic_desc* %75, i32 0, i32 1
  %77 = load %struct.dw_cyclic_desc*, %struct.dw_cyclic_desc** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.dw_cyclic_desc, %struct.dw_cyclic_desc* %77, i64 %79
  %81 = bitcast %struct.dw_cyclic_desc* %80 to { i32, %struct.dw_cyclic_desc* }*
  %82 = getelementptr inbounds { i32, %struct.dw_cyclic_desc* }, { i32, %struct.dw_cyclic_desc* }* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds { i32, %struct.dw_cyclic_desc* }, { i32, %struct.dw_cyclic_desc* }* %81, i32 0, i32 1
  %85 = load %struct.dw_cyclic_desc*, %struct.dw_cyclic_desc** %84, align 8
  %86 = call i32 @dwc_desc_put(%struct.dw_dma_chan* %74, i32 %83, %struct.dw_cyclic_desc* %85)
  br label %87

87:                                               ; preds = %73
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %67

90:                                               ; preds = %67
  %91 = load %struct.dw_cyclic_desc*, %struct.dw_cyclic_desc** %5, align 8
  %92 = getelementptr inbounds %struct.dw_cyclic_desc, %struct.dw_cyclic_desc* %91, i32 0, i32 1
  %93 = load %struct.dw_cyclic_desc*, %struct.dw_cyclic_desc** %92, align 8
  %94 = call i32 @kfree(%struct.dw_cyclic_desc* %93)
  %95 = load %struct.dw_cyclic_desc*, %struct.dw_cyclic_desc** %5, align 8
  %96 = call i32 @kfree(%struct.dw_cyclic_desc* %95)
  %97 = load i32, i32* @DW_DMA_IS_CYCLIC, align 4
  %98 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %99 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %98, i32 0, i32 1
  %100 = call i32 @clear_bit(i32 %97, i32* %99)
  br label %101

101:                                              ; preds = %90, %23
  ret void
}

declare dso_local %struct.dw_dma_chan* @to_dw_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.dw_dma* @to_dw_dma(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @channel_clear_bit(%struct.dw_dma*, i32, i32) #1

declare dso_local i32 @dma_readl(%struct.dw_dma*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dma_writel(%struct.dw_dma*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dwc_desc_put(%struct.dw_dma_chan*, i32, %struct.dw_cyclic_desc*) #1

declare dso_local i32 @kfree(%struct.dw_cyclic_desc*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
