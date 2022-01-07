; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci-sysfs.c_pci_remove_resource_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci-sysfs.c_pci_remove_resource_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__, %struct.bin_attribute**, %struct.bin_attribute** }
%struct.TYPE_2__ = type { i32 }
%struct.bin_attribute = type { i32 }

@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_remove_resource_files(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bin_attribute*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %46, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %49

9:                                                ; preds = %5
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 2
  %12 = load %struct.bin_attribute**, %struct.bin_attribute*** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.bin_attribute*, %struct.bin_attribute** %12, i64 %14
  %16 = load %struct.bin_attribute*, %struct.bin_attribute** %15, align 8
  store %struct.bin_attribute* %16, %struct.bin_attribute** %4, align 8
  %17 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %18 = icmp ne %struct.bin_attribute* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %9
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %24 = call i32 @sysfs_remove_bin_file(i32* %22, %struct.bin_attribute* %23)
  %25 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %26 = call i32 @kfree(%struct.bin_attribute* %25)
  br label %27

27:                                               ; preds = %19, %9
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 1
  %30 = load %struct.bin_attribute**, %struct.bin_attribute*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.bin_attribute*, %struct.bin_attribute** %30, i64 %32
  %34 = load %struct.bin_attribute*, %struct.bin_attribute** %33, align 8
  store %struct.bin_attribute* %34, %struct.bin_attribute** %4, align 8
  %35 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %36 = icmp ne %struct.bin_attribute* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %42 = call i32 @sysfs_remove_bin_file(i32* %40, %struct.bin_attribute* %41)
  %43 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %44 = call i32 @kfree(%struct.bin_attribute* %43)
  br label %45

45:                                               ; preds = %37, %27
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %5

49:                                               ; preds = %5
  ret void
}

declare dso_local i32 @sysfs_remove_bin_file(i32*, %struct.bin_attribute*) #1

declare dso_local i32 @kfree(%struct.bin_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
