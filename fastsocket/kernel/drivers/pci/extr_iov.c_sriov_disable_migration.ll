; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_sriov_disable_migration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_sriov_disable_migration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_sriov* }
%struct.pci_sriov = type { i32, i32, i32, i64 }

@PCI_SRIOV_CTRL_VFM = common dso_local global i32 0, align 4
@PCI_SRIOV_CTRL_INTR = common dso_local global i32 0, align 4
@PCI_SRIOV_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @sriov_disable_migration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sriov_disable_migration(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_sriov*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = load %struct.pci_sriov*, %struct.pci_sriov** %5, align 8
  store %struct.pci_sriov* %6, %struct.pci_sriov** %3, align 8
  %7 = load i32, i32* @PCI_SRIOV_CTRL_VFM, align 4
  %8 = load i32, i32* @PCI_SRIOV_CTRL_INTR, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load %struct.pci_sriov*, %struct.pci_sriov** %3, align 8
  %12 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = load %struct.pci_sriov*, %struct.pci_sriov** %3, align 8
  %17 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PCI_SRIOV_CTRL, align 8
  %20 = add nsw i64 %18, %19
  %21 = load %struct.pci_sriov*, %struct.pci_sriov** %3, align 8
  %22 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pci_write_config_word(%struct.pci_dev* %15, i64 %20, i32 %23)
  %25 = load %struct.pci_sriov*, %struct.pci_sriov** %3, align 8
  %26 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %25, i32 0, i32 2
  %27 = call i32 @cancel_work_sync(i32* %26)
  %28 = load %struct.pci_sriov*, %struct.pci_sriov** %3, align 8
  %29 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @iounmap(i32 %30)
  ret void
}

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
