; ModuleID = '/home/carl/AnghaBench/fastdfs/test/extr_dfs_func.c_delete_file.c'
source_filename = "/home/carl/AnghaBench/fastdfs/test/extr_dfs_func.c_delete_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

@errno = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delete_file(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = call %struct.TYPE_11__* (...) @tracker_get_connection()
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %7, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %12 = icmp eq %struct.TYPE_11__* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load i64, i64* @errno, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i64, i64* @errno, align 8
  br label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @ECONNREFUSED, align 4
  %20 = sext i32 %19 to i64
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi i64 [ %17, %16 ], [ %20, %18 ]
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %54

24:                                               ; preds = %2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @tracker_query_storage_update1(%struct.TYPE_11__* %25, %struct.TYPE_11__* %9, i8* %26)
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = call i32 @tracker_close_connection_ex(%struct.TYPE_11__* %30, i32 1)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %54

33:                                               ; preds = %24
  %34 = call %struct.TYPE_11__* @tracker_make_connection(%struct.TYPE_11__* %9, i32* %6)
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %8, align 8
  %35 = icmp eq %struct.TYPE_11__* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = call i32 @tracker_close_connection(%struct.TYPE_11__* %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %54

40:                                               ; preds = %33
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strcpy(i8* %41, i32 %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @storage_delete_file1(%struct.TYPE_11__* %45, %struct.TYPE_11__* %46, i8* %47)
  store i32 %48, i32* %6, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = call i32 @tracker_close_connection(%struct.TYPE_11__* %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = call i32 @tracker_close_connection(%struct.TYPE_11__* %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %40, %36, %29, %21
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_11__* @tracker_get_connection(...) #1

declare dso_local i32 @tracker_query_storage_update1(%struct.TYPE_11__*, %struct.TYPE_11__*, i8*) #1

declare dso_local i32 @tracker_close_connection_ex(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_11__* @tracker_make_connection(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @tracker_close_connection(%struct.TYPE_11__*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @storage_delete_file1(%struct.TYPE_11__*, %struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
