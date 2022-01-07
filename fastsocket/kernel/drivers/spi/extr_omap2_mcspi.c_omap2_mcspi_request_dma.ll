; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_omap2_mcspi.c_omap2_mcspi_request_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_omap2_mcspi.c_omap2_mcspi_request_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.spi_master* }
%struct.spi_master = type { i32 }
%struct.omap2_mcspi = type { %struct.omap2_mcspi_dma* }
%struct.omap2_mcspi_dma = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"McSPI RX\00", align 1
@omap2_mcspi_dma_rx_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"no RX DMA channel for McSPI\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"McSPI TX\00", align 1
@omap2_mcspi_dma_tx_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"no TX DMA channel for McSPI\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @omap2_mcspi_request_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_mcspi_request_dma(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.omap2_mcspi*, align 8
  %6 = alloca %struct.omap2_mcspi_dma*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 2
  %9 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  store %struct.spi_master* %9, %struct.spi_master** %4, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %11 = call %struct.omap2_mcspi* @spi_master_get_devdata(%struct.spi_master* %10)
  store %struct.omap2_mcspi* %11, %struct.omap2_mcspi** %5, align 8
  %12 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %13 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %12, i32 0, i32 0
  %14 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %13, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %14, i64 %18
  store %struct.omap2_mcspi_dma* %19, %struct.omap2_mcspi_dma** %6, align 8
  %20 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %6, align 8
  %21 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @omap2_mcspi_dma_rx_callback, align 4
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %6, align 8
  %26 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %25, i32 0, i32 0
  %27 = call i64 @omap_request_dma(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %23, %struct.spi_device* %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %30, i32 0, i32 1
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %64

35:                                               ; preds = %1
  %36 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %6, align 8
  %37 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @omap2_mcspi_dma_tx_callback, align 4
  %40 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %41 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %6, align 8
  %42 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %41, i32 0, i32 1
  %43 = call i64 @omap_request_dma(i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %39, %struct.spi_device* %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %35
  %46 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %6, align 8
  %47 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @omap_free_dma(i32 %48)
  %50 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %6, align 8
  %51 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 4
  %52 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %53 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %52, i32 0, i32 1
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %64

57:                                               ; preds = %35
  %58 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %6, align 8
  %59 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %58, i32 0, i32 3
  %60 = call i32 @init_completion(i32* %59)
  %61 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %6, align 8
  %62 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %61, i32 0, i32 2
  %63 = call i32 @init_completion(i32* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %57, %45, %29
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.omap2_mcspi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i64 @omap_request_dma(i32, i8*, i32, %struct.spi_device*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @omap_free_dma(i32) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
