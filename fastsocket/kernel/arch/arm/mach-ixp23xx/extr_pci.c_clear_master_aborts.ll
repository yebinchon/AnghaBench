; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp23xx/extr_pci.c_clear_master_aborts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp23xx/extr_pci.c_clear_master_aborts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IXP23XX_PCI_CONTROL = common dso_local global i32* null, align 8
@IXP23XX_PCI_CMDSTAT = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clear_master_aborts() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @IXP23XX_PCI_CONTROL, align 8
  %3 = load volatile i32, i32* %2, align 4
  store volatile i32 %3, i32* %1, align 4
  %4 = load volatile i32, i32* %1, align 4
  %5 = and i32 %4, 288
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load volatile i32, i32* %1, align 4
  %9 = load i32*, i32** @IXP23XX_PCI_CONTROL, align 8
  store volatile i32 %8, i32* %9, align 4
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i32*, i32** @IXP23XX_PCI_CMDSTAT, align 8
  %12 = load volatile i32, i32* %11, align 4
  store volatile i32 %12, i32* %1, align 4
  %13 = load volatile i32, i32* %1, align 4
  %14 = and i32 %13, 536870912
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load volatile i32, i32* %1, align 4
  %18 = load i32*, i32** @IXP23XX_PCI_CMDSTAT, align 8
  store volatile i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %10
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
