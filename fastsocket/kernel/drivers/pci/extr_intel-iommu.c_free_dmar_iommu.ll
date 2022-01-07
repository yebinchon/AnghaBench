; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_free_dmar_iommu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_free_dmar_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i64, i32, i32 }
%struct.intel_iommu = type { i32, i64, %struct.dmar_domain**, %struct.dmar_domain**, i64, i32 }

@DOMAIN_FLAG_VIRTUAL_MACHINE = common dso_local global i32 0, align 4
@DMA_GCMD_TE = common dso_local global i32 0, align 4
@g_iommus = common dso_local global %struct.dmar_domain** null, align 8
@g_num_of_iommus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_dmar_iommu(%struct.intel_iommu* %0) #0 {
  %2 = alloca %struct.intel_iommu*, align 8
  %3 = alloca %struct.dmar_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %2, align 8
  %6 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %7 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %6, i32 0, i32 3
  %8 = load %struct.dmar_domain**, %struct.dmar_domain*** %7, align 8
  %9 = icmp ne %struct.dmar_domain** %8, null
  br i1 %9, label %10, label %83

10:                                               ; preds = %1
  %11 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %12 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %11, i32 0, i32 2
  %13 = load %struct.dmar_domain**, %struct.dmar_domain*** %12, align 8
  %14 = icmp ne %struct.dmar_domain** %13, null
  br i1 %14, label %15, label %83

15:                                               ; preds = %10
  %16 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %17 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %16, i32 0, i32 2
  %18 = load %struct.dmar_domain**, %struct.dmar_domain*** %17, align 8
  %19 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %20 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @cap_ndoms(i32 %21)
  %23 = call i32 @find_first_bit(%struct.dmar_domain** %18, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %67, %15
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %27 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @cap_ndoms(i32 %28)
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %82

31:                                               ; preds = %24
  %32 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %33 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %32, i32 0, i32 3
  %34 = load %struct.dmar_domain**, %struct.dmar_domain*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.dmar_domain*, %struct.dmar_domain** %34, i64 %36
  %38 = load %struct.dmar_domain*, %struct.dmar_domain** %37, align 8
  store %struct.dmar_domain* %38, %struct.dmar_domain** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %41 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %40, i32 0, i32 2
  %42 = load %struct.dmar_domain**, %struct.dmar_domain*** %41, align 8
  %43 = call i32 @clear_bit(i32 %39, %struct.dmar_domain** %42)
  %44 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %45 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %44, i32 0, i32 2
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %49 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %49, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %31
  %54 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %55 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DOMAIN_FLAG_VIRTUAL_MACHINE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %62 = call i32 @vm_domain_exit(%struct.dmar_domain* %61)
  br label %66

63:                                               ; preds = %53
  %64 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %65 = call i32 @domain_exit(%struct.dmar_domain* %64)
  br label %66

66:                                               ; preds = %63, %60
  br label %67

67:                                               ; preds = %66, %31
  %68 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %69 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %68, i32 0, i32 2
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %73 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %72, i32 0, i32 2
  %74 = load %struct.dmar_domain**, %struct.dmar_domain*** %73, align 8
  %75 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %76 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @cap_ndoms(i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32 @find_next_bit(%struct.dmar_domain** %74, i32 %78, i32 %80)
  store i32 %81, i32* %4, align 4
  br label %24

82:                                               ; preds = %24
  br label %83

83:                                               ; preds = %82, %10, %1
  %84 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %85 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @DMA_GCMD_TE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %92 = call i32 @iommu_disable_translation(%struct.intel_iommu* %91)
  br label %93

93:                                               ; preds = %90, %83
  %94 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %95 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %93
  %99 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %100 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @set_irq_data(i64 %101, i32* null)
  %103 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %104 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %107 = call i32 @free_irq(i64 %105, %struct.intel_iommu* %106)
  %108 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %109 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @destroy_irq(i64 %110)
  br label %112

112:                                              ; preds = %98, %93
  %113 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %114 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %113, i32 0, i32 3
  %115 = load %struct.dmar_domain**, %struct.dmar_domain*** %114, align 8
  %116 = call i32 @kfree(%struct.dmar_domain** %115)
  %117 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %118 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %117, i32 0, i32 2
  %119 = load %struct.dmar_domain**, %struct.dmar_domain*** %118, align 8
  %120 = call i32 @kfree(%struct.dmar_domain** %119)
  %121 = load %struct.dmar_domain**, %struct.dmar_domain*** @g_iommus, align 8
  %122 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %123 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.dmar_domain*, %struct.dmar_domain** %121, i64 %124
  store %struct.dmar_domain* null, %struct.dmar_domain** %125, align 8
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %139, %112
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @g_num_of_iommus, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %126
  %131 = load %struct.dmar_domain**, %struct.dmar_domain*** @g_iommus, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.dmar_domain*, %struct.dmar_domain** %131, i64 %133
  %135 = load %struct.dmar_domain*, %struct.dmar_domain** %134, align 8
  %136 = icmp ne %struct.dmar_domain* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %142

138:                                              ; preds = %130
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %4, align 4
  br label %126

142:                                              ; preds = %137, %126
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @g_num_of_iommus, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load %struct.dmar_domain**, %struct.dmar_domain*** @g_iommus, align 8
  %148 = call i32 @kfree(%struct.dmar_domain** %147)
  br label %149

149:                                              ; preds = %146, %142
  %150 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %151 = call i32 @free_context_table(%struct.intel_iommu* %150)
  ret void
}

declare dso_local i32 @find_first_bit(%struct.dmar_domain**, i32) #1

declare dso_local i32 @cap_ndoms(i32) #1

declare dso_local i32 @clear_bit(i32, %struct.dmar_domain**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vm_domain_exit(%struct.dmar_domain*) #1

declare dso_local i32 @domain_exit(%struct.dmar_domain*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @find_next_bit(%struct.dmar_domain**, i32, i32) #1

declare dso_local i32 @iommu_disable_translation(%struct.intel_iommu*) #1

declare dso_local i32 @set_irq_data(i64, i32*) #1

declare dso_local i32 @free_irq(i64, %struct.intel_iommu*) #1

declare dso_local i32 @destroy_irq(i64) #1

declare dso_local i32 @kfree(%struct.dmar_domain**) #1

declare dso_local i32 @free_context_table(%struct.intel_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
