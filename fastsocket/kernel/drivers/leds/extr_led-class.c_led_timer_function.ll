; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_led-class.c_led_timer_function.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_led-class.c_led_timer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_timer = type { i64, i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 (%struct.TYPE_3__*, i64)* }

@LED_OFF = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @led_timer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @led_timer_function(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.led_timer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.led_timer*
  store %struct.led_timer* %7, %struct.led_timer** %3, align 8
  %8 = load %struct.led_timer*, %struct.led_timer** %3, align 8
  %9 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.led_timer*, %struct.led_timer** %3, align 8
  %14 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.led_timer*, %struct.led_timer** %3, align 8
  %19 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %18, i32 0, i32 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32 (%struct.TYPE_3__*, i64)*, i32 (%struct.TYPE_3__*, i64)** %21, align 8
  %23 = load %struct.led_timer*, %struct.led_timer** %3, align 8
  %24 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %23, i32 0, i32 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i64, i64* @LED_OFF, align 8
  %27 = call i32 %22(%struct.TYPE_3__* %25, i64 %26)
  br label %64

28:                                               ; preds = %12
  %29 = load %struct.led_timer*, %struct.led_timer** %3, align 8
  %30 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %29, i32 0, i32 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %28
  %37 = load %struct.led_timer*, %struct.led_timer** %3, align 8
  %38 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %4, align 8
  %40 = load %struct.led_timer*, %struct.led_timer** %3, align 8
  %41 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %5, align 8
  br label %51

43:                                               ; preds = %28
  %44 = load i64, i64* %4, align 8
  %45 = load %struct.led_timer*, %struct.led_timer** %3, align 8
  %46 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* @LED_OFF, align 8
  store i64 %47, i64* %4, align 8
  %48 = load %struct.led_timer*, %struct.led_timer** %3, align 8
  %49 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %43, %36
  %52 = load %struct.led_timer*, %struct.led_timer** %3, align 8
  %53 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %52, i32 0, i32 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @__led_set_brightness(%struct.TYPE_3__* %54, i64 %55)
  %57 = load %struct.led_timer*, %struct.led_timer** %3, align 8
  %58 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %57, i32 0, i32 3
  %59 = load i64, i64* @jiffies, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @msecs_to_jiffies(i64 %60)
  %62 = add nsw i64 %59, %61
  %63 = call i32 @mod_timer(i32* %58, i64 %62)
  br label %64

64:                                               ; preds = %51, %17
  ret void
}

declare dso_local i32 @__led_set_brightness(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
