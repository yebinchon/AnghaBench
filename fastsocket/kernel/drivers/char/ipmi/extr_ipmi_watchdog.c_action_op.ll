; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_watchdog.c_action_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_watchdog.c_action_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@action = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@WDOG_TIMEOUT_RESET = common dso_local global i32 0, align 4
@action_val = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@WDOG_TIMEOUT_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"power_cycle\00", align 1
@WDOG_TIMEOUT_POWER_CYCLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"power_off\00", align 1
@WDOG_TIMEOUT_POWER_DOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @action_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_op(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** @action, align 8
  %11 = call i32 @strcpy(i8* %9, i8* %10)
  br label %12

12:                                               ; preds = %8, %2
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %50

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @WDOG_TIMEOUT_RESET, align 4
  store i32 %21, i32* @action_val, align 4
  br label %46

22:                                               ; preds = %16
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @WDOG_TIMEOUT_NONE, align 4
  store i32 %27, i32* @action_val, align 4
  br label %45

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @WDOG_TIMEOUT_POWER_CYCLE, align 4
  store i32 %33, i32* @action_val, align 4
  br label %44

34:                                               ; preds = %28
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @WDOG_TIMEOUT_POWER_DOWN, align 4
  store i32 %39, i32* @action_val, align 4
  br label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %50

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44, %26
  br label %46

46:                                               ; preds = %45, %20
  %47 = load i8*, i8** @action, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @strcpy(i8* %47, i8* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %40, %15
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
