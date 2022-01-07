; ModuleID = '/home/carl/AnghaBench/fastdfs/common/extr_fdfs_http_shared.c_fdfs_http_check_token.c'
source_filename = "/home/carl/AnghaBench/fastdfs/common/extr_fdfs_http_shared.c_fdfs_http_check_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdfs_http_check_token(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [33 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %10, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = icmp ne i32 %17, 32
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %6, align 4
  br label %51

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = call i32 @time(i32* null)
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i32, i32* %11, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %31, i32* %6, align 4
  br label %51

32:                                               ; preds = %24, %21
  %33 = load i32*, i32** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds [33 x i8], [33 x i8]* %12, i64 0, i64 0
  %37 = call i32 @fdfs_http_gen_token(i32* %33, i8* %34, i32 %35, i8* %36)
  store i32 %37, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %6, align 4
  br label %51

41:                                               ; preds = %32
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds [33 x i8], [33 x i8]* %12, i64 0, i64 0
  %44 = call i64 @memcmp(i8* %42, i8* %43, i32 32)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @EPERM, align 4
  br label %49

49:                                               ; preds = %47, %46
  %50 = phi i32 [ 0, %46 ], [ %48, %47 ]
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %39, %30, %19
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @fdfs_http_gen_token(i32*, i8*, i32, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
