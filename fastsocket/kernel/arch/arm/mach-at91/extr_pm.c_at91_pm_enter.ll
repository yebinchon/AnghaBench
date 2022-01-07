; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_pm.c_at91_pm_enter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_pm.c_at91_pm_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"AT91: PM - wake mask %08x, pm state %d\0A\00", align 1
@AT91_PMC_PCSR = common dso_local global i32 0, align 4
@AT91_ID_FIQ = common dso_local global i32 0, align 4
@AT91_ID_SYS = common dso_local global i32 0, align 4
@at91_extern_irq = common dso_local global i32 0, align 4
@AT91_AIC_IMR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"AT91: PM - no slow clock mode enabled ...\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"AT91: PM - bogus suspend state %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"AT91: PM - wakeup %08x\0A\00", align 1
@AT91_AIC_IPR = common dso_local global i32 0, align 4
@target_state = common dso_local global i32 0, align 4
@at91_slow_clock = common dso_local global i32 0, align 4
@at91_slow_clock_sz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @at91_pm_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_pm_enter(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @at91_gpio_suspend()
  %4 = call i32 (...) @at91_irq_suspend()
  %5 = load i32, i32* @AT91_PMC_PCSR, align 4
  %6 = call i32 @at91_sys_read(i32 %5)
  %7 = load i32, i32* @AT91_ID_FIQ, align 4
  %8 = shl i32 1, %7
  %9 = or i32 %6, %8
  %10 = load i32, i32* @AT91_ID_SYS, align 4
  %11 = shl i32 1, %10
  %12 = or i32 %9, %11
  %13 = load i32, i32* @at91_extern_irq, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @AT91_AIC_IMR, align 4
  %16 = call i32 @at91_sys_read(i32 %15)
  %17 = and i32 %14, %16
  %18 = load i32, i32* %2, align 4
  %19 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %2, align 4
  switch i32 %20, label %35 [
    i32 130, label %21
    i32 128, label %31
    i32 129, label %34
  ]

21:                                               ; preds = %1
  %22 = call i32 (...) @at91_pm_verify_clocks()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %45

25:                                               ; preds = %21
  br i1 true, label %26, label %28

26:                                               ; preds = %25
  %27 = call i32 (...) @slow_clock()
  br label %38

28:                                               ; preds = %25
  %29 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %1, %30
  call void asm sideeffect "b 1f; .align 5; 1:", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  call void asm sideeffect "mcr p15, 0, r0, c7, c10, 4", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  %32 = call i32 (...) @sdram_selfrefresh_enable()
  call void asm sideeffect "mcr p15, 0, r0, c7, c0, 4", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  %33 = call i32 (...) @sdram_selfrefresh_disable()
  br label %38

34:                                               ; preds = %1
  call void asm sideeffect "mcr p15, 0, r0, c7, c0, 4", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  br label %38

35:                                               ; preds = %1
  %36 = load i32, i32* %2, align 4
  %37 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %45

38:                                               ; preds = %34, %31, %26
  %39 = load i32, i32* @AT91_AIC_IPR, align 4
  %40 = call i32 @at91_sys_read(i32 %39)
  %41 = load i32, i32* @AT91_AIC_IMR, align 4
  %42 = call i32 @at91_sys_read(i32 %41)
  %43 = and i32 %40, %42
  %44 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %38, %35, %24
  store i32 129, i32* @target_state, align 4
  %46 = call i32 (...) @at91_irq_resume()
  %47 = call i32 (...) @at91_gpio_resume()
  ret i32 0
}

declare dso_local i32 @at91_gpio_suspend(...) #1

declare dso_local i32 @at91_irq_suspend(...) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @at91_sys_read(i32) #1

declare dso_local i32 @at91_pm_verify_clocks(...) #1

declare dso_local i32 @slow_clock(...) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @sdram_selfrefresh_enable(...) #1

declare dso_local i32 @sdram_selfrefresh_disable(...) #1

declare dso_local i32 @at91_irq_resume(...) #1

declare dso_local i32 @at91_gpio_resume(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1302}
!3 = !{i32 1332}
!4 = !{i32 1401}
!5 = !{i32 1493}
