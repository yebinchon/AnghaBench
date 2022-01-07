; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_leds-idp.c_idp_leds_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_leds-idp.c_idp_leds_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDP_HB_LED = common dso_local global i32 0, align 4
@IDP_BUSY_LED = common dso_local global i32 0, align 4
@hw_led_state = common dso_local global i32 0, align 4
@LED_STATE_ENABLED = common dso_local global i32 0, align 4
@led_state = common dso_local global i32 0, align 4
@LED_STATE_CLAIMED = common dso_local global i32 0, align 4
@IDP_CPLD_LED_CONTROL = common dso_local global i32 0, align 4
@IDP_LEDS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idp_leds_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @local_irq_save(i64 %4)
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %77 [
    i32 130, label %7
    i32 129, label %12
    i32 139, label %17
    i32 131, label %24
    i32 136, label %32
    i32 137, label %33
    i32 138, label %43
    i32 140, label %54
    i32 141, label %55
    i32 132, label %56
    i32 133, label %66
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @IDP_HB_LED, align 4
  %9 = load i32, i32* @IDP_BUSY_LED, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* @hw_led_state, align 4
  %11 = load i32, i32* @LED_STATE_ENABLED, align 4
  store i32 %11, i32* @led_state, align 4
  br label %78

12:                                               ; preds = %1
  %13 = load i32, i32* @LED_STATE_ENABLED, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* @led_state, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* @led_state, align 4
  br label %78

17:                                               ; preds = %1
  %18 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %19 = load i32, i32* @led_state, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* @led_state, align 4
  %21 = load i32, i32* @IDP_HB_LED, align 4
  %22 = load i32, i32* @IDP_BUSY_LED, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* @hw_led_state, align 4
  br label %78

24:                                               ; preds = %1
  %25 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* @led_state, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* @led_state, align 4
  %29 = load i32, i32* @IDP_HB_LED, align 4
  %30 = load i32, i32* @IDP_BUSY_LED, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* @hw_led_state, align 4
  br label %78

32:                                               ; preds = %1
  br label %78

33:                                               ; preds = %1
  %34 = load i32, i32* @led_state, align 4
  %35 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @IDP_HB_LED, align 4
  %40 = load i32, i32* @hw_led_state, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* @hw_led_state, align 4
  br label %42

42:                                               ; preds = %38, %33
  br label %78

43:                                               ; preds = %1
  %44 = load i32, i32* @led_state, align 4
  %45 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* @IDP_HB_LED, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* @hw_led_state, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* @hw_led_state, align 4
  br label %53

53:                                               ; preds = %48, %43
  br label %78

54:                                               ; preds = %1
  br label %78

55:                                               ; preds = %1
  br label %78

56:                                               ; preds = %1
  %57 = load i32, i32* @led_state, align 4
  %58 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @IDP_BUSY_LED, align 4
  %63 = load i32, i32* @hw_led_state, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* @hw_led_state, align 4
  br label %65

65:                                               ; preds = %61, %56
  br label %78

66:                                               ; preds = %1
  %67 = load i32, i32* @led_state, align 4
  %68 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32, i32* @IDP_BUSY_LED, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* @hw_led_state, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* @hw_led_state, align 4
  br label %76

76:                                               ; preds = %71, %66
  br label %78

77:                                               ; preds = %1
  br label %78

78:                                               ; preds = %77, %76, %65, %55, %54, %53, %42, %32, %24, %17, %12, %7
  %79 = load i32, i32* @led_state, align 4
  %80 = load i32, i32* @LED_STATE_ENABLED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i32, i32* @IDP_CPLD_LED_CONTROL, align 4
  %85 = load i32, i32* @IDP_LEDS_MASK, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @hw_led_state, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  store i32 %89, i32* @IDP_CPLD_LED_CONTROL, align 4
  br label %94

90:                                               ; preds = %78
  %91 = load i32, i32* @IDP_LEDS_MASK, align 4
  %92 = load i32, i32* @IDP_CPLD_LED_CONTROL, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* @IDP_CPLD_LED_CONTROL, align 4
  br label %94

94:                                               ; preds = %90, %83
  %95 = load i64, i64* %3, align 8
  %96 = call i32 @local_irq_restore(i64 %95)
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
