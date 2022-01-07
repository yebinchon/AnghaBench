; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_leds.c_integrator_leds_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_leds.c_integrator_leds_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEGRATOR_DBG_BASE = common dso_local global i32 0, align 4
@CM_CTRL_LED = common dso_local global i32 0, align 4
@GREEN_LED = common dso_local global i32 0, align 4
@saved_leds = common dso_local global i32 0, align 4
@RED_LED = common dso_local global i32 0, align 4
@INTEGRATOR_DBG_ALPHA_OFFSET = common dso_local global i64 0, align 8
@INTEGRATOR_DBG_LEDS_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @integrator_leds_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @integrator_leds_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @INTEGRATOR_DBG_BASE, align 4
  %7 = call i32 @IO_ADDRESS(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* %2, align 4
  switch i32 %10, label %31 [
    i32 131, label %11
    i32 132, label %14
    i32 128, label %18
    i32 129, label %22
    i32 130, label %26
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @CM_CTRL_LED, align 4
  %13 = call i32 @cm_control(i32 %12, i32 0)
  br label %32

14:                                               ; preds = %1
  %15 = load i32, i32* @CM_CTRL_LED, align 4
  %16 = load i32, i32* @CM_CTRL_LED, align 4
  %17 = call i32 @cm_control(i32 %15, i32 %16)
  br label %32

18:                                               ; preds = %1
  %19 = load i32, i32* @GREEN_LED, align 4
  %20 = load i32, i32* @saved_leds, align 4
  %21 = xor i32 %20, %19
  store i32 %21, i32* @saved_leds, align 4
  store i32 1, i32* %5, align 4
  br label %32

22:                                               ; preds = %1
  %23 = load i32, i32* @RED_LED, align 4
  %24 = load i32, i32* @saved_leds, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* @saved_leds, align 4
  store i32 1, i32* %5, align 4
  br label %32

26:                                               ; preds = %1
  %27 = load i32, i32* @RED_LED, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* @saved_leds, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* @saved_leds, align 4
  store i32 1, i32* %5, align 4
  br label %32

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %31, %26, %22, %18, %14, %11
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %44, %35
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* @INTEGRATOR_DBG_ALPHA_OFFSET, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @__raw_readl(i64 %40)
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %36

45:                                               ; preds = %36
  %46 = load i32, i32* @saved_leds, align 4
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* @INTEGRATOR_DBG_LEDS_OFFSET, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @__raw_writel(i32 %46, i64 %50)
  br label %52

52:                                               ; preds = %45, %32
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @local_irq_restore(i64 %53)
  ret void
}

declare dso_local i32 @IO_ADDRESS(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @cm_control(i32, i32) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
