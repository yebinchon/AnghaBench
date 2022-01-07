; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-ioc.c_put_io_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-ioc.c_put_io_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_context = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }

@iocontext_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @put_io_context(%struct.io_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.io_context*, align 8
  store %struct.io_context* %0, %struct.io_context** %3, align 8
  %4 = load %struct.io_context*, %struct.io_context** %3, align 8
  %5 = icmp eq %struct.io_context* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %49

7:                                                ; preds = %1
  %8 = load %struct.io_context*, %struct.io_context** %3, align 8
  %9 = getelementptr inbounds %struct.io_context, %struct.io_context* %8, i32 0, i32 1
  %10 = call i64 @atomic_long_read(i32* %9)
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.io_context*, %struct.io_context** %3, align 8
  %15 = getelementptr inbounds %struct.io_context, %struct.io_context* %14, i32 0, i32 1
  %16 = call i64 @atomic_long_dec_and_test(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %7
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.io_context*, %struct.io_context** %3, align 8
  %21 = getelementptr inbounds %struct.io_context, %struct.io_context* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = load %struct.io_context*, %struct.io_context** %3, align 8
  %26 = getelementptr inbounds %struct.io_context, %struct.io_context* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %28, align 8
  %30 = icmp ne i32 (%struct.TYPE_2__*)* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.io_context*, %struct.io_context** %3, align 8
  %33 = getelementptr inbounds %struct.io_context, %struct.io_context* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %35, align 8
  %37 = load %struct.io_context*, %struct.io_context** %3, align 8
  %38 = getelementptr inbounds %struct.io_context, %struct.io_context* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i32 %36(%struct.TYPE_2__* %39)
  br label %41

41:                                               ; preds = %31, %24, %18
  %42 = load %struct.io_context*, %struct.io_context** %3, align 8
  %43 = call i32 @cfq_dtor(%struct.io_context* %42)
  %44 = call i32 (...) @rcu_read_unlock()
  %45 = load i32, i32* @iocontext_cachep, align 4
  %46 = load %struct.io_context*, %struct.io_context** %3, align 8
  %47 = call i32 @kmem_cache_free(i32 %45, %struct.io_context* %46)
  store i32 1, i32* %2, align 4
  br label %49

48:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %41, %6
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i64 @atomic_long_dec_and_test(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @cfq_dtor(%struct.io_context*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.io_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
