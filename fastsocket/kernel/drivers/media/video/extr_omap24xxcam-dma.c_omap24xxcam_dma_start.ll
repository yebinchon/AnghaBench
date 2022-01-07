; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam-dma.c_omap24xxcam_dma_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam-dma.c_omap24xxcam_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap24xxcam_dma = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@NUM_CAMDMA_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap24xxcam_dma*, i32, i32, i32, i8*)* @omap24xxcam_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap24xxcam_dma_start(%struct.omap24xxcam_dma* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap24xxcam_dma*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.omap24xxcam_dma* %0, %struct.omap24xxcam_dma** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %7, align 8
  %15 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %14, i32 0, i32 2
  %16 = load i64, i64* %12, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %7, align 8
  %19 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %7, align 8
  %24 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %23, i32 0, i32 5
  %25 = call i64 @atomic_read(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22, %5
  %28 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %7, align 8
  %29 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %28, i32 0, i32 2
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %98

34:                                               ; preds = %22
  %35 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %7, align 8
  %36 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %7, align 8
  %40 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %38, i32* %45, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %7, align 8
  %48 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %47, i32 0, i32 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* %46, i8** %53, align 8
  %54 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %7, align 8
  %55 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @omap24xxcam_dmahw_transfer_setup(i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %7, align 8
  %62 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NUM_CAMDMA_CHANNELS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %34
  %67 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %7, align 8
  %68 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %7, align 8
  %72 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @omap24xxcam_dmahw_transfer_chain(i32 %69, i32 %70, i32 %73)
  br label %81

75:                                               ; preds = %34
  %76 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %7, align 8
  %77 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @omap24xxcam_dmahw_transfer_start(i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %66
  %82 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %7, align 8
  %83 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* @NUM_CAMDMA_CHANNELS, align 4
  %87 = srem i32 %85, %86
  %88 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %7, align 8
  %89 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %7, align 8
  %91 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 8
  %94 = load %struct.omap24xxcam_dma*, %struct.omap24xxcam_dma** %7, align 8
  %95 = getelementptr inbounds %struct.omap24xxcam_dma, %struct.omap24xxcam_dma* %94, i32 0, i32 2
  %96 = load i64, i64* %12, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %81, %27
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @omap24xxcam_dmahw_transfer_setup(i32, i32, i32, i32) #1

declare dso_local i32 @omap24xxcam_dmahw_transfer_chain(i32, i32, i32) #1

declare dso_local i32 @omap24xxcam_dmahw_transfer_start(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
