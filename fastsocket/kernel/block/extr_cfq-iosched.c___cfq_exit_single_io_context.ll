; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c___cfq_exit_single_io_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c___cfq_exit_single_io_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i32 }
%struct.cfq_io_context = type { i64, i32**, i32*, i32, %struct.io_context* }
%struct.io_context = type { i32, i32 }

@BLK_RW_ASYNC = common dso_local global i64 0, align 8
@BLK_RW_SYNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_data*, %struct.cfq_io_context*)* @__cfq_exit_single_io_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cfq_exit_single_io_context(%struct.cfq_data* %0, %struct.cfq_io_context* %1) #0 {
  %3 = alloca %struct.cfq_data*, align 8
  %4 = alloca %struct.cfq_io_context*, align 8
  %5 = alloca %struct.io_context*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %3, align 8
  store %struct.cfq_io_context* %1, %struct.cfq_io_context** %4, align 8
  %6 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %7 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %6, i32 0, i32 4
  %8 = load %struct.io_context*, %struct.io_context** %7, align 8
  store %struct.io_context* %8, %struct.io_context** %5, align 8
  %9 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %10 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %9, i32 0, i32 3
  %11 = call i32 @list_del_init(i32* %10)
  %12 = call i32 (...) @smp_wmb()
  %13 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %14 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = ptrtoint i32* %15 to i64
  %17 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %18 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %20 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.io_context*, %struct.io_context** %5, align 8
  %22 = getelementptr inbounds %struct.io_context, %struct.io_context* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.cfq_io_context* @rcu_dereference(i32 %23)
  %25 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %26 = icmp eq %struct.cfq_io_context* %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load %struct.io_context*, %struct.io_context** %5, align 8
  %29 = getelementptr inbounds %struct.io_context, %struct.io_context* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.io_context*, %struct.io_context** %5, align 8
  %32 = getelementptr inbounds %struct.io_context, %struct.io_context* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rcu_assign_pointer(i32 %33, i32* null)
  %35 = load %struct.io_context*, %struct.io_context** %5, align 8
  %36 = getelementptr inbounds %struct.io_context, %struct.io_context* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  br label %38

38:                                               ; preds = %27, %2
  %39 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %40 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %39, i32 0, i32 1
  %41 = load i32**, i32*** %40, align 8
  %42 = load i64, i64* @BLK_RW_ASYNC, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %38
  %47 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %48 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %49 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %48, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = load i64, i64* @BLK_RW_ASYNC, align 8
  %52 = getelementptr inbounds i32*, i32** %50, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @cfq_exit_cfqq(%struct.cfq_data* %47, i32* %53)
  %55 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %56 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %55, i32 0, i32 1
  %57 = load i32**, i32*** %56, align 8
  %58 = load i64, i64* @BLK_RW_ASYNC, align 8
  %59 = getelementptr inbounds i32*, i32** %57, i64 %58
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %46, %38
  %61 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %62 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %61, i32 0, i32 1
  %63 = load i32**, i32*** %62, align 8
  %64 = load i64, i64* @BLK_RW_SYNC, align 8
  %65 = getelementptr inbounds i32*, i32** %63, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %60
  %69 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %70 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %71 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %70, i32 0, i32 1
  %72 = load i32**, i32*** %71, align 8
  %73 = load i64, i64* @BLK_RW_SYNC, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @cfq_exit_cfqq(%struct.cfq_data* %69, i32* %75)
  %77 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %78 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %77, i32 0, i32 1
  %79 = load i32**, i32*** %78, align 8
  %80 = load i64, i64* @BLK_RW_SYNC, align 8
  %81 = getelementptr inbounds i32*, i32** %79, i64 %80
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %68, %60
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local %struct.cfq_io_context* @rcu_dereference(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cfq_exit_cfqq(%struct.cfq_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
