; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_led-class.c_led_set_brightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_led-class.c_led_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { void (%struct.led_classdev*, i32)* }
%struct.led_timer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set_brightness(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_timer*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %7 = call %struct.led_timer* @led_get_timer(%struct.led_classdev* %6)
  store %struct.led_timer* %7, %struct.led_timer** %5, align 8
  %8 = load %struct.led_timer*, %struct.led_timer** %5, align 8
  %9 = icmp ne %struct.led_timer* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.led_timer*, %struct.led_timer** %5, align 8
  %12 = call i32 @led_stop_software_blink(%struct.led_timer* %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %15 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %14, i32 0, i32 0
  %16 = load void (%struct.led_classdev*, i32)*, void (%struct.led_classdev*, i32)** %15, align 8
  %17 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %18 = load i32, i32* %4, align 4
  call void %16(%struct.led_classdev* %17, i32 %18)
  ret void
}

declare dso_local %struct.led_timer* @led_get_timer(%struct.led_classdev*) #1

declare dso_local i32 @led_stop_software_blink(%struct.led_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
