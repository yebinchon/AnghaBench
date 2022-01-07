; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam-dma.c_omap24xxcam_sgdma_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam-dma.c_omap24xxcam_sgdma_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap24xxcam_sgdma = type { i32, i32, i32, %struct.sgdma_state*, i32 }
%struct.sgdma_state = type { i64, i8*, i32 (%struct.omap24xxcam_sgdma.0*, i32, i8*)* }
%struct.omap24xxcam_sgdma.0 = type opaque

@CAMDMA_CSR_TRANS_ERR = common dso_local global i32 0, align 4
@NUM_SG_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap24xxcam_sgdma_sync(%struct.omap24xxcam_sgdma* %0) #0 {
  %2 = alloca %struct.omap24xxcam_sgdma*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sgdma_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.omap24xxcam_sgdma*, i32, i8*)*, align 8
  %8 = alloca i8*, align 8
  store %struct.omap24xxcam_sgdma* %0, %struct.omap24xxcam_sgdma** %2, align 8
  %9 = load i32, i32* @CAMDMA_CSR_TRANS_ERR, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %11 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %10, i32 0, i32 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @omap24xxcam_dma_stop(i32* %11, i32 %12)
  %14 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %15 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %14, i32 0, i32 2
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %19 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NUM_SG_DMA, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %1
  %24 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %25 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %28 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %26, %29
  %31 = load i32, i32* @NUM_SG_DMA, align 4
  %32 = srem i32 %30, %31
  store i32 %32, i32* %4, align 4
  %33 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %34 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %33, i32 0, i32 3
  %35 = load %struct.sgdma_state*, %struct.sgdma_state** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %35, i64 %37
  store %struct.sgdma_state* %38, %struct.sgdma_state** %5, align 8
  %39 = load %struct.sgdma_state*, %struct.sgdma_state** %5, align 8
  %40 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %23
  %44 = load %struct.sgdma_state*, %struct.sgdma_state** %5, align 8
  %45 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %44, i32 0, i32 2
  %46 = load i32 (%struct.omap24xxcam_sgdma.0*, i32, i8*)*, i32 (%struct.omap24xxcam_sgdma.0*, i32, i8*)** %45, align 8
  %47 = bitcast i32 (%struct.omap24xxcam_sgdma.0*, i32, i8*)* %46 to i32 (%struct.omap24xxcam_sgdma*, i32, i8*)*
  store i32 (%struct.omap24xxcam_sgdma*, i32, i8*)* %47, i32 (%struct.omap24xxcam_sgdma*, i32, i8*)** %7, align 8
  %48 = load %struct.sgdma_state*, %struct.sgdma_state** %5, align 8
  %49 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %8, align 8
  %51 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %52 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load i32 (%struct.omap24xxcam_sgdma*, i32, i8*)*, i32 (%struct.omap24xxcam_sgdma*, i32, i8*)** %7, align 8
  %56 = icmp ne i32 (%struct.omap24xxcam_sgdma*, i32, i8*)* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %43
  %58 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %59 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %58, i32 0, i32 2
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load i32 (%struct.omap24xxcam_sgdma*, i32, i8*)*, i32 (%struct.omap24xxcam_sgdma*, i32, i8*)** %7, align 8
  %62 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 %61(%struct.omap24xxcam_sgdma* %62, i32 %63, i8* %64)
  %66 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %67 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %66, i32 0, i32 2
  %68 = call i32 @spin_lock(i32* %67)
  br label %69

69:                                               ; preds = %57, %43
  br label %70

70:                                               ; preds = %69, %23
  br label %71

71:                                               ; preds = %70, %1
  %72 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %73 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %72, i32 0, i32 2
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  ret void
}

declare dso_local i32 @omap24xxcam_dma_stop(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
