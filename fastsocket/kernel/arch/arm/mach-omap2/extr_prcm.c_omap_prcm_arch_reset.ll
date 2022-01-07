; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_prcm.c_omap_prcm_arch_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_prcm.c_omap_prcm_arch_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WKUP_MOD = common dso_local global i32 0, align 4
@OMAP3430_GR_MOD = common dso_local global i32 0, align 4
@OMAP_RST_DPLL3 = common dso_local global i32 0, align 4
@RM_RSTCTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_prcm_arch_reset(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %4 = call i32 (...) @omap2_clk_prepare_for_reboot()
  %5 = call i64 (...) @cpu_is_omap24xx()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @WKUP_MOD, align 4
  store i32 %8, i32* %3, align 4
  br label %17

9:                                                ; preds = %1
  %10 = call i64 (...) @cpu_is_omap34xx()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @OMAP3430_GR_MOD, align 4
  store i32 %13, i32* %3, align 4
  br label %16

14:                                               ; preds = %9
  %15 = call i32 @WARN_ON(i32 1)
  br label %16

16:                                               ; preds = %14, %12
  br label %17

17:                                               ; preds = %16, %7
  %18 = load i32, i32* @OMAP_RST_DPLL3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @RM_RSTCTRL, align 4
  %21 = call i32 @prm_set_mod_reg_bits(i32 %18, i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @omap2_clk_prepare_for_reboot(...) #1

declare dso_local i64 @cpu_is_omap24xx(...) #1

declare dso_local i64 @cpu_is_omap34xx(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @prm_set_mod_reg_bits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
