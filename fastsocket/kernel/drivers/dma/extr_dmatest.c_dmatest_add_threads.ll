; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmatest.c_dmatest_add_threads.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmatest.c_dmatest_add_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmatest_chan = type { i32, %struct.dma_chan* }
%struct.dma_chan = type { i32 }
%struct.dmatest_thread = type { i32, i32, i32, %struct.dma_chan* }

@DMA_MEMCPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@DMA_XOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@DMA_PQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"pq\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@threads_per_chan = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"dmatest: No memory for %s-%s%u\0A\00", align 1
@dmatest_func = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"%s-%s%u\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"dmatest: Failed to run thread %s-%s%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmatest_chan*, i32)* @dmatest_add_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmatest_add_threads(%struct.dmatest_chan* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmatest_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dmatest_thread*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.dmatest_chan* %0, %struct.dmatest_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dmatest_chan*, %struct.dmatest_chan** %4, align 8
  %11 = getelementptr inbounds %struct.dmatest_chan, %struct.dmatest_chan* %10, i32 0, i32 1
  %12 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  store %struct.dma_chan* %12, %struct.dma_chan** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @DMA_MEMCPY, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %32

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @DMA_XOR, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %31

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @DMA_PQ, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %91

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30, %21
  br label %32

32:                                               ; preds = %31, %16
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %86, %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @threads_per_chan, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %89

37:                                               ; preds = %33
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.dmatest_thread* @kzalloc(i32 24, i32 %38)
  store %struct.dmatest_thread* %39, %struct.dmatest_thread** %6, align 8
  %40 = load %struct.dmatest_thread*, %struct.dmatest_thread** %6, align 8
  %41 = icmp ne %struct.dmatest_thread* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %44 = call i32 @dma_chan_name(%struct.dma_chan* %43)
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @pr_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %44, i8* %45, i32 %46)
  br label %89

48:                                               ; preds = %37
  %49 = load %struct.dmatest_chan*, %struct.dmatest_chan** %4, align 8
  %50 = getelementptr inbounds %struct.dmatest_chan, %struct.dmatest_chan* %49, i32 0, i32 1
  %51 = load %struct.dma_chan*, %struct.dma_chan** %50, align 8
  %52 = load %struct.dmatest_thread*, %struct.dmatest_thread** %6, align 8
  %53 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %52, i32 0, i32 3
  store %struct.dma_chan* %51, %struct.dma_chan** %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.dmatest_thread*, %struct.dmatest_thread** %6, align 8
  %56 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = call i32 (...) @smp_wmb()
  %58 = load i32, i32* @dmatest_func, align 4
  %59 = load %struct.dmatest_thread*, %struct.dmatest_thread** %6, align 8
  %60 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %61 = call i32 @dma_chan_name(%struct.dma_chan* %60)
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @kthread_run(i32 %58, %struct.dmatest_thread* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %61, i8* %62, i32 %63)
  %65 = load %struct.dmatest_thread*, %struct.dmatest_thread** %6, align 8
  %66 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.dmatest_thread*, %struct.dmatest_thread** %6, align 8
  %68 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %48
  %73 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %74 = call i32 @dma_chan_name(%struct.dma_chan* %73)
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @pr_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %74, i8* %75, i32 %76)
  %78 = load %struct.dmatest_thread*, %struct.dmatest_thread** %6, align 8
  %79 = call i32 @kfree(%struct.dmatest_thread* %78)
  br label %89

80:                                               ; preds = %48
  %81 = load %struct.dmatest_thread*, %struct.dmatest_thread** %6, align 8
  %82 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %81, i32 0, i32 1
  %83 = load %struct.dmatest_chan*, %struct.dmatest_chan** %4, align 8
  %84 = getelementptr inbounds %struct.dmatest_chan, %struct.dmatest_chan* %83, i32 0, i32 0
  %85 = call i32 @list_add_tail(i32* %82, i32* %84)
  br label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %9, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %33

89:                                               ; preds = %72, %42, %33
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %27
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.dmatest_thread* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_warning(i8*, i32, i8*, i32) #1

declare dso_local i32 @dma_chan_name(%struct.dma_chan*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @kthread_run(i32, %struct.dmatest_thread*, i8*, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @kfree(%struct.dmatest_thread*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
