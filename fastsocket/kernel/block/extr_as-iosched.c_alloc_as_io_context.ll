; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_alloc_as_io_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_alloc_as_io_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as_io_context = type { i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@free_as_io_context = common dso_local global i32 0, align 4
@exit_as_io_context = common dso_local global i32 0, align 4
@AS_TASK_RUNNING = common dso_local global i32 0, align 4
@as_ioc_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.as_io_context* ()* @alloc_as_io_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.as_io_context* @alloc_as_io_context() #0 {
  %1 = alloca %struct.as_io_context*, align 8
  %2 = load i32, i32* @GFP_ATOMIC, align 4
  %3 = call %struct.as_io_context* @kmalloc(i32 80, i32 %2)
  store %struct.as_io_context* %3, %struct.as_io_context** %1, align 8
  %4 = load %struct.as_io_context*, %struct.as_io_context** %1, align 8
  %5 = icmp ne %struct.as_io_context* %4, null
  br i1 %5, label %6, label %40

6:                                                ; preds = %0
  %7 = load i32, i32* @free_as_io_context, align 4
  %8 = load %struct.as_io_context*, %struct.as_io_context** %1, align 8
  %9 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %8, i32 0, i32 11
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @exit_as_io_context, align 4
  %11 = load %struct.as_io_context*, %struct.as_io_context** %1, align 8
  %12 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %11, i32 0, i32 10
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @AS_TASK_RUNNING, align 4
  %14 = shl i32 1, %13
  %15 = load %struct.as_io_context*, %struct.as_io_context** %1, align 8
  %16 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.as_io_context*, %struct.as_io_context** %1, align 8
  %18 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %17, i32 0, i32 9
  %19 = call i32 @atomic_set(i32* %18, i32 0)
  %20 = load %struct.as_io_context*, %struct.as_io_context** %1, align 8
  %21 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %20, i32 0, i32 8
  %22 = call i32 @atomic_set(i32* %21, i32 0)
  %23 = load %struct.as_io_context*, %struct.as_io_context** %1, align 8
  %24 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %23, i32 0, i32 7
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.as_io_context*, %struct.as_io_context** %1, align 8
  %27 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %26, i32 0, i32 6
  store i64 0, i64* %27, align 8
  %28 = load %struct.as_io_context*, %struct.as_io_context** %1, align 8
  %29 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.as_io_context*, %struct.as_io_context** %1, align 8
  %31 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.as_io_context*, %struct.as_io_context** %1, align 8
  %33 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.as_io_context*, %struct.as_io_context** %1, align 8
  %35 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.as_io_context*, %struct.as_io_context** %1, align 8
  %37 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @as_ioc_count, align 4
  %39 = call i32 @elv_ioc_count_inc(i32 %38)
  br label %40

40:                                               ; preds = %6, %0
  %41 = load %struct.as_io_context*, %struct.as_io_context** %1, align 8
  ret %struct.as_io_context* %41
}

declare dso_local %struct.as_io_context* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @elv_ioc_count_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
