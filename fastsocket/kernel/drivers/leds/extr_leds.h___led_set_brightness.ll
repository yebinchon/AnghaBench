; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds.h___led_set_brightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds.h___led_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32, i32, i32, i32 (%struct.led_classdev*, i32)* }

@LED_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @__led_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__led_set_brightness(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %7 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ugt i32 %5, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %12 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %17 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %19 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @LED_SUSPENDED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %14
  %25 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %26 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %25, i32 0, i32 3
  %27 = load i32 (%struct.led_classdev*, i32)*, i32 (%struct.led_classdev*, i32)** %26, align 8
  %28 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 %27(%struct.led_classdev* %28, i32 %29)
  br label %31

31:                                               ; preds = %24, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
