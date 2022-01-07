; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_led-class.c_led_classdev_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_led-class.c_led_classdev_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32, i32, i32, i64 }
%struct.led_timer = type { i32, i32 }

@led_lock = common dso_local global i32 0, align 4
@dev_attr_max_brightness = common dso_local global i32 0, align 4
@dev_attr_brightness = common dso_local global i32 0, align 4
@leds_list_lock = common dso_local global i32 0, align 4
@dev_attr_trigger = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_classdev_unregister(%struct.led_classdev* %0) #0 {
  %2 = alloca %struct.led_classdev*, align 8
  %3 = alloca %struct.led_timer*, align 8
  %4 = alloca i64, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %2, align 8
  %5 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %6 = call %struct.led_timer* @led_get_timer(%struct.led_classdev* %5)
  store %struct.led_timer* %6, %struct.led_timer** %3, align 8
  %7 = load %struct.led_timer*, %struct.led_timer** %3, align 8
  %8 = icmp ne %struct.led_timer* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.led_timer*, %struct.led_timer** %3, align 8
  %11 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %10, i32 0, i32 1
  %12 = call i32 @del_timer_sync(i32* %11)
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @led_lock, i64 %13)
  %15 = load %struct.led_timer*, %struct.led_timer** %3, align 8
  %16 = getelementptr inbounds %struct.led_timer, %struct.led_timer* %15, i32 0, i32 0
  %17 = call i32 @list_del(i32* %16)
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* @led_lock, i64 %18)
  %20 = load %struct.led_timer*, %struct.led_timer** %3, align 8
  %21 = call i32 @kfree(%struct.led_timer* %20)
  br label %22

22:                                               ; preds = %9, %1
  %23 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %24 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @device_remove_file(i32 %25, i32* @dev_attr_max_brightness)
  %27 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %28 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @device_remove_file(i32 %29, i32* @dev_attr_brightness)
  %31 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %32 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_unregister(i32 %33)
  %35 = call i32 @down_write(i32* @leds_list_lock)
  %36 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %37 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %36, i32 0, i32 0
  %38 = call i32 @list_del(i32* %37)
  %39 = call i32 @up_write(i32* @leds_list_lock)
  ret void
}

declare dso_local %struct.led_timer* @led_get_timer(%struct.led_classdev*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.led_timer*) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @device_unregister(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
