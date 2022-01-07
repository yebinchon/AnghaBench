; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_fsl_dma_prep_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_fsl_dma_prep_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i64, i32 }
%struct.dma_chan = type { i32 }
%struct.fsl_dma_chan = type { i32 }
%struct.fsl_desc_sw = type { %struct.dma_async_tx_descriptor, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"No free memory for link descriptor\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64)* @fsl_dma_prep_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @fsl_dma_prep_interrupt(%struct.dma_chan* %0, i64 %1) #0 {
  %3 = alloca %struct.dma_async_tx_descriptor*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fsl_dma_chan*, align 8
  %7 = alloca %struct.fsl_desc_sw*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %9 = icmp ne %struct.dma_chan* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %3, align 8
  br label %43

11:                                               ; preds = %2
  %12 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %13 = call %struct.fsl_dma_chan* @to_fsl_chan(%struct.dma_chan* %12)
  store %struct.fsl_dma_chan* %13, %struct.fsl_dma_chan** %6, align 8
  %14 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %15 = call %struct.fsl_desc_sw* @fsl_dma_alloc_descriptor(%struct.fsl_dma_chan* %14)
  store %struct.fsl_desc_sw* %15, %struct.fsl_desc_sw** %7, align 8
  %16 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %7, align 8
  %17 = icmp ne %struct.fsl_desc_sw* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %20 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %3, align 8
  br label %43

23:                                               ; preds = %11
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  %26 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %7, align 8
  %27 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %7, align 8
  %31 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %7, align 8
  %34 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %33, i32 0, i32 2
  %35 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %7, align 8
  %36 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %35, i32 0, i32 1
  %37 = call i32 @list_add_tail(i32* %34, i32* %36)
  %38 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %39 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %7, align 8
  %40 = call i32 @set_ld_eol(%struct.fsl_dma_chan* %38, %struct.fsl_desc_sw* %39)
  %41 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %7, align 8
  %42 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %41, i32 0, i32 0
  store %struct.dma_async_tx_descriptor* %42, %struct.dma_async_tx_descriptor** %3, align 8
  br label %43

43:                                               ; preds = %23, %18, %10
  %44 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  ret %struct.dma_async_tx_descriptor* %44
}

declare dso_local %struct.fsl_dma_chan* @to_fsl_chan(%struct.dma_chan*) #1

declare dso_local %struct.fsl_desc_sw* @fsl_dma_alloc_descriptor(%struct.fsl_dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @set_ld_eol(%struct.fsl_dma_chan*, %struct.fsl_desc_sw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
