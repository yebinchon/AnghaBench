; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_update_device_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_update_device_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protection_domain = type { i32 }

@amd_iommu_last_bdf = common dso_local global i32 0, align 4
@amd_iommu_pd_table = common dso_local global %struct.protection_domain** null, align 8
@amd_iommu_devtable_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.protection_domain*)* @update_device_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_device_table(%struct.protection_domain* %0) #0 {
  %2 = alloca %struct.protection_domain*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.protection_domain* %0, %struct.protection_domain** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @amd_iommu_last_bdf, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = load %struct.protection_domain**, %struct.protection_domain*** @amd_iommu_pd_table, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.protection_domain*, %struct.protection_domain** %10, i64 %12
  %14 = load %struct.protection_domain*, %struct.protection_domain** %13, align 8
  %15 = load %struct.protection_domain*, %struct.protection_domain** %2, align 8
  %16 = icmp ne %struct.protection_domain* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %26

18:                                               ; preds = %9
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @write_lock_irqsave(i32* @amd_iommu_devtable_lock, i64 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.protection_domain*, %struct.protection_domain** %2, align 8
  %23 = call i32 @set_dte_entry(i32 %21, %struct.protection_domain* %22)
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @write_unlock_irqrestore(i32* @amd_iommu_devtable_lock, i64 %24)
  br label %26

26:                                               ; preds = %18, %17
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %5

29:                                               ; preds = %5
  ret void
}

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_dte_entry(i32, %struct.protection_domain*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
