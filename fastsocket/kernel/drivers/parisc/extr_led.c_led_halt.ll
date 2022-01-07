; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_led.c_led_halt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_led.c_led_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.notifier_block = type { i32 }

@notifier_disabled = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SYSTEM RESTART\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SYSTEM HALT\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"SYSTEM POWER OFF\00", align 1
@NOTIFY_DONE = common dso_local global i32 0, align 4
@led_wq = common dso_local global i32* null, align 8
@led_task = common dso_local global i32 0, align 4
@lcd_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DISPLAY_MODEL_LCD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @led_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_halt(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @notifier_disabled, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %12, i32* %4, align 4
  br label %40

13:                                               ; preds = %3
  store i32 1, i32* @notifier_disabled, align 4
  %14 = load i64, i64* %6, align 8
  switch i64 %14, label %18 [
    i64 128, label %15
    i64 130, label %16
    i64 129, label %17
  ]

15:                                               ; preds = %13
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %20

16:                                               ; preds = %13
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %20

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %19, i32* %4, align 4
  br label %40

20:                                               ; preds = %17, %16, %15
  %21 = load i32*, i32** @led_wq, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = call i32 @cancel_delayed_work_sync(i32* @led_task)
  %25 = load i32*, i32** @led_wq, align 8
  %26 = call i32 @destroy_workqueue(i32* %25)
  store i32* null, i32** @led_wq, align 8
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lcd_info, i32 0, i32 0), align 8
  %29 = load i64, i64* @DISPLAY_MODEL_LCD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @lcd_print(i8* %32)
  br label %38

34:                                               ; preds = %27
  br i1 true, label %35, label %37

35:                                               ; preds = %34
  %36 = call i32 @led_func_ptr(i32 255)
  br label %37

37:                                               ; preds = %35, %34
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %18, %11
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @lcd_print(i8*) #1

declare dso_local i32 @led_func_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
