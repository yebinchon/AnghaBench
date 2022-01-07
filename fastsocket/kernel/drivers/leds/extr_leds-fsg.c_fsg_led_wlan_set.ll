; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-fsg.c_fsg_led_wlan_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-fsg.c_fsg_led_wlan_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }

@FSG_LED_WLAN_BIT = common dso_local global i32 0, align 4
@latch_value = common dso_local global i32 0, align 4
@latch_address = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @fsg_led_wlan_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsg_led_wlan_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i32, i32* @FSG_LED_WLAN_BIT, align 4
  %9 = shl i32 1, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* @latch_value, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* @latch_value, align 4
  %13 = load i32, i32* @latch_value, align 4
  %14 = load i32*, i32** @latch_address, align 8
  store i32 %13, i32* %14, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @FSG_LED_WLAN_BIT, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* @latch_value, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* @latch_value, align 4
  %20 = load i32, i32* @latch_value, align 4
  %21 = load i32*, i32** @latch_address, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %15, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
