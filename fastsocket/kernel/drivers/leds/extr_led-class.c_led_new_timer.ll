; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_led-class.c_led_new_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_led-class.c_led_new_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_timer = type { i32, %struct.TYPE_2__, %struct.led_classdev* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.led_classdev = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@led_timer_function = common dso_local global i32 0, align 4
@led_lock = common dso_local global i32 0, align 4
@led_timers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.led_timer* (%struct.led_classdev*)* @led_new_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.led_timer* @led_new_timer(%struct.led_classdev* %0) #0 {
  %2 = alloca %struct.led_timer*, align 8
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca %struct.led_timer*, align 8
  %5 = alloca i64, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.led_timer* @kzalloc(i32 32, i32 %6)
  store %struct.led_timer* %7, %struct.led_timer** %4, align 8
  %8 = load %struct.led_timer*, %struct.led_timer** %4, align 8
  %9 = icmp ne %struct.led_timer* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.led_timer* null, %struct.led_timer** %2, align 8
  br label %35

11:                                               ; preds = %1
  %12 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %13 = load %struct.led_timer*, %struct.led_timer** %4, align 8
  %14 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %13, i32 0, i32 2
  store %struct.led_classdev* %12, %struct.led_classdev** %14, align 8
  %15 = load %struct.led_timer*, %struct.led_timer** %4, align 8
  %16 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %15, i32 0, i32 1
  %17 = call i32 @init_timer(%struct.TYPE_2__* %16)
  %18 = load i32, i32* @led_timer_function, align 4
  %19 = load %struct.led_timer*, %struct.led_timer** %4, align 8
  %20 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 8
  %22 = load %struct.led_timer*, %struct.led_timer** %4, align 8
  %23 = ptrtoint %struct.led_timer* %22 to i64
  %24 = load %struct.led_timer*, %struct.led_timer** %4, align 8
  %25 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_lock_irqsave(i32* @led_lock, i64 %27)
  %29 = load %struct.led_timer*, %struct.led_timer** %4, align 8
  %30 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %29, i32 0, i32 0
  %31 = call i32 @list_add(i32* %30, i32* @led_timers)
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* @led_lock, i64 %32)
  %34 = load %struct.led_timer*, %struct.led_timer** %4, align 8
  store %struct.led_timer* %34, %struct.led_timer** %2, align 8
  br label %35

35:                                               ; preds = %11, %10
  %36 = load %struct.led_timer*, %struct.led_timer** %2, align 8
  ret %struct.led_timer* %36
}

declare dso_local %struct.led_timer* @kzalloc(i32, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
