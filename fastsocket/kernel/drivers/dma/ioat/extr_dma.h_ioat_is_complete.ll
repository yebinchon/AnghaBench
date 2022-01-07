; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma.h_ioat_is_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma.h_ioat_is_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.ioat_chan_common = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, i32*, i32*)* @ioat_is_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat_is_complete(%struct.dma_chan* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ioat_chan_common*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %13 = call %struct.ioat_chan_common* @to_chan_common(%struct.dma_chan* %12)
  store %struct.ioat_chan_common* %13, %struct.ioat_chan_common** %9, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %15 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %9, align 8
  %18 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %4
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = load i32*, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @dma_async_is_complete(i32 %32, i32 %33, i32 %34)
  ret i32 %35
}

declare dso_local %struct.ioat_chan_common* @to_chan_common(%struct.dma_chan*) #1

declare dso_local i32 @dma_async_is_complete(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
