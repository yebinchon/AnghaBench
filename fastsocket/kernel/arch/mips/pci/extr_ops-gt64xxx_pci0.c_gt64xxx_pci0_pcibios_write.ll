; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-gt64xxx_pci0.c_gt64xxx_pci0_pcibios_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-gt64xxx_pci0.c_gt64xxx_pci0_pcibios_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCI_ACCESS_READ = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCI_ACCESS_WRITE = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @gt64xxx_pci0_pcibios_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gt64xxx_pci0_pcibios_write(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i32, i32* %11, align 4
  store i32 %16, i32* %12, align 4
  br label %62

17:                                               ; preds = %5
  %18 = load i32, i32* @PCI_ACCESS_READ, align 4
  %19 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @gt64xxx_pci0_pcibios_config_access(i32 %18, %struct.pci_bus* %19, i32 %20, i32 %21, i32* %12)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %25, i32* %6, align 4
  br label %73

26:                                               ; preds = %17
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 3
  %33 = shl i32 %32, 3
  %34 = shl i32 255, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %30, %35
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 3
  %40 = shl i32 %39, 3
  %41 = shl i32 %37, %40
  %42 = or i32 %36, %41
  store i32 %42, i32* %12, align 4
  br label %61

43:                                               ; preds = %26
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 3
  %50 = shl i32 %49, 3
  %51 = shl i32 65535, %50
  %52 = xor i32 %51, -1
  %53 = and i32 %47, %52
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 3
  %57 = shl i32 %56, 3
  %58 = shl i32 %54, %57
  %59 = or i32 %53, %58
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %46, %43
  br label %61

61:                                               ; preds = %60, %29
  br label %62

62:                                               ; preds = %61, %15
  %63 = load i32, i32* @PCI_ACCESS_WRITE, align 4
  %64 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @gt64xxx_pci0_pcibios_config_access(i32 %63, %struct.pci_bus* %64, i32 %65, i32 %66, i32* %12)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %70, i32* %6, align 4
  br label %73

71:                                               ; preds = %62
  %72 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %69, %24
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i64 @gt64xxx_pci0_pcibios_config_access(i32, %struct.pci_bus*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
