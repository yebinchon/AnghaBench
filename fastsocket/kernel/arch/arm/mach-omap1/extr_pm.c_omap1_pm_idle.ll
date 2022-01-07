; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_pm.c_omap1_pm_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_pm.c_omap1_pm_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arm_idlect1_mask = external dso_local global i32, align 4
@enable_dyn_sleep = common dso_local global i64 0, align 8
@ARM_IDLECT1 = common dso_local global i32 0, align 4
@OMAP1510_BIG_SLEEP_REQUEST = common dso_local global i32 0, align 4
@OMAP1610_IDLECT1_SLEEP_VAL = common dso_local global i32 0, align 4
@ARM_IDLECT2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap1_pm_idle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @arm_idlect1_mask, align 4
  store i32 %4, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %5 = call i32 (...) @local_irq_disable()
  %6 = call i32 (...) @local_fiq_disable()
  %7 = call i64 (...) @need_resched()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = call i32 (...) @local_fiq_enable()
  %11 = call i32 (...) @local_irq_enable()
  br label %59

12:                                               ; preds = %0
  br label %13

13:                                               ; preds = %12
  %14 = load i64, i64* @enable_dyn_sleep, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = call i64 (...) @omap_dma_running()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %1, align 4
  %22 = and i32 %21, -65
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %1, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @ARM_IDLECT1, align 4
  %31 = call i32 @omap_readl(i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = call i64 (...) @cpu_is_omap15xx()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @OMAP1510_BIG_SLEEP_REQUEST, align 4
  %36 = load i32, i32* %1, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %1, align 4
  br label %42

38:                                               ; preds = %29
  %39 = load i32, i32* @OMAP1610_IDLECT1_SLEEP_VAL, align 4
  %40 = load i32, i32* %1, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* @ARM_IDLECT1, align 4
  %45 = call i32 @omap_writel(i32 %43, i32 %44)
  call void asm sideeffect "mcr\09p15, 0, r0, c7, c0, 4", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @ARM_IDLECT1, align 4
  %48 = call i32 @omap_writel(i32 %46, i32 %47)
  %49 = call i32 (...) @local_fiq_enable()
  %50 = call i32 (...) @local_irq_enable()
  br label %59

51:                                               ; preds = %26
  %52 = load i32, i32* @ARM_IDLECT1, align 4
  %53 = call i32 @omap_readl(i32 %52)
  %54 = load i32, i32* @ARM_IDLECT2, align 4
  %55 = call i32 @omap_readl(i32 %54)
  %56 = call i32 @omap_sram_suspend(i32 %53, i32 %55)
  %57 = call i32 (...) @local_fiq_enable()
  %58 = call i32 (...) @local_irq_enable()
  br label %59

59:                                               ; preds = %51, %42, %9
  ret void
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @local_fiq_disable(...) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @local_fiq_enable(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i64 @omap_dma_running(...) #1

declare dso_local i32 @omap_readl(i32) #1

declare dso_local i64 @cpu_is_omap15xx(...) #1

declare dso_local i32 @omap_writel(i32, i32) #1

declare dso_local i32 @omap_sram_suspend(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1293}
