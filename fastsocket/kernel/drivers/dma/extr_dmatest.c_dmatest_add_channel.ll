; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmatest.c_dmatest_add_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmatest.c_dmatest_add_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.dma_device* }
%struct.dma_device = type { i32 }
%struct.dmatest_chan = type { i32, i32, %struct.dma_chan* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"dmatest: No memory for %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@DMA_XOR = common dso_local global i32 0, align 4
@DMA_PQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"dmatest: Started %u threads using %s\0A\00", align 1
@dmatest_channels = common dso_local global i32 0, align 4
@nr_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @dmatest_add_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmatest_add_channel(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.dmatest_chan*, align 8
  %5 = alloca %struct.dma_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %9 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %8, i32 0, i32 0
  %10 = load %struct.dma_device*, %struct.dma_device** %9, align 8
  store %struct.dma_device* %10, %struct.dma_device** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.dmatest_chan* @kmalloc(i32 16, i32 %11)
  store %struct.dmatest_chan* %12, %struct.dmatest_chan** %4, align 8
  %13 = load %struct.dmatest_chan*, %struct.dmatest_chan** %4, align 8
  %14 = icmp ne %struct.dmatest_chan* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %17 = call i32 @dma_chan_name(%struct.dma_chan* %16)
  %18 = call i32 @pr_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %97

21:                                               ; preds = %1
  %22 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %23 = load %struct.dmatest_chan*, %struct.dmatest_chan** %4, align 8
  %24 = getelementptr inbounds %struct.dmatest_chan, %struct.dmatest_chan* %23, i32 0, i32 2
  store %struct.dma_chan* %22, %struct.dma_chan** %24, align 8
  %25 = load %struct.dmatest_chan*, %struct.dmatest_chan** %4, align 8
  %26 = getelementptr inbounds %struct.dmatest_chan, %struct.dmatest_chan* %25, i32 0, i32 1
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load i32, i32* @DMA_MEMCPY, align 4
  %29 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %30 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @dma_has_cap(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %21
  %35 = load %struct.dmatest_chan*, %struct.dmatest_chan** %4, align 8
  %36 = load i32, i32* @DMA_MEMCPY, align 4
  %37 = call i32 @dmatest_add_threads(%struct.dmatest_chan* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ugt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  br label %43

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %21
  %48 = load i32, i32* @DMA_XOR, align 4
  %49 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %50 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @dma_has_cap(i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = load %struct.dmatest_chan*, %struct.dmatest_chan** %4, align 8
  %56 = load i32, i32* @DMA_XOR, align 4
  %57 = call i32 @dmatest_add_threads(%struct.dmatest_chan* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ugt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  br label %63

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ]
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %47
  %68 = load i32, i32* @DMA_PQ, align 4
  %69 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %70 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @dma_has_cap(i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %67
  %75 = load %struct.dmatest_chan*, %struct.dmatest_chan** %4, align 8
  %76 = load i32, i32* @DMA_PQ, align 4
  %77 = call i32 @dmatest_add_threads(%struct.dmatest_chan* %75, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ugt i32 %78, 0
  %80 = zext i1 %79 to i32
  br i1 %79, label %81, label %82

81:                                               ; preds = %74
  br label %83

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %81
  %84 = phi i32 [ %80, %81 ], [ 0, %82 ]
  %85 = load i32, i32* %6, align 4
  %86 = add i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %67
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %90 = call i32 @dma_chan_name(%struct.dma_chan* %89)
  %91 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %90)
  %92 = load %struct.dmatest_chan*, %struct.dmatest_chan** %4, align 8
  %93 = getelementptr inbounds %struct.dmatest_chan, %struct.dmatest_chan* %92, i32 0, i32 0
  %94 = call i32 @list_add_tail(i32* %93, i32* @dmatest_channels)
  %95 = load i32, i32* @nr_channels, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* @nr_channels, align 4
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %87, %15
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.dmatest_chan* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @dma_chan_name(%struct.dma_chan*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @dma_has_cap(i32, i32) #1

declare dso_local i32 @dmatest_add_threads(%struct.dmatest_chan*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
