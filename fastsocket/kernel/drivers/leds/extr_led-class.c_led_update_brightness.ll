; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_led-class.c_led_update_brightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_led-class.c_led_update_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 (%struct.led_classdev*)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*)* @led_update_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @led_update_brightness(%struct.led_classdev* %0) #0 {
  %2 = alloca %struct.led_classdev*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %2, align 8
  %3 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %4 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %3, i32 0, i32 0
  %5 = load i32 (%struct.led_classdev*)*, i32 (%struct.led_classdev*)** %4, align 8
  %6 = icmp ne i32 (%struct.led_classdev*)* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %9 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %8, i32 0, i32 0
  %10 = load i32 (%struct.led_classdev*)*, i32 (%struct.led_classdev*)** %9, align 8
  %11 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %12 = call i32 %10(%struct.led_classdev* %11)
  %13 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %14 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  br label %15

15:                                               ; preds = %7, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
