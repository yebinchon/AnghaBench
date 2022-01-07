; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_fpga.c_get_fpga_unmasked_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_fpga.c_get_fpga_unmasked_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP1510_FPGA_ISR_LO = common dso_local global i32 0, align 4
@OMAP1510_FPGA_IMR_LO = common dso_local global i32 0, align 4
@OMAP1510_FPGA_ISR_HI = common dso_local global i32 0, align 4
@OMAP1510_FPGA_IMR_HI = common dso_local global i32 0, align 4
@INNOVATOR_FPGA_ISR2 = common dso_local global i32 0, align 4
@INNOVATOR_FPGA_IMR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_fpga_unmasked_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fpga_unmasked_irqs() #0 {
  %1 = load i32, i32* @OMAP1510_FPGA_ISR_LO, align 4
  %2 = call i32 @__raw_readb(i32 %1)
  %3 = load i32, i32* @OMAP1510_FPGA_IMR_LO, align 4
  %4 = call i32 @__raw_readb(i32 %3)
  %5 = and i32 %2, %4
  %6 = load i32, i32* @OMAP1510_FPGA_ISR_HI, align 4
  %7 = call i32 @__raw_readb(i32 %6)
  %8 = load i32, i32* @OMAP1510_FPGA_IMR_HI, align 4
  %9 = call i32 @__raw_readb(i32 %8)
  %10 = and i32 %7, %9
  %11 = shl i32 %10, 8
  %12 = or i32 %5, %11
  %13 = load i32, i32* @INNOVATOR_FPGA_ISR2, align 4
  %14 = call i32 @__raw_readb(i32 %13)
  %15 = load i32, i32* @INNOVATOR_FPGA_IMR2, align 4
  %16 = call i32 @__raw_readb(i32 %15)
  %17 = and i32 %14, %16
  %18 = shl i32 %17, 16
  %19 = or i32 %12, %18
  ret i32 %19
}

declare dso_local i32 @__raw_readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
