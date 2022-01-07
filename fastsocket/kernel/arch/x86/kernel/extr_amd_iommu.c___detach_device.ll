; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c___detach_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c___detach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }
%struct.TYPE_2__ = type { i32* }
%struct.protection_domain = type { i64, i32, i32 }

@amd_iommu_rlookup_table = common dso_local global %struct.amd_iommu** null, align 8
@amd_iommu_pd_table = common dso_local global i32** null, align 8
@IOMMU_PTE_P = common dso_local global i32 0, align 4
@IOMMU_PTE_TV = common dso_local global i32 0, align 4
@amd_iommu_dev_table = common dso_local global %struct.TYPE_2__* null, align 8
@iommu_pass_through = common dso_local global i64 0, align 8
@pt_domain = common dso_local global %struct.protection_domain* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.protection_domain*, i64)* @__detach_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__detach_device(%struct.protection_domain* %0, i64 %1) #0 {
  %3 = alloca %struct.protection_domain*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.amd_iommu*, align 8
  store %struct.protection_domain* %0, %struct.protection_domain** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.amd_iommu**, %struct.amd_iommu*** @amd_iommu_rlookup_table, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %struct.amd_iommu*, %struct.amd_iommu** %6, i64 %7
  %9 = load %struct.amd_iommu*, %struct.amd_iommu** %8, align 8
  store %struct.amd_iommu* %9, %struct.amd_iommu** %5, align 8
  %10 = load %struct.protection_domain*, %struct.protection_domain** %3, align 8
  %11 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %10, i32 0, i32 2
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load i32**, i32*** @amd_iommu_pd_table, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i32*, i32** %13, i64 %14
  store i32* null, i32** %15, align 8
  %16 = load i32, i32* @IOMMU_PTE_P, align 4
  %17 = load i32, i32* @IOMMU_PTE_TV, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amd_iommu_dev_table, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %18, i32* %24, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amd_iommu_dev_table, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amd_iommu_dev_table, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 0, i32* %36, align 4
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @amd_iommu_apply_erratum_63(i64 %37)
  %39 = load %struct.protection_domain*, %struct.protection_domain** %3, align 8
  %40 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.protection_domain*, %struct.protection_domain** %3, align 8
  %44 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %43, i32 0, i32 2
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load i64, i64* @iommu_pass_through, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %2
  %49 = load %struct.protection_domain*, %struct.protection_domain** %3, align 8
  %50 = load %struct.protection_domain*, %struct.protection_domain** @pt_domain, align 8
  %51 = icmp ne %struct.protection_domain* %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.amd_iommu*, %struct.amd_iommu** %5, align 8
  %54 = load %struct.protection_domain*, %struct.protection_domain** @pt_domain, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @__attach_device(%struct.amd_iommu* %53, %struct.protection_domain* %54, i64 %55)
  br label %57

57:                                               ; preds = %52, %48, %2
  %58 = load %struct.amd_iommu*, %struct.amd_iommu** %5, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @iommu_queue_inv_dev_entry(%struct.amd_iommu* %58, i64 %59)
  %61 = load %struct.protection_domain*, %struct.protection_domain** %3, align 8
  %62 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.amd_iommu*, %struct.amd_iommu** %5, align 8
  %67 = load %struct.protection_domain*, %struct.protection_domain** %3, align 8
  %68 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @iommu_flush_tlb_pde(%struct.amd_iommu* %66, i32 %69)
  br label %71

71:                                               ; preds = %65, %57
  %72 = load %struct.amd_iommu*, %struct.amd_iommu** %5, align 8
  %73 = call i32 @iommu_completion_wait(%struct.amd_iommu* %72)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @amd_iommu_apply_erratum_63(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__attach_device(%struct.amd_iommu*, %struct.protection_domain*, i64) #1

declare dso_local i32 @iommu_queue_inv_dev_entry(%struct.amd_iommu*, i64) #1

declare dso_local i32 @iommu_flush_tlb_pde(%struct.amd_iommu*, i32) #1

declare dso_local i32 @iommu_completion_wait(%struct.amd_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
