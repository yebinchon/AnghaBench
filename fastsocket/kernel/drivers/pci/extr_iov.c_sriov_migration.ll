; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_sriov_migration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_sriov_migration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_sriov* }
%struct.pci_sriov = type { i32, i32, i64, i32 }

@PCI_SRIOV_CAP_VFM = common dso_local global i32 0, align 4
@PCI_SRIOV_STATUS = common dso_local global i64 0, align 8
@PCI_SRIOV_STATUS_VFM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @sriov_migration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sriov_migration(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_sriov*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load %struct.pci_sriov*, %struct.pci_sriov** %7, align 8
  store %struct.pci_sriov* %8, %struct.pci_sriov** %5, align 8
  %9 = load %struct.pci_sriov*, %struct.pci_sriov** %5, align 8
  %10 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.pci_sriov*, %struct.pci_sriov** %5, align 8
  %16 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PCI_SRIOV_CAP_VFM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %39

22:                                               ; preds = %14
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load %struct.pci_sriov*, %struct.pci_sriov** %5, align 8
  %25 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCI_SRIOV_STATUS, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @pci_read_config_word(%struct.pci_dev* %23, i64 %28, i32* %4)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @PCI_SRIOV_STATUS_VFM, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %39

35:                                               ; preds = %22
  %36 = load %struct.pci_sriov*, %struct.pci_sriov** %5, align 8
  %37 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %36, i32 0, i32 1
  %38 = call i32 @schedule_work(i32* %37)
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %34, %21, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
