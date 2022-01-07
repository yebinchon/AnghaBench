; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_pxa2xx_spi.c_dma_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_pxa2xx_spi.c_dma_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@DMA_INT_MASK = common dso_local global i32 0, align 4
@DCSR_BUSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"dma_handler: bad bus address on tx channel\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"dma_handler: bad bus address on rx channel\00", align 1
@DCSR_ENDINTR = common dso_local global i32 0, align 4
@PXA25x_SSP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"dma_handler: ssp rx stall failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @dma_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.driver_data*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.driver_data*
  store %struct.driver_data* %8, %struct.driver_data** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @DCSR(i32 %9)
  %11 = load i32, i32* @DMA_INT_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @DCSR_BUSERR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %20 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %25 = call i32 @dma_error_stop(%struct.driver_data* %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %29

26:                                               ; preds = %17
  %27 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %28 = call i32 @dma_error_stop(%struct.driver_data* %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %23
  br label %62

30:                                               ; preds = %2
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %33 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @DCSR_ENDINTR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %43 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PXA25x_SSP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %49 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @wait_ssp_rx_stall(i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %55 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %61 = call i32 @dma_transfer_complete(%struct.driver_data* %60)
  br label %62

62:                                               ; preds = %29, %59, %41, %36, %30
  ret void
}

declare dso_local i32 @DCSR(i32) #1

declare dso_local i32 @dma_error_stop(%struct.driver_data*, i8*) #1

declare dso_local i64 @wait_ssp_rx_stall(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dma_transfer_complete(%struct.driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
