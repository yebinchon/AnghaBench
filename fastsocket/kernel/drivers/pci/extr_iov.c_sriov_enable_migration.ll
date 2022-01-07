; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_sriov_enable_migration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_sriov_enable_migration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_sriov* }
%struct.pci_sriov = type { i32, i32, i64, i32, i32 }

@PCI_SRIOV_VFM = common dso_local global i64 0, align 8
@PCI_STD_RESOURCE_END = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sriov_migration_task = common dso_local global i32 0, align 4
@PCI_SRIOV_CTRL_VFM = common dso_local global i32 0, align 4
@PCI_SRIOV_CTRL_INTR = common dso_local global i32 0, align 4
@PCI_SRIOV_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @sriov_enable_migration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sriov_enable_migration(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pci_sriov*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load %struct.pci_sriov*, %struct.pci_sriov** %11, align 8
  store %struct.pci_sriov* %12, %struct.pci_sriov** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.pci_sriov*, %struct.pci_sriov** %9, align 8
  %15 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sle i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %89

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = load %struct.pci_sriov*, %struct.pci_sriov** %9, align 8
  %22 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PCI_SRIOV_VFM, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @pci_read_config_dword(%struct.pci_dev* %20, i64 %25, i64* %7)
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @PCI_SRIOV_VFM_BIR(i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PCI_STD_RESOURCE_END, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %89

35:                                               ; preds = %19
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @PCI_SRIOV_VFM_OFFSET(i64 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @pci_resource_len(%struct.pci_dev* %42, i32 %43)
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %89

49:                                               ; preds = %35
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @pci_resource_start(%struct.pci_dev* %50, i32 %51)
  %53 = load i64, i64* %7, align 8
  %54 = add nsw i64 %52, %53
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @ioremap(i64 %55, i32 %56)
  %58 = load %struct.pci_sriov*, %struct.pci_sriov** %9, align 8
  %59 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.pci_sriov*, %struct.pci_sriov** %9, align 8
  %61 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %49
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %89

67:                                               ; preds = %49
  %68 = load %struct.pci_sriov*, %struct.pci_sriov** %9, align 8
  %69 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %68, i32 0, i32 3
  %70 = load i32, i32* @sriov_migration_task, align 4
  %71 = call i32 @INIT_WORK(i32* %69, i32 %70)
  %72 = load i32, i32* @PCI_SRIOV_CTRL_VFM, align 4
  %73 = load i32, i32* @PCI_SRIOV_CTRL_INTR, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.pci_sriov*, %struct.pci_sriov** %9, align 8
  %76 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = load %struct.pci_sriov*, %struct.pci_sriov** %9, align 8
  %81 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PCI_SRIOV_CTRL, align 8
  %84 = add nsw i64 %82, %83
  %85 = load %struct.pci_sriov*, %struct.pci_sriov** %9, align 8
  %86 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pci_write_config_word(%struct.pci_dev* %79, i64 %84, i32 %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %67, %64, %46, %32, %18
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i64*) #1

declare dso_local i32 @PCI_SRIOV_VFM_BIR(i64) #1

declare dso_local i64 @PCI_SRIOV_VFM_OFFSET(i64) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap(i64, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
