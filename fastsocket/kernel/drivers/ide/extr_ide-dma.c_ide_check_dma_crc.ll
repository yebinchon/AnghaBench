; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-dma.c_ide_check_dma_crc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-dma.c_ide_check_dma_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }

@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_UDMA_7 = common dso_local global i64 0, align 8
@XFER_PIO_4 = common dso_local global i64 0, align 8
@XFER_SW_DMA_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_check_dma_crc(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = call i32 @ide_dma_off_quietly(%struct.TYPE_6__* %4)
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @XFER_UDMA_0, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @XFER_UDMA_7, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i64, i64* %3, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %3, align 8
  br label %23

21:                                               ; preds = %14, %1
  %22 = load i64, i64* @XFER_PIO_4, align 8
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @ide_set_xfer_rate(%struct.TYPE_6__* %24, i64 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @XFER_SW_DMA_0, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = call i32 @ide_dma_on(%struct.TYPE_6__* %33)
  br label %35

35:                                               ; preds = %32, %23
  ret void
}

declare dso_local i32 @ide_dma_off_quietly(%struct.TYPE_6__*) #1

declare dso_local i32 @ide_set_xfer_rate(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @ide_dma_on(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
