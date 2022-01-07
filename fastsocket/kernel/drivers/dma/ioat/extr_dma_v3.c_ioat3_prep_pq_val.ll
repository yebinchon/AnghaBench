; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v3.c_ioat3_prep_pq_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v3.c_ioat3_prep_pq_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }

@DMA_PREP_PQ_DISABLE_P = common dso_local global i64 0, align 8
@DMA_PREP_PQ_DISABLE_Q = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_async_tx_descriptor* @ioat3_prep_pq_val(%struct.dma_chan* %0, i32* %1, i32* %2, i32 %3, i8* %4, i64 %5, i32* %6, i64 %7) #0 {
  %9 = alloca %struct.dma_chan*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  store i64 %7, i64* %16, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DMA_PREP_PQ_DISABLE_P, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %8
  %22 = load i32*, i32** %10, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %8
  %28 = load i64, i64* %16, align 8
  %29 = load i64, i64* @DMA_PREP_PQ_DISABLE_Q, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %27
  %39 = load i32*, i32** %15, align 8
  store i32 0, i32* %39, align 4
  %40 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i8*, i8** %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* %16, align 8
  %48 = call %struct.dma_async_tx_descriptor* @__ioat3_prep_pq_lock(%struct.dma_chan* %40, i32* %41, i32* %42, i32* %43, i32 %44, i8* %45, i64 %46, i64 %47)
  ret %struct.dma_async_tx_descriptor* %48
}

declare dso_local %struct.dma_async_tx_descriptor* @__ioat3_prep_pq_lock(%struct.dma_chan*, i32*, i32*, i32*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
