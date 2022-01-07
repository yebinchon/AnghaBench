; ModuleID = '/home/carl/AnghaBench/fastdfs/test/extr_gen_files.c_main.c'
source_filename = "/home/carl/AnghaBench/fastdfs/test/extr_gen_files.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@SRAND_SEED = common dso_local global i32 0, align 4
@FILE_TYPE_COUNT = common dso_local global i32 0, align 4
@files = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"open file %s fail, errno: %d, error info: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@RAND_MAX = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"write file %s fail, errno: %d, error info: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@BUFF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @SRAND_SEED, align 4
  %10 = call i32 @srand(i32 %9)
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %12 = getelementptr inbounds i8, i8* %11, i64 1024
  store i8* %12, i8** %8, align 8
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %114, %0
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @FILE_TYPE_COUNT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %117

17:                                               ; preds = %13
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32* @fopen(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %17
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @errno, align 4
  %35 = load i32, i32* @errno, align 4
  %36 = call i8* @STRERROR(i32 %35)
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %33, i32 %34, i8* %36)
  store i32 1, i32* %1, align 4
  br label %119

38:                                               ; preds = %17
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sdiv i32 %44, 1024
  store i32 %45, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %88, %38
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %91

51:                                               ; preds = %46
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  store i8* %52, i8** %7, align 8
  br label %53

53:                                               ; preds = %66, %51
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ult i8* %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = call i64 (...) @rand()
  %59 = sitofp i64 %58 to double
  %60 = load double, double* @RAND_MAX, align 8
  %61 = fdiv double %59, %60
  %62 = fmul double 2.550000e+02, %61
  %63 = fptosi double %62 to i32
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %7, align 8
  store i8 %64, i8* %65, align 1
  br label %66

66:                                               ; preds = %57
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  br label %53

69:                                               ; preds = %53
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @fwrite(i8* %70, i32 1024, i32 1, i32* %71)
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* @errno, align 4
  %82 = load i32, i32* @errno, align 4
  %83 = call i8* @STRERROR(i32 %82)
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %80, i32 %81, i8* %83)
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @fclose(i32* %85)
  store i32 1, i32* %1, align 4
  br label %119

87:                                               ; preds = %69
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %46

91:                                               ; preds = %46
  %92 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %93 = call i32 @memset(i8* %92, i32 255, i32 1024)
  %94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @fwrite(i8* %94, i32 1024, i32 1, i32* %95)
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %100 = load i32, i32* %2, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* @errno, align 4
  %106 = load i32, i32* @errno, align 4
  %107 = call i8* @STRERROR(i32 %106)
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %104, i32 %105, i8* %107)
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 @fclose(i32* %109)
  store i32 1, i32* %1, align 4
  br label %119

111:                                              ; preds = %91
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @fclose(i32* %112)
  br label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %2, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %2, align 4
  br label %13

117:                                              ; preds = %13
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %119

119:                                              ; preds = %117, %98, %74, %27
  %120 = load i32, i32* %1, align 4
  ret i32 %120
}

declare dso_local i32 @srand(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @STRERROR(i32) #1

declare dso_local i64 @rand(...) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
