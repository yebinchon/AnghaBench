; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-footbridge/extr_netwinder-leds.c_netwinder_leds_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-footbridge/extr_netwinder-leds.c_netwinder_leds_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@leds_lock = common dso_local global i32 0, align 4
@LED_STATE_ENABLED = common dso_local global i32 0, align 4
@led_state = common dso_local global i32 0, align 4
@GPIO_GREEN_LED = common dso_local global i32 0, align 4
@hw_led_state = common dso_local global i32 0, align 4
@LED_STATE_CLAIMED = common dso_local global i32 0, align 4
@GPIO_RED_LED = common dso_local global i32 0, align 4
@nw_gpio_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @netwinder_leds_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netwinder_leds_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @leds_lock, i64 %4)
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %103 [
    i32 130, label %7
    i32 129, label %12
    i32 139, label %17
    i32 131, label %21
    i32 136, label %26
    i32 137, label %36
    i32 138, label %46
    i32 140, label %57
    i32 141, label %69
    i32 132, label %82
    i32 133, label %92
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @LED_STATE_ENABLED, align 4
  %9 = load i32, i32* @led_state, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* @led_state, align 4
  %11 = load i32, i32* @GPIO_GREEN_LED, align 4
  store i32 %11, i32* @hw_led_state, align 4
  br label %104

12:                                               ; preds = %1
  %13 = load i32, i32* @LED_STATE_ENABLED, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* @led_state, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* @led_state, align 4
  br label %104

17:                                               ; preds = %1
  %18 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %19 = load i32, i32* @led_state, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* @led_state, align 4
  store i32 0, i32* @hw_led_state, align 4
  br label %104

21:                                               ; preds = %1
  %22 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* @led_state, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* @led_state, align 4
  store i32 0, i32* @hw_led_state, align 4
  br label %104

26:                                               ; preds = %1
  %27 = load i32, i32* @led_state, align 4
  %28 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @GPIO_RED_LED, align 4
  %33 = load i32, i32* @hw_led_state, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* @hw_led_state, align 4
  br label %35

35:                                               ; preds = %31, %26
  br label %104

36:                                               ; preds = %1
  %37 = load i32, i32* @led_state, align 4
  %38 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @GPIO_GREEN_LED, align 4
  %43 = load i32, i32* @hw_led_state, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* @hw_led_state, align 4
  br label %45

45:                                               ; preds = %41, %36
  br label %104

46:                                               ; preds = %1
  %47 = load i32, i32* @led_state, align 4
  %48 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, i32* @GPIO_GREEN_LED, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* @hw_led_state, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* @hw_led_state, align 4
  br label %56

56:                                               ; preds = %51, %46
  br label %104

57:                                               ; preds = %1
  %58 = load i32, i32* @led_state, align 4
  %59 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* @GPIO_GREEN_LED, align 4
  %64 = load i32, i32* @GPIO_RED_LED, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @hw_led_state, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* @hw_led_state, align 4
  br label %68

68:                                               ; preds = %62, %57
  br label %104

69:                                               ; preds = %1
  %70 = load i32, i32* @led_state, align 4
  %71 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i32, i32* @GPIO_GREEN_LED, align 4
  %76 = load i32, i32* @GPIO_RED_LED, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load i32, i32* @hw_led_state, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* @hw_led_state, align 4
  br label %81

81:                                               ; preds = %74, %69
  br label %104

82:                                               ; preds = %1
  %83 = load i32, i32* @led_state, align 4
  %84 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* @GPIO_RED_LED, align 4
  %89 = load i32, i32* @hw_led_state, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* @hw_led_state, align 4
  br label %91

91:                                               ; preds = %87, %82
  br label %104

92:                                               ; preds = %1
  %93 = load i32, i32* @led_state, align 4
  %94 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i32, i32* @GPIO_RED_LED, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* @hw_led_state, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* @hw_led_state, align 4
  br label %102

102:                                              ; preds = %97, %92
  br label %104

103:                                              ; preds = %1
  br label %104

104:                                              ; preds = %103, %102, %91, %81, %68, %56, %45, %35, %21, %17, %12, %7
  %105 = load i64, i64* %3, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* @leds_lock, i64 %105)
  %107 = load i32, i32* @led_state, align 4
  %108 = load i32, i32* @LED_STATE_ENABLED, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %104
  %112 = load i64, i64* %3, align 8
  %113 = call i32 @spin_lock_irqsave(i32* @nw_gpio_lock, i64 %112)
  %114 = load i32, i32* @GPIO_RED_LED, align 4
  %115 = load i32, i32* @GPIO_GREEN_LED, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @hw_led_state, align 4
  %118 = call i32 @nw_gpio_modify_op(i32 %116, i32 %117)
  %119 = load i64, i64* %3, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* @nw_gpio_lock, i64 %119)
  br label %121

121:                                              ; preds = %111, %104
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nw_gpio_modify_op(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
