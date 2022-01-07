; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_schedule_delayed_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_schedule_delayed_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_data = type { i64, %struct.delayed_work }
%struct.delayed_work = type { i32 }

@kthrotld_workqueue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"schedule work. delay=%lu jiffies=%lu\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_data*, i64)* @throtl_schedule_delayed_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_schedule_delayed_work(%struct.throtl_data* %0, i64 %1) #0 {
  %3 = alloca %struct.throtl_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.delayed_work*, align 8
  store %struct.throtl_data* %0, %struct.throtl_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %7 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %6, i32 0, i32 1
  store %struct.delayed_work* %7, %struct.delayed_work** %5, align 8
  %8 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %9 = call i64 @total_nr_queued(%struct.throtl_data* %8)
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %13 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11, %2
  %17 = load %struct.delayed_work*, %struct.delayed_work** %5, align 8
  %18 = call i32 @__cancel_delayed_work(%struct.delayed_work* %17)
  %19 = load i32, i32* @kthrotld_workqueue, align 4
  %20 = load %struct.delayed_work*, %struct.delayed_work** %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @queue_delayed_work(i32 %19, %struct.delayed_work* %20, i64 %21)
  %23 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i32, i32* @jiffies, align 4
  %26 = call i32 @throtl_log(%struct.throtl_data* %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %25)
  br label %27

27:                                               ; preds = %16, %11
  ret void
}

declare dso_local i64 @total_nr_queued(%struct.throtl_data*) #1

declare dso_local i32 @__cancel_delayed_work(%struct.delayed_work*) #1

declare dso_local i32 @queue_delayed_work(i32, %struct.delayed_work*, i64) #1

declare dso_local i32 @throtl_log(%struct.throtl_data*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
