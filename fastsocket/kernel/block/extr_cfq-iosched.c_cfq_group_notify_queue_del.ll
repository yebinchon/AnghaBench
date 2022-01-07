; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_group_notify_queue_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_group_notify_queue_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { %struct.cfq_rb_root }
%struct.cfq_rb_root = type { i32* }
%struct.cfq_group = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"del_from_rr group\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_data*, %struct.cfq_group*)* @cfq_group_notify_queue_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_group_notify_queue_del(%struct.cfq_data* %0, %struct.cfq_group* %1) #0 {
  %3 = alloca %struct.cfq_data*, align 8
  %4 = alloca %struct.cfq_group*, align 8
  %5 = alloca %struct.cfq_rb_root*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %3, align 8
  store %struct.cfq_group* %1, %struct.cfq_group** %4, align 8
  %6 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %7 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %6, i32 0, i32 0
  store %struct.cfq_rb_root* %7, %struct.cfq_rb_root** %5, align 8
  %8 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %5, align 8
  %9 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %12 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %11, i32 0, i32 3
  %13 = icmp eq i32* %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %5, align 8
  %16 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %19 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %25 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %29 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %45

33:                                               ; preds = %17
  %34 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %35 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %36 = call i32 @cfq_log_cfqg(%struct.cfq_data* %34, %struct.cfq_group* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %5, align 8
  %38 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %39 = call i32 @cfq_group_service_tree_del(%struct.cfq_rb_root* %37, %struct.cfq_group* %38)
  %40 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %41 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %43 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %42, i32 0, i32 1
  %44 = call i32 @cfq_blkiocg_update_dequeue_stats(i32* %43, i32 1)
  br label %45

45:                                               ; preds = %33, %32
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cfq_log_cfqg(%struct.cfq_data*, %struct.cfq_group*, i8*) #1

declare dso_local i32 @cfq_group_service_tree_del(%struct.cfq_rb_root*, %struct.cfq_group*) #1

declare dso_local i32 @cfq_blkiocg_update_dequeue_stats(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
