; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-msc.c_msc_pcibios_config_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-msc.c_msc_pcibios_config_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i8 }

@MSC01_PCI_INTSTAT = common dso_local global i32 0, align 4
@MSC01_PCI_INTCFG_MA_BIT = common dso_local global i32 0, align 4
@MSC01_PCI_INTCFG_TA_BIT = common dso_local global i32 0, align 4
@MSC01_PCI_CFGADDR = common dso_local global i32 0, align 4
@MSC01_PCI_CFGADDR_BNUM_SHF = common dso_local global i8 0, align 1
@MSC01_PCI_CFGADDR_DNUM_SHF = common dso_local global i8 0, align 1
@MSC01_PCI_CFGADDR_FNUM_SHF = common dso_local global i8 0, align 1
@MSC01_PCI_CFGADDR_RNUM_SHF = common dso_local global i32 0, align 4
@PCI_ACCESS_WRITE = common dso_local global i8 0, align 1
@MSC01_PCI_CFGDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.pci_bus*, i32, i32, i32*)* @msc_pcibios_config_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msc_pcibios_config_access(i8 zeroext %0, %struct.pci_bus* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.pci_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store i8 %0, i8* %7, align 1
  store %struct.pci_bus* %1, %struct.pci_bus** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %15 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %12, align 1
  %17 = load i32, i32* @MSC01_PCI_INTSTAT, align 4
  %18 = load i32, i32* @MSC01_PCI_INTCFG_MA_BIT, align 4
  %19 = load i32, i32* @MSC01_PCI_INTCFG_TA_BIT, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @MSC_WRITE(i32 %17, i32 %20)
  %22 = load i32, i32* @MSC01_PCI_CFGADDR, align 4
  %23 = load i8, i8* %12, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @MSC01_PCI_CFGADDR_BNUM_SHF, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 %24, %26
  %28 = load i32, i32* %9, align 4
  %29 = call zeroext i8 @PCI_SLOT(i32 %28)
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @MSC01_PCI_CFGADDR_DNUM_SHF, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %30, %32
  %34 = or i32 %27, %33
  %35 = load i32, i32* %9, align 4
  %36 = call zeroext i8 @PCI_FUNC(i32 %35)
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @MSC01_PCI_CFGADDR_FNUM_SHF, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %37, %39
  %41 = or i32 %34, %40
  %42 = load i32, i32* %10, align 4
  %43 = sdiv i32 %42, 4
  %44 = load i32, i32* @MSC01_PCI_CFGADDR_RNUM_SHF, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %41, %45
  %47 = call i32 @MSC_WRITE(i32 %22, i32 %46)
  %48 = load i8, i8* %7, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @PCI_ACCESS_WRITE, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %5
  %54 = load i32, i32* @MSC01_PCI_CFGDATA, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @MSC_WRITE(i32 %54, i32 %56)
  br label %63

58:                                               ; preds = %5
  %59 = load i32, i32* @MSC01_PCI_CFGDATA, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @MSC_READ(i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %58, %53
  %64 = load i32, i32* @MSC01_PCI_INTSTAT, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @MSC_READ(i32 %64, i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @MSC01_PCI_INTCFG_MA_BIT, align 4
  %69 = load i32, i32* @MSC01_PCI_INTCFG_TA_BIT, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %63
  %74 = load i32, i32* @MSC01_PCI_INTSTAT, align 4
  %75 = load i32, i32* @MSC01_PCI_INTCFG_MA_BIT, align 4
  %76 = load i32, i32* @MSC01_PCI_INTCFG_TA_BIT, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @MSC_WRITE(i32 %74, i32 %77)
  store i32 -1, i32* %6, align 4
  br label %80

79:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %73
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @MSC_WRITE(i32, i32) #1

declare dso_local zeroext i8 @PCI_SLOT(i32) #1

declare dso_local zeroext i8 @PCI_FUNC(i32) #1

declare dso_local i32 @MSC_READ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
