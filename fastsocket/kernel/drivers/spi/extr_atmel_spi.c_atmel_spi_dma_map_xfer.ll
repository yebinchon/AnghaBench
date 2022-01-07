; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_atmel_spi.c_atmel_spi_dma_map_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_atmel_spi.c_atmel_spi_dma_map_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_spi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.spi_transfer = type { i8*, i32, i8*, i64, i8* }

@INVALID_DMA_ADDRESS = common dso_local global i8* null, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_spi*, %struct.spi_transfer*)* @atmel_spi_dma_map_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_spi_dma_map_xfer(%struct.atmel_spi* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_spi*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.atmel_spi* %0, %struct.atmel_spi** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %7 = load %struct.atmel_spi*, %struct.atmel_spi** %4, align 8
  %8 = getelementptr inbounds %struct.atmel_spi, %struct.atmel_spi* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load i8*, i8** @INVALID_DMA_ADDRESS, align 8
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 4
  store i8* %11, i8** %13, align 8
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 2
  store i8* %11, i8** %15, align 8
  %16 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i8* @dma_map_single(%struct.device* %21, i8* %25, i32 %28, i32 %29)
  %31 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @dma_mapping_error(%struct.device* %33, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %20
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %86

42:                                               ; preds = %20
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %45 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %85

48:                                               ; preds = %43
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %51 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %54 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %57 = call i8* @dma_map_single(%struct.device* %49, i8* %52, i32 %55, i32 %56)
  %58 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %59 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %62 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %61, i32 0, i32 4
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @dma_mapping_error(%struct.device* %60, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %48
  %67 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %68 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %74 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %77 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @DMA_TO_DEVICE, align 4
  %80 = call i32 @dma_unmap_single(%struct.device* %72, i8* %75, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %71, %66
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %86

84:                                               ; preds = %48
  br label %85

85:                                               ; preds = %84, %43
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %81, %39
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i8* @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
