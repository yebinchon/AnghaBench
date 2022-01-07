; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_init_allocated_queue_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_init_allocated_queue_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, i32, i32*, i32, i32, i32*, i32*, i32* }

@generic_unplug_device = common dso_local global i32 0, align 4
@QUEUE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@blk_queue_bio = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.request_queue* @blk_init_allocated_queue_node(%struct.request_queue* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %11 = icmp ne %struct.request_queue* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  store %struct.request_queue* null, %struct.request_queue** %5, align 8
  br label %56

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %16 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %18 = call i64 @blk_init_free_list(%struct.request_queue* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store %struct.request_queue* null, %struct.request_queue** %5, align 8
  br label %56

21:                                               ; preds = %13
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 7
  store i32* %22, i32** %24, align 8
  %25 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %26 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %25, i32 0, i32 6
  store i32* null, i32** %26, align 8
  %27 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %28 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %27, i32 0, i32 5
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* @generic_unplug_device, align 4
  %30 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %31 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @QUEUE_FLAG_DEFAULT, align 4
  %33 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %34 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %21
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %40 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  br label %41

41:                                               ; preds = %37, %21
  %42 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %43 = load i32, i32* @blk_queue_bio, align 4
  %44 = call i32 @blk_queue_make_request(%struct.request_queue* %42, i32 %43)
  %45 = load i32, i32* @INT_MAX, align 4
  %46 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %47 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %49 = call i32 @elevator_init(%struct.request_queue* %48, i32* null)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %53 = call i32 @blk_queue_congestion_threshold(%struct.request_queue* %52)
  %54 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  store %struct.request_queue* %54, %struct.request_queue** %5, align 8
  br label %56

55:                                               ; preds = %41
  store %struct.request_queue* null, %struct.request_queue** %5, align 8
  br label %56

56:                                               ; preds = %55, %51, %20, %12
  %57 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  ret %struct.request_queue* %57
}

declare dso_local i64 @blk_init_free_list(%struct.request_queue*) #1

declare dso_local i32 @blk_queue_make_request(%struct.request_queue*, i32) #1

declare dso_local i32 @elevator_init(%struct.request_queue*, i32*) #1

declare dso_local i32 @blk_queue_congestion_threshold(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
