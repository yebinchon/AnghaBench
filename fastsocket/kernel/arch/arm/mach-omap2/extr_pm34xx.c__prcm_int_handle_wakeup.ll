; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_pm34xx.c__prcm_int_handle_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_pm34xx.c__prcm_int_handle_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WKUP_MOD = common dso_local global i32 0, align 4
@CORE_MOD = common dso_local global i32 0, align 4
@OMAP3430_PER_MOD = common dso_local global i32 0, align 4
@OMAP3430_REV_ES1_0 = common dso_local global i64 0, align 8
@OMAP3430ES2_USBHOST_MOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @_prcm_int_handle_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_prcm_int_handle_wakeup() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @WKUP_MOD, align 4
  %3 = call i32 @prcm_clear_mod_irqs(i32 %2, i32 1)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @CORE_MOD, align 4
  %5 = call i32 @prcm_clear_mod_irqs(i32 %4, i32 1)
  %6 = load i32, i32* %1, align 4
  %7 = add nsw i32 %6, %5
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @OMAP3430_PER_MOD, align 4
  %9 = call i32 @prcm_clear_mod_irqs(i32 %8, i32 1)
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %10, %9
  store i32 %11, i32* %1, align 4
  %12 = call i64 (...) @omap_rev()
  %13 = load i64, i64* @OMAP3430_REV_ES1_0, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %0
  %16 = load i32, i32* @CORE_MOD, align 4
  %17 = call i32 @prcm_clear_mod_irqs(i32 %16, i32 3)
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* @OMAP3430ES2_USBHOST_MOD, align 4
  %21 = call i32 @prcm_clear_mod_irqs(i32 %20, i32 1)
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %15, %0
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @prcm_clear_mod_irqs(i32, i32) #1

declare dso_local i64 @omap_rev(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
