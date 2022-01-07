; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam-dma.c_omap24xxcam_dma_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam-dma.c_omap24xxcam_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap24xxcam_dma = type { i64, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32*, i32* }

@NUM_CAMDMA_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap24xxcam_dma*, i64)* @omap24xxcam_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap24xxcam_dma_init(%struct.omap24xxcam_dma* %0, i64 %1) #0 {
  %3 = alloca %struct.omap24xxcam_dma*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.omap24xxcam_dma* %0, %struct.omap24xxcam_dma** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %7 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %6, i32 0, i32 4
  %8 = call i32 @spin_lock_init(i32* %7)
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %11 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load i32, i32* @NUM_CAMDMA_CHANNELS, align 4
  %13 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %14 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %16 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %36, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @NUM_CAMDMA_CHANNELS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %23 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %30 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %21
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %17

39:                                               ; preds = %17
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
