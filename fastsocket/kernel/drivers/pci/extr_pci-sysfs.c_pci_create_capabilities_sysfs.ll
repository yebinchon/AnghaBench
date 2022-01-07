; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci-sysfs.c_pci_create_capabilities_sysfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci-sysfs.c_pci_create_capabilities_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.bin_attribute*, i32 }
%struct.bin_attribute = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vpd\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@read_vpd_attr = common dso_local global i32 0, align 4
@write_vpd_attr = common dso_local global i32 0, align 4
@reset_attr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @pci_create_capabilities_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_create_capabilities_sysfs(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bin_attribute*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %62

10:                                               ; preds = %1
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.bin_attribute* @kzalloc(i32 32, i32 %11)
  store %struct.bin_attribute* %12, %struct.bin_attribute** %5, align 8
  %13 = load %struct.bin_attribute*, %struct.bin_attribute** %5, align 8
  %14 = icmp ne %struct.bin_attribute* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %111

18:                                               ; preds = %10
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.bin_attribute*, %struct.bin_attribute** %5, align 8
  %25 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.bin_attribute*, %struct.bin_attribute** %5, align 8
  %27 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %28, align 8
  %29 = load i32, i32* @S_IRUSR, align 4
  %30 = load i32, i32* @S_IWUSR, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.bin_attribute*, %struct.bin_attribute** %5, align 8
  %33 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @read_vpd_attr, align 4
  %36 = load %struct.bin_attribute*, %struct.bin_attribute** %5, align 8
  %37 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @write_vpd_attr, align 4
  %39 = load %struct.bin_attribute*, %struct.bin_attribute** %5, align 8
  %40 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.bin_attribute*, %struct.bin_attribute** %5, align 8
  %45 = call i32 @sysfs_create_bin_file(i32* %43, %struct.bin_attribute* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %18
  %49 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.bin_attribute*, %struct.bin_attribute** %52, align 8
  %54 = call i32 @kfree(%struct.bin_attribute* %53)
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %111

56:                                               ; preds = %18
  %57 = load %struct.bin_attribute*, %struct.bin_attribute** %5, align 8
  %58 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store %struct.bin_attribute* %57, %struct.bin_attribute** %61, align 8
  br label %62

62:                                               ; preds = %56, %1
  %63 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %64 = call i32 @pcie_aspm_create_sysfs_dev_files(%struct.pci_dev* %63)
  %65 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %66 = call i32 @pci_probe_reset_function(%struct.pci_dev* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %62
  %69 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 2
  %71 = call i32 @device_create_file(%struct.TYPE_6__* %70, i32* @reset_attr)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %79

75:                                               ; preds = %68
  %76 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %62
  store i32 0, i32* %2, align 4
  br label %111

79:                                               ; preds = %74
  %80 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %81 = call i32 @pcie_aspm_remove_sysfs_dev_files(%struct.pci_dev* %80)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = icmp ne %struct.TYPE_5__* %84, null
  br i1 %85, label %86, label %109

86:                                               ; preds = %79
  %87 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load %struct.bin_attribute*, %struct.bin_attribute** %90, align 8
  %92 = icmp ne %struct.bin_attribute* %91, null
  br i1 %92, label %93, label %109

93:                                               ; preds = %86
  %94 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load %struct.bin_attribute*, %struct.bin_attribute** %100, align 8
  %102 = call i32 @sysfs_remove_bin_file(i32* %96, %struct.bin_attribute* %101)
  %103 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %104 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load %struct.bin_attribute*, %struct.bin_attribute** %106, align 8
  %108 = call i32 @kfree(%struct.bin_attribute* %107)
  br label %109

109:                                              ; preds = %93, %86, %79
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %78, %48, %15
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.bin_attribute* @kzalloc(i32, i32) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, %struct.bin_attribute*) #1

declare dso_local i32 @kfree(%struct.bin_attribute*) #1

declare dso_local i32 @pcie_aspm_create_sysfs_dev_files(%struct.pci_dev*) #1

declare dso_local i32 @pci_probe_reset_function(%struct.pci_dev*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @pcie_aspm_remove_sysfs_dev_files(%struct.pci_dev*) #1

declare dso_local i32 @sysfs_remove_bin_file(i32*, %struct.bin_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
