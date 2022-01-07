; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-ioc.c_exit_io_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-ioc.c_exit_io_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.io_context* }
%struct.io_context = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exit_io_context(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.io_context*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = call i32 @task_lock(%struct.task_struct* %4)
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  %8 = load %struct.io_context*, %struct.io_context** %7, align 8
  store %struct.io_context* %8, %struct.io_context** %3, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  store %struct.io_context* null, %struct.io_context** %10, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %12 = call i32 @task_unlock(%struct.task_struct* %11)
  %13 = load %struct.io_context*, %struct.io_context** %3, align 8
  %14 = getelementptr inbounds %struct.io_context, %struct.io_context* %13, i32 0, i32 1
  %15 = call i64 @atomic_dec_and_test(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %1
  %18 = load %struct.io_context*, %struct.io_context** %3, align 8
  %19 = getelementptr inbounds %struct.io_context, %struct.io_context* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load %struct.io_context*, %struct.io_context** %3, align 8
  %24 = getelementptr inbounds %struct.io_context, %struct.io_context* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %26, align 8
  %28 = icmp ne i32 (%struct.TYPE_2__*)* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.io_context*, %struct.io_context** %3, align 8
  %31 = getelementptr inbounds %struct.io_context, %struct.io_context* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %33, align 8
  %35 = load %struct.io_context*, %struct.io_context** %3, align 8
  %36 = getelementptr inbounds %struct.io_context, %struct.io_context* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = call i32 %34(%struct.TYPE_2__* %37)
  br label %39

39:                                               ; preds = %29, %22, %17
  %40 = load %struct.io_context*, %struct.io_context** %3, align 8
  %41 = call i32 @cfq_exit(%struct.io_context* %40)
  br label %42

42:                                               ; preds = %39, %1
  %43 = load %struct.io_context*, %struct.io_context** %3, align 8
  %44 = call i32 @put_io_context(%struct.io_context* %43)
  ret void
}

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @cfq_exit(%struct.io_context*) #1

declare dso_local i32 @put_io_context(%struct.io_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
