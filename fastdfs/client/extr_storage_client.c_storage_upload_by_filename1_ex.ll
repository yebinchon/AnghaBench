; ModuleID = '/home/carl/AnghaBench/fastdfs/client/extr_storage_client.c_storage_upload_by_filename1_ex.c'
source_filename = "/home/carl/AnghaBench/fastdfs/client/extr_storage_client.c_storage_upload_by_filename1_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDFS_GROUP_NAME_MAX_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@FDFS_FILE_ID_SEPERATOR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @storage_upload_by_filename1_ex(i32* %0, i32* %1, i32 %2, i8 signext %3, i8* %4, i8* %5, i32* %6, i32 %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca [128 x i8], align 16
  %24 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8 %3, i8* %14, align 1
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  store i8* %9, i8** %20, align 8
  %25 = load i32, i32* @FDFS_GROUP_NAME_MAX_LEN, align 4
  %26 = add nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %21, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %22, align 8
  %30 = load i8*, i8** %19, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %10
  store i8 0, i8* %29, align 16
  br label %37

33:                                               ; preds = %10
  %34 = trunc i64 %27 to i32
  %35 = load i8*, i8** %19, align 8
  %36 = call i32 @snprintf(i8* %29, i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %33, %32
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i8, i8* %14, align 1
  %42 = load i8*, i8** %15, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = load i32*, i32** %17, align 8
  %45 = load i32, i32* %18, align 4
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %47 = call i32 @storage_upload_by_filename_ex(i32* %38, i32* %39, i32 %40, i8 signext %41, i8* %42, i8* %43, i32* %44, i32 %45, i8* %29, i8* %46)
  store i32 %47, i32* %24, align 4
  %48 = load i32, i32* %24, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %37
  %51 = load i8*, i8** %20, align 8
  %52 = load i8*, i8** @FDFS_FILE_ID_SEPERATOR, align 8
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %54 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %29, i8* %52, i8* %53)
  br label %58

55:                                               ; preds = %37
  %56 = load i8*, i8** %20, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  store i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %24, align 4
  %60 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %60)
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @storage_upload_by_filename_ex(i32*, i32*, i32, i8 signext, i8*, i8*, i32*, i32, i8*, i8*) #2

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
