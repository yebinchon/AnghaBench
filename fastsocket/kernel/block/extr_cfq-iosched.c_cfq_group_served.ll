; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_group_served.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_group_served.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i32, i32, i64, %struct.cfq_rb_root }
%struct.cfq_rb_root = type { i32 }
%struct.cfq_group = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cfq_queue = type { i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"served: vt=%llu min_vt=%llu\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"sl_used=%u disp=%u charge=%u iops=%u sect=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_data*, %struct.cfq_group*, %struct.cfq_queue*)* @cfq_group_served to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_group_served(%struct.cfq_data* %0, %struct.cfq_group* %1, %struct.cfq_queue* %2) #0 {
  %4 = alloca %struct.cfq_data*, align 8
  %5 = alloca %struct.cfq_group*, align 8
  %6 = alloca %struct.cfq_queue*, align 8
  %7 = alloca %struct.cfq_rb_root*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cfq_data* %0, %struct.cfq_data** %4, align 8
  store %struct.cfq_group* %1, %struct.cfq_group** %5, align 8
  store %struct.cfq_queue* %2, %struct.cfq_queue** %6, align 8
  %11 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %12 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %11, i32 0, i32 3
  store %struct.cfq_rb_root* %12, %struct.cfq_rb_root** %7, align 8
  %13 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %14 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %17 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %18 = call i32 @cfqg_busy_async_queues(%struct.cfq_data* %16, %struct.cfq_group* %17)
  %19 = sub nsw i32 %15, %18
  %20 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %21 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %19, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %30 = call i32 @cfq_cfqq_slice_usage(%struct.cfq_queue* %29)
  store i32 %30, i32* %9, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %32 = call i64 @iops_mode(%struct.cfq_data* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %36 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  br label %50

38:                                               ; preds = %3
  %39 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %40 = call i32 @cfq_cfqq_sync(%struct.cfq_queue* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %47 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %45, %42, %38
  br label %50

50:                                               ; preds = %49, %34
  %51 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %7, align 8
  %52 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %53 = call i32 @cfq_group_service_tree_del(%struct.cfq_rb_root* %51, %struct.cfq_group* %52)
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %56 = call i64 @cfq_scale_slice(i32 %54, %struct.cfq_group* %55)
  %57 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %58 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 8
  %63 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %7, align 8
  %64 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %65 = call i32 @cfq_group_service_tree_add(%struct.cfq_rb_root* %63, %struct.cfq_group* %64)
  %66 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %67 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @jiffies, align 8
  %70 = call i64 @time_after(i64 %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %50
  %73 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %74 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @jiffies, align 8
  %77 = sub nsw i64 %75, %76
  %78 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %79 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %81 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %84 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %86 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %89 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  br label %93

90:                                               ; preds = %50
  %91 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %92 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %91, i32 0, i32 3
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %72
  %94 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %95 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %96 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %97 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %7, align 8
  %100 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @cfq_log_cfqg(%struct.cfq_data* %94, %struct.cfq_group* %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %104 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %109 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %113 = call i64 @iops_mode(%struct.cfq_data* %112)
  %114 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %115 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @cfq_log_cfqq(i32 %105, %struct.cfq_queue* %106, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %110, i32 %111, i64 %113, i32 %116)
  %118 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %119 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %118, i32 0, i32 1
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @cfq_blkiocg_update_timeslice_used(i32* %119, i32 %120)
  %122 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %123 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %122, i32 0, i32 1
  %124 = call i32 @cfq_blkiocg_set_start_empty_time(i32* %123)
  ret void
}

declare dso_local i32 @cfqg_busy_async_queues(%struct.cfq_data*, %struct.cfq_group*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cfq_cfqq_slice_usage(%struct.cfq_queue*) #1

declare dso_local i64 @iops_mode(%struct.cfq_data*) #1

declare dso_local i32 @cfq_cfqq_sync(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_group_service_tree_del(%struct.cfq_rb_root*, %struct.cfq_group*) #1

declare dso_local i64 @cfq_scale_slice(i32, %struct.cfq_group*) #1

declare dso_local i32 @cfq_group_service_tree_add(%struct.cfq_rb_root*, %struct.cfq_group*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cfq_log_cfqg(%struct.cfq_data*, %struct.cfq_group*, i8*, i32, i32) #1

declare dso_local i32 @cfq_log_cfqq(i32, %struct.cfq_queue*, i8*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @cfq_blkiocg_update_timeslice_used(i32*, i32) #1

declare dso_local i32 @cfq_blkiocg_set_start_empty_time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
