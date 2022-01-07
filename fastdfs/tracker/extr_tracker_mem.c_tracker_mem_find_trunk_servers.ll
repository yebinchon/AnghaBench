; ModuleID = '/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_mem.c_tracker_mem_find_trunk_servers.c'
source_filename = "/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_mem.c_tracker_mem_find_trunk_servers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32* }

@g_if_leader_self = common dso_local global i64 0, align 8
@g_if_use_trunk_file = common dso_local global i64 0, align 8
@mem_thread_lock = common dso_local global i32 0, align 4
@g_groups = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@g_trunk_server_chg_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tracker_mem_find_trunk_servers() #0 {
  %1 = alloca %struct.TYPE_4__**, align 8
  %2 = alloca %struct.TYPE_4__**, align 8
  %3 = load i64, i64* @g_if_leader_self, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i64, i64* @g_if_use_trunk_file, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5, %0
  br label %38

9:                                                ; preds = %5
  %10 = call i32 @pthread_mutex_lock(i32* @mem_thread_lock)
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_groups, i32 0, i32 1), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_groups, i32 0, i32 0), align 8
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %11, i64 %13
  store %struct.TYPE_4__** %14, %struct.TYPE_4__*** %2, align 8
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_groups, i32 0, i32 1), align 8
  store %struct.TYPE_4__** %15, %struct.TYPE_4__*** %1, align 8
  br label %16

16:                                               ; preds = %31, %9
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %1, align 8
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %19 = icmp ult %struct.TYPE_4__** %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %1, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %1, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @tracker_mem_find_trunk_server(%struct.TYPE_4__* %28, i32 1)
  br label %30

30:                                               ; preds = %26, %20
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i32 1
  store %struct.TYPE_4__** %33, %struct.TYPE_4__*** %1, align 8
  br label %16

34:                                               ; preds = %16
  %35 = load i32, i32* @g_trunk_server_chg_count, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @g_trunk_server_chg_count, align 4
  %37 = call i32 @pthread_mutex_unlock(i32* @mem_thread_lock)
  br label %38

38:                                               ; preds = %34, %8
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @tracker_mem_find_trunk_server(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
