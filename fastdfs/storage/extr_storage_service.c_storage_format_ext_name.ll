; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_service.c_storage_format_ext_name.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_service.c_storage_format_ext_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDFS_FILE_EXT_NAME_MAX_LEN = common dso_local global i32 0, align 4
@RAND_MAX = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @storage_format_ext_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storage_format_ext_name(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strlen(i8* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @FDFS_FILE_EXT_NAME_MAX_LEN, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %7, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @FDFS_FILE_EXT_NAME_MAX_LEN, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i8*, i8** %4, align 8
  store i8* %21, i8** %8, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %37, %20
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = call i64 (...) @rand()
  %28 = sitofp i64 %27 to double
  %29 = fmul double 1.000000e+01, %28
  %30 = load double, double* @RAND_MAX, align 8
  %31 = fdiv double %29, %30
  %32 = fptosi double %31 to i32
  %33 = add nsw i32 48, %32
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %8, align 8
  store i8 %34, i8* %35, align 1
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %22

40:                                               ; preds = %22
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %8, align 8
  store i8 46, i8* %44, align 1
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @memcpy(i8* %46, i8* %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %8, align 8
  br label %54

54:                                               ; preds = %43, %40
  %55 = load i8*, i8** %8, align 8
  store i8 0, i8* %55, align 1
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @rand(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
