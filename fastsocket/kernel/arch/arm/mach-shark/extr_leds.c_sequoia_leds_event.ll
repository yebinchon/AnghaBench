; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-shark/extr_leds.c_sequoia_leds_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-shark/extr_leds.c_sequoia_leds_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@leds_lock = common dso_local global i32 0, align 4
@hw_led_state = common dso_local global i32 0, align 4
@SEQUOIA_LED_GREEN = common dso_local global i32 0, align 4
@SEQUOIA_LED_AMBER = common dso_local global i32 0, align 4
@SEQUOIA_LED_BACK = common dso_local global i32 0, align 4
@LED_STATE_ENABLED = common dso_local global i32 0, align 4
@led_state = common dso_local global i32 0, align 4
@LED_STATE_CLAIMED = common dso_local global i32 0, align 4
@saved_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sequoia_leds_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sequoia_leds_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @leds_lock, i64 %4)
  %6 = call i32 @sequoia_read(i32 9)
  store i32 %6, i32* @hw_led_state, align 4
  %7 = load i32, i32* %2, align 4
  switch i32 %7, label %121 [
    i32 130, label %8
    i32 129, label %22
    i32 138, label %37
    i32 131, label %52
    i32 136, label %58
    i32 137, label %69
    i32 139, label %79
    i32 140, label %90
    i32 132, label %100
    i32 133, label %110
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @SEQUOIA_LED_GREEN, align 4
  %10 = load i32, i32* @hw_led_state, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* @hw_led_state, align 4
  %12 = load i32, i32* @SEQUOIA_LED_AMBER, align 4
  %13 = load i32, i32* @hw_led_state, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* @hw_led_state, align 4
  %15 = load i32, i32* @SEQUOIA_LED_BACK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* @hw_led_state, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* @hw_led_state, align 4
  %19 = load i32, i32* @LED_STATE_ENABLED, align 4
  %20 = load i32, i32* @led_state, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* @led_state, align 4
  br label %122

22:                                               ; preds = %1
  %23 = load i32, i32* @SEQUOIA_LED_BACK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* @hw_led_state, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* @hw_led_state, align 4
  %27 = load i32, i32* @SEQUOIA_LED_GREEN, align 4
  %28 = load i32, i32* @hw_led_state, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* @hw_led_state, align 4
  %30 = load i32, i32* @SEQUOIA_LED_AMBER, align 4
  %31 = load i32, i32* @hw_led_state, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* @hw_led_state, align 4
  %33 = load i32, i32* @LED_STATE_ENABLED, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* @led_state, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* @led_state, align 4
  br label %122

37:                                               ; preds = %1
  %38 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %39 = load i32, i32* @led_state, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* @led_state, align 4
  %41 = load i32, i32* @hw_led_state, align 4
  store i32 %41, i32* @saved_state, align 4
  %42 = load i32, i32* @SEQUOIA_LED_BACK, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* @hw_led_state, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* @hw_led_state, align 4
  %46 = load i32, i32* @SEQUOIA_LED_GREEN, align 4
  %47 = load i32, i32* @hw_led_state, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* @hw_led_state, align 4
  %49 = load i32, i32* @SEQUOIA_LED_AMBER, align 4
  %50 = load i32, i32* @hw_led_state, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* @hw_led_state, align 4
  br label %122

52:                                               ; preds = %1
  %53 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* @led_state, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* @led_state, align 4
  %57 = load i32, i32* @saved_state, align 4
  store i32 %57, i32* @hw_led_state, align 4
  br label %122

58:                                               ; preds = %1
  %59 = load i32, i32* @led_state, align 4
  %60 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* @SEQUOIA_LED_GREEN, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* @hw_led_state, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* @hw_led_state, align 4
  br label %68

68:                                               ; preds = %63, %58
  br label %122

69:                                               ; preds = %1
  %70 = load i32, i32* @led_state, align 4
  %71 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @SEQUOIA_LED_GREEN, align 4
  %76 = load i32, i32* @hw_led_state, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* @hw_led_state, align 4
  br label %78

78:                                               ; preds = %74, %69
  br label %122

79:                                               ; preds = %1
  %80 = load i32, i32* @led_state, align 4
  %81 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32, i32* @SEQUOIA_LED_AMBER, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* @hw_led_state, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* @hw_led_state, align 4
  br label %89

89:                                               ; preds = %84, %79
  br label %122

90:                                               ; preds = %1
  %91 = load i32, i32* @led_state, align 4
  %92 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @SEQUOIA_LED_AMBER, align 4
  %97 = load i32, i32* @hw_led_state, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* @hw_led_state, align 4
  br label %99

99:                                               ; preds = %95, %90
  br label %122

100:                                              ; preds = %1
  %101 = load i32, i32* @led_state, align 4
  %102 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @SEQUOIA_LED_BACK, align 4
  %107 = load i32, i32* @hw_led_state, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* @hw_led_state, align 4
  br label %109

109:                                              ; preds = %105, %100
  br label %122

110:                                              ; preds = %1
  %111 = load i32, i32* @led_state, align 4
  %112 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i32, i32* @SEQUOIA_LED_BACK, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* @hw_led_state, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* @hw_led_state, align 4
  br label %120

120:                                              ; preds = %115, %110
  br label %122

121:                                              ; preds = %1
  br label %122

122:                                              ; preds = %121, %120, %109, %99, %89, %78, %68, %52, %37, %22, %8
  %123 = load i32, i32* @led_state, align 4
  %124 = load i32, i32* @LED_STATE_ENABLED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i32, i32* @hw_led_state, align 4
  %129 = call i32 @sequoia_write(i32 %128, i32 9)
  br label %130

130:                                              ; preds = %127, %122
  %131 = load i64, i64* %3, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* @leds_lock, i64 %131)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sequoia_read(i32) #1

declare dso_local i32 @sequoia_write(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
