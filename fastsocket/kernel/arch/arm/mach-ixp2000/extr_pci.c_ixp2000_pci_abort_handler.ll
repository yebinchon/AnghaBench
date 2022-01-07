; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp2000/extr_pci.c_ixp2000_pci_abort_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp2000/extr_pci.c_ixp2000_pci_abort_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@pci_master_aborts = common dso_local global i32 0, align 4
@IXP2000_PCI_CONTROL = common dso_local global i32* null, align 8
@IXP2000_PCI_CMDSTAT = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixp2000_pci_abort_handler(i64 %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  store i32 1, i32* @pci_master_aborts, align 4
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @local_irq_save(i64 %9)
  %11 = load i32*, i32** @IXP2000_PCI_CONTROL, align 8
  %12 = load i32, i32* %11, align 4
  store volatile i32 %12, i32* %7, align 4
  %13 = load volatile i32, i32* %7, align 4
  %14 = and i32 %13, 288
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32*, i32** @IXP2000_PCI_CONTROL, align 8
  %18 = load volatile i32, i32* %7, align 4
  %19 = call i32 @ixp2000_reg_wrb(i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i32*, i32** @IXP2000_PCI_CMDSTAT, align 8
  %22 = load i32, i32* %21, align 4
  store volatile i32 %22, i32* %7, align 4
  %23 = load volatile i32, i32* %7, align 4
  %24 = and i32 %23, 536870912
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %31, %26
  %28 = load volatile i32, i32* %7, align 4
  %29 = and i32 %28, 536870912
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32*, i32** @IXP2000_PCI_CMDSTAT, align 8
  %33 = load volatile i32, i32* %7, align 4
  %34 = call i32 @ixp2000_reg_write(i32* %32, i32 %33)
  %35 = load i32*, i32** @IXP2000_PCI_CMDSTAT, align 8
  %36 = load i32, i32* %35, align 4
  store volatile i32 %36, i32* %7, align 4
  br label %27

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @local_irq_restore(i64 %39)
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, 1024
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 4
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44, %38
  ret i32 0
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @ixp2000_reg_wrb(i32*, i32) #1

declare dso_local i32 @ixp2000_reg_write(i32*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
