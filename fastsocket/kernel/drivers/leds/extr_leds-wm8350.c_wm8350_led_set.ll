; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-wm8350.c_wm8350_led_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-wm8350.c_wm8350_led_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.wm8350_led = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @wm8350_led_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8350_led_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8350_led*, align 8
  %6 = alloca i64, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %8 = call %struct.wm8350_led* @to_wm8350_led(%struct.led_classdev* %7)
  store %struct.wm8350_led* %8, %struct.wm8350_led** %5, align 8
  %9 = load %struct.wm8350_led*, %struct.wm8350_led** %5, align 8
  %10 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %9, i32 0, i32 1
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.wm8350_led*, %struct.wm8350_led** %5, align 8
  %15 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.wm8350_led*, %struct.wm8350_led** %5, align 8
  %17 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %16, i32 0, i32 2
  %18 = call i32 @schedule_work(i32* %17)
  %19 = load %struct.wm8350_led*, %struct.wm8350_led** %5, align 8
  %20 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %19, i32 0, i32 1
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  ret void
}

declare dso_local %struct.wm8350_led* @to_wm8350_led(%struct.led_classdev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
