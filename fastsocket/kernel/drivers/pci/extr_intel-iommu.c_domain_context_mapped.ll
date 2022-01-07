; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_domain_context_mapped.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_domain_context_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.pci_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.intel_iommu = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @domain_context_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domain_context_mapped(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.intel_iommu*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call i32 @pci_domain_nr(%struct.TYPE_4__* %10)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.intel_iommu* @device_to_iommu(i32 %11, i32 %16, i32 %19)
  store %struct.intel_iommu* %20, %struct.intel_iommu** %7, align 8
  %21 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %22 = icmp ne %struct.intel_iommu* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %102

26:                                               ; preds = %1
  %27 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @device_context_mapped(%struct.intel_iommu* %27, i32 %32, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %102

41:                                               ; preds = %26
  %42 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %43 = call %struct.pci_dev* @pci_find_upstream_pcie_bridge(%struct.pci_dev* %42)
  store %struct.pci_dev* %43, %struct.pci_dev** %5, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %45 = icmp ne %struct.pci_dev* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %102

48:                                               ; preds = %41
  %49 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.pci_dev*, %struct.pci_dev** %52, align 8
  store %struct.pci_dev* %53, %struct.pci_dev** %6, align 8
  br label %54

54:                                               ; preds = %73, %48
  %55 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %56 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %57 = icmp ne %struct.pci_dev* %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %60 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @device_context_mapped(%struct.intel_iommu* %59, i32 %64, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %58
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %102

73:                                               ; preds = %58
  %74 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load %struct.pci_dev*, %struct.pci_dev** %77, align 8
  store %struct.pci_dev* %78, %struct.pci_dev** %6, align 8
  br label %54

79:                                               ; preds = %54
  %80 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %81 = call i64 @pci_is_pcie(%struct.pci_dev* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %85 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 2
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @device_context_mapped(%struct.intel_iommu* %84, i32 %89, i32 0)
  store i32 %90, i32* %2, align 4
  br label %102

91:                                               ; preds = %79
  %92 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %93 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @device_context_mapped(%struct.intel_iommu* %92, i32 %97, i32 %100)
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %91, %83, %71, %46, %39, %23
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.intel_iommu* @device_to_iommu(i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.TYPE_4__*) #1

declare dso_local i32 @device_context_mapped(%struct.intel_iommu*, i32, i32) #1

declare dso_local %struct.pci_dev* @pci_find_upstream_pcie_bridge(%struct.pci_dev*) #1

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
