; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_domain_context_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_domain_context_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }
%struct.pci_dev = type { i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.pci_dev* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_domain*, %struct.pci_dev*, i32)* @domain_context_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domain_context_mapping(%struct.dmar_domain* %0, %struct.pci_dev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmar_domain*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call i32 @pci_domain_nr(%struct.TYPE_2__* %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @domain_context_mapping_one(%struct.dmar_domain* %11, i32 %15, i32 %20, i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %105

30:                                               ; preds = %3
  %31 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %32 = call %struct.pci_dev* @pci_find_upstream_pcie_bridge(%struct.pci_dev* %31)
  store %struct.pci_dev* %32, %struct.pci_dev** %9, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %34 = icmp ne %struct.pci_dev* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %105

36:                                               ; preds = %30
  %37 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.pci_dev*, %struct.pci_dev** %40, align 8
  store %struct.pci_dev* %41, %struct.pci_dev** %10, align 8
  br label %42

42:                                               ; preds = %66, %36
  %43 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %45 = icmp ne %struct.pci_dev* %43, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %42
  %47 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = call i32 @pci_domain_nr(%struct.TYPE_2__* %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @domain_context_mapping_one(%struct.dmar_domain* %47, i32 %51, i32 %56, i32 %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %46
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %105

66:                                               ; preds = %46
  %67 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load %struct.pci_dev*, %struct.pci_dev** %70, align 8
  store %struct.pci_dev* %71, %struct.pci_dev** %10, align 8
  br label %42

72:                                               ; preds = %42
  %73 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %74 = call i64 @pci_is_pcie(%struct.pci_dev* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %78 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = call i32 @pci_domain_nr(%struct.TYPE_2__* %80)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @domain_context_mapping_one(%struct.dmar_domain* %77, i32 %81, i32 %86, i32 0, i32 %87)
  store i32 %88, i32* %4, align 4
  br label %105

89:                                               ; preds = %72
  %90 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %91 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = call i32 @pci_domain_nr(%struct.TYPE_2__* %93)
  %95 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %101 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @domain_context_mapping_one(%struct.dmar_domain* %90, i32 %94, i32 %99, i32 %102, i32 %103)
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %89, %76, %64, %35, %28
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @domain_context_mapping_one(%struct.dmar_domain*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.TYPE_2__*) #1

declare dso_local %struct.pci_dev* @pci_find_upstream_pcie_bridge(%struct.pci_dev*) #1

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
