; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-vr41xx.c_pci_config_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-vr41xx.c_pci_config_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCICONFDREG = common dso_local global i32 0, align 4
@PCIBIOS_FUNC_NOT_SUPPORTED = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @pci_config_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_config_read(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %11, align 8
  store i32 -1, i32* %13, align 4
  %14 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %15 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @set_pci_configuration_address(i32 %16, i32 %17, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %22, i32* %6, align 4
  br label %50

23:                                               ; preds = %5
  %24 = load i32, i32* @PCICONFDREG, align 4
  %25 = call i32 @readl(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %46 [
    i32 1, label %27
    i32 2, label %35
    i32 4, label %43
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, 3
  %31 = shl i32 %30, 3
  %32 = ashr i32 %28, %31
  %33 = and i32 %32, 255
  %34 = load i32*, i32** %11, align 8
  store i32 %33, i32* %34, align 4
  br label %48

35:                                               ; preds = %23
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 2
  %39 = shl i32 %38, 3
  %40 = ashr i32 %36, %39
  %41 = and i32 %40, 65535
  %42 = load i32*, i32** %11, align 8
  store i32 %41, i32* %42, align 4
  br label %48

43:                                               ; preds = %23
  %44 = load i32, i32* %12, align 4
  %45 = load i32*, i32** %11, align 8
  store i32 %44, i32* %45, align 4
  br label %48

46:                                               ; preds = %23
  %47 = load i32, i32* @PCIBIOS_FUNC_NOT_SUPPORTED, align 4
  store i32 %47, i32* %6, align 4
  br label %50

48:                                               ; preds = %43, %35, %27
  %49 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %46, %21
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i64 @set_pci_configuration_address(i32, i32, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
