; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp23xx/extr_pci.c_ixp23xx_pci_abort_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp23xx/extr_pci.c_ixp23xx_pci_abort_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@pci_master_aborts = common dso_local global i32 0, align 4
@IXP23XX_PCI_CONTROL = common dso_local global i64* null, align 8
@IXP23XX_PCI_CMDSTAT = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixp23xx_pci_abort_handler(i64 %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  store i32 1, i32* @pci_master_aborts, align 4
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @local_irq_save(i64 %9)
  %11 = load i64*, i64** @IXP23XX_PCI_CONTROL, align 8
  %12 = load volatile i64, i64* %11, align 8
  store volatile i64 %12, i64* %7, align 8
  %13 = load volatile i64, i64* %7, align 8
  %14 = and i64 %13, 288
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load volatile i64, i64* %7, align 8
  %18 = load i64*, i64** @IXP23XX_PCI_CONTROL, align 8
  store volatile i64 %17, i64* %18, align 8
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i64*, i64** @IXP23XX_PCI_CMDSTAT, align 8
  %21 = load volatile i64, i64* %20, align 8
  store volatile i64 %21, i64* %7, align 8
  %22 = load volatile i64, i64* %7, align 8
  %23 = and i64 %22, 536870912
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load volatile i64, i64* %7, align 8
  %27 = load i64*, i64** @IXP23XX_PCI_CMDSTAT, align 8
  store volatile i64 %26, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @local_irq_restore(i64 %29)
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 1024
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 4
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %28
  ret i32 0
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
