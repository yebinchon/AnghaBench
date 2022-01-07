; ModuleID = '/home/carl/AnghaBench/fastdfs/test/extr_dfs_func.c_upload_file.c'
source_filename = "/home/carl/AnghaBench/fastdfs/test/extr_dfs_func.c_upload_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

@FDFS_GROUP_NAME_MAX_LEN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @upload_file(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_11__, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i32, i32* @FDFS_GROUP_NAME_MAX_LEN, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = call %struct.TYPE_11__* (...) @tracker_get_connection()
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %14, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %25 = icmp eq %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %4
  %27 = load i64, i64* @errno, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64, i64* @errno, align 8
  br label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @ECONNREFUSED, align 4
  %33 = sext i32 %32 to i64
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i64 [ %30, %29 ], [ %33, %31 ]
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %69

37:                                               ; preds = %4
  store i8 0, i8* %22, align 16
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %39 = call i32 @tracker_query_storage_store(%struct.TYPE_11__* %38, %struct.TYPE_11__* %16, i8* %22, i32* %11)
  store i32 %39, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %43 = call i32 @tracker_close_connection_ex(%struct.TYPE_11__* %42, i32 1)
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %69

45:                                               ; preds = %37
  %46 = call %struct.TYPE_11__* @tracker_make_connection(%struct.TYPE_11__* %16, i32* %10)
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %15, align 8
  %47 = icmp eq %struct.TYPE_11__* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %50 = call i32 @tracker_close_connection(%struct.TYPE_11__* %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %69

52:                                               ; preds = %45
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strcpy(i8* %53, i32 %55)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @storage_upload_by_filebuff1(%struct.TYPE_11__* %57, %struct.TYPE_11__* %58, i32 %59, i8* %60, i32 %61, i32* null, i32* null, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %62)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %65 = call i32 @tracker_close_connection(%struct.TYPE_11__* %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %67 = call i32 @tracker_close_connection(%struct.TYPE_11__* %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %69

69:                                               ; preds = %52, %48, %41, %34
  %70 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_11__* @tracker_get_connection(...) #2

declare dso_local i32 @tracker_query_storage_store(%struct.TYPE_11__*, %struct.TYPE_11__*, i8*, i32*) #2

declare dso_local i32 @tracker_close_connection_ex(%struct.TYPE_11__*, i32) #2

declare dso_local %struct.TYPE_11__* @tracker_make_connection(%struct.TYPE_11__*, i32*) #2

declare dso_local i32 @tracker_close_connection(%struct.TYPE_11__*) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @storage_upload_by_filebuff1(%struct.TYPE_11__*, %struct.TYPE_11__*, i32, i8*, i32, i32*, i32*, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
