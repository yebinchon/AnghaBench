; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_check_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_check_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32*, i32, %struct.TYPE_2__*, %struct.qlcnic_hardware_context* }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_hardware_context = type { i32, i64, i32 }
%struct.pci_device_id = type { i32 }

@QLC_83XX_DRV_OP_MODE = common dso_local global i32 0, align 4
@QLC_83XX_DEFAULT_OPMODE = common dso_local global i64 0, align 8
@QLCNIC_MGMT_FUNC = common dso_local global i64 0, align 8
@QLCNIC_NON_PRIV_FUNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"HAL Version: %d Non Privileged function\0A\00", align 1
@qlcnic_vf_ops = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_SRIOV = common dso_local global i32 0, align 4
@__QLCNIC_SRIOV_CAPABLE = common dso_local global i32 0, align 4
@qlcnic_83xx_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_83xx_check_vf(%struct.qlcnic_adapter* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qlcnic_hardware_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %4, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 3
  %10 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  store %struct.qlcnic_hardware_context* %10, %struct.qlcnic_hardware_context** %7, align 8
  %11 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %7, align 8
  %12 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %11, i32 0, i32 0
  store i32 2, i32* %12, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = call i32 @qlcnic_get_func_no(%struct.qlcnic_adapter* %13)
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %16 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %20 = call i32 @qlcnic_sriov_vf_set_ops(%struct.qlcnic_adapter* %19)
  br label %71

21:                                               ; preds = %2
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 3
  %24 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %23, align 8
  %25 = load i32, i32* @QLC_83XX_DRV_OP_MODE, align 4
  %26 = call i64 @QLCRDX(%struct.qlcnic_hardware_context* %24, i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @QLC_83XX_DEFAULT_OPMODE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  store i64 %31, i64* %6, align 8
  br label %38

32:                                               ; preds = %21
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %7, align 8
  %35 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @QLC_83XX_GET_FUNC_PRIVILEGE(i64 %33, i32 %36)
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %32, %30
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @QLCNIC_NON_PRIV_FUNC, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load i64, i64* @QLCNIC_NON_PRIV_FUNC, align 8
  %44 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %7, align 8
  %45 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %7, align 8
  %51 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_info(i32* %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %54, i32 0, i32 0
  store i32* @qlcnic_vf_ops, i32** %55, align 8
  br label %71

56:                                               ; preds = %38
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* @PCI_EXT_CAP_ID_SRIOV, align 4
  %61 = call i64 @pci_find_ext_capability(%struct.TYPE_2__* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load i32, i32* @__QLCNIC_SRIOV_CAPABLE, align 4
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %65, i32 0, i32 1
  %67 = call i32 @set_bit(i32 %64, i32* %66)
  br label %68

68:                                               ; preds = %63, %56
  %69 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %69, i32 0, i32 0
  store i32* @qlcnic_83xx_ops, i32** %70, align 8
  br label %71

71:                                               ; preds = %18, %68, %42
  ret void
}

declare dso_local i32 @qlcnic_get_func_no(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_vf_set_ops(%struct.qlcnic_adapter*) #1

declare dso_local i64 @QLCRDX(%struct.qlcnic_hardware_context*, i32) #1

declare dso_local i64 @QLC_83XX_GET_FUNC_PRIVILEGE(i64, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i64 @pci_find_ext_capability(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
