; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.binder_proc* }
%struct.binder_proc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__* }

@BINDER_DEBUG_OPEN_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"binder_open: %d:%d\0A\00", align 1
@current = common dso_local global %struct.TYPE_6__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@binder_lock = common dso_local global i32 0, align 4
@BINDER_STAT_PROC = common dso_local global i32 0, align 4
@binder_procs = common dso_local global i32 0, align 4
@binder_proc_dir_entry_proc = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@binder_read_proc_proc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @binder_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.binder_proc*, align 8
  %7 = alloca [11 x i8], align 1
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load i32, i32* @BINDER_DEBUG_OPEN_CLOSE, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @binder_debug(i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.binder_proc* @kzalloc(i32 32, i32 %18)
  store %struct.binder_proc* %19, %struct.binder_proc** %6, align 8
  %20 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %21 = icmp eq %struct.binder_proc* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %79

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %27 = call i32 @get_task_struct(%struct.TYPE_6__* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %29 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %30 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %29, i32 0, i32 6
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %30, align 8
  %31 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %32 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %31, i32 0, i32 5
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %35 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %34, i32 0, i32 4
  %36 = call i32 @init_waitqueue_head(i32* %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %38 = call i32 @task_nice(%struct.TYPE_6__* %37)
  %39 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %40 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = call i32 @mutex_lock(i32* @binder_lock)
  %42 = load i32, i32* @BINDER_STAT_PROC, align 4
  %43 = call i32 @binder_stats_created(i32 %42)
  %44 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %45 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %44, i32 0, i32 2
  %46 = call i32 @hlist_add_head(i32* %45, i32* @binder_procs)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %53 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %55 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %54, i32 0, i32 1
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %58 = load %struct.file*, %struct.file** %5, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 0
  store %struct.binder_proc* %57, %struct.binder_proc** %59, align 8
  %60 = call i32 @mutex_unlock(i32* @binder_lock)
  %61 = load i64, i64* @binder_proc_dir_entry_proc, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %25
  %64 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %65 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %66 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @snprintf(i8* %64, i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %70 = load i64, i64* @binder_proc_dir_entry_proc, align 8
  %71 = call i32 @remove_proc_entry(i8* %69, i64 %70)
  %72 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %73 = load i32, i32* @S_IRUGO, align 4
  %74 = load i64, i64* @binder_proc_dir_entry_proc, align 8
  %75 = load i32, i32* @binder_read_proc_proc, align 4
  %76 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %77 = call i32 @create_proc_read_entry(i8* %72, i32 %73, i64 %74, i32 %75, %struct.binder_proc* %76)
  br label %78

78:                                               ; preds = %63, %25
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %22
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @binder_debug(i32, i8*, i32, i32) #1

declare dso_local %struct.binder_proc* @kzalloc(i32, i32) #1

declare dso_local i32 @get_task_struct(%struct.TYPE_6__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @task_nice(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @binder_stats_created(i32) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @remove_proc_entry(i8*, i64) #1

declare dso_local i32 @create_proc_read_entry(i8*, i32, i64, i32, %struct.binder_proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
