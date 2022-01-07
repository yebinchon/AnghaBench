; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_pci_host.c_bcma_core_pci_enable_crs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_pci_host.c_bcma_core_pci_enable_crs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_pci = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bcma_bus* }
%struct.bcma_bus = type { i32 }

@PCI_CAP_ID_EXP = common dso_local global i32 0, align 4
@PCI_EXP_RTCAP = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_RC_CRS_VISIBILITY = common dso_local global i32 0, align 4
@PCI_EXP_RTCTL = common dso_local global i32 0, align 4
@PCI_EXP_RTCTL_CRSSVE = common dso_local global i32 0, align 4
@BCMA_PCI_SLOT_MAX = common dso_local global i32 0, align 4
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"PCI: Broken device in slot %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_drv_pci*)* @bcma_core_pci_enable_crs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcma_core_pci_enable_crs(%struct.bcma_drv_pci* %0) #0 {
  %2 = alloca %struct.bcma_drv_pci*, align 8
  %3 = alloca %struct.bcma_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bcma_drv_pci* %0, %struct.bcma_drv_pci** %2, align 8
  %10 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %2, align 8
  %11 = getelementptr inbounds %struct.bcma_drv_pci, %struct.bcma_drv_pci* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.bcma_bus*, %struct.bcma_bus** %13, align 8
  store %struct.bcma_bus* %14, %struct.bcma_bus** %3, align 8
  %15 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %2, align 8
  %16 = load i32, i32* @PCI_CAP_ID_EXP, align 4
  %17 = call i32 @bcma_find_pci_capability(%struct.bcma_drv_pci* %15, i32 0, i32 0, i32 %16, i32* null, i32* null)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PCI_EXP_RTCAP, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %2, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @bcma_extpci_read_config(%struct.bcma_drv_pci* %21, i32 0, i32 0, i32 %22, i32* %8, i32 4)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @BCMA_CORE_PCI_RC_CRS_VISIBILITY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %69

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @PCI_EXP_RTCTL, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @PCI_EXP_RTCTL_CRSSVE, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %2, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @bcma_extpci_read_config(%struct.bcma_drv_pci* %33, i32 0, i32 0, i32 %34, i32* %8, i32 4)
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %65, %28
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @BCMA_PCI_SLOT_MAX, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %54, %40
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 100000
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %2, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @PCI_VENDOR_ID, align 4
  %48 = call i32 @bcma_extpci_read_config(%struct.bcma_drv_pci* %45, i32 %46, i32 0, i32 %47, i32* %8, i32 4)
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %57

52:                                               ; preds = %44
  %53 = call i32 @udelay(i32 10)
  br label %54

54:                                               ; preds = %52
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %41

57:                                               ; preds = %51, %41
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @bcma_err(%struct.bcma_bus* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %60, %57
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %36

68:                                               ; preds = %36
  br label %69

69:                                               ; preds = %68, %1
  ret void
}

declare dso_local i32 @bcma_find_pci_capability(%struct.bcma_drv_pci*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bcma_extpci_read_config(%struct.bcma_drv_pci*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @bcma_err(%struct.bcma_bus*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
