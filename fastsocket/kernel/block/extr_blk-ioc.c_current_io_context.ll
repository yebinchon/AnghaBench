; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-ioc.c_current_io_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-ioc.c_current_io_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.io_context* }
%struct.io_context = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.io_context* @current_io_context(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.io_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.io_context*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %8, %struct.task_struct** %6, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  %11 = load %struct.io_context*, %struct.io_context** %10, align 8
  store %struct.io_context* %11, %struct.io_context** %7, align 8
  %12 = load %struct.io_context*, %struct.io_context** %7, align 8
  %13 = call i64 @likely(%struct.io_context* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.io_context*, %struct.io_context** %7, align 8
  store %struct.io_context* %16, %struct.io_context** %3, align 8
  br label %30

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.io_context* @alloc_io_context(i32 %18, i32 %19)
  store %struct.io_context* %20, %struct.io_context** %7, align 8
  %21 = load %struct.io_context*, %struct.io_context** %7, align 8
  %22 = icmp ne %struct.io_context* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = call i32 (...) @smp_wmb()
  %25 = load %struct.io_context*, %struct.io_context** %7, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 0
  store %struct.io_context* %25, %struct.io_context** %27, align 8
  br label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.io_context*, %struct.io_context** %7, align 8
  store %struct.io_context* %29, %struct.io_context** %3, align 8
  br label %30

30:                                               ; preds = %28, %15
  %31 = load %struct.io_context*, %struct.io_context** %3, align 8
  ret %struct.io_context* %31
}

declare dso_local i64 @likely(%struct.io_context*) #1

declare dso_local %struct.io_context* @alloc_io_context(i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
