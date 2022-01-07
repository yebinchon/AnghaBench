; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_fsl_dma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_fsl_dma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.fsl_dma_chan = type { i32, i32, i64 }

@.str = private unnamed_addr constant [25 x i8] c"fsl_dma_engine_desc_pool\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"No memory for channel %d descriptor dma pool.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @fsl_dma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_dma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.fsl_dma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %6 = call %struct.fsl_dma_chan* @to_fsl_chan(%struct.dma_chan* %5)
  store %struct.fsl_dma_chan* %6, %struct.fsl_dma_chan** %4, align 8
  %7 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %4, align 8
  %8 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %32

12:                                               ; preds = %1
  %13 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %4, align 8
  %14 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @dma_pool_create(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15, i32 4, i32 32, i32 0)
  %17 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %4, align 8
  %18 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %17, i32 0, i32 2
  store i64 %16, i64* %18, align 8
  %19 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %4, align 8
  %20 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %12
  %24 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %4, align 8
  %25 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %4, align 8
  %28 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 0, i32* %2, align 4
  br label %32

31:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %23, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.fsl_dma_chan* @to_fsl_chan(%struct.dma_chan*) #1

declare dso_local i64 @dma_pool_create(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
