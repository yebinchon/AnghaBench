; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_drv.c_iwl_pci_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_drv.c_iwl_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.iwl_cfg = type { i32 }
%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @iwl_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.iwl_cfg*, align 8
  %7 = alloca %struct.iwl_trans*, align 8
  %8 = alloca %struct.iwl_trans_pcie*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %11 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.iwl_cfg*
  store %struct.iwl_cfg* %13, %struct.iwl_cfg** %6, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %16 = load %struct.iwl_cfg*, %struct.iwl_cfg** %6, align 8
  %17 = call %struct.iwl_trans* @iwl_trans_pcie_alloc(%struct.pci_dev* %14, %struct.pci_device_id* %15, %struct.iwl_cfg* %16)
  store %struct.iwl_trans* %17, %struct.iwl_trans** %7, align 8
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %19 = icmp eq %struct.iwl_trans* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %65

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %26 = call i32 @pci_set_drvdata(%struct.pci_dev* %24, %struct.iwl_trans* %25)
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %28 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %27)
  store %struct.iwl_trans_pcie* %28, %struct.iwl_trans_pcie** %8, align 8
  %29 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %30 = load %struct.iwl_cfg*, %struct.iwl_cfg** %6, align 8
  %31 = call i32 @iwl_drv_start(%struct.iwl_trans* %29, %struct.iwl_cfg* %30)
  %32 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %33 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %35 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IS_ERR_OR_NULL(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %23
  %40 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %41 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %9, align 4
  br label %59

44:                                               ; preds = %23
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %46 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %47 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @iwl_trans_dbgfs_register(%struct.iwl_trans* %45, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %54

53:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %65

54:                                               ; preds = %52
  %55 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %56 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @iwl_drv_stop(i32 %57)
  br label %59

59:                                               ; preds = %54, %39
  %60 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %61 = call i32 @iwl_trans_pcie_free(%struct.iwl_trans* %60)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = call i32 @pci_set_drvdata(%struct.pci_dev* %62, %struct.iwl_trans* null)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %59, %53, %20
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.iwl_trans* @iwl_trans_pcie_alloc(%struct.pci_dev*, %struct.pci_device_id*, %struct.iwl_cfg*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.iwl_trans*) #1

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_drv_start(%struct.iwl_trans*, %struct.iwl_cfg*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @iwl_trans_dbgfs_register(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_drv_stop(i32) #1

declare dso_local i32 @iwl_trans_pcie_free(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
