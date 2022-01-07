; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pasemi/extr_dma_lib.c_pasemi_dma_stop_chan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pasemi/extr_dma_lib.c_pasemi_dma_stop_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasemi_dmachan = type { i64, i32 }

@RXCHAN = common dso_local global i64 0, align 8
@PAS_DMA_RXCHAN_CCMDSTA_ST = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@PAS_DMA_RXCHAN_CCMDSTA_ACT = common dso_local global i32 0, align 4
@PAS_DMA_TXCHAN_TCMDSTA_ST = common dso_local global i32 0, align 4
@PAS_DMA_TXCHAN_TCMDSTA_ACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pasemi_dma_stop_chan(%struct.pasemi_dmachan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pasemi_dmachan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pasemi_dmachan* %0, %struct.pasemi_dmachan** %3, align 8
  %7 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %3, align 8
  %8 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RXCHAN, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %1
  %13 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %3, align 8
  %14 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @PAS_DMA_RXCHAN_CCMDSTA(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PAS_DMA_RXCHAN_CCMDSTA_ST, align 4
  %19 = call i32 @pasemi_write_dma_reg(i32 %17, i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %36, %12
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MAX_RETRIES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @pasemi_read_dma_reg(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PAS_DMA_RXCHAN_CCMDSTA_ACT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @pasemi_write_dma_reg(i32 %32, i32 0)
  store i32 1, i32* %2, align 4
  br label %69

34:                                               ; preds = %24
  %35 = call i32 (...) @cond_resched()
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %20

39:                                               ; preds = %20
  br label %68

40:                                               ; preds = %1
  %41 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %3, align 8
  %42 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @PAS_DMA_TXCHAN_TCMDSTA(i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @PAS_DMA_TXCHAN_TCMDSTA_ST, align 4
  %47 = call i32 @pasemi_write_dma_reg(i32 %45, i32 %46)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %64, %40
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @MAX_RETRIES, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @pasemi_read_dma_reg(i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @PAS_DMA_TXCHAN_TCMDSTA_ACT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @pasemi_write_dma_reg(i32 %60, i32 0)
  store i32 1, i32* %2, align 4
  br label %69

62:                                               ; preds = %52
  %63 = call i32 (...) @cond_resched()
  br label %64

64:                                               ; preds = %62
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %48

67:                                               ; preds = %48
  br label %68

68:                                               ; preds = %67, %39
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %59, %31
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @PAS_DMA_RXCHAN_CCMDSTA(i32) #1

declare dso_local i32 @pasemi_write_dma_reg(i32, i32) #1

declare dso_local i32 @pasemi_read_dma_reg(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @PAS_DMA_TXCHAN_TCMDSTA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
