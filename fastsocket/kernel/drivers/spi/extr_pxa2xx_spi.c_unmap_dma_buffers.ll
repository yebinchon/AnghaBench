; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_pxa2xx_spi.c_unmap_dma_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_pxa2xx_spi.c_unmap_dma_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i64, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*)* @unmap_dma_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_dma_buffers(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %4 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %5 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %44

9:                                                ; preds = %1
  %10 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %11 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %10, i32 0, i32 5
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %9
  %17 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %18 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %17, i32 0, i32 5
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %3, align 8
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %25 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %28 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %31 = call i32 @dma_unmap_single(%struct.device* %23, i32 %26, i32 %29, i32 %30)
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %34 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %37 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DMA_TO_DEVICE, align 4
  %40 = call i32 @dma_unmap_single(%struct.device* %32, i32 %35, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %16, %9
  %42 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %43 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %8
  ret void
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
