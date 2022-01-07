; ModuleID = '/home/carl/AnghaBench/fastdfs/tracker/extr_fdfs_server_id_func.c_fdfs_is_server_id_valid.c'
source_filename = "/home/carl/AnghaBench/fastdfs/tracker/extr_fdfs_server_id_func.c_fdfs_is_server_id_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDFS_STORAGE_ID_MAX_SIZE = common dso_local global i32 0, align 4
@FDFS_MAX_SERVER_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdfs_is_server_id_valid(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @FDFS_STORAGE_ID_MAX_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %45

18:                                               ; preds = %1
  store i8* null, i8** %5, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @strtol(i8* %19, i8** %5, i32 10)
  store i64 %20, i64* %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %45

29:                                               ; preds = %23, %18
  %30 = load i64, i64* %4, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @FDFS_MAX_SERVER_ID, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %29
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %45

37:                                               ; preds = %32
  %38 = trunc i64 %10 to i32
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @snprintf(i8* %12, i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i8*, i8** %3, align 8
  %42 = call i64 @strcmp(i8* %12, i8* %41)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %45

45:                                               ; preds = %37, %36, %28, %17
  %46 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
