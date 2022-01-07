; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv.c_aer_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv.c_aer_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_device = type { i32 }
%struct.aer_rpc = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@PCI_EXT_CAP_ID_ERR = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_ROOT_UNCOR_RCV = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_COR_RCV = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_ERR_SRC = common dso_local global i64 0, align 8
@AER_ERROR_SOURCES_MAX = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aer_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcie_device*, align 8
  %9 = alloca %struct.aer_rpc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.pcie_device*
  store %struct.pcie_device* %14, %struct.pcie_device** %8, align 8
  %15 = load %struct.pcie_device*, %struct.pcie_device** %8, align 8
  %16 = call %struct.aer_rpc* @get_service_data(%struct.pcie_device* %15)
  store %struct.aer_rpc* %16, %struct.aer_rpc** %9, align 8
  %17 = load %struct.pcie_device*, %struct.pcie_device** %8, align 8
  %18 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PCI_EXT_CAP_ID_ERR, align 4
  %21 = call i32 @pci_find_ext_capability(i32 %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.aer_rpc*, %struct.aer_rpc** %9, align 8
  %23 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %22, i32 0, i32 3
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.pcie_device*, %struct.pcie_device** %8, align 8
  %27 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @PCI_ERR_ROOT_STATUS, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @pci_read_config_dword(i32 %28, i64 %32, i32* %6)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @PCI_ERR_ROOT_UNCOR_RCV, align 4
  %36 = load i32, i32* @PCI_ERR_ROOT_COR_RCV, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %2
  %41 = load %struct.aer_rpc*, %struct.aer_rpc** %9, align 8
  %42 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %41, i32 0, i32 3
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* @IRQ_NONE, align 4
  store i32 %45, i32* %3, align 4
  br label %116

46:                                               ; preds = %2
  %47 = load %struct.pcie_device*, %struct.pcie_device** %8, align 8
  %48 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* @PCI_ERR_ROOT_ERR_SRC, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @pci_read_config_dword(i32 %49, i64 %53, i32* %7)
  %55 = load %struct.pcie_device*, %struct.pcie_device** %8, align 8
  %56 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @PCI_ERR_ROOT_STATUS, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @pci_write_config_dword(i32 %57, i64 %61, i32 %62)
  %64 = load %struct.aer_rpc*, %struct.aer_rpc** %9, align 8
  %65 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @AER_ERROR_SOURCES_MAX, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %71, %46
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.aer_rpc*, %struct.aer_rpc** %9, align 8
  %75 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.aer_rpc*, %struct.aer_rpc** %9, align 8
  %80 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %79, i32 0, i32 3
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %83, i32* %3, align 4
  br label %116

84:                                               ; preds = %72
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.aer_rpc*, %struct.aer_rpc** %9, align 8
  %87 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %86, i32 0, i32 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load %struct.aer_rpc*, %struct.aer_rpc** %9, align 8
  %90 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 %85, i32* %94, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.aer_rpc*, %struct.aer_rpc** %9, align 8
  %97 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %96, i32 0, i32 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load %struct.aer_rpc*, %struct.aer_rpc** %9, align 8
  %100 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  store i32 %95, i32* %104, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.aer_rpc*, %struct.aer_rpc** %9, align 8
  %107 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.aer_rpc*, %struct.aer_rpc** %9, align 8
  %109 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %108, i32 0, i32 3
  %110 = load i64, i64* %11, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  %112 = load %struct.aer_rpc*, %struct.aer_rpc** %9, align 8
  %113 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %112, i32 0, i32 2
  %114 = call i32 @schedule_work(i32* %113)
  %115 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %84, %78, %40
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.aer_rpc* @get_service_data(%struct.pcie_device*) #1

declare dso_local i32 @pci_find_ext_capability(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_read_config_dword(i32, i64, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pci_write_config_dword(i32, i64, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
