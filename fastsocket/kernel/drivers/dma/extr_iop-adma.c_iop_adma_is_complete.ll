; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_iop-adma.c_iop_adma_is_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_iop-adma.c_iop_adma_is_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.iop_adma_chan = type { i32 }

@DMA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, i32*, i32*)* @iop_adma_is_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop_adma_is_complete(%struct.dma_chan* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.iop_adma_chan*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %15 = call %struct.iop_adma_chan* @to_iop_adma_chan(%struct.dma_chan* %14)
  store %struct.iop_adma_chan* %15, %struct.iop_adma_chan** %10, align 8
  %16 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %17 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %10, align 8
  %20 = getelementptr inbounds %struct.iop_adma_chan, %struct.iop_adma_chan* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %4
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @dma_async_is_complete(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @DMA_SUCCESS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %5, align 4
  br label %68

43:                                               ; preds = %33
  %44 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %10, align 8
  %45 = call i32 @iop_adma_slot_cleanup(%struct.iop_adma_chan* %44)
  %46 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %47 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %10, align 8
  %50 = getelementptr inbounds %struct.iop_adma_chan, %struct.iop_adma_chan* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %12, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* %12, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %43
  %58 = load i32*, i32** %9, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @dma_async_is_complete(i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %63, %41
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.iop_adma_chan* @to_iop_adma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_async_is_complete(i32, i32, i32) #1

declare dso_local i32 @iop_adma_slot_cleanup(%struct.iop_adma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
