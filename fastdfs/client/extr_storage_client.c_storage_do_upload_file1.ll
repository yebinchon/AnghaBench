; ModuleID = '/home/carl/AnghaBench/fastdfs/client/extr_storage_client.c_storage_do_upload_file1.c'
source_filename = "/home/carl/AnghaBench/fastdfs/client/extr_storage_client.c_storage_do_upload_file1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDFS_GROUP_NAME_MAX_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@FDFS_FILE_ID_SEPERATOR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @storage_do_upload_file1(i32* %0, i32* %1, i32 %2, i8 signext %3, i32 %4, i8* %5, i8* %6, i32 %7, i8* %8, i32* %9, i32 %10, i8* %11, i8* %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca [128 x i8], align 16
  %30 = alloca i32, align 4
  store i32* %0, i32** %14, align 8
  store i32* %1, i32** %15, align 8
  store i32 %2, i32* %16, align 4
  store i8 %3, i8* %17, align 1
  store i32 %4, i32* %18, align 4
  store i8* %5, i8** %19, align 8
  store i8* %6, i8** %20, align 8
  store i32 %7, i32* %21, align 4
  store i8* %8, i8** %22, align 8
  store i32* %9, i32** %23, align 8
  store i32 %10, i32* %24, align 4
  store i8* %11, i8** %25, align 8
  store i8* %12, i8** %26, align 8
  %31 = load i32, i32* @FDFS_GROUP_NAME_MAX_LEN, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %27, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %28, align 8
  %36 = load i8*, i8** %25, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %13
  store i8 0, i8* %35, align 16
  br label %43

39:                                               ; preds = %13
  %40 = trunc i64 %33 to i32
  %41 = load i8*, i8** %25, align 8
  %42 = call i32 @snprintf(i8* %35, i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %39, %38
  %44 = load i32*, i32** %14, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* %16, align 4
  %47 = load i8, i8* %17, align 1
  %48 = load i32, i32* %18, align 4
  %49 = load i8*, i8** %19, align 8
  %50 = load i8*, i8** %20, align 8
  %51 = load i32, i32* %21, align 4
  %52 = load i8*, i8** %22, align 8
  %53 = load i32*, i32** %23, align 8
  %54 = load i32, i32* %24, align 4
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %29, i64 0, i64 0
  %56 = call i32 @storage_do_upload_file(i32* %44, i32* %45, i32 %46, i8 signext %47, i32 %48, i8* %49, i8* %50, i32 %51, i32* null, i32* null, i8* %52, i32* %53, i32 %54, i8* %35, i8* %55)
  store i32 %56, i32* %30, align 4
  %57 = load i32, i32* %30, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %43
  %60 = load i8*, i8** %26, align 8
  %61 = load i8*, i8** @FDFS_FILE_ID_SEPERATOR, align 8
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %29, i64 0, i64 0
  %63 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %35, i8* %61, i8* %62)
  br label %67

64:                                               ; preds = %43
  %65 = load i8*, i8** %26, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  store i8 0, i8* %66, align 1
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i32, i32* %30, align 4
  %69 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %69)
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @storage_do_upload_file(i32*, i32*, i32, i8 signext, i32, i8*, i8*, i32, i32*, i32*, i8*, i32*, i32, i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
