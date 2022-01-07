; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_choose_wl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_choose_wl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i32 }
%struct.cfq_group = type { i32 }
%struct.cfq_queue = type { i64 }

@SYNC_NOIDLE_WORKLOAD = common dso_local global i32 0, align 4
@SYNC_WORKLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfq_data*, %struct.cfq_group*, i32)* @cfq_choose_wl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfq_choose_wl(%struct.cfq_data* %0, %struct.cfq_group* %1, i32 %2) #0 {
  %4 = alloca %struct.cfq_data*, align 8
  %5 = alloca %struct.cfq_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfq_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.cfq_data* %0, %struct.cfq_data** %4, align 8
  store %struct.cfq_group* %1, %struct.cfq_group** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %12 = load i32, i32* @SYNC_NOIDLE_WORKLOAD, align 4
  store i32 %12, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %41, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @SYNC_WORKLOAD, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @service_tree_for(%struct.cfq_group* %18, i32 %19, i32 %20)
  %22 = call %struct.cfq_queue* @cfq_rb_first(i32 %21)
  store %struct.cfq_queue* %22, %struct.cfq_queue** %7, align 8
  %23 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  %24 = icmp ne %struct.cfq_queue* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  %30 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @time_before(i64 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28, %25
  %36 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  %37 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %11, align 4
  store i32 1, i32* %9, align 4
  br label %40

40:                                               ; preds = %35, %28, %17
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %13

44:                                               ; preds = %13
  %45 = load i32, i32* %11, align 4
  ret i32 %45
}

declare dso_local %struct.cfq_queue* @cfq_rb_first(i32) #1

declare dso_local i32 @service_tree_for(%struct.cfq_group*, i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
