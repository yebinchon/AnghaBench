; ModuleID = '/home/carl/AnghaBench/fastdfs/test/extr_combine_result.c_combine_stat_overall.c'
source_filename = "/home/carl/AnghaBench/fastdfs/test/extr_combine_result.c_combine_stat_overall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@proccess_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@STAT_FILENAME_BY_OVERALL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"open file %s fail, errno: %d, error info: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"sscanf %s fail, errno: %d, error info: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @combine_stat_overall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @combine_stat_overall(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32*, i32** %5, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32*, i32** %6, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %90, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @proccess_count, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %93

22:                                               ; preds = %18
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %24 = load i8*, i8** @STAT_FILENAME_BY_OVERALL, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25)
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %28 = call i32* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %28, i32** %9, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %22
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %32 = load i32, i32* @errno, align 4
  %33 = load i32, i32* @errno, align 4
  %34 = call i8* @STRERROR(i32 %33)
  %35 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %31, i32 %32, i8* %34)
  %36 = load i32, i32* @errno, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @errno, align 4
  br label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @EPERM, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %4, align 4
  br label %98

44:                                               ; preds = %22
  br label %45

45:                                               ; preds = %55, %44
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %47 = load i32*, i32** %9, align 8
  %48 = call i32* @fgets(i8* %46, i32 256, i32* %47)
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %75

50:                                               ; preds = %45
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %52 = load i8, i8* %51, align 16
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 35
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %45

56:                                               ; preds = %50
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %58 = call i32 @sscanf(i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %13, i32* %14, i32* %12)
  %59 = icmp ne i32 %58, 3
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %62 = load i32, i32* @errno, align 4
  %63 = load i32, i32* @errno, align 4
  %64 = call i8* @STRERROR(i32 %63)
  %65 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %61, i32 %62, i8* %64)
  %66 = load i32, i32* @errno, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @errno, align 4
  br label %72

70:                                               ; preds = %60
  %71 = load i32, i32* @EINVAL, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %4, align 4
  br label %98

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74, %45
  %76 = load i32, i32* %13, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %76
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %80
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %84
  store i32 %87, i32* %85, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @fclose(i32* %88)
  br label %90

90:                                               ; preds = %75
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %18

93:                                               ; preds = %18
  %94 = load i32, i32* @proccess_count, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %95, align 4
  %97 = sdiv i32 %96, %94
  store i32 %97, i32* %95, align 4
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %93, %72, %42
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i8*) #1

declare dso_local i8* @STRERROR(i32) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
