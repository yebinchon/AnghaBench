; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp4xx/extr_ixp4xx_qmgr.c_qmgr_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp4xx/extr_ixp4xx_qmgr.c_qmgr_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_IXP4XX_QM1 = common dso_local global i32 0, align 4
@IRQ_IXP4XX_QM2 = common dso_local global i32 0, align 4
@qmgr_regs = common dso_local global i32 0, align 4
@IXP4XX_QMGR_BASE_PHYS = common dso_local global i32 0, align 4
@IXP4XX_QMGR_REGION_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @qmgr_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qmgr_remove() #0 {
  %1 = load i32, i32* @IRQ_IXP4XX_QM1, align 4
  %2 = call i32 @free_irq(i32 %1, i32* null)
  %3 = load i32, i32* @IRQ_IXP4XX_QM2, align 4
  %4 = call i32 @free_irq(i32 %3, i32* null)
  %5 = load i32, i32* @IRQ_IXP4XX_QM1, align 4
  %6 = call i32 @synchronize_irq(i32 %5)
  %7 = load i32, i32* @IRQ_IXP4XX_QM2, align 4
  %8 = call i32 @synchronize_irq(i32 %7)
  %9 = load i32, i32* @qmgr_regs, align 4
  %10 = call i32 @iounmap(i32 %9)
  %11 = load i32, i32* @IXP4XX_QMGR_BASE_PHYS, align 4
  %12 = load i32, i32* @IXP4XX_QMGR_REGION_SIZE, align 4
  %13 = call i32 @release_mem_region(i32 %11, i32 %12)
  ret void
}

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
