; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-vr41xx.c_pci_config_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-vr41xx.c_pci_config_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCICONFDREG = common dso_local global i32 0, align 4
@PCIBIOS_FUNC_NOT_SUPPORTED = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @pci_config_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_config_write(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
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
  br label %66

23:                                               ; preds = %5
  %24 = load i32, i32* @PCICONFDREG, align 4
  %25 = call i32 @readl(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %59 [
    i32 1, label %27
    i32 2, label %42
    i32 4, label %57
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 3
  %30 = shl i32 %29, 3
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = shl i32 255, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %12, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, 255
  %38 = load i32, i32* %13, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %12, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %12, align 4
  br label %61

42:                                               ; preds = %23
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 2
  %45 = shl i32 %44, 3
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = shl i32 65535, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %12, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, 65535
  %53 = load i32, i32* %13, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %12, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %12, align 4
  br label %61

57:                                               ; preds = %23
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %12, align 4
  br label %61

59:                                               ; preds = %23
  %60 = load i32, i32* @PCIBIOS_FUNC_NOT_SUPPORTED, align 4
  store i32 %60, i32* %6, align 4
  br label %66

61:                                               ; preds = %57, %42, %27
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @PCICONFDREG, align 4
  %64 = call i32 @writel(i32 %62, i32 %63)
  %65 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %61, %59, %21
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i64 @set_pci_configuration_address(i32, i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
