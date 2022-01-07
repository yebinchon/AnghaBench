; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_psycho_common.c_psycho_iommu_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_psycho_common.c_psycho_iommu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i32, i64, %struct.iommu* }
%struct.iommu = type { i64, i64, i32, i64, i64, i64, i64 }

@PSYCHO_IOMMU_CONTROL = common dso_local global i64 0, align 8
@PSYCHO_IOMMU_TSBBASE = common dso_local global i64 0, align 8
@PSYCHO_IOMMU_FLUSH = common dso_local global i64 0, align 8
@PSYCHO_IOMMU_TAG = common dso_local global i64 0, align 8
@PSYCHO_IOMMU_CTRL_DENAB = common dso_local global i32 0, align 4
@PSYCHO_IOMMU_CTRL_TSBSZ = common dso_local global i32 0, align 4
@PSYCHO_IOMMU_CTRL_TBWSZ = common dso_local global i32 0, align 4
@PSYCHO_IOMMU_CTRL_ENAB = common dso_local global i32 0, align 4
@PSYCHO_IOMMU_TSBSZ_64K = common dso_local global i32 0, align 4
@PSYCHO_IOMMU_TSBSZ_128K = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psycho_iommu_init(%struct.pci_pbm_info* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_pbm_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.iommu*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %7, align 8
  %16 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %15, i32 0, i32 2
  %17 = load %struct.iommu*, %struct.iommu** %16, align 8
  store %struct.iommu* %17, %struct.iommu** %12, align 8
  %18 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %7, align 8
  %19 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PSYCHO_IOMMU_CONTROL, align 8
  %22 = add nsw i64 %20, %21
  %23 = load %struct.iommu*, %struct.iommu** %12, align 8
  %24 = getelementptr inbounds %struct.iommu, %struct.iommu* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %7, align 8
  %26 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PSYCHO_IOMMU_TSBBASE, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.iommu*, %struct.iommu** %12, align 8
  %31 = getelementptr inbounds %struct.iommu, %struct.iommu* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %7, align 8
  %33 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PSYCHO_IOMMU_FLUSH, align 8
  %36 = add nsw i64 %34, %35
  %37 = load %struct.iommu*, %struct.iommu** %12, align 8
  %38 = getelementptr inbounds %struct.iommu, %struct.iommu* %37, i32 0, i32 6
  store i64 %36, i64* %38, align 8
  %39 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %7, align 8
  %40 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PSYCHO_IOMMU_TAG, align 8
  %43 = add nsw i64 %41, %42
  %44 = load %struct.iommu*, %struct.iommu** %12, align 8
  %45 = getelementptr inbounds %struct.iommu, %struct.iommu* %44, i32 0, i32 5
  store i64 %43, i64* %45, align 8
  %46 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %7, align 8
  %47 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %48, %49
  %51 = load %struct.iommu*, %struct.iommu** %12, align 8
  %52 = getelementptr inbounds %struct.iommu, %struct.iommu* %51, i32 0, i32 4
  store i64 %50, i64* %52, align 8
  %53 = load %struct.iommu*, %struct.iommu** %12, align 8
  %54 = getelementptr inbounds %struct.iommu, %struct.iommu* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.iommu*, %struct.iommu** %12, align 8
  %56 = getelementptr inbounds %struct.iommu, %struct.iommu* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @upa_readq(i64 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* @PSYCHO_IOMMU_CTRL_DENAB, align 4
  %60 = load i32, i32* %13, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.iommu*, %struct.iommu** %12, align 8
  %64 = getelementptr inbounds %struct.iommu, %struct.iommu* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @upa_writeq(i32 %62, i64 %65)
  %67 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %7, align 8
  %68 = call i32 @psycho_iommu_flush(%struct.pci_pbm_info* %67)
  %69 = load %struct.iommu*, %struct.iommu** %12, align 8
  %70 = load i32, i32* %8, align 4
  %71 = mul nsw i32 %70, 1024
  %72 = mul nsw i32 %71, 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %7, align 8
  %76 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @iommu_table_init(%struct.iommu* %69, i32 %72, i32 %73, i32 %74, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %5
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %6, align 4
  br label %123

83:                                               ; preds = %5
  %84 = load %struct.iommu*, %struct.iommu** %12, align 8
  %85 = getelementptr inbounds %struct.iommu, %struct.iommu* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @__pa(i32 %86)
  %88 = load %struct.iommu*, %struct.iommu** %12, align 8
  %89 = getelementptr inbounds %struct.iommu, %struct.iommu* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @upa_writeq(i32 %87, i64 %90)
  %92 = load %struct.iommu*, %struct.iommu** %12, align 8
  %93 = getelementptr inbounds %struct.iommu, %struct.iommu* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @upa_readq(i64 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* @PSYCHO_IOMMU_CTRL_TSBSZ, align 4
  %97 = load i32, i32* @PSYCHO_IOMMU_CTRL_TBWSZ, align 4
  %98 = or i32 %96, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %13, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* @PSYCHO_IOMMU_CTRL_ENAB, align 4
  %103 = load i32, i32* %13, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %8, align 4
  switch i32 %105, label %114 [
    i32 64, label %106
    i32 128, label %110
  ]

106:                                              ; preds = %83
  %107 = load i32, i32* @PSYCHO_IOMMU_TSBSZ_64K, align 4
  %108 = load i32, i32* %13, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %13, align 4
  br label %117

110:                                              ; preds = %83
  %111 = load i32, i32* @PSYCHO_IOMMU_TSBSZ_128K, align 4
  %112 = load i32, i32* %13, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %13, align 4
  br label %117

114:                                              ; preds = %83
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %6, align 4
  br label %123

117:                                              ; preds = %110, %106
  %118 = load i32, i32* %13, align 4
  %119 = load %struct.iommu*, %struct.iommu** %12, align 8
  %120 = getelementptr inbounds %struct.iommu, %struct.iommu* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @upa_writeq(i32 %118, i64 %121)
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %117, %114, %81
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @upa_readq(i64) #1

declare dso_local i32 @upa_writeq(i32, i64) #1

declare dso_local i32 @psycho_iommu_flush(%struct.pci_pbm_info*) #1

declare dso_local i32 @iommu_table_init(%struct.iommu*, i32, i32, i32, i32) #1

declare dso_local i32 @__pa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
