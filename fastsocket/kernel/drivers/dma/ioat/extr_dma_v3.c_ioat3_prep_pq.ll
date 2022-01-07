; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v3.c_ioat3_prep_pq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v3.c_ioat3_prep_pq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }

@DMA_PREP_PQ_DISABLE_P = common dso_local global i64 0, align 8
@DMA_PREP_PQ_DISABLE_Q = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32*, i32*, i32, i8*, i64, i64)* @ioat3_prep_pq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @ioat3_prep_pq(%struct.dma_chan* %0, i32* %1, i32* %2, i32 %3, i8* %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.dma_async_tx_descriptor*, align 8
  %9 = alloca %struct.dma_chan*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [2 x i32], align 4
  %17 = alloca [2 x i8], align 1
  store %struct.dma_chan* %0, %struct.dma_chan** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load i64, i64* %15, align 8
  %19 = load i64, i64* @DMA_PREP_PQ_DISABLE_P, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %7
  %23 = load i32*, i32** %10, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %7
  %29 = load i64, i64* %15, align 8
  %30 = load i64, i64* @DMA_PREP_PQ_DISABLE_Q, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32*, i32** %10, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* @DMA_PREP_PQ_DISABLE_P, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %39
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %72

47:                                               ; preds = %44
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* @DMA_PREP_PQ_DISABLE_Q, align 8
  %50 = and i64 %48, %49
  %51 = call i32 @BUG_ON(i64 %50)
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  store i32 %58, i32* %59, align 4
  %60 = load i8*, i8** %13, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = getelementptr inbounds [2 x i8], [2 x i8]* %17, i64 0, i64 0
  store i8 %62, i8* %63, align 1
  %64 = getelementptr inbounds [2 x i8], [2 x i8]* %17, i64 0, i64 1
  store i8 0, i8* %64, align 1
  %65 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %68 = getelementptr inbounds [2 x i8], [2 x i8]* %17, i64 0, i64 0
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %15, align 8
  %71 = call %struct.dma_async_tx_descriptor* @__ioat3_prep_pq_lock(%struct.dma_chan* %65, i32* null, i32* %66, i32* %67, i32 2, i8* %68, i64 %69, i64 %70)
  store %struct.dma_async_tx_descriptor* %71, %struct.dma_async_tx_descriptor** %8, align 8
  br label %81

72:                                               ; preds = %44, %39
  %73 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i8*, i8** %13, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %15, align 8
  %80 = call %struct.dma_async_tx_descriptor* @__ioat3_prep_pq_lock(%struct.dma_chan* %73, i32* null, i32* %74, i32* %75, i32 %76, i8* %77, i64 %78, i64 %79)
  store %struct.dma_async_tx_descriptor* %80, %struct.dma_async_tx_descriptor** %8, align 8
  br label %81

81:                                               ; preds = %72, %47
  %82 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  ret %struct.dma_async_tx_descriptor* %82
}

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local %struct.dma_async_tx_descriptor* @__ioat3_prep_pq_lock(%struct.dma_chan*, i32*, i32*, i32*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
