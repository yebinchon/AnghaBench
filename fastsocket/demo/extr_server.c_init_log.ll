; ModuleID = '/home/carl/AnghaBench/fastsocket/demo/extr_server.c_init_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/demo/extr_server.c_init_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@specified_log_file = common dso_local global i64 0, align 8
@log_path = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@log_file = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Open log file failed\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Using specified log file %s\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"demo.log\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Using default log file %s\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"./demo.log\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@pfd = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"Log starts\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_log() #0 {
  %1 = load i64, i64* @specified_log_file, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  %4 = load i8*, i8** @log_path, align 8
  %5 = call i64 @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %5, i64* @log_file, align 8
  %6 = load i64, i64* @log_file, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %3
  %11 = load i8*, i8** @log_path, align 8
  %12 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %0
  %14 = load i64, i64* @log_file, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = call i64 @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %17, i64* @log_file, align 8
  %18 = load i64, i64* @log_file, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 (...) @exit_cleanup()
  br label %25

23:                                               ; preds = %16
  %24 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i32, i32* @STDERR_FILENO, align 4
  %28 = call i32 @dup(i32 %27)
  store i32 %28, i32* @pfd, align 4
  %29 = load i64, i64* @log_file, align 8
  %30 = call i32 @fileno(i64 %29)
  %31 = load i32, i32* @STDOUT_FILENO, align 4
  %32 = call i32 @dup2(i32 %30, i32 %31)
  %33 = load i64, i64* @log_file, align 8
  %34 = call i32 @fileno(i64 %33)
  %35 = load i32, i32* @STDERR_FILENO, align 4
  %36 = call i32 @dup2(i32 %34, i32 %35)
  %37 = call i32 @print_d(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i64 @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @exit_cleanup(...) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @fileno(i64) #1

declare dso_local i32 @print_d(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
