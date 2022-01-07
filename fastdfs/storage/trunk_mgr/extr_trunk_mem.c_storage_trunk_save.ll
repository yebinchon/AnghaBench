; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/trunk_mgr/extr_trunk_mem.c_storage_trunk_save.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/trunk_mgr/extr_trunk_mem.c_storage_trunk_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_trunk_compress_binlog_min_interval = common dso_local global i64 0, align 8
@g_current_time = common dso_local global i64 0, align 8
@g_trunk_last_compress_time = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"start compress trunk binlog ...\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"compress trunk binlog done.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @storage_trunk_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storage_trunk_save() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @g_trunk_compress_binlog_min_interval, align 8
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i64, i64* @g_current_time, align 8
  %7 = load i64, i64* @g_trunk_last_compress_time, align 8
  %8 = sub nsw i64 %6, %7
  %9 = load i64, i64* @g_trunk_compress_binlog_min_interval, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %5, %0
  %12 = call i32 (...) @storage_trunk_do_save()
  store i32 %12, i32* %1, align 4
  br label %36

13:                                               ; preds = %5
  %14 = call i32 @logInfo(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (...) @trunk_binlog_compress_apply()
  store i32 %15, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* %1, align 4
  br label %36

19:                                               ; preds = %13
  %20 = call i32 (...) @storage_trunk_do_save()
  store i32 %20, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = call i32 (...) @trunk_binlog_compress_rollback()
  %24 = load i32, i32* %2, align 4
  store i32 %24, i32* %1, align 4
  br label %36

25:                                               ; preds = %19
  %26 = call i32 (...) @trunk_binlog_compress_commit()
  store i32 %26, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = call i32 (...) @trunk_binlog_compress_rollback()
  %30 = load i32, i32* %2, align 4
  store i32 %30, i32* %1, align 4
  br label %36

31:                                               ; preds = %25
  %32 = load i64, i64* @g_current_time, align 8
  store i64 %32, i64* @g_trunk_last_compress_time, align 8
  %33 = call i32 (...) @storage_write_to_sync_ini_file()
  %34 = call i32 @logInfo(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 (...) @trunk_unlink_all_mark_files()
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %31, %28, %22, %17, %11
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @storage_trunk_do_save(...) #1

declare dso_local i32 @logInfo(i8*) #1

declare dso_local i32 @trunk_binlog_compress_apply(...) #1

declare dso_local i32 @trunk_binlog_compress_rollback(...) #1

declare dso_local i32 @trunk_binlog_compress_commit(...) #1

declare dso_local i32 @storage_write_to_sync_ini_file(...) #1

declare dso_local i32 @trunk_unlink_all_mark_files(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
