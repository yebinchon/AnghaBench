; ModuleID = '/home/carl/AnghaBench/fastdfs/test/extr_test_delete.c_save_stats_by_overall.c'
source_filename = "/home/carl/AnghaBench/fastdfs/test/extr_test_delete.c_save_stats_by_overall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@STAT_FILENAME_BY_OVERALL = common dso_local global i8* null, align 8
@proccess_index = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"open file %s fail, errno: %d, error info: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"#total_count success_count  time_used(s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@total_count = common dso_local global i32 0, align 4
@success_count = common dso_local global i32 0, align 4
@start_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @save_stats_by_overall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_stats_by_overall() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [64 x i8], align 16
  %3 = alloca i32*, align 8
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %5 = load i8*, i8** @STAT_FILENAME_BY_OVERALL, align 8
  %6 = load i32, i32* @proccess_index, align 4
  %7 = call i32 @sprintf(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %5, i32 %6)
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %9, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %0
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %13 = load i32, i32* @errno, align 4
  %14 = load i32, i32* @errno, align 4
  %15 = call i8* @STRERROR(i32 %14)
  %16 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %12, i32 %13, i8* %15)
  %17 = load i32, i32* @errno, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @errno, align 4
  br label %23

21:                                               ; preds = %11
  %22 = load i32, i32* @EPERM, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %1, align 4
  br label %38

25:                                               ; preds = %0
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @total_count, align 4
  %30 = load i32, i32* @success_count, align 4
  %31 = call i64 @time(i32* null)
  %32 = load i64, i64* @start_time, align 8
  %33 = sub nsw i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %29, i32 %30, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @fclose(i32* %36)
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %25, %23
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i8*) #1

declare dso_local i8* @STRERROR(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
