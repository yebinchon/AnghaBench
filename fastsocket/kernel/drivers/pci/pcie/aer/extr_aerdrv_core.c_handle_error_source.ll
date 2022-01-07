; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_handle_error_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_handle_error_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.aer_err_info = type { i64, i32 }

@AER_CORRECTABLE = common dso_local global i64 0, align 8
@PCI_EXT_CAP_ID_ERR = common dso_local global i32 0, align 4
@PCI_ERR_COR_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcie_device*, %struct.pci_dev*, %struct.aer_err_info*)* @handle_error_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_error_source(%struct.pcie_device* %0, %struct.pci_dev* %1, %struct.aer_err_info* %2) #0 {
  %4 = alloca %struct.pcie_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.aer_err_info*, align 8
  %7 = alloca i32, align 4
  store %struct.pcie_device* %0, %struct.pcie_device** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store %struct.aer_err_info* %2, %struct.aer_err_info** %6, align 8
  %8 = load %struct.aer_err_info*, %struct.aer_err_info** %6, align 8
  %9 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AER_CORRECTABLE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = load i32, i32* @PCI_EXT_CAP_ID_ERR, align 4
  %16 = call i32 @pci_find_ext_capability(%struct.pci_dev* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @PCI_ERR_COR_STATUS, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.aer_err_info*, %struct.aer_err_info** %6, align 8
  %26 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pci_write_config_dword(%struct.pci_dev* %20, i64 %24, i32 %27)
  br label %29

29:                                               ; preds = %19, %13
  br label %36

30:                                               ; preds = %3
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = load %struct.aer_err_info*, %struct.aer_err_info** %6, align 8
  %33 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @do_recovery(%struct.pci_dev* %31, i64 %34)
  br label %36

36:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @do_recovery(%struct.pci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
