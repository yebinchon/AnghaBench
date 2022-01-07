; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam-dma.c_omap24xxcam_sgdma_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam-dma.c_omap24xxcam_sgdma_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap24xxcam_sgdma = type { i32, i32, i32, %struct.sgdma_state* }
%struct.sgdma_state = type { i32, i32, i8*, i32, i64, i64, i64, i64, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NUM_SG_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap24xxcam_sgdma_queue(%struct.omap24xxcam_sgdma* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.omap24xxcam_sgdma*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sgdma_state*, align 8
  store %struct.omap24xxcam_sgdma* %0, %struct.omap24xxcam_sgdma** %8, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %10, align 4
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %23 = icmp ne %struct.scatterlist* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = and i32 %21, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18, %6
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %97

31:                                               ; preds = %18
  %32 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %8, align 8
  %33 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %32, i32 0, i32 1
  %34 = load i64, i64* %14, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %8, align 8
  %37 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %31
  %41 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %8, align 8
  %42 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %41, i32 0, i32 1
  %43 = load i64, i64* %14, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %97

47:                                               ; preds = %31
  %48 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %8, align 8
  %49 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %48, i32 0, i32 3
  %50 = load %struct.sgdma_state*, %struct.sgdma_state** %49, align 8
  %51 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %8, align 8
  %52 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %50, i64 %54
  store %struct.sgdma_state* %55, %struct.sgdma_state** %15, align 8
  %56 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %57 = load %struct.sgdma_state*, %struct.sgdma_state** %15, align 8
  %58 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %57, i32 0, i32 8
  store %struct.scatterlist* %56, %struct.scatterlist** %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.sgdma_state*, %struct.sgdma_state** %15, align 8
  %61 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.sgdma_state*, %struct.sgdma_state** %15, align 8
  %63 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %62, i32 0, i32 7
  store i64 0, i64* %63, align 8
  %64 = load %struct.sgdma_state*, %struct.sgdma_state** %15, align 8
  %65 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %64, i32 0, i32 6
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.sgdma_state*, %struct.sgdma_state** %15, align 8
  %68 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.sgdma_state*, %struct.sgdma_state** %15, align 8
  %70 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %69, i32 0, i32 5
  store i64 0, i64* %70, align 8
  %71 = load %struct.sgdma_state*, %struct.sgdma_state** %15, align 8
  %72 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.sgdma_state*, %struct.sgdma_state** %15, align 8
  %75 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = load %struct.sgdma_state*, %struct.sgdma_state** %15, align 8
  %78 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %8, align 8
  %80 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* @NUM_SG_DMA, align 4
  %84 = srem i32 %82, %83
  %85 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %8, align 8
  %86 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %8, align 8
  %88 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %88, align 8
  %91 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %8, align 8
  %92 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %91, i32 0, i32 1
  %93 = load i64, i64* %14, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %8, align 8
  %96 = call i32 @omap24xxcam_sgdma_process(%struct.omap24xxcam_sgdma* %95)
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %47, %40, %28
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @omap24xxcam_sgdma_process(%struct.omap24xxcam_sgdma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
