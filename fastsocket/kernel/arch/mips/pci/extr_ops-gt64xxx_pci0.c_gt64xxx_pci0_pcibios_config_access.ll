; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-gt64xxx_pci0.c_gt64xxx_pci0_pcibios_config_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-gt64xxx_pci0.c_gt64xxx_pci0_pcibios_config_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i8 }

@GT_INTRCAUSE_OFS = common dso_local global i32 0, align 4
@GT_INTRCAUSE_MASABORT0_BIT = common dso_local global i32 0, align 4
@GT_INTRCAUSE_TARABORT0_BIT = common dso_local global i32 0, align 4
@GT_PCI0_CFGADDR_OFS = common dso_local global i32 0, align 4
@GT_PCI0_CFGADDR_BUSNUM_SHF = common dso_local global i8 0, align 1
@GT_PCI0_CFGADDR_FUNCTNUM_SHF = common dso_local global i32 0, align 4
@GT_PCI0_CFGADDR_REGNUM_SHF = common dso_local global i32 0, align 4
@GT_PCI0_CFGADDR_CONFIGEN_BIT = common dso_local global i8 0, align 1
@PCI_ACCESS_WRITE = common dso_local global i8 0, align 1
@GT_PCI0_CFGDATA_OFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.pci_bus*, i32, i32, i32*)* @gt64xxx_pci0_pcibios_config_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gt64xxx_pci0_pcibios_config_access(i8 zeroext %0, %struct.pci_bus* %1, i32 %2, i32 %3, i32* %4) #0 {
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
  %17 = load i8, i8* %12, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @PCI_DEVFN(i32 31, i32 0)
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %6, align 4
  br label %109

25:                                               ; preds = %20, %5
  %26 = load i32, i32* @GT_INTRCAUSE_OFS, align 4
  %27 = load i32, i32* @GT_INTRCAUSE_MASABORT0_BIT, align 4
  %28 = load i32, i32* @GT_INTRCAUSE_TARABORT0_BIT, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = call i32 @GT_WRITE(i32 %26, i32 %30)
  %32 = load i32, i32* @GT_PCI0_CFGADDR_OFS, align 4
  %33 = load i8, i8* %12, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @GT_PCI0_CFGADDR_BUSNUM_SHF, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %34, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @GT_PCI0_CFGADDR_FUNCTNUM_SHF, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %37, %40
  %42 = load i32, i32* %10, align 4
  %43 = sdiv i32 %42, 4
  %44 = load i32, i32* @GT_PCI0_CFGADDR_REGNUM_SHF, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %41, %45
  %47 = load i8, i8* @GT_PCI0_CFGADDR_CONFIGEN_BIT, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %46, %48
  %50 = call i32 @GT_WRITE(i32 %32, i32 %49)
  %51 = load i8, i8* %7, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @PCI_ACCESS_WRITE, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %25
  %57 = load i8, i8* %12, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @PCI_SLOT(i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* @GT_PCI0_CFGDATA_OFS, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @GT_WRITE(i32 %65, i32 %67)
  br label %74

69:                                               ; preds = %60, %56
  %70 = load i32, i32* @GT_PCI0_CFGDATA_OFS, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @__GT_WRITE(i32 %70, i32 %72)
  br label %74

74:                                               ; preds = %69, %64
  br label %92

75:                                               ; preds = %25
  %76 = load i8, i8* %12, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @PCI_SLOT(i32 %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* @GT_PCI0_CFGDATA_OFS, align 4
  %85 = call i32 @GT_READ(i32 %84)
  %86 = load i32*, i32** %11, align 8
  store i32 %85, i32* %86, align 4
  br label %91

87:                                               ; preds = %79, %75
  %88 = load i32, i32* @GT_PCI0_CFGDATA_OFS, align 4
  %89 = call i32 @__GT_READ(i32 %88)
  %90 = load i32*, i32** %11, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %87, %83
  br label %92

92:                                               ; preds = %91, %74
  %93 = load i32, i32* @GT_INTRCAUSE_OFS, align 4
  %94 = call i32 @GT_READ(i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @GT_INTRCAUSE_MASABORT0_BIT, align 4
  %97 = load i32, i32* @GT_INTRCAUSE_TARABORT0_BIT, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %92
  %102 = load i32, i32* @GT_INTRCAUSE_OFS, align 4
  %103 = load i32, i32* @GT_INTRCAUSE_MASABORT0_BIT, align 4
  %104 = load i32, i32* @GT_INTRCAUSE_TARABORT0_BIT, align 4
  %105 = or i32 %103, %104
  %106 = xor i32 %105, -1
  %107 = call i32 @GT_WRITE(i32 %102, i32 %106)
  store i32 -1, i32* %6, align 4
  br label %109

108:                                              ; preds = %92
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %108, %101, %24
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @GT_WRITE(i32, i32) #1

declare dso_local i64 @PCI_SLOT(i32) #1

declare dso_local i32 @__GT_WRITE(i32, i32) #1

declare dso_local i32 @GT_READ(i32) #1

declare dso_local i32 @__GT_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
