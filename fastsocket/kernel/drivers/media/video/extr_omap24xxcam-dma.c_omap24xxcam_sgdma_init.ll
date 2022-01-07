; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam-dma.c_omap24xxcam_sgdma_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam-dma.c_omap24xxcam_sgdma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap24xxcam_sgdma = type { i32, i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i64, i64, i64, i64, i64 }

@NUM_SG_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap24xxcam_sgdma_init(%struct.omap24xxcam_sgdma* %0, i64 %1, void (i64)* %2, i64 %3) #0 {
  %5 = alloca %struct.omap24xxcam_sgdma*, align 8
  %6 = alloca i64, align 8
  %7 = alloca void (i64)*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.omap24xxcam_sgdma* %0, %struct.omap24xxcam_sgdma** %5, align 8
  store i64 %1, i64* %6, align 8
  store void (i64)* %2, void (i64)** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %5, align 8
  %11 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %10, i32 0, i32 5
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load i32, i32* @NUM_SG_DMA, align 4
  %14 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %5, align 8
  %15 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %5, align 8
  %17 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %72, %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @NUM_SG_DMA, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %75

22:                                               ; preds = %18
  %23 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %5, align 8
  %24 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %5, align 8
  %31 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %5, align 8
  %38 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %5, align 8
  %45 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %5, align 8
  %52 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %5, align 8
  %59 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32* null, i32** %64, align 8
  %65 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %5, align 8
  %66 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %22
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %18

75:                                               ; preds = %18
  %76 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %5, align 8
  %77 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %76, i32 0, i32 2
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @omap24xxcam_dma_init(i32* %77, i64 %78)
  %80 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %5, align 8
  %81 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %80, i32 0, i32 1
  %82 = load void (i64)*, void (i64)** %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @setup_timer(i32* %81, void (i64)* %82, i64 %83)
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @omap24xxcam_dma_init(i32*, i64) #1

declare dso_local i32 @setup_timer(i32*, void (i64)*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
