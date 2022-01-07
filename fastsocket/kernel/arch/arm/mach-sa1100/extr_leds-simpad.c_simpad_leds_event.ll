; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_leds-simpad.c_simpad_leds_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_leds-simpad.c_simpad_leds_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LED_GREEN = common dso_local global i32 0, align 4
@hw_led_state = common dso_local global i32 0, align 4
@LED_STATE_ENABLED = common dso_local global i32 0, align 4
@led_state = common dso_local global i32 0, align 4
@LED_STATE_CLAIMED = common dso_local global i32 0, align 4
@LED2_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @simpad_leds_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %49 [
    i32 130, label %4
    i32 129, label %7
    i32 139, label %12
    i32 131, label %17
    i32 136, label %23
    i32 137, label %24
    i32 138, label %34
    i32 140, label %45
    i32 141, label %46
    i32 132, label %47
    i32 133, label %48
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @LED_GREEN, align 4
  store i32 %5, i32* @hw_led_state, align 4
  %6 = load i32, i32* @LED_STATE_ENABLED, align 4
  store i32 %6, i32* @led_state, align 4
  br label %50

7:                                                ; preds = %1
  %8 = load i32, i32* @LED_STATE_ENABLED, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* @led_state, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* @led_state, align 4
  br label %50

12:                                               ; preds = %1
  %13 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %14 = load i32, i32* @led_state, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* @led_state, align 4
  %16 = load i32, i32* @LED_GREEN, align 4
  store i32 %16, i32* @hw_led_state, align 4
  br label %50

17:                                               ; preds = %1
  %18 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* @led_state, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* @led_state, align 4
  %22 = load i32, i32* @LED_GREEN, align 4
  store i32 %22, i32* @hw_led_state, align 4
  br label %50

23:                                               ; preds = %1
  br label %50

24:                                               ; preds = %1
  %25 = load i32, i32* @led_state, align 4
  %26 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @LED_GREEN, align 4
  %31 = load i32, i32* @hw_led_state, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* @hw_led_state, align 4
  br label %33

33:                                               ; preds = %29, %24
  br label %50

34:                                               ; preds = %1
  %35 = load i32, i32* @led_state, align 4
  %36 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @LED_GREEN, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* @hw_led_state, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* @hw_led_state, align 4
  br label %44

44:                                               ; preds = %39, %34
  br label %50

45:                                               ; preds = %1
  br label %50

46:                                               ; preds = %1
  br label %50

47:                                               ; preds = %1
  br label %50

48:                                               ; preds = %1
  br label %50

49:                                               ; preds = %1
  br label %50

50:                                               ; preds = %49, %48, %47, %46, %45, %44, %33, %23, %17, %12, %7, %4
  %51 = load i32, i32* @led_state, align 4
  %52 = load i32, i32* @LED_STATE_ENABLED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @LED2_ON, align 4
  %57 = call i32 @set_cs3_bit(i32 %56)
  br label %61

58:                                               ; preds = %50
  %59 = load i32, i32* @LED2_ON, align 4
  %60 = call i32 @clear_cs3_bit(i32 %59)
  br label %61

61:                                               ; preds = %58, %55
  ret void
}

declare dso_local i32 @set_cs3_bit(i32) #1

declare dso_local i32 @clear_cs3_bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
