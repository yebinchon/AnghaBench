; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_flush_all_devices_for_iommu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_flush_all_devices_for_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }

@amd_iommu_last_bdf = common dso_local global i32 0, align 4
@amd_iommu_rlookup_table = common dso_local global %struct.amd_iommu** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_iommu*)* @flush_all_devices_for_iommu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_all_devices_for_iommu(%struct.amd_iommu* %0) #0 {
  %2 = alloca %struct.amd_iommu*, align 8
  %3 = alloca i32, align 4
  store %struct.amd_iommu* %0, %struct.amd_iommu** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %23, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @amd_iommu_last_bdf, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %8, label %26

8:                                                ; preds = %4
  %9 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %10 = load %struct.amd_iommu**, %struct.amd_iommu*** @amd_iommu_rlookup_table, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.amd_iommu*, %struct.amd_iommu** %10, i64 %12
  %14 = load %struct.amd_iommu*, %struct.amd_iommu** %13, align 8
  %15 = icmp ne %struct.amd_iommu* %9, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %23

17:                                               ; preds = %8
  %18 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @iommu_queue_inv_dev_entry(%struct.amd_iommu* %18, i32 %19)
  %21 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %22 = call i32 @iommu_completion_wait(%struct.amd_iommu* %21)
  br label %23

23:                                               ; preds = %17, %16
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %4

26:                                               ; preds = %4
  ret void
}

declare dso_local i32 @iommu_queue_inv_dev_entry(%struct.amd_iommu*, i32) #1

declare dso_local i32 @iommu_completion_wait(%struct.amd_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
