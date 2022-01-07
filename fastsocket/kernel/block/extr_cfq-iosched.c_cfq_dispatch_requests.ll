; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_dispatch_requests.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_dispatch_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cfq_data* }
%struct.cfq_data = type { i32 }
%struct.cfq_queue = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"dispatched a request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, i32)* @cfq_dispatch_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfq_dispatch_requests(%struct.request_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfq_data*, align 8
  %7 = alloca %struct.cfq_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %9 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.cfq_data*, %struct.cfq_data** %11, align 8
  store %struct.cfq_data* %12, %struct.cfq_data** %6, align 8
  %13 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %14 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %24 = call i32 @cfq_forced_dispatch(%struct.cfq_data* %23)
  store i32 %24, i32* %3, align 4
  br label %75

25:                                               ; preds = %18
  %26 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %27 = call %struct.cfq_queue* @cfq_select_queue(%struct.cfq_data* %26)
  store %struct.cfq_queue* %27, %struct.cfq_queue** %7, align 8
  %28 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  %29 = icmp ne %struct.cfq_queue* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %75

31:                                               ; preds = %25
  %32 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %33 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  %34 = call i32 @cfq_dispatch_request(%struct.cfq_data* %32, %struct.cfq_queue* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %75

37:                                               ; preds = %31
  %38 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  %39 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  %43 = call i32 @cfq_clear_cfqq_must_dispatch(%struct.cfq_queue* %42)
  %44 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %45 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %71

48:                                               ; preds = %37
  %49 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  %50 = call i32 @cfq_cfqq_sync(%struct.cfq_queue* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  %54 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %57 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  %58 = call i64 @cfq_prio_to_maxrq(%struct.cfq_data* %56, %struct.cfq_queue* %57)
  %59 = icmp sge i64 %55, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %52, %48
  %61 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  %62 = call i64 @cfq_class_idle(%struct.cfq_queue* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60, %52
  %65 = load i64, i64* @jiffies, align 8
  %66 = add nsw i64 %65, 1
  %67 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  %68 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %70 = call i32 @cfq_slice_expired(%struct.cfq_data* %69, i32 0)
  br label %71

71:                                               ; preds = %64, %60, %37
  %72 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %73 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  %74 = call i32 @cfq_log_cfqq(%struct.cfq_data* %72, %struct.cfq_queue* %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %36, %30, %22, %17
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cfq_forced_dispatch(%struct.cfq_data*) #1

declare dso_local %struct.cfq_queue* @cfq_select_queue(%struct.cfq_data*) #1

declare dso_local i32 @cfq_dispatch_request(%struct.cfq_data*, %struct.cfq_queue*) #1

declare dso_local i32 @cfq_clear_cfqq_must_dispatch(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_cfqq_sync(%struct.cfq_queue*) #1

declare dso_local i64 @cfq_prio_to_maxrq(%struct.cfq_data*, %struct.cfq_queue*) #1

declare dso_local i64 @cfq_class_idle(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_slice_expired(%struct.cfq_data*, i32) #1

declare dso_local i32 @cfq_log_cfqq(%struct.cfq_data*, %struct.cfq_queue*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
