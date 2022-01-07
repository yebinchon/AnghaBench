; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-titan.c_titan_write_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-titan.c_titan_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@TITAN_PCI_0_CONFIG_ADDRESS = common dso_local global i32 0, align 4
@TITAN_PCI_0_CONFIG_DATA = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @titan_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @titan_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @PCI_SLOT(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @PCI_FUNC(i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %13, align 4
  %23 = shl i32 %22, 16
  %24 = load i32, i32* %12, align 4
  %25 = shl i32 %24, 11
  %26 = or i32 %23, %25
  %27 = load i32, i32* %14, align 4
  %28 = shl i32 %27, 8
  %29 = or i32 %26, %28
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 252
  %32 = or i32 %29, %31
  %33 = or i32 %32, -2147483648
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @TITAN_PCI_0_CONFIG_ADDRESS, align 4
  %36 = call i32 @ocd_writel(i32 %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  switch i32 %37, label %58 [
    i32 1, label %38
    i32 2, label %46
    i32 4, label %54
  ]

38:                                               ; preds = %5
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @TITAN_PCI_0_CONFIG_DATA, align 4
  %41 = load i32, i32* %8, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %42, 3
  %44 = add nsw i32 %40, %43
  %45 = call i32 @ocd_writeb(i32 %39, i32 %44)
  br label %58

46:                                               ; preds = %5
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @TITAN_PCI_0_CONFIG_DATA, align 4
  %49 = load i32, i32* %8, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %50, 2
  %52 = add nsw i32 %48, %51
  %53 = call i32 @ocd_writew(i32 %47, i32 %52)
  br label %58

54:                                               ; preds = %5
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @TITAN_PCI_0_CONFIG_DATA, align 4
  %57 = call i32 @ocd_writel(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %5, %54, %46, %38
  %59 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  ret i32 %59
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @ocd_writel(i32, i32) #1

declare dso_local i32 @ocd_writeb(i32, i32) #1

declare dso_local i32 @ocd_writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
