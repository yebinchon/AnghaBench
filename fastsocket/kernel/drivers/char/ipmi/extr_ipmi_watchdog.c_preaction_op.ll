; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_watchdog.c_preaction_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_watchdog.c_preaction_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@preaction = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"pre_none\00", align 1
@WDOG_PRETIMEOUT_NONE = common dso_local global i32 0, align 4
@preaction_val = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"pre_smi\00", align 1
@WDOG_PRETIMEOUT_SMI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"pre_int\00", align 1
@WDOG_PRETIMEOUT_MSG_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WDOG_PRETIMEOUT_NMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @preaction_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preaction_op(i8* %0, i8* %1) #0 {
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
  %10 = load i8*, i8** @preaction, align 8
  %11 = call i32 @strcpy(i8* %9, i8* %10)
  br label %12

12:                                               ; preds = %8, %2
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %43

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @WDOG_PRETIMEOUT_NONE, align 4
  store i32 %21, i32* @preaction_val, align 4
  br label %39

22:                                               ; preds = %16
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @WDOG_PRETIMEOUT_SMI, align 4
  store i32 %27, i32* @preaction_val, align 4
  br label %38

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @WDOG_PRETIMEOUT_MSG_INT, align 4
  store i32 %33, i32* @preaction_val, align 4
  br label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %43

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %26
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i8*, i8** @preaction, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @strcpy(i8* %40, i8* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %34, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
