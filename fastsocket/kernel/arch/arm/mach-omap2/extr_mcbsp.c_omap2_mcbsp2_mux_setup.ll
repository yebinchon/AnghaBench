; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_mcbsp.c_omap2_mcbsp2_mux_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_mcbsp.c_omap2_mcbsp2_mux_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Y15_24XX_MCBSP2_CLKX = common dso_local global i32 0, align 4
@R14_24XX_MCBSP2_FSX = common dso_local global i32 0, align 4
@W15_24XX_MCBSP2_DR = common dso_local global i32 0, align 4
@V15_24XX_MCBSP2_DX = common dso_local global i32 0, align 4
@V14_24XX_GPIO117 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @omap2_mcbsp2_mux_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2_mcbsp2_mux_setup() #0 {
  %1 = load i32, i32* @Y15_24XX_MCBSP2_CLKX, align 4
  %2 = call i32 @omap_cfg_reg(i32 %1)
  %3 = load i32, i32* @R14_24XX_MCBSP2_FSX, align 4
  %4 = call i32 @omap_cfg_reg(i32 %3)
  %5 = load i32, i32* @W15_24XX_MCBSP2_DR, align 4
  %6 = call i32 @omap_cfg_reg(i32 %5)
  %7 = load i32, i32* @V15_24XX_MCBSP2_DX, align 4
  %8 = call i32 @omap_cfg_reg(i32 %7)
  %9 = load i32, i32* @V14_24XX_GPIO117, align 4
  %10 = call i32 @omap_cfg_reg(i32 %9)
  ret void
}

declare dso_local i32 @omap_cfg_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
