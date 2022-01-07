; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_alloc_io_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_alloc_io_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_io_context = type { i32, i32, i32, i32, i32 }
%struct.cfq_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@cfq_ioc_pool = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@cfq_free_io_context = common dso_local global i32 0, align 4
@cfq_exit_io_context = common dso_local global i32 0, align 4
@cfq_ioc_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfq_io_context* (%struct.cfq_data*, i32)* @cfq_alloc_io_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfq_io_context* @cfq_alloc_io_context(%struct.cfq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.cfq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfq_io_context*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @cfq_ioc_pool, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @__GFP_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %11 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.cfq_io_context* @kmem_cache_alloc_node(i32 %6, i32 %9, i32 %14)
  store %struct.cfq_io_context* %15, %struct.cfq_io_context** %5, align 8
  %16 = load %struct.cfq_io_context*, %struct.cfq_io_context** %5, align 8
  %17 = icmp ne %struct.cfq_io_context* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %2
  %19 = load i32, i32* @jiffies, align 4
  %20 = load %struct.cfq_io_context*, %struct.cfq_io_context** %5, align 8
  %21 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load %struct.cfq_io_context*, %struct.cfq_io_context** %5, align 8
  %23 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %22, i32 0, i32 3
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.cfq_io_context*, %struct.cfq_io_context** %5, align 8
  %26 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %25, i32 0, i32 2
  %27 = call i32 @INIT_HLIST_NODE(i32* %26)
  %28 = load i32, i32* @cfq_free_io_context, align 4
  %29 = load %struct.cfq_io_context*, %struct.cfq_io_context** %5, align 8
  %30 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @cfq_exit_io_context, align 4
  %32 = load %struct.cfq_io_context*, %struct.cfq_io_context** %5, align 8
  %33 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @cfq_ioc_count, align 4
  %35 = call i32 @elv_ioc_count_inc(i32 %34)
  br label %36

36:                                               ; preds = %18, %2
  %37 = load %struct.cfq_io_context*, %struct.cfq_io_context** %5, align 8
  ret %struct.cfq_io_context* %37
}

declare dso_local %struct.cfq_io_context* @kmem_cache_alloc_node(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @elv_ioc_count_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
