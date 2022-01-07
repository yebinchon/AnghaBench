; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/extr_dma.c_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/extr_dma.c_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, %struct.TYPE_10__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@DMA_gDeviceAttribute = common dso_local global %struct.TYPE_8__* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_transfer(i32 %0, i64 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.TYPE_9__* @HandleToChannel(i32 %15)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %12, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %18 = icmp eq %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %65

22:                                               ; preds = %5
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DMA_gDeviceAttribute, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 %26
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %13, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %65

37:                                               ; preds = %22
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @dma_alloc_descriptors(i32 %38, i64 %39, i32 %40, i32 %41, i64 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %6, align 4
  br label %65

48:                                               ; preds = %37
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = call i32 (...) @timer_get_tick_count()
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dmacHw_initiateTransfer(i32 %57, %struct.TYPE_10__* %59, i32 %63)
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %48, %46, %34, %19
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_9__* @HandleToChannel(i32) #1

declare dso_local i32 @dma_alloc_descriptors(i32, i64, i32, i32, i64) #1

declare dso_local i32 @timer_get_tick_count(...) #1

declare dso_local i32 @dmacHw_initiateTransfer(i32, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
