; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmaengine.c_dma_chan_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmaengine.c_dma_chan_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, i32 }
%struct.module = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@DMA_PRIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @dma_chan_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_chan_get(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.module*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %3, align 4
  %8 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %9 = call %struct.module* @dma_chan_to_owner(%struct.dma_chan* %8)
  store %struct.module* %9, %struct.module** %4, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %11 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.module*, %struct.module** %4, align 8
  %16 = call i32 @__module_get(%struct.module* %15)
  store i32 0, i32* %3, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.module*, %struct.module** %4, align 8
  %19 = call i64 @try_module_get(%struct.module* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %17
  br label %23

23:                                               ; preds = %22, %14
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %28 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %26, %23
  %32 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %33 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %70

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %36
  %40 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %41 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to i32 (%struct.dma_chan*)**
  %45 = load i32 (%struct.dma_chan*)*, i32 (%struct.dma_chan*)** %44, align 8
  %46 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %47 = call i32 %45(%struct.dma_chan* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %3, align 4
  %52 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %53 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.module*, %struct.module** %4, align 8
  %55 = call i32 @module_put(%struct.module* %54)
  br label %69

56:                                               ; preds = %39
  %57 = load i32, i32* @DMA_PRIVATE, align 4
  %58 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %59 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dma_has_cap(i32 %57, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  %66 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %67 = call i32 @balance_ref_count(%struct.dma_chan* %66)
  br label %68

68:                                               ; preds = %65, %56
  br label %69

69:                                               ; preds = %68, %50
  br label %70

70:                                               ; preds = %69, %36, %31
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.module* @dma_chan_to_owner(%struct.dma_chan*) #1

declare dso_local i32 @__module_get(%struct.module*) #1

declare dso_local i64 @try_module_get(%struct.module*) #1

declare dso_local i32 @module_put(%struct.module*) #1

declare dso_local i32 @dma_has_cap(i32, i32) #1

declare dso_local i32 @balance_ref_count(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
