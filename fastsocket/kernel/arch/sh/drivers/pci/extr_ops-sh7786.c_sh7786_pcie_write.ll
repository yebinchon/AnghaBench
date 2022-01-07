; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/pci/extr_ops-sh7786.c_sh7786_pcie_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/pci/extr_ops-sh7786.c_sh7786_pcie_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, i32 }

@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@sh7786_pcie_lock = common dso_local global i32 0, align 4
@PCI_ACCESS_READ = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"pcie-config-write: bus=%3d devfn=0x%04x where=0x%04x size=%d val=%08lx\0A\00", align 1
@PCI_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @sh7786_pcie_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh7786_pcie_write(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %23, i32* %6, align 4
  br label %106

24:                                               ; preds = %18, %5
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 3
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %32, i32* %6, align 4
  br label %106

33:                                               ; preds = %27, %24
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @spin_lock_irqsave(i32* @sh7786_pcie_lock, i64 %35)
  %37 = load i32, i32* @PCI_ACCESS_READ, align 4
  %38 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @sh7786_pcie_config_access(i32 %37, %struct.pci_bus* %38, i32 %39, i32 %40, i32* %15)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %102

46:                                               ; preds = %34
  %47 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %48 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %47, i32 0, i32 1
  %49 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %50 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = call i32 @dev_dbg(i32* %48, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i32 %53, i32 %54, i64 %56)
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %75

60:                                               ; preds = %46
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, 3
  %63 = shl i32 %62, 3
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = shl i32 255, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %15, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, 255
  %71 = load i32, i32* %13, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %15, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %15, align 4
  br label %96

75:                                               ; preds = %46
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, 2
  %81 = shl i32 %80, 3
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = shl i32 65535, %82
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %15, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %11, align 4
  %88 = and i32 %87, 65535
  %89 = load i32, i32* %13, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* %15, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %15, align 4
  br label %95

93:                                               ; preds = %75
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %93, %78
  br label %96

96:                                               ; preds = %95, %60
  %97 = load i32, i32* @PCI_ACCESS_WRITE, align 4
  %98 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @sh7786_pcie_config_access(i32 %97, %struct.pci_bus* %98, i32 %99, i32 %100, i32* %15)
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %96, %45
  %103 = load i64, i64* %12, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* @sh7786_pcie_lock, i64 %103)
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %102, %31, %22
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sh7786_pcie_config_access(i32, %struct.pci_bus*, i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
