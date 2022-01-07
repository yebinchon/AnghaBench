; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_flush_devices_by_domain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_flush_devices_by_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protection_domain = type { i32 }
%struct.amd_iommu = type { i32 }

@amd_iommu_last_bdf = common dso_local global i64 0, align 8
@amd_iommu_pd_table = common dso_local global %struct.protection_domain** null, align 8
@amd_iommu_rlookup_table = common dso_local global %struct.amd_iommu** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.protection_domain*)* @flush_devices_by_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_devices_by_domain(%struct.protection_domain* %0) #0 {
  %2 = alloca %struct.protection_domain*, align 8
  %3 = alloca %struct.amd_iommu*, align 8
  %4 = alloca i64, align 8
  store %struct.protection_domain* %0, %struct.protection_domain** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %43, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @amd_iommu_last_bdf, align 8
  %8 = icmp ule i64 %6, %7
  br i1 %8, label %9, label %46

9:                                                ; preds = %5
  %10 = load %struct.protection_domain*, %struct.protection_domain** %2, align 8
  %11 = icmp eq %struct.protection_domain* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load %struct.protection_domain**, %struct.protection_domain*** @amd_iommu_pd_table, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.protection_domain*, %struct.protection_domain** %13, i64 %14
  %16 = load %struct.protection_domain*, %struct.protection_domain** %15, align 8
  %17 = icmp eq %struct.protection_domain* %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %12, %9
  %19 = load %struct.protection_domain*, %struct.protection_domain** %2, align 8
  %20 = icmp ne %struct.protection_domain* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.protection_domain**, %struct.protection_domain*** @amd_iommu_pd_table, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.protection_domain*, %struct.protection_domain** %22, i64 %23
  %25 = load %struct.protection_domain*, %struct.protection_domain** %24, align 8
  %26 = load %struct.protection_domain*, %struct.protection_domain** %2, align 8
  %27 = icmp ne %struct.protection_domain* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21, %12
  br label %43

29:                                               ; preds = %21, %18
  %30 = load %struct.amd_iommu**, %struct.amd_iommu*** @amd_iommu_rlookup_table, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.amd_iommu*, %struct.amd_iommu** %30, i64 %31
  %33 = load %struct.amd_iommu*, %struct.amd_iommu** %32, align 8
  store %struct.amd_iommu* %33, %struct.amd_iommu** %3, align 8
  %34 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %35 = icmp ne %struct.amd_iommu* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %43

37:                                               ; preds = %29
  %38 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @iommu_queue_inv_dev_entry(%struct.amd_iommu* %38, i64 %39)
  %41 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %42 = call i32 @iommu_completion_wait(%struct.amd_iommu* %41)
  br label %43

43:                                               ; preds = %37, %36, %28
  %44 = load i64, i64* %4, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %4, align 8
  br label %5

46:                                               ; preds = %5
  ret void
}

declare dso_local i32 @iommu_queue_inv_dev_entry(%struct.amd_iommu*, i64) #1

declare dso_local i32 @iommu_completion_wait(%struct.amd_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
