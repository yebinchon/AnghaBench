; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_ledtrig-timer.c_led_timer_function.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_ledtrig-timer.c_led_timer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.timer_trig_data* }
%struct.timer_trig_data = type { i64, i64, i64, i32 }

@LED_OFF = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @led_timer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @led_timer_function(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca %struct.timer_trig_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.led_classdev*
  store %struct.led_classdev* %8, %struct.led_classdev** %3, align 8
  %9 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %10 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %9, i32 0, i32 0
  %11 = load %struct.timer_trig_data*, %struct.timer_trig_data** %10, align 8
  store %struct.timer_trig_data* %11, %struct.timer_trig_data** %4, align 8
  %12 = load %struct.timer_trig_data*, %struct.timer_trig_data** %4, align 8
  %13 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.timer_trig_data*, %struct.timer_trig_data** %4, align 8
  %18 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %23 = load i64, i64* @LED_OFF, align 8
  %24 = call i32 @led_set_brightness(%struct.led_classdev* %22, i64 %23)
  br label %56

25:                                               ; preds = %16
  %26 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %27 = call i64 @led_get_brightness(%struct.led_classdev* %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load %struct.timer_trig_data*, %struct.timer_trig_data** %4, align 8
  %32 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  %34 = load %struct.timer_trig_data*, %struct.timer_trig_data** %4, align 8
  %35 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %6, align 8
  br label %45

37:                                               ; preds = %25
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.timer_trig_data*, %struct.timer_trig_data** %4, align 8
  %40 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* @LED_OFF, align 8
  store i64 %41, i64* %5, align 8
  %42 = load %struct.timer_trig_data*, %struct.timer_trig_data** %4, align 8
  %43 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %37, %30
  %46 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @led_set_brightness(%struct.led_classdev* %46, i64 %47)
  %49 = load %struct.timer_trig_data*, %struct.timer_trig_data** %4, align 8
  %50 = getelementptr inbounds %struct.timer_trig_data, %struct.timer_trig_data* %49, i32 0, i32 3
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @msecs_to_jiffies(i64 %52)
  %54 = add nsw i64 %51, %53
  %55 = call i32 @mod_timer(i32* %50, i64 %54)
  br label %56

56:                                               ; preds = %45, %21
  ret void
}

declare dso_local i32 @led_set_brightness(%struct.led_classdev*, i64) #1

declare dso_local i64 @led_get_brightness(%struct.led_classdev*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
