; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-pmcmsp.c_msp_pcibios_config_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-pmcmsp.c_msp_pcibios_config_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i8 }
%struct.msp_pci_regs = type { i64, i8 }

@PCI_BASE_REG = common dso_local global i64 0, align 8
@msp_pcibios_config_access.pciirqflag = internal global i8 0, align 1
@MSP_INT_PCI = common dso_local global i32 0, align 4
@bpci_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"PMC MSP PCI Host\00", align 1
@bpci_lock = common dso_local global i32 0, align 4
@BPCI_IFSTATUS_BC0F = common dso_local global i64 0, align 8
@BPCI_IFSTATUS_BC1F = common dso_local global i64 0, align 8
@BPCI_CFGADDR_ENABLE = common dso_local global i8 0, align 1
@BPCI_CFGADDR_BUSNUM_SHF = common dso_local global i8 0, align 1
@BPCI_CFGADDR_FUNCTNUM_SHF = common dso_local global i8 0, align 1
@PCI_ACCESS_WRITE = common dso_local global i8 0, align 1
@PCI_CONFIG_SPACE_REG = common dso_local global i64* null, align 8
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@proc_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msp_pcibios_config_access(i8 zeroext %0, %struct.pci_bus* %1, i32 %2, i8 zeroext %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.pci_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i64*, align 8
  %12 = alloca %struct.msp_pci_regs*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8 %0, i8* %7, align 1
  store %struct.pci_bus* %1, %struct.pci_bus** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8 %3, i8* %10, align 1
  store i64* %4, i64** %11, align 8
  %19 = load i64, i64* @PCI_BASE_REG, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.msp_pci_regs*
  store %struct.msp_pci_regs* %21, %struct.msp_pci_regs** %12, align 8
  %22 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %23 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %13, align 1
  %25 = load i32, i32* %9, align 4
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %14, align 1
  %27 = load i8, i8* @msp_pcibios_config_access.pciirqflag, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %5
  %31 = load i32, i32* @MSP_INT_PCI, align 4
  %32 = load i32, i32* @bpci_interrupt, align 4
  %33 = load i32, i32* @IRQF_SHARED, align 4
  %34 = load i32, i32* @IRQF_DISABLED, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.msp_pci_regs*, %struct.msp_pci_regs** %12, align 8
  %37 = call i32 @request_irq(i32 %31, i32 %32, i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.msp_pci_regs* %36)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %18, align 4
  store i32 %41, i32* %6, align 4
  br label %116

42:                                               ; preds = %30
  store i8 -1, i8* @msp_pcibios_config_access.pciirqflag, align 1
  br label %43

43:                                               ; preds = %42, %5
  %44 = load i64, i64* %15, align 8
  %45 = call i32 @spin_lock_irqsave(i32* @bpci_lock, i64 %44)
  %46 = load i64, i64* @BPCI_IFSTATUS_BC0F, align 8
  %47 = load i64, i64* @BPCI_IFSTATUS_BC1F, align 8
  %48 = or i64 %46, %47
  %49 = xor i64 %48, -1
  %50 = load %struct.msp_pci_regs*, %struct.msp_pci_regs** %12, align 8
  %51 = getelementptr inbounds %struct.msp_pci_regs, %struct.msp_pci_regs* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i8, i8* @BPCI_CFGADDR_ENABLE, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* %13, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* @BPCI_CFGADDR_BUSNUM_SHF, align 1
  %57 = zext i8 %56 to i32
  %58 = shl i32 %55, %57
  %59 = or i32 %53, %58
  %60 = load i8, i8* %14, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @BPCI_CFGADDR_FUNCTNUM_SHF, align 1
  %63 = zext i8 %62 to i32
  %64 = shl i32 %61, %63
  %65 = or i32 %59, %64
  %66 = load i8, i8* %10, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 252
  %69 = or i32 %65, %68
  %70 = trunc i32 %69 to i8
  %71 = load %struct.msp_pci_regs*, %struct.msp_pci_regs** %12, align 8
  %72 = getelementptr inbounds %struct.msp_pci_regs, %struct.msp_pci_regs* %71, i32 0, i32 1
  store i8 %70, i8* %72, align 8
  %73 = load i8, i8* %7, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* @PCI_ACCESS_WRITE, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %43
  %79 = load i64*, i64** %11, align 8
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @cpu_to_le32(i64 %80)
  store i64 %81, i64* %17, align 8
  %82 = load i64, i64* %17, align 8
  %83 = load i64*, i64** @PCI_CONFIG_SPACE_REG, align 8
  store i64 %82, i64* %83, align 8
  br label %90

84:                                               ; preds = %43
  %85 = load i64*, i64** @PCI_CONFIG_SPACE_REG, align 8
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @le32_to_cpu(i64 %86)
  store i64 %87, i64* %17, align 8
  %88 = load i64, i64* %17, align 8
  %89 = load i64*, i64** %11, align 8
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %84, %78
  %91 = load %struct.msp_pci_regs*, %struct.msp_pci_regs** %12, align 8
  %92 = getelementptr inbounds %struct.msp_pci_regs, %struct.msp_pci_regs* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %16, align 8
  %94 = load %struct.msp_pci_regs*, %struct.msp_pci_regs** %12, align 8
  %95 = getelementptr inbounds %struct.msp_pci_regs, %struct.msp_pci_regs* %94, i32 0, i32 1
  store i8 0, i8* %95, align 8
  %96 = load i64, i64* %16, align 8
  %97 = load i64, i64* @BPCI_IFSTATUS_BC0F, align 8
  %98 = load i64, i64* @BPCI_IFSTATUS_BC1F, align 8
  %99 = or i64 %97, %98
  %100 = xor i64 %99, -1
  %101 = and i64 %96, %100
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %90
  %104 = load i64, i64* @BPCI_IFSTATUS_BC0F, align 8
  %105 = load i64, i64* @BPCI_IFSTATUS_BC1F, align 8
  %106 = or i64 %104, %105
  %107 = xor i64 %106, -1
  %108 = load %struct.msp_pci_regs*, %struct.msp_pci_regs** %12, align 8
  %109 = getelementptr inbounds %struct.msp_pci_regs, %struct.msp_pci_regs* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %15, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* @bpci_lock, i64 %110)
  store i32 -1, i32* %6, align 4
  br label %116

112:                                              ; preds = %90
  %113 = load i64, i64* %15, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32* @bpci_lock, i64 %113)
  %115 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %112, %103, %40
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.msp_pci_regs*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @cpu_to_le32(i64) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
