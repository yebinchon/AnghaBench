; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/unit-asb2303/extr_leds.c_peripheral_leds_led_chase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/unit-asb2303/extr_leds.c_peripheral_leds_led_chase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASB2303_GPIO0DEF = common dso_local global i32 0, align 4
@asb2303_led_chase_tbl = common dso_local global i32* null, align 8
@asb2303_led_chase = common dso_local global i64 0, align 8
@ASB2303_7SEGLEDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @peripheral_leds_led_chase() #0 {
  store i32 21845, i32* @ASB2303_GPIO0DEF, align 4
  %1 = load i32*, i32** @asb2303_led_chase_tbl, align 8
  %2 = load i64, i64* @asb2303_led_chase, align 8
  %3 = getelementptr inbounds i32, i32* %1, i64 %2
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* @ASB2303_7SEGLEDS, align 4
  %5 = load i64, i64* @asb2303_led_chase, align 8
  %6 = add i64 %5, 1
  store i64 %6, i64* @asb2303_led_chase, align 8
  %7 = load i64, i64* @asb2303_led_chase, align 8
  %8 = icmp uge i64 %7, 6
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i64 0, i64* @asb2303_led_chase, align 8
  br label %10

10:                                               ; preds = %9, %0
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
