; ModuleID = '/home/carl/AnghaBench/fastdfs/test/extr_dfs_func.c_download_file.c'
source_filename = "/home/carl/AnghaBench/fastdfs/test/extr_dfs_func.c_download_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

@errno = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@downloadFileCallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @download_file(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = call %struct.TYPE_11__* (...) @tracker_get_connection()
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %9, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %15 = icmp eq %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load i64, i64* @errno, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i64, i64* @errno, align 8
  br label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @ECONNREFUSED, align 4
  %23 = sext i32 %22 to i64
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i64 [ %20, %19 ], [ %23, %21 ]
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  br label %60

27:                                               ; preds = %3
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @tracker_query_storage_fetch1(%struct.TYPE_11__* %28, %struct.TYPE_11__* %11, i8* %29)
  store i32 %30, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = call i32 @tracker_close_connection_ex(%struct.TYPE_11__* %33, i32 1)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %60

36:                                               ; preds = %27
  %37 = call %struct.TYPE_11__* @tracker_make_connection(%struct.TYPE_11__* %11, i32* %8)
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %10, align 8
  %38 = icmp eq %struct.TYPE_11__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %41 = call i32 @tracker_close_connection(%struct.TYPE_11__* %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %60

43:                                               ; preds = %36
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strcpy(i8* %44, i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* @downloadFileCallback, align 4
  %52 = call i32 @storage_download_file_ex1(%struct.TYPE_11__* %48, %struct.TYPE_11__* %49, i8* %50, i32 0, i32 0, i32 %51, i32* null, i32* %12)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %56 = call i32 @tracker_close_connection(%struct.TYPE_11__* %55)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = call i32 @tracker_close_connection(%struct.TYPE_11__* %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %43, %39, %32, %24
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_11__* @tracker_get_connection(...) #1

declare dso_local i32 @tracker_query_storage_fetch1(%struct.TYPE_11__*, %struct.TYPE_11__*, i8*) #1

declare dso_local i32 @tracker_close_connection_ex(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_11__* @tracker_make_connection(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @tracker_close_connection(%struct.TYPE_11__*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @storage_download_file_ex1(%struct.TYPE_11__*, %struct.TYPE_11__*, i8*, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
