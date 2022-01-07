; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_fsl_dma_do_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_fsl_dma_do_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dma_device = type { i32, i64*, i32 }

@FSL_DMA_BIG_ENDIAN = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fsl_dma_do_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_dma_do_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fsl_dma_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.fsl_dma_device*
  store %struct.fsl_dma_device* %9, %struct.fsl_dma_device** %5, align 8
  %10 = load %struct.fsl_dma_device*, %struct.fsl_dma_device** %5, align 8
  %11 = getelementptr inbounds %struct.fsl_dma_device, %struct.fsl_dma_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FSL_DMA_BIG_ENDIAN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.fsl_dma_device*, %struct.fsl_dma_device** %5, align 8
  %18 = getelementptr inbounds %struct.fsl_dma_device, %struct.fsl_dma_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @in_be32(i32 %19)
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.fsl_dma_device*, %struct.fsl_dma_device** %5, align 8
  %23 = getelementptr inbounds %struct.fsl_dma_device, %struct.fsl_dma_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @in_le32(i32 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i32 [ %20, %16 ], [ %25, %21 ]
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ffs(i32 %28)
  %30 = sub nsw i32 32, %29
  %31 = sdiv i32 %30, 8
  store i32 %31, i32* %7, align 4
  %32 = load %struct.fsl_dma_device*, %struct.fsl_dma_device** %5, align 8
  %33 = getelementptr inbounds %struct.fsl_dma_device, %struct.fsl_dma_device* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %26
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.fsl_dma_device*, %struct.fsl_dma_device** %5, align 8
  %43 = getelementptr inbounds %struct.fsl_dma_device, %struct.fsl_dma_device* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @fsl_dma_chan_do_interrupt(i32 %41, i64 %48)
  br label %52

50:                                               ; preds = %26
  %51 = load i32, i32* @IRQ_NONE, align 4
  br label %52

52:                                               ; preds = %50, %40
  %53 = phi i32 [ %49, %40 ], [ %51, %50 ]
  ret i32 %53
}

declare dso_local i32 @in_be32(i32) #1

declare dso_local i32 @in_le32(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @fsl_dma_chan_do_interrupt(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
