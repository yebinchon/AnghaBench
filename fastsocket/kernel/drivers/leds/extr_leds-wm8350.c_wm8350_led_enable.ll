; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-wm8350.c_wm8350_led_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-wm8350.c_wm8350_led_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350_led = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to enable ISINK: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to enable DCDC: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm8350_led*)* @wm8350_led_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8350_led_enable(%struct.wm8350_led* %0) #0 {
  %2 = alloca %struct.wm8350_led*, align 8
  %3 = alloca i32, align 4
  store %struct.wm8350_led* %0, %struct.wm8350_led** %2, align 8
  %4 = load %struct.wm8350_led*, %struct.wm8350_led** %2, align 8
  %5 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %44

9:                                                ; preds = %1
  %10 = load %struct.wm8350_led*, %struct.wm8350_led** %2, align 8
  %11 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @regulator_enable(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load %struct.wm8350_led*, %struct.wm8350_led** %2, align 8
  %18 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %44

23:                                               ; preds = %9
  %24 = load %struct.wm8350_led*, %struct.wm8350_led** %2, align 8
  %25 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regulator_enable(i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.wm8350_led*, %struct.wm8350_led** %2, align 8
  %32 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.wm8350_led*, %struct.wm8350_led** %2, align 8
  %38 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @regulator_disable(i32 %39)
  br label %44

41:                                               ; preds = %23
  %42 = load %struct.wm8350_led*, %struct.wm8350_led** %2, align 8
  %43 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %30, %16, %8
  ret void
}

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
