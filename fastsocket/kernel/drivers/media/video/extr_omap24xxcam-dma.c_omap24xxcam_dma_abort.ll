; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam-dma.c_omap24xxcam_dma_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam-dma.c_omap24xxcam_dma_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap24xxcam_dma = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8*, i32 (%struct.omap24xxcam_dma*, i32, i8*)* }

@NUM_CAMDMA_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap24xxcam_dma*, i32)* @omap24xxcam_dma_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap24xxcam_dma_abort(%struct.omap24xxcam_dma* %0, i32 %1) #0 {
  %3 = alloca %struct.omap24xxcam_dma*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.omap24xxcam_dma*, i32, i8*)*, align 8
  %10 = alloca i8*, align 8
  store %struct.omap24xxcam_dma* %0, %struct.omap24xxcam_dma** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %12 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %11, i32 0, i32 2
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %16 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %19 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  %22 = load i32, i32* @NUM_CAMDMA_CHANNELS, align 4
  %23 = srem i32 %21, %22
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %38, %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @NUM_CAMDMA_CHANNELS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %30 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @omap24xxcam_dmahw_abort_ch(i32 %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* @NUM_CAMDMA_CHANNELS, align 4
  %37 = srem i32 %35, %36
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %43 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %103, %41
  %46 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %47 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NUM_CAMDMA_CHANNELS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @NUM_CAMDMA_CHANNELS, align 4
  %54 = icmp slt i32 %52, %53
  br label %55

55:                                               ; preds = %51, %45
  %56 = phi i1 [ false, %45 ], [ %54, %51 ]
  br i1 %56, label %57, label %104

57:                                               ; preds = %55
  %58 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %59 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %62 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  %65 = load i32, i32* @NUM_CAMDMA_CHANNELS, align 4
  %66 = srem i32 %64, %65
  store i32 %66, i32* %6, align 4
  %67 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %68 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32 (%struct.omap24xxcam_dma*, i32, i8*)*, i32 (%struct.omap24xxcam_dma*, i32, i8*)** %73, align 8
  store i32 (%struct.omap24xxcam_dma*, i32, i8*)* %74, i32 (%struct.omap24xxcam_dma*, i32, i8*)** %9, align 8
  %75 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %76 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %75, i32 0, i32 3
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %10, align 8
  %83 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %84 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  %89 = load i32 (%struct.omap24xxcam_dma*, i32, i8*)*, i32 (%struct.omap24xxcam_dma*, i32, i8*)** %9, align 8
  %90 = icmp ne i32 (%struct.omap24xxcam_dma*, i32, i8*)* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %57
  %92 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %93 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %92, i32 0, i32 2
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = load i32 (%struct.omap24xxcam_dma*, i32, i8*)*, i32 (%struct.omap24xxcam_dma*, i32, i8*)** %9, align 8
  %96 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 %95(%struct.omap24xxcam_dma* %96, i32 %97, i8* %98)
  %100 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %101 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %100, i32 0, i32 2
  %102 = call i32 @spin_lock(i32* %101)
  br label %103

103:                                              ; preds = %91, %57
  br label %45

104:                                              ; preds = %55
  %105 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %3, align 8
  %106 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %105, i32 0, i32 2
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @omap24xxcam_dmahw_abort_ch(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
