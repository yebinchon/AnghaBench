; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i64, i32, %struct.nvme_dev*, %struct.device*, i8*, i32 }
%struct.device = type { i32 }
%struct.nvme_dev = type { i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nvme_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvme_queue* (%struct.nvme_dev*, i32, i32, i32)* @nvme_alloc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvme_queue* @nvme_alloc_queue(%struct.nvme_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvme_queue*, align 8
  %6 = alloca %struct.nvme_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nvme_queue*, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.nvme_dev*, %struct.nvme_dev** %6, align 8
  %14 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @nvme_queue_extra(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = zext i32 %19 to i64
  %21 = add i64 104, %20
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.nvme_queue* @kzalloc(i32 %22, i32 %23)
  store %struct.nvme_queue* %24, %struct.nvme_queue** %12, align 8
  %25 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %26 = icmp ne %struct.nvme_queue* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  store %struct.nvme_queue* null, %struct.nvme_queue** %5, align 8
  br label %128

28:                                               ; preds = %4
  %29 = load %struct.device*, %struct.device** %10, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @CQ_SIZE(i32 %30)
  %32 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %33 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %32, i32 0, i32 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @dma_alloc_coherent(%struct.device* %29, i32 %31, i32* %33, i32 %34)
  %36 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %37 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %39 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %38, i32 0, i32 5
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %28
  br label %125

43:                                               ; preds = %28
  %44 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %45 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %44, i32 0, i32 5
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @CQ_SIZE(i32 %47)
  %49 = call i32 @memset(i8* %46, i32 0, i32 %48)
  %50 = load %struct.device*, %struct.device** %10, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @SQ_SIZE(i32 %51)
  %53 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %54 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %53, i32 0, i32 15
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @dma_alloc_coherent(%struct.device* %50, i32 %52, i32* %54, i32 %55)
  %57 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %58 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %57, i32 0, i32 14
  store i8* %56, i8** %58, align 8
  %59 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %60 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %59, i32 0, i32 14
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %43
  br label %114

64:                                               ; preds = %43
  %65 = load %struct.device*, %struct.device** %10, align 8
  %66 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %67 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %66, i32 0, i32 13
  store %struct.device* %65, %struct.device** %67, align 8
  %68 = load %struct.nvme_dev*, %struct.nvme_dev** %6, align 8
  %69 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %70 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %69, i32 0, i32 12
  store %struct.nvme_dev* %68, %struct.nvme_dev** %70, align 8
  %71 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %72 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %71, i32 0, i32 11
  %73 = call i32 @spin_lock_init(i32* %72)
  %74 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %75 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %74, i32 0, i32 10
  store i64 0, i64* %75, align 8
  %76 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %77 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %79 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %78, i32 0, i32 9
  %80 = call i32 @init_waitqueue_head(i32* %79)
  %81 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %82 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %81, i32 0, i32 8
  %83 = load i32, i32* @nvme_thread, align 4
  %84 = call i32 @init_waitqueue_entry(i32* %82, i32 %83)
  %85 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %86 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %85, i32 0, i32 7
  %87 = call i32 @bio_list_init(i32* %86)
  %88 = load %struct.nvme_dev*, %struct.nvme_dev** %6, align 8
  %89 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.nvme_dev*, %struct.nvme_dev** %6, align 8
  %93 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  %96 = shl i32 %91, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %90, i64 %97
  %99 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %100 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %99, i32 0, i32 6
  store i32* %98, i32** %100, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %103 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %106 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %108 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %107, i32 0, i32 3
  store i32 1, i32* %108, align 4
  %109 = load %struct.nvme_dev*, %struct.nvme_dev** %6, align 8
  %110 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  store %struct.nvme_queue* %113, %struct.nvme_queue** %5, align 8
  br label %128

114:                                              ; preds = %63
  %115 = load %struct.device*, %struct.device** %10, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @CQ_SIZE(i32 %116)
  %118 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %119 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %118, i32 0, i32 5
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %122 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @dma_free_coherent(%struct.device* %115, i32 %117, i8* %120, i32 %123)
  br label %125

125:                                              ; preds = %114, %42
  %126 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %127 = call i32 @kfree(%struct.nvme_queue* %126)
  store %struct.nvme_queue* null, %struct.nvme_queue** %5, align 8
  br label %128

128:                                              ; preds = %125, %64, %27
  %129 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  ret %struct.nvme_queue* %129
}

declare dso_local i32 @nvme_queue_extra(i32) #1

declare dso_local %struct.nvme_queue* @kzalloc(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @CQ_SIZE(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @SQ_SIZE(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.nvme_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
