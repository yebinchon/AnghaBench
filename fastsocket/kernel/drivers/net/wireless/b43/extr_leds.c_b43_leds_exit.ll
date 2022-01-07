; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_leds.c_b43_leds_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_leds.c_b43_leds_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.b43_leds }
%struct.b43_leds = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_leds_exit(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_leds*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %4, i32 0, i32 0
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store %struct.b43_leds* %7, %struct.b43_leds** %3, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = load %struct.b43_leds*, %struct.b43_leds** %3, align 8
  %10 = getelementptr inbounds %struct.b43_leds, %struct.b43_leds* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.b43_leds*, %struct.b43_leds** %3, align 8
  %14 = getelementptr inbounds %struct.b43_leds, %struct.b43_leds* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @b43_led_turn_off(%struct.b43_wldev* %8, i32 %12, i32 %16)
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %19 = load %struct.b43_leds*, %struct.b43_leds** %3, align 8
  %20 = getelementptr inbounds %struct.b43_leds, %struct.b43_leds* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.b43_leds*, %struct.b43_leds** %3, align 8
  %24 = getelementptr inbounds %struct.b43_leds, %struct.b43_leds* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @b43_led_turn_off(%struct.b43_wldev* %18, i32 %22, i32 %26)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = load %struct.b43_leds*, %struct.b43_leds** %3, align 8
  %30 = getelementptr inbounds %struct.b43_leds, %struct.b43_leds* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.b43_leds*, %struct.b43_leds** %3, align 8
  %34 = getelementptr inbounds %struct.b43_leds, %struct.b43_leds* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @b43_led_turn_off(%struct.b43_wldev* %28, i32 %32, i32 %36)
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = load %struct.b43_leds*, %struct.b43_leds** %3, align 8
  %40 = getelementptr inbounds %struct.b43_leds, %struct.b43_leds* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.b43_leds*, %struct.b43_leds** %3, align 8
  %44 = getelementptr inbounds %struct.b43_leds, %struct.b43_leds* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @b43_led_turn_off(%struct.b43_wldev* %38, i32 %42, i32 %46)
  ret void
}

declare dso_local i32 @b43_led_turn_off(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
