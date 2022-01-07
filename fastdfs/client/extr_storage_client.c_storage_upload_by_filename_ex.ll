; ModuleID = '/home/carl/AnghaBench/fastdfs/client/extr_storage_client.c_storage_upload_by_filename_ex.c'
source_filename = "/home/carl/AnghaBench/fastdfs/client/extr_storage_client.c_storage_upload_by_filename_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FDFS_UPLOAD_BY_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @storage_upload_by_filename_ex(i32* %0, i32* %1, i32 %2, i8 signext %3, i8* %4, i8* %5, i32* %6, i32 %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.stat, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8 %3, i8* %15, align 1
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = call i64 @stat(i8* %23, %struct.stat* %22)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %10
  %27 = load i8*, i8** %20, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** %21, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 0, i8* %30, align 1
  %31 = load i32, i32* @errno, align 4
  store i32 %31, i32* %11, align 4
  br label %64

32:                                               ; preds = %10
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @S_ISREG(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %20, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %21, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 0, i8* %41, align 1
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %11, align 4
  br label %64

43:                                               ; preds = %32
  %44 = load i8*, i8** %17, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i8*, i8** %16, align 8
  %48 = call i8* @fdfs_get_file_ext_name(i8* %47)
  store i8* %48, i8** %17, align 8
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32*, i32** %12, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i8, i8* %15, align 1
  %54 = load i32, i32* @FDFS_UPLOAD_BY_FILE, align 4
  %55 = load i8*, i8** %16, align 8
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %17, align 8
  %59 = load i32*, i32** %18, align 8
  %60 = load i32, i32* %19, align 4
  %61 = load i8*, i8** %20, align 8
  %62 = load i8*, i8** %21, align 8
  %63 = call i32 @storage_do_upload_file(i32* %50, i32* %51, i32 %52, i8 signext %53, i32 %54, i8* %55, i32* null, i32 %57, i32* null, i32* null, i8* %58, i32* %59, i32 %60, i8* %61, i8* %62)
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %49, %37, %26
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i8* @fdfs_get_file_ext_name(i8*) #1

declare dso_local i32 @storage_do_upload_file(i32*, i32*, i32, i8 signext, i32, i8*, i32*, i32, i32*, i32*, i8*, i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
