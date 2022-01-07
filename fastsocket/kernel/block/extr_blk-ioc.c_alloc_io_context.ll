; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-ioc.c_alloc_io_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-ioc.c_alloc_io_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_context = type { i64, i32*, i32, i32, i32*, i64, i32, i64, i64, i32, i32, i32 }

@iocontext_cachep = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_HIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.io_context* @alloc_io_context(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_context*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @iocontext_cachep, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.io_context* @kmem_cache_alloc_node(i32 %6, i32 %7, i32 %8)
  store %struct.io_context* %9, %struct.io_context** %5, align 8
  %10 = load %struct.io_context*, %struct.io_context** %5, align 8
  %11 = icmp ne %struct.io_context* %10, null
  br i1 %11, label %12, label %44

12:                                               ; preds = %2
  %13 = load %struct.io_context*, %struct.io_context** %5, align 8
  %14 = getelementptr inbounds %struct.io_context, %struct.io_context* %13, i32 0, i32 11
  %15 = call i32 @atomic_long_set(i32* %14, i32 1)
  %16 = load %struct.io_context*, %struct.io_context** %5, align 8
  %17 = getelementptr inbounds %struct.io_context, %struct.io_context* %16, i32 0, i32 10
  %18 = call i32 @atomic_set(i32* %17, i32 1)
  %19 = load %struct.io_context*, %struct.io_context** %5, align 8
  %20 = getelementptr inbounds %struct.io_context, %struct.io_context* %19, i32 0, i32 9
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.io_context*, %struct.io_context** %5, align 8
  %23 = getelementptr inbounds %struct.io_context, %struct.io_context* %22, i32 0, i32 8
  store i64 0, i64* %23, align 8
  %24 = load %struct.io_context*, %struct.io_context** %5, align 8
  %25 = getelementptr inbounds %struct.io_context, %struct.io_context* %24, i32 0, i32 7
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @jiffies, align 4
  %27 = load %struct.io_context*, %struct.io_context** %5, align 8
  %28 = getelementptr inbounds %struct.io_context, %struct.io_context* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load %struct.io_context*, %struct.io_context** %5, align 8
  %30 = getelementptr inbounds %struct.io_context, %struct.io_context* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.io_context*, %struct.io_context** %5, align 8
  %32 = getelementptr inbounds %struct.io_context, %struct.io_context* %31, i32 0, i32 4
  store i32* null, i32** %32, align 8
  %33 = load %struct.io_context*, %struct.io_context** %5, align 8
  %34 = getelementptr inbounds %struct.io_context, %struct.io_context* %33, i32 0, i32 3
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = load i32, i32* @__GFP_HIGH, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @INIT_RADIX_TREE(i32* %34, i32 %37)
  %39 = load %struct.io_context*, %struct.io_context** %5, align 8
  %40 = getelementptr inbounds %struct.io_context, %struct.io_context* %39, i32 0, i32 2
  %41 = call i32 @INIT_HLIST_HEAD(i32* %40)
  %42 = load %struct.io_context*, %struct.io_context** %5, align 8
  %43 = getelementptr inbounds %struct.io_context, %struct.io_context* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %12, %2
  %45 = load %struct.io_context*, %struct.io_context** %5, align 8
  ret %struct.io_context* %45
}

declare dso_local %struct.io_context* @kmem_cache_alloc_node(i32, i32, i32) #1

declare dso_local i32 @atomic_long_set(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
