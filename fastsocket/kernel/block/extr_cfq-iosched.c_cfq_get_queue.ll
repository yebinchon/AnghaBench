; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_get_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_get_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_queue = type { i32 }
%struct.cfq_data = type { i32 }
%struct.io_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfq_queue* (%struct.cfq_data*, i32, %struct.io_context*, i32)* @cfq_get_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfq_queue* @cfq_get_queue(%struct.cfq_data* %0, i32 %1, %struct.io_context* %2, i32 %3) #0 {
  %5 = alloca %struct.cfq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.io_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cfq_queue**, align 8
  %12 = alloca %struct.cfq_queue*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.io_context* %2, %struct.io_context** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.io_context*, %struct.io_context** %7, align 8
  %14 = call i32 @task_ioprio(%struct.io_context* %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.io_context*, %struct.io_context** %7, align 8
  %16 = call i32 @task_ioprio_class(%struct.io_context* %15)
  store i32 %16, i32* %10, align 4
  store %struct.cfq_queue** null, %struct.cfq_queue*** %11, align 8
  store %struct.cfq_queue* null, %struct.cfq_queue** %12, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %4
  %20 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.cfq_queue** @cfq_async_queue_prio(%struct.cfq_data* %20, i32 %21, i32 %22)
  store %struct.cfq_queue** %23, %struct.cfq_queue*** %11, align 8
  %24 = load %struct.cfq_queue**, %struct.cfq_queue*** %11, align 8
  %25 = load %struct.cfq_queue*, %struct.cfq_queue** %24, align 8
  store %struct.cfq_queue* %25, %struct.cfq_queue** %12, align 8
  br label %26

26:                                               ; preds = %19, %4
  %27 = load %struct.cfq_queue*, %struct.cfq_queue** %12, align 8
  %28 = icmp ne %struct.cfq_queue* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.io_context*, %struct.io_context** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call %struct.cfq_queue* @cfq_find_alloc_queue(%struct.cfq_data* %30, i32 %31, %struct.io_context* %32, i32 %33)
  store %struct.cfq_queue* %34, %struct.cfq_queue** %12, align 8
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %35
  %39 = load %struct.cfq_queue**, %struct.cfq_queue*** %11, align 8
  %40 = load %struct.cfq_queue*, %struct.cfq_queue** %39, align 8
  %41 = icmp ne %struct.cfq_queue* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = load %struct.cfq_queue*, %struct.cfq_queue** %12, align 8
  %44 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.cfq_queue*, %struct.cfq_queue** %12, align 8
  %48 = load %struct.cfq_queue**, %struct.cfq_queue*** %11, align 8
  store %struct.cfq_queue* %47, %struct.cfq_queue** %48, align 8
  br label %49

49:                                               ; preds = %42, %38, %35
  %50 = load %struct.cfq_queue*, %struct.cfq_queue** %12, align 8
  %51 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.cfq_queue*, %struct.cfq_queue** %12, align 8
  ret %struct.cfq_queue* %54
}

declare dso_local i32 @task_ioprio(%struct.io_context*) #1

declare dso_local i32 @task_ioprio_class(%struct.io_context*) #1

declare dso_local %struct.cfq_queue** @cfq_async_queue_prio(%struct.cfq_data*, i32, i32) #1

declare dso_local %struct.cfq_queue* @cfq_find_alloc_queue(%struct.cfq_data*, i32, %struct.io_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
