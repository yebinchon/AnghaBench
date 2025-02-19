; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_pci_cleanup_aer_uncorrect_error_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_pci_cleanup_aer_uncorrect_error_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_EXT_CAP_ID_ERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PCI_ERR_UNCOR_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_cleanup_aer_uncorrect_error_status(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = load i32, i32* @PCI_EXT_CAP_ID_ERR, align 4
  %8 = call i32 @pci_find_ext_capability(%struct.pci_dev* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* @PCI_ERR_UNCOR_STATUS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @pci_read_config_dword(%struct.pci_dev* %15, i64 %19, i64* %5)
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @PCI_ERR_UNCOR_STATUS, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @pci_write_config_dword(%struct.pci_dev* %24, i64 %28, i64 %29)
  br label %31

31:                                               ; preds = %23, %14
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i64*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
