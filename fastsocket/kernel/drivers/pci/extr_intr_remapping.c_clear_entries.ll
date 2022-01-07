; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_clear_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_clear_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_2_iommu = type { i32, i32, i32, %struct.intel_iommu* }
%struct.intel_iommu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.irte* }
%struct.irte = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_2_iommu*)* @clear_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_entries(%struct.irq_2_iommu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_2_iommu*, align 8
  %4 = alloca %struct.irte*, align 8
  %5 = alloca %struct.irte*, align 8
  %6 = alloca %struct.irte*, align 8
  %7 = alloca %struct.intel_iommu*, align 8
  %8 = alloca i32, align 4
  store %struct.irq_2_iommu* %0, %struct.irq_2_iommu** %3, align 8
  %9 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %3, align 8
  %10 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

14:                                               ; preds = %1
  %15 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %3, align 8
  %16 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %15, i32 0, i32 3
  %17 = load %struct.intel_iommu*, %struct.intel_iommu** %16, align 8
  store %struct.intel_iommu* %17, %struct.intel_iommu** %7, align 8
  %18 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %3, align 8
  %19 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %3, align 8
  %22 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %20, %23
  store i32 %24, i32* %8, align 4
  %25 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %26 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.irte*, %struct.irte** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.irte, %struct.irte* %29, i64 %31
  store %struct.irte* %32, %struct.irte** %4, align 8
  %33 = load %struct.irte*, %struct.irte** %4, align 8
  %34 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %3, align 8
  %35 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 1, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.irte, %struct.irte* %33, i64 %38
  store %struct.irte* %39, %struct.irte** %6, align 8
  %40 = load %struct.irte*, %struct.irte** %4, align 8
  store %struct.irte* %40, %struct.irte** %5, align 8
  br label %41

41:                                               ; preds = %54, %14
  %42 = load %struct.irte*, %struct.irte** %5, align 8
  %43 = load %struct.irte*, %struct.irte** %6, align 8
  %44 = icmp ult %struct.irte* %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load %struct.irte*, %struct.irte** %5, align 8
  %47 = getelementptr inbounds %struct.irte, %struct.irte* %46, i32 0, i32 1
  %48 = bitcast i32* %47 to i64*
  %49 = call i32 @set_64bit(i64* %48, i32 0)
  %50 = load %struct.irte*, %struct.irte** %5, align 8
  %51 = getelementptr inbounds %struct.irte, %struct.irte* %50, i32 0, i32 0
  %52 = bitcast i32* %51 to i64*
  %53 = call i32 @set_64bit(i64* %52, i32 0)
  br label %54

54:                                               ; preds = %45
  %55 = load %struct.irte*, %struct.irte** %5, align 8
  %56 = getelementptr inbounds %struct.irte, %struct.irte* %55, i32 1
  store %struct.irte* %56, %struct.irte** %5, align 8
  br label %41

57:                                               ; preds = %41
  %58 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %3, align 8
  %61 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @qi_flush_iec(%struct.intel_iommu* %58, i32 %59, i32 %62)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %57, %13
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @set_64bit(i64*, i32) #1

declare dso_local i32 @qi_flush_iec(%struct.intel_iommu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
