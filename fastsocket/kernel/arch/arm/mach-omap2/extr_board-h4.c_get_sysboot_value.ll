; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_board-h4.c_get_sysboot_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_board-h4.c_get_sysboot_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP24XX_CONTROL_STATUS = common dso_local global i32 0, align 4
@OMAP2_SYSBOOT_5_MASK = common dso_local global i32 0, align 4
@OMAP2_SYSBOOT_4_MASK = common dso_local global i32 0, align 4
@OMAP2_SYSBOOT_3_MASK = common dso_local global i32 0, align 4
@OMAP2_SYSBOOT_2_MASK = common dso_local global i32 0, align 4
@OMAP2_SYSBOOT_1_MASK = common dso_local global i32 0, align 4
@OMAP2_SYSBOOT_0_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_sysboot_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sysboot_value() #0 {
  %1 = load i32, i32* @OMAP24XX_CONTROL_STATUS, align 4
  %2 = call i32 @omap_ctrl_readl(i32 %1)
  %3 = load i32, i32* @OMAP2_SYSBOOT_5_MASK, align 4
  %4 = load i32, i32* @OMAP2_SYSBOOT_4_MASK, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @OMAP2_SYSBOOT_3_MASK, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @OMAP2_SYSBOOT_2_MASK, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @OMAP2_SYSBOOT_1_MASK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @OMAP2_SYSBOOT_0_MASK, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %2, %13
  ret i32 %14
}

declare dso_local i32 @omap_ctrl_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
