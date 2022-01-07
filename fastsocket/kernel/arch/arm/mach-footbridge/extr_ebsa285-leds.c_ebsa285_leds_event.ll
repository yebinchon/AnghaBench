; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-footbridge/extr_ebsa285-leds.c_ebsa285_leds_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-footbridge/extr_ebsa285-leds.c_ebsa285_leds_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@leds_lock = common dso_local global i32 0, align 4
@XBUS_LED_RED = common dso_local global i32 0, align 4
@XBUS_LED_GREEN = common dso_local global i32 0, align 4
@hw_led_state = common dso_local global i32 0, align 4
@XBUS_LED_AMBER = common dso_local global i32 0, align 4
@LED_STATE_ENABLED = common dso_local global i32 0, align 4
@led_state = common dso_local global i32 0, align 4
@LED_STATE_CLAIMED = common dso_local global i32 0, align 4
@XBUS_LEDS = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ebsa285_leds_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ebsa285_leds_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @leds_lock, i64 %4)
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %115 [
    i32 130, label %7
    i32 129, label %17
    i32 139, label %22
    i32 131, label %31
    i32 136, label %41
    i32 137, label %52
    i32 138, label %63
    i32 140, label %73
    i32 141, label %84
    i32 132, label %94
    i32 133, label %105
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @XBUS_LED_RED, align 4
  %9 = load i32, i32* @XBUS_LED_GREEN, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* @hw_led_state, align 4
  %11 = load i32, i32* @XBUS_LED_AMBER, align 4
  %12 = load i32, i32* @hw_led_state, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* @hw_led_state, align 4
  %14 = load i32, i32* @LED_STATE_ENABLED, align 4
  %15 = load i32, i32* @led_state, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* @led_state, align 4
  br label %116

17:                                               ; preds = %1
  %18 = load i32, i32* @LED_STATE_ENABLED, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* @led_state, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* @led_state, align 4
  br label %116

22:                                               ; preds = %1
  %23 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %24 = load i32, i32* @led_state, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* @led_state, align 4
  %26 = load i32, i32* @XBUS_LED_RED, align 4
  %27 = load i32, i32* @XBUS_LED_GREEN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @XBUS_LED_AMBER, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* @hw_led_state, align 4
  br label %116

31:                                               ; preds = %1
  %32 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* @led_state, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* @led_state, align 4
  %36 = load i32, i32* @XBUS_LED_RED, align 4
  %37 = load i32, i32* @XBUS_LED_GREEN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @XBUS_LED_AMBER, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* @hw_led_state, align 4
  br label %116

41:                                               ; preds = %1
  %42 = load i32, i32* @led_state, align 4
  %43 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @XBUS_LED_RED, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* @hw_led_state, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* @hw_led_state, align 4
  br label %51

51:                                               ; preds = %46, %41
  br label %116

52:                                               ; preds = %1
  %53 = load i32, i32* @led_state, align 4
  %54 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* @XBUS_LED_GREEN, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* @hw_led_state, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* @hw_led_state, align 4
  br label %62

62:                                               ; preds = %57, %52
  br label %116

63:                                               ; preds = %1
  %64 = load i32, i32* @led_state, align 4
  %65 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @XBUS_LED_GREEN, align 4
  %70 = load i32, i32* @hw_led_state, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* @hw_led_state, align 4
  br label %72

72:                                               ; preds = %68, %63
  br label %116

73:                                               ; preds = %1
  %74 = load i32, i32* @led_state, align 4
  %75 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32, i32* @XBUS_LED_AMBER, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* @hw_led_state, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* @hw_led_state, align 4
  br label %83

83:                                               ; preds = %78, %73
  br label %116

84:                                               ; preds = %1
  %85 = load i32, i32* @led_state, align 4
  %86 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @XBUS_LED_AMBER, align 4
  %91 = load i32, i32* @hw_led_state, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* @hw_led_state, align 4
  br label %93

93:                                               ; preds = %89, %84
  br label %116

94:                                               ; preds = %1
  %95 = load i32, i32* @led_state, align 4
  %96 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i32, i32* @XBUS_LED_RED, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* @hw_led_state, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* @hw_led_state, align 4
  br label %104

104:                                              ; preds = %99, %94
  br label %116

105:                                              ; preds = %1
  %106 = load i32, i32* @led_state, align 4
  %107 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* @XBUS_LED_RED, align 4
  %112 = load i32, i32* @hw_led_state, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* @hw_led_state, align 4
  br label %114

114:                                              ; preds = %110, %105
  br label %116

115:                                              ; preds = %1
  br label %116

116:                                              ; preds = %115, %114, %104, %93, %83, %72, %62, %51, %31, %22, %17, %7
  %117 = load i32, i32* @led_state, align 4
  %118 = load i32, i32* @LED_STATE_ENABLED, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* @hw_led_state, align 4
  %123 = load i32*, i32** @XBUS_LEDS, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %116
  %125 = load i64, i64* %3, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* @leds_lock, i64 %125)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
