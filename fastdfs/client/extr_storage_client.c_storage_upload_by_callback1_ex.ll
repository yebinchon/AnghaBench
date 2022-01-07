; ModuleID = '/home/carl/AnghaBench/fastdfs/client/extr_storage_client.c_storage_upload_by_callback1_ex.c'
source_filename = "/home/carl/AnghaBench/fastdfs/client/extr_storage_client.c_storage_upload_by_callback1_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDFS_GROUP_NAME_MAX_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FDFS_UPLOAD_BY_CALLBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@FDFS_FILE_ID_SEPERATOR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @storage_upload_by_callback1_ex(i32* %0, i32* %1, i32 %2, i8 signext %3, i64 %4, i8* %5, i32 %6, i8* %7, i32* %8, i32 %9, i8* %10, i8* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca [128 x i8], align 16
  %28 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32 %2, i32* %15, align 4
  store i8 %3, i8* %16, align 1
  store i64 %4, i64* %17, align 8
  store i8* %5, i8** %18, align 8
  store i32 %6, i32* %19, align 4
  store i8* %7, i8** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32 %9, i32* %22, align 4
  store i8* %10, i8** %23, align 8
  store i8* %11, i8** %24, align 8
  %29 = load i32, i32* @FDFS_GROUP_NAME_MAX_LEN, align 4
  %30 = add nsw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %25, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %26, align 8
  %34 = load i8*, i8** %23, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %12
  store i8 0, i8* %33, align 16
  br label %41

37:                                               ; preds = %12
  %38 = trunc i64 %31 to i32
  %39 = load i8*, i8** %23, align 8
  %40 = call i32 @snprintf(i8* %33, i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %37, %36
  %42 = load i32*, i32** %13, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = load i32, i32* %15, align 4
  %45 = load i8, i8* %16, align 1
  %46 = load i32, i32* @FDFS_UPLOAD_BY_CALLBACK, align 4
  %47 = load i64, i64* %17, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load i8*, i8** %18, align 8
  %50 = load i32, i32* %19, align 4
  %51 = load i8*, i8** %20, align 8
  %52 = load i32*, i32** %21, align 8
  %53 = load i32, i32* %22, align 4
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  %55 = call i32 @storage_do_upload_file(i32* %42, i32* %43, i32 %44, i8 signext %45, i32 %46, i8* %48, i8* %49, i32 %50, i32* null, i32* null, i8* %51, i32* %52, i32 %53, i8* %33, i8* %54)
  store i32 %55, i32* %28, align 4
  %56 = load i32, i32* %28, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %41
  %59 = load i8*, i8** %24, align 8
  %60 = load i8*, i8** @FDFS_FILE_ID_SEPERATOR, align 8
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  %62 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %33, i8* %60, i8* %61)
  br label %66

63:                                               ; preds = %41
  %64 = load i8*, i8** %24, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  store i8 0, i8* %65, align 1
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %28, align 4
  %68 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %68)
  ret i32 %67
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
