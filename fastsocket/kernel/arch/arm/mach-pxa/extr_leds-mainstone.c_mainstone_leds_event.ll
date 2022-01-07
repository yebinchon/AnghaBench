; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_leds-mainstone.c_mainstone_leds_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_leds-mainstone.c_mainstone_leds_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hw_led_state = common dso_local global i32 0, align 4
@LED_STATE_ENABLED = common dso_local global i32 0, align 4
@led_state = common dso_local global i32 0, align 4
@LED_STATE_CLAIMED = common dso_local global i32 0, align 4
@D21 = common dso_local global i32 0, align 4
@D22 = common dso_local global i32 0, align 4
@D23 = common dso_local global i32 0, align 4
@MST_LEDCTRL = common dso_local global i32 0, align 4
@D26 = common dso_local global i32 0, align 4
@D27 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mainstone_leds_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @local_irq_save(i64 %4)
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %51 [
    i32 130, label %7
    i32 129, label %9
    i32 139, label %14
    i32 131, label %18
    i32 136, label %23
    i32 137, label %24
    i32 138, label %28
    i32 140, label %33
    i32 141, label %37
    i32 132, label %42
    i32 133, label %46
  ]

7:                                                ; preds = %1
  store i32 0, i32* @hw_led_state, align 4
  %8 = load i32, i32* @LED_STATE_ENABLED, align 4
  store i32 %8, i32* @led_state, align 4
  br label %52

9:                                                ; preds = %1
  %10 = load i32, i32* @LED_STATE_ENABLED, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* @led_state, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* @led_state, align 4
  br label %52

14:                                               ; preds = %1
  %15 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %16 = load i32, i32* @led_state, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* @led_state, align 4
  store i32 0, i32* @hw_led_state, align 4
  br label %52

18:                                               ; preds = %1
  %19 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* @led_state, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* @led_state, align 4
  store i32 0, i32* @hw_led_state, align 4
  br label %52

23:                                               ; preds = %1
  br label %52

24:                                               ; preds = %1
  %25 = load i32, i32* @D21, align 4
  %26 = load i32, i32* @hw_led_state, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* @hw_led_state, align 4
  br label %52

28:                                               ; preds = %1
  %29 = load i32, i32* @D21, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* @hw_led_state, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* @hw_led_state, align 4
  br label %52

33:                                               ; preds = %1
  %34 = load i32, i32* @D22, align 4
  %35 = load i32, i32* @hw_led_state, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* @hw_led_state, align 4
  br label %52

37:                                               ; preds = %1
  %38 = load i32, i32* @D22, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* @hw_led_state, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* @hw_led_state, align 4
  br label %52

42:                                               ; preds = %1
  %43 = load i32, i32* @D23, align 4
  %44 = load i32, i32* @hw_led_state, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* @hw_led_state, align 4
  br label %52

46:                                               ; preds = %1
  %47 = load i32, i32* @D23, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* @hw_led_state, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* @hw_led_state, align 4
  br label %52

51:                                               ; preds = %1
  br label %52

52:                                               ; preds = %51, %46, %42, %37, %33, %28, %24, %23, %18, %14, %9, %7
  %53 = load i32, i32* @led_state, align 4
  %54 = load i32, i32* @LED_STATE_ENABLED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* @MST_LEDCTRL, align 4
  %59 = or i32 %58, 255
  %60 = load i32, i32* @hw_led_state, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  store i32 %62, i32* @MST_LEDCTRL, align 4
  br label %66

63:                                               ; preds = %52
  %64 = load i32, i32* @MST_LEDCTRL, align 4
  %65 = or i32 %64, 255
  store i32 %65, i32* @MST_LEDCTRL, align 4
  br label %66

66:                                               ; preds = %63, %57
  %67 = load i64, i64* %3, align 8
  %68 = call i32 @local_irq_restore(i64 %67)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
