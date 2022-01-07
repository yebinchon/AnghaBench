; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/trunk_mgr/extr_trunk_mem.c_trunk_create_next_file.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/trunk_mgr/extr_trunk_mem.c_trunk_create_next_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@MAX_PATH_SIZE = common dso_local global i32 0, align 4
@trunk_file_lock = common dso_local global i32 0, align 4
@g_current_trunk_file_id = common dso_local global i64 0, align 8
@g_fdfs_base64_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @trunk_create_next_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trunk_create_next_file(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %13 = load i32, i32* @MAX_PATH_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  br label %17

17:                                               ; preds = %58, %1
  br label %18

18:                                               ; preds = %17
  %19 = call i32 @pthread_mutex_lock(i32* @trunk_file_lock)
  %20 = load i64, i64* @g_current_trunk_file_id, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* @g_current_trunk_file_id, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  %25 = call i32 (...) @storage_write_to_sync_ini_file()
  store i32 %25, i32* %5, align 4
  %26 = call i32 @pthread_mutex_unlock(i32* @trunk_file_lock)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %65

31:                                               ; preds = %18
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %37 = call i32 @int2buff(i64 %35, i8* %36)
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %40 = call i32 @base64_encode_ex(i32* @g_fdfs_base64_context, i8* %38, i32 4, i8* %39, i32* %6, i32 0)
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @storage_get_store_path(i8* %41, i32 %42, i32* %10, i32* %11)
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = trunc i64 %14 to i32
  %54 = call i32 @trunk_get_full_filename(%struct.TYPE_8__* %52, i8* %16, i32 %53)
  %55 = call i32 @fileExists(i8* %16)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %31
  br label %59

58:                                               ; preds = %31
  br label %17

59:                                               ; preds = %57
  %60 = call i32 @trunk_init_file(i8* %16)
  store i32 %60, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %65

64:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %65

65:                                               ; preds = %64, %62, %29
  %66 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @storage_write_to_sync_ini_file(...) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @int2buff(i64, i8*) #2

declare dso_local i32 @base64_encode_ex(i32*, i8*, i32, i8*, i32*, i32) #2

declare dso_local i32 @storage_get_store_path(i8*, i32, i32*, i32*) #2

declare dso_local i32 @trunk_get_full_filename(%struct.TYPE_8__*, i8*, i32) #2

declare dso_local i32 @fileExists(i8*) #2

declare dso_local i32 @trunk_init_file(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
