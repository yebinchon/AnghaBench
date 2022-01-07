; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00leds.c_rt2x00leds_unregister_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00leds.c_rt2x00leds_unregister_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_led = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 (%struct.TYPE_3__*, i32)* }

@LED_SUSPENDED = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@LED_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_led*)* @rt2x00leds_unregister_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00leds_unregister_led(%struct.rt2x00_led* %0) #0 {
  %2 = alloca %struct.rt2x00_led*, align 8
  store %struct.rt2x00_led* %0, %struct.rt2x00_led** %2, align 8
  %3 = load %struct.rt2x00_led*, %struct.rt2x00_led** %2, align 8
  %4 = getelementptr inbounds %struct.rt2x00_led, %struct.rt2x00_led* %3, i32 0, i32 1
  %5 = call i32 @led_classdev_unregister(%struct.TYPE_3__* %4)
  %6 = load %struct.rt2x00_led*, %struct.rt2x00_led** %2, align 8
  %7 = getelementptr inbounds %struct.rt2x00_led, %struct.rt2x00_led* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @LED_SUSPENDED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  %14 = load %struct.rt2x00_led*, %struct.rt2x00_led** %2, align 8
  %15 = getelementptr inbounds %struct.rt2x00_led, %struct.rt2x00_led* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %16, align 8
  %18 = load %struct.rt2x00_led*, %struct.rt2x00_led** %2, align 8
  %19 = getelementptr inbounds %struct.rt2x00_led, %struct.rt2x00_led* %18, i32 0, i32 1
  %20 = load i32, i32* @LED_OFF, align 4
  %21 = call i32 %17(%struct.TYPE_3__* %19, i32 %20)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load i32, i32* @LED_REGISTERED, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.rt2x00_led*, %struct.rt2x00_led** %2, align 8
  %26 = getelementptr inbounds %struct.rt2x00_led, %struct.rt2x00_led* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  ret void
}

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
