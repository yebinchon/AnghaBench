; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_sriov_restore_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_sriov_restore_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_sriov* }
%struct.pci_sriov = type { i32, i32, i64, i32 }

@PCI_SRIOV_CTRL = common dso_local global i64 0, align 8
@PCI_SRIOV_CTRL_VFE = common dso_local global i32 0, align 4
@PCI_IOV_RESOURCES = common dso_local global i32 0, align 4
@PCI_IOV_RESOURCE_END = common dso_local global i32 0, align 4
@PCI_SRIOV_SYS_PGSIZE = common dso_local global i64 0, align 8
@PCI_SRIOV_NUM_VF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @sriov_restore_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sriov_restore_state(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_sriov*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load %struct.pci_sriov*, %struct.pci_sriov** %7, align 8
  store %struct.pci_sriov* %8, %struct.pci_sriov** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = load %struct.pci_sriov*, %struct.pci_sriov** %5, align 8
  %11 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PCI_SRIOV_CTRL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @pci_read_config_word(%struct.pci_dev* %9, i64 %14, i32* %4)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PCI_SRIOV_CTRL_VFE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %73

21:                                               ; preds = %1
  %22 = load i32, i32* @PCI_IOV_RESOURCES, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %31, %21
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @PCI_IOV_RESOURCE_END, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @pci_update_resource(%struct.pci_dev* %28, i32 %29)
  br label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %23

34:                                               ; preds = %23
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = load %struct.pci_sriov*, %struct.pci_sriov** %5, align 8
  %37 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCI_SRIOV_SYS_PGSIZE, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.pci_sriov*, %struct.pci_sriov** %5, align 8
  %42 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pci_write_config_dword(%struct.pci_dev* %35, i64 %40, i32 %43)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = load %struct.pci_sriov*, %struct.pci_sriov** %5, align 8
  %47 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PCI_SRIOV_NUM_VF, align 8
  %50 = add nsw i64 %48, %49
  %51 = load %struct.pci_sriov*, %struct.pci_sriov** %5, align 8
  %52 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @pci_write_config_word(%struct.pci_dev* %45, i64 %50, i32 %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %56 = load %struct.pci_sriov*, %struct.pci_sriov** %5, align 8
  %57 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PCI_SRIOV_CTRL, align 8
  %60 = add nsw i64 %58, %59
  %61 = load %struct.pci_sriov*, %struct.pci_sriov** %5, align 8
  %62 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pci_write_config_word(%struct.pci_dev* %55, i64 %60, i32 %63)
  %65 = load %struct.pci_sriov*, %struct.pci_sriov** %5, align 8
  %66 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PCI_SRIOV_CTRL_VFE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %34
  %72 = call i32 @msleep(i32 100)
  br label %73

73:                                               ; preds = %20, %71, %34
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_update_resource(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
