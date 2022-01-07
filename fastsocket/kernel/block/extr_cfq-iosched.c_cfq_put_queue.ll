; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_put_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_put_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_queue = type { i64, i32*, %struct.cfq_group*, %struct.cfq_group*, i32, %struct.cfq_data* }
%struct.cfq_group = type { i32 }
%struct.cfq_data = type { %struct.cfq_queue* }

@.str = private unnamed_addr constant [10 x i8] c"put_queue\00", align 1
@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@cfq_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_queue*)* @cfq_put_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_put_queue(%struct.cfq_queue* %0) #0 {
  %2 = alloca %struct.cfq_queue*, align 8
  %3 = alloca %struct.cfq_data*, align 8
  %4 = alloca %struct.cfq_group*, align 8
  %5 = alloca %struct.cfq_group*, align 8
  store %struct.cfq_queue* %0, %struct.cfq_queue** %2, align 8
  %6 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %7 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %6, i32 0, i32 5
  %8 = load %struct.cfq_data*, %struct.cfq_data** %7, align 8
  store %struct.cfq_data* %8, %struct.cfq_data** %3, align 8
  %9 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %10 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %16 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %20 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %80

24:                                               ; preds = %1
  %25 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %26 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %27 = call i32 @cfq_log_cfqq(%struct.cfq_data* %25, %struct.cfq_queue* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %29 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %28, i32 0, i32 4
  %30 = call i32 @rb_first(i32* %29)
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %33 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @READ, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %39 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @WRITE, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %37, %43
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %47 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %46, i32 0, i32 3
  %48 = load %struct.cfq_group*, %struct.cfq_group** %47, align 8
  store %struct.cfq_group* %48, %struct.cfq_group** %4, align 8
  %49 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %50 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %49, i32 0, i32 2
  %51 = load %struct.cfq_group*, %struct.cfq_group** %50, align 8
  store %struct.cfq_group* %51, %struct.cfq_group** %5, align 8
  %52 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %53 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %52, i32 0, i32 0
  %54 = load %struct.cfq_queue*, %struct.cfq_queue** %53, align 8
  %55 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %56 = icmp eq %struct.cfq_queue* %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %24
  %61 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %62 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %63 = call i32 @__cfq_slice_expired(%struct.cfq_data* %61, %struct.cfq_queue* %62, i32 0)
  %64 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %65 = call i32 @cfq_schedule_dispatch(%struct.cfq_data* %64)
  br label %66

66:                                               ; preds = %60, %24
  %67 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %68 = call i32 @cfq_cfqq_on_rr(%struct.cfq_queue* %67)
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load i32, i32* @cfq_pool, align 4
  %71 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %72 = call i32 @kmem_cache_free(i32 %70, %struct.cfq_queue* %71)
  %73 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %74 = call i32 @cfq_put_cfqg(%struct.cfq_group* %73)
  %75 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %76 = icmp ne %struct.cfq_group* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %79 = call i32 @cfq_put_cfqg(%struct.cfq_group* %78)
  br label %80

80:                                               ; preds = %23, %77, %66
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cfq_log_cfqq(%struct.cfq_data*, %struct.cfq_queue*, i8*) #1

declare dso_local i32 @rb_first(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__cfq_slice_expired(%struct.cfq_data*, %struct.cfq_queue*, i32) #1

declare dso_local i32 @cfq_schedule_dispatch(%struct.cfq_data*) #1

declare dso_local i32 @cfq_cfqq_on_rr(%struct.cfq_queue*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.cfq_queue*) #1

declare dso_local i32 @cfq_put_cfqg(%struct.cfq_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
