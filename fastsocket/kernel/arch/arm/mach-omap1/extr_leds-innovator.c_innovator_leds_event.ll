; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_leds-innovator.c_innovator_leds_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_leds-innovator.c_innovator_leds_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hw_led_state = common dso_local global i32 0, align 4
@LED_STATE_ENABLED = common dso_local global i32 0, align 4
@led_state = common dso_local global i32 0, align 4
@LED_STATE_CLAIMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @innovator_leds_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @local_irq_save(i64 %4)
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %58 [
    i32 130, label %7
    i32 129, label %9
    i32 139, label %14
    i32 131, label %18
    i32 136, label %23
    i32 137, label %24
    i32 138, label %32
    i32 140, label %40
    i32 141, label %41
    i32 132, label %42
    i32 133, label %50
  ]

7:                                                ; preds = %1
  store i32 0, i32* @hw_led_state, align 4
  %8 = load i32, i32* @LED_STATE_ENABLED, align 4
  store i32 %8, i32* @led_state, align 4
  br label %59

9:                                                ; preds = %1
  %10 = load i32, i32* @LED_STATE_ENABLED, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* @led_state, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* @led_state, align 4
  store i32 0, i32* @hw_led_state, align 4
  br label %59

14:                                               ; preds = %1
  %15 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %16 = load i32, i32* @led_state, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* @led_state, align 4
  store i32 0, i32* @hw_led_state, align 4
  br label %59

18:                                               ; preds = %1
  %19 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* @led_state, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* @led_state, align 4
  store i32 0, i32* @hw_led_state, align 4
  br label %59

23:                                               ; preds = %1
  br label %59

24:                                               ; preds = %1
  %25 = load i32, i32* @led_state, align 4
  %26 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @hw_led_state, align 4
  store i32 %30, i32* @hw_led_state, align 4
  br label %31

31:                                               ; preds = %29, %24
  br label %59

32:                                               ; preds = %1
  %33 = load i32, i32* @led_state, align 4
  %34 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @hw_led_state, align 4
  store i32 %38, i32* @hw_led_state, align 4
  br label %39

39:                                               ; preds = %37, %32
  br label %59

40:                                               ; preds = %1
  br label %59

41:                                               ; preds = %1
  br label %59

42:                                               ; preds = %1
  %43 = load i32, i32* @led_state, align 4
  %44 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @hw_led_state, align 4
  store i32 %48, i32* @hw_led_state, align 4
  br label %49

49:                                               ; preds = %47, %42
  br label %59

50:                                               ; preds = %1
  %51 = load i32, i32* @led_state, align 4
  %52 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @hw_led_state, align 4
  store i32 %56, i32* @hw_led_state, align 4
  br label %57

57:                                               ; preds = %55, %50
  br label %59

58:                                               ; preds = %1
  br label %59

59:                                               ; preds = %58, %57, %49, %41, %40, %39, %31, %23, %18, %14, %9, %7
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @local_irq_restore(i64 %60)
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
