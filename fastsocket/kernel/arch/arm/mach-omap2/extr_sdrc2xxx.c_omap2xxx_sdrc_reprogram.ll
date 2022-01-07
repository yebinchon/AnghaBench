; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_sdrc2xxx.c_omap2xxx_sdrc_reprogram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_sdrc2xxx.c_omap2xxx_sdrc_reprogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curr_perf_level = common dso_local global i64 0, align 8
@CORE_CLK_SRC_DPLL = common dso_local global i64 0, align 8
@CORE_CLK_SRC_DPLL_X2 = common dso_local global i64 0, align 8
@OMAP2420_PRCM_VOLTSETUP = common dso_local global i32 0, align 4
@OMAP2430_PRCM_VOLTSETUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @omap2xxx_sdrc_reprogram(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* @curr_perf_level, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* @curr_perf_level, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %3, align 8
  br label %55

19:                                               ; preds = %14, %2
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @CORE_CLK_SRC_DPLL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i64 (...) @omap2xxx_sdrc_get_slow_dll_ctrl()
  store i64 %24, i64* %6, align 8
  br label %34

25:                                               ; preds = %19
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @CORE_CLK_SRC_DPLL_X2, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i64 (...) @omap2xxx_sdrc_get_fast_dll_ctrl()
  store i64 %30, i64* %6, align 8
  br label %33

31:                                               ; preds = %25
  %32 = load i64, i64* %8, align 8
  store i64 %32, i64* %3, align 8
  br label %55

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %23
  %35 = call i64 (...) @omap2xxx_sdrc_get_type()
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @local_irq_save(i64 %36)
  %38 = call i64 (...) @cpu_is_omap2420()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @OMAP2420_PRCM_VOLTSETUP, align 4
  %42 = call i32 @__raw_writel(i32 65535, i32 %41)
  br label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @OMAP2430_PRCM_VOLTSETUP, align 4
  %45 = call i32 @__raw_writel(i32 65535, i32 %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @omap2_sram_reprogram_sdrc(i64 %47, i64 %48, i64 %49)
  %51 = load i64, i64* %4, align 8
  store i64 %51, i64* @curr_perf_level, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @local_irq_restore(i64 %52)
  %54 = load i64, i64* %8, align 8
  store i64 %54, i64* %3, align 8
  br label %55

55:                                               ; preds = %46, %31, %17
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

declare dso_local i64 @omap2xxx_sdrc_get_slow_dll_ctrl(...) #1

declare dso_local i64 @omap2xxx_sdrc_get_fast_dll_ctrl(...) #1

declare dso_local i64 @omap2xxx_sdrc_get_type(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @cpu_is_omap2420(...) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @omap2_sram_reprogram_sdrc(i64, i64, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
