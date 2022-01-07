; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock24xx.c_omap2_get_apll_clkin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock24xx.c_omap2_get_apll_clkin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLL_MOD = common dso_local global i32 0, align 4
@CM_CLKSEL1 = common dso_local global i32 0, align 4
@OMAP24XX_APLLS_CLKIN_MASK = common dso_local global i32 0, align 4
@OMAP24XX_APLLS_CLKIN_SHIFT = common dso_local global i32 0, align 4
@APLLS_CLKIN_19_2MHZ = common dso_local global i32 0, align 4
@APLLS_CLKIN_13MHZ = common dso_local global i32 0, align 4
@APLLS_CLKIN_12MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @omap2_get_apll_clkin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_get_apll_clkin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @PLL_MOD, align 4
  %4 = load i32, i32* @CM_CLKSEL1, align 4
  %5 = call i32 @cm_read_mod_reg(i32 %3, i32 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @OMAP24XX_APLLS_CLKIN_MASK, align 4
  %7 = load i32, i32* %1, align 4
  %8 = and i32 %7, %6
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* @OMAP24XX_APLLS_CLKIN_SHIFT, align 4
  %10 = load i32, i32* %1, align 4
  %11 = ashr i32 %10, %9
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @APLLS_CLKIN_19_2MHZ, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store i32 19200000, i32* %2, align 4
  br label %28

16:                                               ; preds = %0
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @APLLS_CLKIN_13MHZ, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 13000000, i32* %2, align 4
  br label %27

21:                                               ; preds = %16
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @APLLS_CLKIN_12MHZ, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 12000000, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %21
  br label %27

27:                                               ; preds = %26, %20
  br label %28

28:                                               ; preds = %27, %15
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @cm_read_mod_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
