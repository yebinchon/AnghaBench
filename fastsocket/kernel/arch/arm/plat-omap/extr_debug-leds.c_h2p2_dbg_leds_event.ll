; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_debug-leds.c_h2p2_dbg_leds_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_debug-leds.c_h2p2_dbg_leds_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@lock = common dso_local global i32 0, align 4
@led_state = common dso_local global i32 0, align 4
@LED_STATE_ENABLED = common dso_local global i32 0, align 4
@fpga = common dso_local global %struct.TYPE_2__* null, align 8
@GPIO_TIMER = common dso_local global i32 0, align 4
@GPIO_IDLE = common dso_local global i32 0, align 4
@LED_STATE_CLAIMED = common dso_local global i32 0, align 4
@hw_led_state = common dso_local global i32 0, align 4
@H2P2_DBG_FPGA_LED_GREEN = common dso_local global i32 0, align 4
@H2P2_DBG_FPGA_LED_AMBER = common dso_local global i32 0, align 4
@H2P2_DBG_FPGA_LED_RED = common dso_local global i32 0, align 4
@H2P2_DBG_FPGA_LED_BLUE = common dso_local global i32 0, align 4
@H2P2_DBG_FPGA_P2_LED_IDLE = common dso_local global i32 0, align 4
@H2P2_DBG_FPGA_P2_LED_TIMER = common dso_local global i32 0, align 4
@LED_TIMER_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @h2p2_dbg_leds_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h2p2_dbg_leds_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @lock, i64 %4)
  %6 = load i32, i32* @led_state, align 4
  %7 = load i32, i32* @LED_STATE_ENABLED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 130
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %101

14:                                               ; preds = %10, %1
  %15 = load i32, i32* %2, align 4
  switch i32 %15, label %88 [
    i32 130, label %16
    i32 129, label %24
    i32 136, label %24
    i32 139, label %43
    i32 131, label %47
    i32 137, label %52
    i32 138, label %56
    i32 142, label %61
    i32 143, label %65
    i32 132, label %70
    i32 133, label %74
    i32 140, label %79
    i32 141, label %83
  ]

16:                                               ; preds = %14
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fpga, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @LED_STATE_ENABLED, align 4
  %21 = load i32, i32* @led_state, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* @led_state, align 4
  br label %23

23:                                               ; preds = %19, %16
  br label %89

24:                                               ; preds = %14, %14
  %25 = call i32 (...) @machine_is_omap_perseus2()
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %24
  %28 = call i32 (...) @machine_is_omap_h4()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @GPIO_TIMER, align 4
  %32 = call i32 @gpio_set_value(i32 %31, i32 0)
  %33 = load i32, i32* @GPIO_IDLE, align 4
  %34 = call i32 @gpio_set_value(i32 %33, i32 0)
  br label %35

35:                                               ; preds = %30, %27, %24
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fpga, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @__raw_writew(i32 -1, i32* %37)
  %39 = load i32, i32* @LED_STATE_ENABLED, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* @led_state, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* @led_state, align 4
  br label %101

43:                                               ; preds = %14
  %44 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %45 = load i32, i32* @led_state, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* @led_state, align 4
  store i32 0, i32* @hw_led_state, align 4
  br label %89

47:                                               ; preds = %14
  %48 = load i32, i32* @LED_STATE_CLAIMED, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* @led_state, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* @led_state, align 4
  br label %89

52:                                               ; preds = %14
  %53 = load i32, i32* @H2P2_DBG_FPGA_LED_GREEN, align 4
  %54 = load i32, i32* @hw_led_state, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* @hw_led_state, align 4
  br label %89

56:                                               ; preds = %14
  %57 = load i32, i32* @H2P2_DBG_FPGA_LED_GREEN, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* @hw_led_state, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* @hw_led_state, align 4
  br label %89

61:                                               ; preds = %14
  %62 = load i32, i32* @H2P2_DBG_FPGA_LED_AMBER, align 4
  %63 = load i32, i32* @hw_led_state, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* @hw_led_state, align 4
  br label %89

65:                                               ; preds = %14
  %66 = load i32, i32* @H2P2_DBG_FPGA_LED_AMBER, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* @hw_led_state, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* @hw_led_state, align 4
  br label %89

70:                                               ; preds = %14
  %71 = load i32, i32* @H2P2_DBG_FPGA_LED_RED, align 4
  %72 = load i32, i32* @hw_led_state, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* @hw_led_state, align 4
  br label %89

74:                                               ; preds = %14
  %75 = load i32, i32* @H2P2_DBG_FPGA_LED_RED, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* @hw_led_state, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* @hw_led_state, align 4
  br label %89

79:                                               ; preds = %14
  %80 = load i32, i32* @H2P2_DBG_FPGA_LED_BLUE, align 4
  %81 = load i32, i32* @hw_led_state, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* @hw_led_state, align 4
  br label %89

83:                                               ; preds = %14
  %84 = load i32, i32* @H2P2_DBG_FPGA_LED_BLUE, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* @hw_led_state, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* @hw_led_state, align 4
  br label %89

88:                                               ; preds = %14
  br label %89

89:                                               ; preds = %88, %83, %79, %74, %70, %65, %61, %56, %52, %47, %43, %23
  %90 = load i32, i32* @led_state, align 4
  %91 = load i32, i32* @LED_STATE_ENABLED, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* @hw_led_state, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fpga, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = call i32 @__raw_writew(i32 %96, i32* %98)
  br label %100

100:                                              ; preds = %94, %89
  br label %101

101:                                              ; preds = %100, %35, %13
  %102 = load i64, i64* %3, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* @lock, i64 %102)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @machine_is_omap_perseus2(...) #1

declare dso_local i32 @machine_is_omap_h4(...) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @__raw_writew(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
