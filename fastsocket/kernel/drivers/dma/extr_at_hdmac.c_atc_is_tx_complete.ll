; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac.c_atc_is_tx_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac.c_atc_is_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.at_dma_chan = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"is_tx_complete: %d (d%d, u%d)\0A\00", align 1
@DMA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, i32*, i32*)* @atc_is_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_is_tx_complete(%struct.dma_chan* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.at_dma_chan*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %14 = call %struct.at_dma_chan* @to_at_dma_chan(%struct.dma_chan* %13)
  store %struct.at_dma_chan* %14, %struct.at_dma_chan** %9, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %16 = call i32 @chan2dev(%struct.dma_chan* %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  br label %24

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i32 [ %22, %20 ], [ 0, %23 ]
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  br label %32

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i32 [ %30, %28 ], [ 0, %31 ]
  %34 = call i32 @dev_vdbg(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %25, i32 %33)
  %35 = load %struct.at_dma_chan*, %struct.at_dma_chan** %9, align 8
  %36 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_bh(i32* %36)
  %38 = load %struct.at_dma_chan*, %struct.at_dma_chan** %9, align 8
  %39 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  %41 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %42 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @dma_async_is_complete(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @DMA_SUCCESS, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %32
  %52 = load %struct.at_dma_chan*, %struct.at_dma_chan** %9, align 8
  %53 = call i32 @atc_cleanup_descriptors(%struct.at_dma_chan* %52)
  %54 = load %struct.at_dma_chan*, %struct.at_dma_chan** %9, align 8
  %55 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %11, align 4
  %57 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %58 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @dma_async_is_complete(i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %51, %32
  %65 = load %struct.at_dma_chan*, %struct.at_dma_chan** %9, align 8
  %66 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock_bh(i32* %66)
  %68 = load i32*, i32** %7, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* %11, align 4
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %64
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = load i32*, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %12, align 4
  ret i32 %80
}

declare dso_local %struct.at_dma_chan* @to_at_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dma_async_is_complete(i32, i32, i32) #1

declare dso_local i32 @atc_cleanup_descriptors(%struct.at_dma_chan*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
