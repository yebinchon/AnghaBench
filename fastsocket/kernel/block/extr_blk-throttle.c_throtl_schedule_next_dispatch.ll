; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_schedule_next_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_schedule_next_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_data = type { %struct.throtl_rb_root }
%struct.throtl_rb_root = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_data*)* @throtl_schedule_next_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_schedule_next_dispatch(%struct.throtl_data* %0) #0 {
  %2 = alloca %struct.throtl_data*, align 8
  %3 = alloca %struct.throtl_rb_root*, align 8
  store %struct.throtl_data* %0, %struct.throtl_data** %2, align 8
  %4 = load %struct.throtl_data*, %struct.throtl_data** %2, align 8
  %5 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %4, i32 0, i32 0
  store %struct.throtl_rb_root* %5, %struct.throtl_rb_root** %3, align 8
  %6 = load %struct.throtl_data*, %struct.throtl_data** %2, align 8
  %7 = call i32 @total_nr_queued(%struct.throtl_data* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.throtl_rb_root*, %struct.throtl_rb_root** %3, align 8
  %12 = getelementptr inbounds %struct.throtl_rb_root, %struct.throtl_rb_root* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.throtl_rb_root*, %struct.throtl_rb_root** %3, align 8
  %19 = call i32 @update_min_dispatch_time(%struct.throtl_rb_root* %18)
  %20 = load %struct.throtl_rb_root*, %struct.throtl_rb_root** %3, align 8
  %21 = getelementptr inbounds %struct.throtl_rb_root, %struct.throtl_rb_root* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @jiffies, align 8
  %24 = call i64 @time_before_eq(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %10
  %27 = load %struct.throtl_data*, %struct.throtl_data** %2, align 8
  %28 = call i32 @throtl_schedule_delayed_work(%struct.throtl_data* %27, i64 0)
  br label %37

29:                                               ; preds = %10
  %30 = load %struct.throtl_data*, %struct.throtl_data** %2, align 8
  %31 = load %struct.throtl_rb_root*, %struct.throtl_rb_root** %3, align 8
  %32 = getelementptr inbounds %struct.throtl_rb_root, %struct.throtl_rb_root* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @jiffies, align 8
  %35 = sub nsw i64 %33, %34
  %36 = call i32 @throtl_schedule_delayed_work(%struct.throtl_data* %30, i64 %35)
  br label %37

37:                                               ; preds = %9, %29, %26
  ret void
}

declare dso_local i32 @total_nr_queued(%struct.throtl_data*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @update_min_dispatch_time(%struct.throtl_rb_root*) #1

declare dso_local i64 @time_before_eq(i64, i64) #1

declare dso_local i32 @throtl_schedule_delayed_work(%struct.throtl_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
