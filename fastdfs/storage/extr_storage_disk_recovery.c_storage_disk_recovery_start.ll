; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_disk_recovery.c_storage_disk_recovery_start.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_disk_recovery.c_storage_disk_recovery_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8** }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@g_fdfs_store_paths = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ENOENT = common dso_local global i32 0, align 4
@g_continue_flag = common dso_local global i64 0, align 8
@g_my_server_id_str = common dso_local global i32 0, align 4
@g_tracker_client_ip = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@FDFS_STORAGE_STATUS_RECOVERY = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@MAX_PATH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @storage_disk_recovery_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_fdfs_store_paths, i32 0, i32 0), align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @recovery_init_mark_file(i8* %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %94

20:                                               ; preds = %1
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @recovery_init_binlog_file(i8* %21)
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %94

26:                                               ; preds = %20
  %27 = call i32 @recovery_get_src_storage_server(i32* %4)
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @ENOENT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @storage_disk_recovery_finish(i8* %34)
  store i32 %35, i32* %2, align 4
  br label %94

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %94

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %52, %38
  %40 = load i64, i64* @g_continue_flag, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load i32, i32* @g_my_server_id_str, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_tracker_client_ip, i32 0, i32 0), align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @FDFS_STORAGE_STATUS_RECOVERY, align 4
  %49 = call i64 @storage_report_storage_status(i32 %43, i32 %47, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %53

52:                                               ; preds = %42
  br label %39

53:                                               ; preds = %51, %39
  %54 = load i64, i64* @g_continue_flag, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @EINTR, align 4
  store i32 %57, i32* %2, align 4
  br label %94

58:                                               ; preds = %53
  %59 = call i32* @tracker_make_connection(i32* %4, i32* %6)
  store i32* %59, i32** %5, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %94

63:                                               ; preds = %58
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @storage_do_fetch_binlog(i32* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @tracker_close_connection_ex(i32* %67, i32 1)
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %94

73:                                               ; preds = %63
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @recovery_init_mark_file(i8* %74, i32 1)
  store i32 %75, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %94

79:                                               ; preds = %73
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @storage_disk_recovery_split_trunk_binlog(i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i32, i32* @MAX_PATH_SIZE, align 4
  %85 = zext i32 %84 to i64
  %86 = call i8* @llvm.stacksave()
  store i8* %86, i8** %8, align 8
  %87 = alloca i8, i64 %85, align 16
  store i64 %85, i64* %9, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @recovery_get_mark_filename(i8* %88, i8* %87)
  %90 = call i32 @unlink(i32 %89)
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %2, align 4
  %92 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %92)
  br label %94

93:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %83, %77, %71, %61, %56, %36, %33, %24, %18
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @recovery_init_mark_file(i8*, i32) #1

declare dso_local i32 @recovery_init_binlog_file(i8*) #1

declare dso_local i32 @recovery_get_src_storage_server(i32*) #1

declare dso_local i32 @storage_disk_recovery_finish(i8*) #1

declare dso_local i64 @storage_report_storage_status(i32, i32, i32) #1

declare dso_local i32* @tracker_make_connection(i32*, i32*) #1

declare dso_local i32 @storage_do_fetch_binlog(i32*, i32) #1

declare dso_local i32 @tracker_close_connection_ex(i32*, i32) #1

declare dso_local i32 @storage_disk_recovery_split_trunk_binlog(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @recovery_get_mark_filename(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
