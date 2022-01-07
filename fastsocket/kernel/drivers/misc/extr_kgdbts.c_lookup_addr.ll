; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_kgdbts.c_lookup_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_kgdbts.c_lookup_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"kgdbts_break_test\00", align 1
@kgdbts_break_test = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"sys_open\00", align 1
@sys_open = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"do_fork\00", align 1
@do_fork = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"hw_break_val\00", align 1
@hw_break_val = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @lookup_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lookup_addr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @kgdbts_break_test, align 8
  store i64 %8, i64* %3, align 8
  br label %29

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* @sys_open, align 8
  store i64 %14, i64* %3, align 8
  br label %28

15:                                               ; preds = %9
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* @do_fork, align 8
  store i64 %20, i64* %3, align 8
  br label %27

21:                                               ; preds = %15
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i64 ptrtoint (i32* @hw_break_val to i64), i64* %3, align 8
  br label %26

26:                                               ; preds = %25, %21
  br label %27

27:                                               ; preds = %26, %19
  br label %28

28:                                               ; preds = %27, %13
  br label %29

29:                                               ; preds = %28, %7
  %30 = load i64, i64* %3, align 8
  ret i64 %30
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
