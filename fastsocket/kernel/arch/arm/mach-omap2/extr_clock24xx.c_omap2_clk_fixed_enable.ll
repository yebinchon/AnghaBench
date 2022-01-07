; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock24xx.c_omap2_clk_fixed_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock24xx.c_omap2_clk_fixed_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }

@EN_APLL_LOCKED = common dso_local global i32 0, align 4
@PLL_MOD = common dso_local global i32 0, align 4
@CM_CLKEN = common dso_local global i32 0, align 4
@apll96_ck = common dso_local global %struct.clk zeroinitializer, align 4
@OMAP24XX_ST_96M_APLL = common dso_local global i32 0, align 4
@apll54_ck = common dso_local global %struct.clk zeroinitializer, align 4
@OMAP24XX_ST_54M_APLL = common dso_local global i32 0, align 4
@CM_IDLEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @omap2_clk_fixed_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_clk_fixed_enable(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  %6 = load i32, i32* @EN_APLL_LOCKED, align 4
  %7 = load %struct.clk*, %struct.clk** %3, align 8
  %8 = getelementptr inbounds %struct.clk, %struct.clk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %6, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @PLL_MOD, align 4
  %12 = load i32, i32* @CM_CLKEN, align 4
  %13 = call i32 @cm_read_mod_reg(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PLL_MOD, align 4
  %30 = load i32, i32* @CM_CLKEN, align 4
  %31 = call i32 @cm_write_mod_reg(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.clk*, %struct.clk** %3, align 8
  %33 = icmp eq %struct.clk* %32, @apll96_ck
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* @OMAP24XX_ST_96M_APLL, align 4
  store i32 %35, i32* %4, align 4
  br label %42

36:                                               ; preds = %20
  %37 = load %struct.clk*, %struct.clk** %3, align 8
  %38 = icmp eq %struct.clk* %37, @apll54_ck
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @OMAP24XX_ST_54M_APLL, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %36
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i32, i32* @PLL_MOD, align 4
  %44 = load i32, i32* @CM_IDLEST, align 4
  %45 = call i32 @OMAP_CM_REGADDR(i32 %43, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.clk*, %struct.clk** %3, align 8
  %48 = getelementptr inbounds %struct.clk, %struct.clk* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @omap2_cm_wait_idlest(i32 %45, i32 %46, i32 %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %42, %19
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @cm_read_mod_reg(i32, i32) #1

declare dso_local i32 @cm_write_mod_reg(i32, i32, i32) #1

declare dso_local i32 @omap2_cm_wait_idlest(i32, i32, i32) #1

declare dso_local i32 @OMAP_CM_REGADDR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
