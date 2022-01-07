; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ks8695/extr_leds.c_ks8695_leds_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ks8695/extr_leds.c_ks8695_leds_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ks8695_leds_cpu = common dso_local global i32 0, align 4
@ks8695_leds_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ks8695_leds_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8695_leds_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @local_irq_save(i64 %4)
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %13 [
    i32 130, label %7
    i32 129, label %10
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @ks8695_leds_cpu, align 4
  %9 = call i32 @ks8695_led_on(i32 %8)
  br label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @ks8695_leds_cpu, align 4
  %12 = call i32 @ks8695_led_off(i32 %11)
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %10, %7
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @local_irq_restore(i64 %15)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @ks8695_led_on(i32) #1

declare dso_local i32 @ks8695_led_off(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
