; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_debug.c_i2o_report_util_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_debug.c_i2o_report_util_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"UTIL_NOP, \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"UTIL_ABORT, \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"UTIL_CLAIM, \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"UTIL_CLAIM_RELEASE, \00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"UTIL_CONFIG_DIALOG, \00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"UTIL_DEVICE_RESERVE, \00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"UTIL_DEVICE_RELEASE, \00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"UTIL_EVENT_ACKNOWLEDGE, \00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"UTIL_EVENT_REGISTER, \00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"UTIL_LOCK, \00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"UTIL_LOCK_RELEASE, \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"UTIL_PARAMS_GET, \00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"UTIL_PARAMS_SET, \00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"UTIL_REPLY_FAULT_NOTIFY, \00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Cmd = %0#2x, \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @i2o_report_util_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2o_report_util_cmd(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %32 [
    i32 132, label %4
    i32 141, label %6
    i32 140, label %8
    i32 129, label %10
    i32 139, label %12
    i32 137, label %14
    i32 138, label %16
    i32 136, label %18
    i32 135, label %20
    i32 134, label %22
    i32 133, label %24
    i32 131, label %26
    i32 130, label %28
    i32 128, label %30
  ]

4:                                                ; preds = %1
  %5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %35

6:                                                ; preds = %1
  %7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %35

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %35

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %35

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %35

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %35

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %35

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %35

20:                                               ; preds = %1
  %21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %35

22:                                               ; preds = %1
  %23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %35

24:                                               ; preds = %1
  %25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %35

26:                                               ; preds = %1
  %27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  br label %35

28:                                               ; preds = %1
  %29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  br label %35

30:                                               ; preds = %1
  %31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %35

32:                                               ; preds = %1
  %33 = load i32, i32* %2, align 4
  %34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %4
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
