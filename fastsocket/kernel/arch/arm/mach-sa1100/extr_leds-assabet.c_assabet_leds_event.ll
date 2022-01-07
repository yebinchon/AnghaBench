; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_leds-assabet.c_assabet_leds_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_leds-assabet.c_assabet_leds_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASSABET_BCR_LED_RED = common dso_local global i32 0, align 4
@ASSABET_BCR_LED_GREEN = common dso_local global i32 0, align 4
@hw_led_state = common dso_local global i32 0, align 4
@LED_STATE_ENABLED = common dso_local global i32 0, align 4
@led_state = common dso_local global i32 0, align 4
@ASSABET_BCR_LED_MASK = common dso_local global i32 0, align 4
@LED_STATE_CLAIMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assabet_leds_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @local_irq_save(i64 %4)
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %83 [
    i32 130, label %7
    i32 129, label %12
    i32 139, label %23
    i32 131, label %30
    i32 136, label %38
    i32 137, label %39
    i32 138, label %50
    i32 140, label %60
    i32 141, label %61
    i32 132, label %62
    i32 133, label %73
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @ASSABET_BCR_LED_RED, align 4
  %9 = load i32, i32* @ASSABET_BCR_LED_GREEN, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* @hw_led_state, align 4
  %11 = load i32, i32* @LED_STATE_ENABLED, align 4
  store i32 %11, i32* @led_state, align 4
  br label %84

12:                                               ; preds = %1
  %13 = load i32, i32* @LED_STATE_ENABLED, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* @led_state, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* @led_state, align 4
  %17 = load i32, i32* @ASSABET_BCR_LED_RED, align 4
  %18 = load i32, i32* @ASSABET_BCR_LED_GREEN, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* @hw_led_state, align 4
  %20 = load i32, i32* @ASSABET_BCR_LED_MASK, align 4
  %21 = load i32, i32* @hw_led_state, align 4
  %22 = call i32 @ASSABET_BCR_frob(i32 %20, i32 %21)
  br label %84

23:                                               ; preds = %1
  %24 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %25 = load i32, i32* @led_state, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* @led_state, align 4
  %27 = load i32, i32* @ASSABET_BCR_LED_RED, align 4
  %28 = load i32, i32* @ASSABET_BCR_LED_GREEN, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* @hw_led_state, align 4
  br label %84

30:                                               ; preds = %1
  %31 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* @led_state, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* @led_state, align 4
  %35 = load i32, i32* @ASSABET_BCR_LED_RED, align 4
  %36 = load i32, i32* @ASSABET_BCR_LED_GREEN, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* @hw_led_state, align 4
  br label %84

38:                                               ; preds = %1
  br label %84

39:                                               ; preds = %1
  %40 = load i32, i32* @led_state, align 4
  %41 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* @ASSABET_BCR_LED_GREEN, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* @hw_led_state, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* @hw_led_state, align 4
  br label %49

49:                                               ; preds = %44, %39
  br label %84

50:                                               ; preds = %1
  %51 = load i32, i32* @led_state, align 4
  %52 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @ASSABET_BCR_LED_GREEN, align 4
  %57 = load i32, i32* @hw_led_state, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* @hw_led_state, align 4
  br label %59

59:                                               ; preds = %55, %50
  br label %84

60:                                               ; preds = %1
  br label %84

61:                                               ; preds = %1
  br label %84

62:                                               ; preds = %1
  %63 = load i32, i32* @led_state, align 4
  %64 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i32, i32* @ASSABET_BCR_LED_RED, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* @hw_led_state, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* @hw_led_state, align 4
  br label %72

72:                                               ; preds = %67, %62
  br label %84

73:                                               ; preds = %1
  %74 = load i32, i32* @led_state, align 4
  %75 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @ASSABET_BCR_LED_RED, align 4
  %80 = load i32, i32* @hw_led_state, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* @hw_led_state, align 4
  br label %82

82:                                               ; preds = %78, %73
  br label %84

83:                                               ; preds = %1
  br label %84

84:                                               ; preds = %83, %82, %72, %61, %60, %59, %49, %38, %30, %23, %12, %7
  %85 = load i32, i32* @led_state, align 4
  %86 = load i32, i32* @LED_STATE_ENABLED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @ASSABET_BCR_LED_MASK, align 4
  %91 = load i32, i32* @hw_led_state, align 4
  %92 = call i32 @ASSABET_BCR_frob(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i64, i64* %3, align 8
  %95 = call i32 @local_irq_restore(i64 %94)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @ASSABET_BCR_frob(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
