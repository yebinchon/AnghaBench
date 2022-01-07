; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_atmel_spi.c_atmel_spi_dma_unmap_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_atmel_spi.c_atmel_spi_dma_unmap_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.spi_transfer = type { i64, i64, i32 }

@INVALID_DMA_ADDRESS = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_master*, %struct.spi_transfer*)* @atmel_spi_dma_unmap_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_spi_dma_unmap_xfer(%struct.spi_master* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %5 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %6 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @INVALID_DMA_ADDRESS, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %12 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @DMA_TO_DEVICE, align 4
  %22 = call i32 @dma_unmap_single(i32 %14, i64 %17, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %10, %2
  %24 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @INVALID_DMA_ADDRESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %31 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %38 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %41 = call i32 @dma_unmap_single(i32 %33, i64 %36, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
