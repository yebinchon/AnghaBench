; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_atmel-wm97xx.c_atmel_wm97xx_acc_pen_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_atmel-wm97xx.c_atmel_wm97xx_acc_pen_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { %struct.input_dev*, i32 }
%struct.input_dev = type { i32 }
%struct.atmel_wm97xx = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@pressure = common dso_local global i64 0, align 8
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm97xx*)* @atmel_wm97xx_acc_pen_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_wm97xx_acc_pen_up(%struct.wm97xx* %0) #0 {
  %2 = alloca %struct.wm97xx*, align 8
  %3 = alloca %struct.atmel_wm97xx*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %2, align 8
  %6 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %7 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.atmel_wm97xx* @platform_get_drvdata(i32 %8)
  store %struct.atmel_wm97xx* %9, %struct.atmel_wm97xx** %3, align 8
  %10 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %11 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %10, i32 0, i32 0
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %4, align 8
  %13 = load %struct.atmel_wm97xx*, %struct.atmel_wm97xx** %3, align 8
  %14 = getelementptr inbounds %struct.atmel_wm97xx, %struct.atmel_wm97xx* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gpio_get_value(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.atmel_wm97xx*, %struct.atmel_wm97xx** %3, align 8
  %21 = getelementptr inbounds %struct.atmel_wm97xx, %struct.atmel_wm97xx* %20, i32 0, i32 0
  %22 = load i64, i64* @jiffies, align 8
  %23 = call i64 @msecs_to_jiffies(i32 1)
  %24 = add nsw i64 %22, %23
  %25 = call i32 @mod_timer(i32* %21, i64 %24)
  br label %39

26:                                               ; preds = %1
  %27 = load i64, i64* @pressure, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %31 = load i32, i32* @ABS_PRESSURE, align 4
  %32 = call i32 @input_report_abs(%struct.input_dev* %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %35 = load i32, i32* @BTN_TOUCH, align 4
  %36 = call i32 @input_report_key(%struct.input_dev* %34, i32 %35, i32 0)
  %37 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %38 = call i32 @input_sync(%struct.input_dev* %37)
  br label %39

39:                                               ; preds = %33, %19
  ret void
}

declare dso_local %struct.atmel_wm97xx* @platform_get_drvdata(i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
