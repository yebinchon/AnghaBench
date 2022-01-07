; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_msi-octeon.c_arch_setup_msi_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_msi-octeon.c_arch_setup_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.msi_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.msi_msg = type { i32, i32, i64 }

@PCI_MSI_FLAGS = common dso_local global i64 0, align 8
@PCI_MSI_FLAGS_QSIZE = common dso_local global i32 0, align 4
@PCI_MSI_FLAGS_QMASK = common dso_local global i32 0, align 4
@msi_free_irq_bitmask_lock = common dso_local global i32 0, align 4
@msi_free_irq_bitmask = common dso_local global i32 0, align 4
@msi_multiple_irq_bitmask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"arch_setup_msi_irq: Unable to find %d free interrupts, trying just one\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"arch_setup_msi_irq: Unable to find a free MSI interrupt\00", align 1
@OCTEON_IRQ_MSI_BIT0 = common dso_local global i64 0, align 8
@octeon_dma_bar_type = common dso_local global i32 0, align 4
@CVMX_PCI_MSI_RCV = common dso_local global i32 0, align 4
@CVMX_NPEI_PCIE_MSI_RCV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"arch_setup_msi_irq: Invalid octeon_dma_bar_type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_setup_msi_irq(%struct.pci_dev* %0, %struct.msi_desc* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.msi_desc*, align 8
  %5 = alloca %struct.msi_msg, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.msi_desc* %1, %struct.msi_desc** %4, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = load %struct.msi_desc*, %struct.msi_desc** %4, align 8
  %14 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCI_MSI_FLAGS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @pci_read_config_word(%struct.pci_dev* %12, i64 %18, i32* %6)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PCI_MSI_FLAGS_QSIZE, align 4
  %22 = and i32 %20, %21
  %23 = ashr i32 %22, 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PCI_MSI_FLAGS_QMASK, align 4
  %29 = and i32 %27, %28
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 5
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %33
  br label %38

38:                                               ; preds = %79, %37
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 1, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = shl i32 1, %41
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  %44 = call i32 @spin_lock(i32* @msi_free_irq_bitmask_lock)
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %68, %38
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 64
  br i1 %47, label %48, label %72

48:                                               ; preds = %45
  %49 = load i32, i32* @msi_free_irq_bitmask, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* @msi_free_irq_bitmask, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* @msi_free_irq_bitmask, align 4
  %61 = load i32, i32* %11, align 4
  %62 = ashr i32 %61, 1
  %63 = load i32, i32* %9, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* @msi_multiple_irq_bitmask, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* @msi_multiple_irq_bitmask, align 4
  br label %72

67:                                               ; preds = %48
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %45

72:                                               ; preds = %55, %45
  %73 = call i32 @spin_unlock(i32* @msi_free_irq_bitmask_lock)
  %74 = load i32, i32* %9, align 4
  %75 = icmp sge i32 %74, 64
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = shl i32 1, %80
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %81)
  store i32 0, i32* %8, align 4
  br label %38

83:                                               ; preds = %76
  %84 = call i32 @panic(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %85, %72
  %87 = load i64, i64* @OCTEON_IRQ_MSI_BIT0, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* @octeon_dma_bar_type, align 4
  switch i32 %92, label %122 [
    i32 128, label %93
    i32 130, label %106
    i32 129, label %114
  ]

93:                                               ; preds = %86
  %94 = load i32, i32* @CVMX_PCI_MSI_RCV, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 134217728, %95
  %97 = and i64 %96, 4294967295
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %5, i32 0, i32 0
  store i32 %98, i32* %99, align 8
  %100 = load i32, i32* @CVMX_PCI_MSI_RCV, align 4
  %101 = sext i32 %100 to i64
  %102 = add i64 134217728, %101
  %103 = lshr i64 %102, 32
  %104 = trunc i64 %103 to i32
  %105 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %5, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %86, %93
  %107 = load i32, i32* @CVMX_PCI_MSI_RCV, align 4
  %108 = add nsw i32 0, %107
  %109 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %5, i32 0, i32 0
  store i32 %108, i32* %109, align 8
  %110 = load i32, i32* @CVMX_PCI_MSI_RCV, align 4
  %111 = add nsw i32 0, %110
  %112 = ashr i32 %111, 32
  %113 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %5, i32 0, i32 1
  store i32 %112, i32* %113, align 4
  br label %124

114:                                              ; preds = %86
  %115 = load i32, i32* @CVMX_NPEI_PCIE_MSI_RCV, align 4
  %116 = add nsw i32 0, %115
  %117 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %5, i32 0, i32 0
  store i32 %116, i32* %117, align 8
  %118 = load i32, i32* @CVMX_NPEI_PCIE_MSI_RCV, align 4
  %119 = add nsw i32 0, %118
  %120 = ashr i32 %119, 32
  %121 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %5, i32 0, i32 1
  store i32 %120, i32* %121, align 4
  br label %124

122:                                              ; preds = %86
  %123 = call i32 @panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %114, %106
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* @OCTEON_IRQ_MSI_BIT0, align 8
  %128 = sub nsw i64 %126, %127
  %129 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %5, i32 0, i32 2
  store i64 %128, i64* %129, align 8
  %130 = load i32, i32* @PCI_MSI_FLAGS_QSIZE, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %6, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %8, align 4
  %135 = shl i32 %134, 4
  %136 = load i32, i32* %6, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %6, align 4
  %138 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %139 = load %struct.msi_desc*, %struct.msi_desc** %4, align 8
  %140 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @PCI_MSI_FLAGS, align 8
  %144 = add nsw i64 %142, %143
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @pci_write_config_word(%struct.pci_dev* %138, i64 %144, i32 %145)
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.msi_desc*, %struct.msi_desc** %4, align 8
  %149 = call i32 @set_irq_msi(i32 %147, %struct.msi_desc* %148)
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @write_msi_msg(i32 %150, %struct.msi_msg* %5)
  ret i32 0
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @set_irq_msi(i32, %struct.msi_desc*) #1

declare dso_local i32 @write_msi_msg(i32, %struct.msi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
