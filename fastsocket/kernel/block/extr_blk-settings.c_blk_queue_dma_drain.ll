; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-settings.c_blk_queue_dma_drain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-settings.c_blk_queue_dma_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, i8*, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_queue_dma_drain(%struct.request_queue* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %11 = call i32 @queue_max_segments(%struct.request_queue* %10)
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %31

16:                                               ; preds = %4
  %17 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %18 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %19 = call i32 @queue_max_segments(%struct.request_queue* %18)
  %20 = sub nsw i32 %19, 1
  %21 = call i32 @blk_queue_max_segments(%struct.request_queue* %17, i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %27 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %30 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %16, %13
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @queue_max_segments(%struct.request_queue*) #1

declare dso_local i32 @blk_queue_max_segments(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
