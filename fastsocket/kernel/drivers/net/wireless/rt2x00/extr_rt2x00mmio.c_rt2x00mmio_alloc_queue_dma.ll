; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00mmio.c_rt2x00mmio_alloc_queue_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00mmio.c_rt2x00mmio_alloc_queue_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.data_queue = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.queue_entry_priv_mmio* }
%struct.queue_entry_priv_mmio = type { i64, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, %struct.data_queue*)* @rt2x00mmio_alloc_queue_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2x00mmio_alloc_queue_dma(%struct.rt2x00_dev* %0, %struct.data_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.data_queue*, align 8
  %6 = alloca %struct.queue_entry_priv_mmio*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.data_queue* %1, %struct.data_queue** %5, align 8
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %11 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %14 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %17 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @dma_alloc_coherent(i32 %12, i32 %19, i64* %8, i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %76

27:                                               ; preds = %2
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %30 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %33 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = call i32 @memset(i8* %28, i32 0, i32 %35)
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %72, %27
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %40 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %37
  %44 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %45 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %50, align 8
  store %struct.queue_entry_priv_mmio* %51, %struct.queue_entry_priv_mmio** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %55 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = mul i32 %53, %56
  %58 = zext i32 %57 to i64
  %59 = getelementptr i8, i8* %52, i64 %58
  %60 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %61 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %65 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul i32 %63, %66
  %68 = zext i32 %67 to i64
  %69 = add nsw i64 %62, %68
  %70 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %71 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %43
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %37

75:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %24
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i8* @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
