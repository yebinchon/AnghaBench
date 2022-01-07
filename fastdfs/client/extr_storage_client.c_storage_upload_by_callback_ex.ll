; ModuleID = '/home/carl/AnghaBench/fastdfs/client/extr_storage_client.c_storage_upload_by_callback_ex.c'
source_filename = "/home/carl/AnghaBench/fastdfs/client/extr_storage_client.c_storage_upload_by_callback_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDFS_UPLOAD_BY_CALLBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @storage_upload_by_callback_ex(i32* %0, i32* %1, i32 %2, i8 signext %3, i64 %4, i8* %5, i32 %6, i8* %7, i32* %8, i32 %9, i8* %10, i8* %11) #0 {
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
  %25 = load i32*, i32** %13, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = load i32, i32* %15, align 4
  %28 = load i8, i8* %16, align 1
  %29 = load i32, i32* @FDFS_UPLOAD_BY_CALLBACK, align 4
  %30 = load i64, i64* %17, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load i8*, i8** %18, align 8
  %33 = load i32, i32* %19, align 4
  %34 = load i8*, i8** %20, align 8
  %35 = load i32*, i32** %21, align 8
  %36 = load i32, i32* %22, align 4
  %37 = load i8*, i8** %23, align 8
  %38 = load i8*, i8** %24, align 8
  %39 = call i32 @storage_do_upload_file(i32* %25, i32* %26, i32 %27, i8 signext %28, i32 %29, i8* %31, i8* %32, i32 %33, i32* null, i32* null, i8* %34, i32* %35, i32 %36, i8* %37, i8* %38)
  ret i32 %39
}

declare dso_local i32 @storage_do_upload_file(i32*, i32*, i32, i8 signext, i32, i8*, i8*, i32, i32*, i32*, i8*, i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
