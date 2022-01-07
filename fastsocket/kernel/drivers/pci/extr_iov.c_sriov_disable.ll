; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_sriov_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_sriov_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, %struct.TYPE_2__, %struct.pci_sriov* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_sriov = type { i32, i32, i32, i64, i64 }

@PCI_SRIOV_CAP_VFM = common dso_local global i32 0, align 4
@PCI_SRIOV_CTRL_VFE = common dso_local global i32 0, align 4
@PCI_SRIOV_CTRL_MSE = common dso_local global i32 0, align 4
@PCI_SRIOV_CTRL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"dep_link\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @sriov_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sriov_disable(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_sriov*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 2
  %7 = load %struct.pci_sriov*, %struct.pci_sriov** %6, align 8
  store %struct.pci_sriov* %7, %struct.pci_sriov** %4, align 8
  %8 = load %struct.pci_sriov*, %struct.pci_sriov** %4, align 8
  %9 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %76

13:                                               ; preds = %1
  %14 = load %struct.pci_sriov*, %struct.pci_sriov** %4, align 8
  %15 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PCI_SRIOV_CAP_VFM, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = call i32 @sriov_disable_migration(%struct.pci_dev* %21)
  br label %23

23:                                               ; preds = %20, %13
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %34, %23
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.pci_sriov*, %struct.pci_sriov** %4, align 8
  %27 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @virtfn_remove(%struct.pci_dev* %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %24

37:                                               ; preds = %24
  %38 = load i32, i32* @PCI_SRIOV_CTRL_VFE, align 4
  %39 = load i32, i32* @PCI_SRIOV_CTRL_MSE, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.pci_sriov*, %struct.pci_sriov** %4, align 8
  %43 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = call i32 @pci_cfg_access_lock(%struct.pci_dev* %46)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = load %struct.pci_sriov*, %struct.pci_sriov** %4, align 8
  %50 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PCI_SRIOV_CTRL, align 8
  %53 = add nsw i64 %51, %52
  %54 = load %struct.pci_sriov*, %struct.pci_sriov** %4, align 8
  %55 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pci_write_config_word(%struct.pci_dev* %48, i64 %53, i32 %56)
  %58 = call i32 @ssleep(i32 1)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %60 = call i32 @pci_cfg_access_unlock(%struct.pci_dev* %59)
  %61 = load %struct.pci_sriov*, %struct.pci_sriov** %4, align 8
  %62 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %37
  %69 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @sysfs_remove_link(i32* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %37
  %74 = load %struct.pci_sriov*, %struct.pci_sriov** %4, align 8
  %75 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %12
  ret void
}

declare dso_local i32 @sriov_disable_migration(%struct.pci_dev*) #1

declare dso_local i32 @virtfn_remove(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_cfg_access_lock(%struct.pci_dev*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @pci_cfg_access_unlock(%struct.pci_dev*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
