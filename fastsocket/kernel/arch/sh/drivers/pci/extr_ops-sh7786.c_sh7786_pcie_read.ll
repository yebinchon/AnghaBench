; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/pci/extr_ops-sh7786.c_sh7786_pcie_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/pci/extr_ops-sh7786.c_sh7786_pcie_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, i32 }

@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@sh7786_pcie_lock = common dso_local global i32 0, align 4
@PCI_ACCESS_READ = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"pcie-config-read: bus=%3d devfn=0x%04x where=0x%04x size=%d val=0x%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @sh7786_pcie_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh7786_pcie_read(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %22, i32* %6, align 4
  br label %88

23:                                               ; preds = %17, %5
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 3
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %31, i32* %6, align 4
  br label %88

32:                                               ; preds = %26, %23
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @spin_lock_irqsave(i32* @sh7786_pcie_lock, i64 %34)
  %36 = load i32, i32* @PCI_ACCESS_READ, align 4
  %37 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @sh7786_pcie_config_access(i32 %36, %struct.pci_bus* %37, i32 %38, i32 %39, i32* %14)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %84

45:                                               ; preds = %33
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 3
  %52 = shl i32 %51, 3
  %53 = ashr i32 %49, %52
  %54 = and i32 %53, 255
  %55 = load i32*, i32** %11, align 8
  store i32 %54, i32* %55, align 4
  br label %71

56:                                               ; preds = %45
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, 2
  %63 = shl i32 %62, 3
  %64 = ashr i32 %60, %63
  %65 = and i32 %64, 65535
  %66 = load i32*, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  br label %70

67:                                               ; preds = %56
  %68 = load i32, i32* %14, align 4
  %69 = load i32*, i32** %11, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %59
  br label %71

71:                                               ; preds = %70, %48
  %72 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %73 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %72, i32 0, i32 1
  %74 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %75 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = call i32 @dev_dbg(i32* %73, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77, i32 %78, i32 %79, i64 %82)
  br label %84

84:                                               ; preds = %71, %44
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* @sh7786_pcie_lock, i64 %85)
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %84, %30, %21
  %89 = load i32, i32* %6, align 4
  ret i32 %89
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
