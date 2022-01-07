; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c__omap2xxx_clk_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c__omap2xxx_clk_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@DELAYED_APP = common dso_local global i32 0, align 4
@OMAP24XX_VALID_CONFIG = common dso_local global i32 0, align 4
@OMAP24XX_GR_MOD = common dso_local global i32 0, align 4
@OMAP2_PRCM_CLKCFG_CTRL_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*)* @_omap2xxx_clk_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_omap2xxx_clk_commit(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %3 = call i32 (...) @cpu_is_omap24xx()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  %7 = load %struct.clk*, %struct.clk** %2, align 8
  %8 = getelementptr inbounds %struct.clk, %struct.clk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DELAYED_APP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  br label %22

14:                                               ; preds = %6
  %15 = load i32, i32* @OMAP24XX_VALID_CONFIG, align 4
  %16 = load i32, i32* @OMAP24XX_GR_MOD, align 4
  %17 = load i32, i32* @OMAP2_PRCM_CLKCFG_CTRL_OFFSET, align 4
  %18 = call i32 @prm_write_mod_reg(i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* @OMAP24XX_GR_MOD, align 4
  %20 = load i32, i32* @OMAP2_PRCM_CLKCFG_CTRL_OFFSET, align 4
  %21 = call i32 @prm_read_mod_reg(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %14, %13, %5
  ret void
}

declare dso_local i32 @cpu_is_omap24xx(...) #1

declare dso_local i32 @prm_write_mod_reg(i32, i32, i32) #1

declare dso_local i32 @prm_read_mod_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
