; ModuleID = '/home/carl/AnghaBench/fastdfs/test/extr_test_delete.c_test_init.c'
source_filename = "/home/carl/AnghaBench/fastdfs/test/extr_test_delete.c_test_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"chdir fail, errno: %d, error info: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@FILENAME_FAIL = common dso_local global i8* null, align 8
@proccess_index = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@fpFail = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"open file %s fail, errno: %d, error info: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [64 x i8], align 16
  %3 = call i64 @access(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = call i64 @mkdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 493)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %8, %5, %0
  %10 = call i64 @chdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load i32, i32* @errno, align 4
  %14 = load i32, i32* @errno, align 4
  %15 = call i8* @STRERROR(i32 %14)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %13, i8* %15)
  %17 = load i32, i32* @errno, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* @errno, align 4
  br label %23

21:                                               ; preds = %12
  %22 = load i32, i32* @EPERM, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %1, align 4
  br label %48

25:                                               ; preds = %9
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %27 = load i8*, i8** @FILENAME_FAIL, align 8
  %28 = load i32, i32* @proccess_index, align 4
  %29 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %27, i32 %28)
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %31 = call i32* @fopen(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %31, i32** @fpFail, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %25
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %35 = load i32, i32* @errno, align 4
  %36 = load i32, i32* @errno, align 4
  %37 = call i8* @STRERROR(i32 %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %34, i32 %35, i8* %37)
  %39 = load i32, i32* @errno, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @errno, align 4
  br label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @EPERM, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %1, align 4
  br label %48

47:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %48

48:                                               ; preds = %47, %45, %23
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @STRERROR(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
