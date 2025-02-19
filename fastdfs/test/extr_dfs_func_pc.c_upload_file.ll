; ModuleID = '/home/carl/AnghaBench/fastdfs/test/extr_dfs_func_pc.c_upload_file.c'
source_filename = "/home/carl/AnghaBench/fastdfs/test/extr_dfs_func_pc.c_upload_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@FDFS_GROUP_NAME_MAX_LEN = common dso_local global i32 0, align 4
@pTrackerServer = common dso_local global i32 0, align 4
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
  %14 = alloca %struct.TYPE_6__, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i32, i32* @FDFS_GROUP_NAME_MAX_LEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  store i8 0, i8* %21, align 16
  %22 = load i32, i32* @pTrackerServer, align 4
  %23 = call i32 @tracker_query_storage_store(i32 %22, %struct.TYPE_6__* %14, i8* %21, i32* %11)
  store i32 %23, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %45

27:                                               ; preds = %4
  %28 = call %struct.TYPE_6__* @getConnectedStorageServer(%struct.TYPE_6__* %14, i32* %10)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %15, align 8
  %29 = icmp eq %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %45

32:                                               ; preds = %27
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strcpy(i8* %33, i32 %35)
  %37 = load i32, i32* @pTrackerServer, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @storage_upload_by_filebuff1(i32 %37, %struct.TYPE_6__* %38, i32 %39, i8* %40, i32 %41, i32* null, i32* null, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %45

45:                                               ; preds = %32, %30, %25
  %46 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tracker_query_storage_store(i32, %struct.TYPE_6__*, i8*, i32*) #2

declare dso_local %struct.TYPE_6__* @getConnectedStorageServer(%struct.TYPE_6__*, i32*) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @storage_upload_by_filebuff1(i32, %struct.TYPE_6__*, i32, i8*, i32, i32*, i32*, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
