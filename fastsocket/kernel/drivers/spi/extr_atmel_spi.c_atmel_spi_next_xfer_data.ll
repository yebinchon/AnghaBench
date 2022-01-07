; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_atmel_spi.c_atmel_spi_next_xfer_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_atmel_spi.c_atmel_spi_next_xfer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_transfer = type { i64, i64, i64, i64, i64 }
%struct.atmel_spi = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@BUFFER_SIZE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_master*, %struct.spi_transfer*, i64*, i64*, i64*)* @atmel_spi_next_xfer_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_spi_next_xfer_data(%struct.spi_master* %0, %struct.spi_transfer* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.atmel_spi*, align 8
  %12 = alloca i64, align 8
  store %struct.spi_master* %0, %struct.spi_master** %6, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %13 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %14 = call %struct.atmel_spi* @spi_master_get_devdata(%struct.spi_master* %13)
  store %struct.atmel_spi* %14, %struct.atmel_spi** %11, align 8
  %15 = load i64*, i64** %10, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %12, align 8
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %5
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load i64, i64* %12, align 8
  %30 = sub nsw i64 %28, %29
  %31 = load i64*, i64** %9, align 8
  store i64 %30, i64* %31, align 8
  br label %43

32:                                               ; preds = %5
  %33 = load %struct.atmel_spi*, %struct.atmel_spi** %11, align 8
  %34 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %9, align 8
  store i64 %35, i64* %36, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @BUFFER_SIZE, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i64, i64* @BUFFER_SIZE, align 8
  store i64 %41, i64* %12, align 8
  br label %42

42:                                               ; preds = %40, %32
  br label %43

43:                                               ; preds = %42, %21
  %44 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %45 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %50 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %53 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load i64, i64* %12, align 8
  %57 = sub nsw i64 %55, %56
  %58 = load i64*, i64** %8, align 8
  store i64 %57, i64* %58, align 8
  br label %85

59:                                               ; preds = %43
  %60 = load %struct.atmel_spi*, %struct.atmel_spi** %11, align 8
  %61 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %8, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* @BUFFER_SIZE, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i64, i64* @BUFFER_SIZE, align 8
  store i64 %68, i64* %12, align 8
  br label %69

69:                                               ; preds = %67, %59
  %70 = load %struct.atmel_spi*, %struct.atmel_spi** %11, align 8
  %71 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @memset(i32 %72, i32 0, i64 %73)
  %75 = load %struct.atmel_spi*, %struct.atmel_spi** %11, align 8
  %76 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load %struct.atmel_spi*, %struct.atmel_spi** %11, align 8
  %80 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i32, i32* @DMA_TO_DEVICE, align 4
  %84 = call i32 @dma_sync_single_for_device(i32* %78, i64 %81, i64 %82, i32 %83)
  br label %85

85:                                               ; preds = %69, %48
  %86 = load i64, i64* %12, align 8
  %87 = load i64*, i64** %10, align 8
  store i64 %86, i64* %87, align 8
  ret void
}

declare dso_local %struct.atmel_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
