; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_mv_xor.c_mv_xor_is_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_mv_xor.c_mv_xor_is_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mv_xor_chan = type { i32, i32 }

@DMA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, i32*, i32*)* @mv_xor_is_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_xor_is_complete(%struct.dma_chan* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mv_xor_chan*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %15 = call %struct.mv_xor_chan* @to_mv_xor_chan(%struct.dma_chan* %14)
  store %struct.mv_xor_chan* %15, %struct.mv_xor_chan** %10, align 8
  %16 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %17 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %10, align 8
  %20 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %10, align 8
  %24 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %4
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @dma_async_is_complete(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @DMA_SUCCESS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %10, align 8
  %46 = call i32 @mv_xor_clean_completed_slots(%struct.mv_xor_chan* %45)
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %5, align 4
  br label %73

48:                                               ; preds = %36
  %49 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %10, align 8
  %50 = call i32 @mv_xor_slot_cleanup(%struct.mv_xor_chan* %49)
  %51 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %52 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %11, align 4
  %54 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %10, align 8
  %55 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %12, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i32, i32* %12, align 4
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %48
  %63 = load i32*, i32** %9, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @dma_async_is_complete(i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %68, %44
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.mv_xor_chan* @to_mv_xor_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_async_is_complete(i32, i32, i32) #1

declare dso_local i32 @mv_xor_clean_completed_slots(%struct.mv_xor_chan*) #1

declare dso_local i32 @mv_xor_slot_cleanup(%struct.mv_xor_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
