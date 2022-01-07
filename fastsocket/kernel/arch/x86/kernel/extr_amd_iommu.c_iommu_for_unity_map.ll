; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_iommu_for_unity_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_iommu_for_unity_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }
%struct.unity_map_entry = type { i64, i64 }

@amd_iommu_alias_table = common dso_local global i64* null, align 8
@amd_iommu_rlookup_table = common dso_local global %struct.amd_iommu** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_iommu*, %struct.unity_map_entry*)* @iommu_for_unity_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_for_unity_map(%struct.amd_iommu* %0, %struct.unity_map_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amd_iommu*, align 8
  %5 = alloca %struct.unity_map_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.amd_iommu* %0, %struct.amd_iommu** %4, align 8
  store %struct.unity_map_entry* %1, %struct.unity_map_entry** %5, align 8
  %8 = load %struct.unity_map_entry*, %struct.unity_map_entry** %5, align 8
  %9 = getelementptr inbounds %struct.unity_map_entry, %struct.unity_map_entry* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  br label %11

11:                                               ; preds = %30, %2
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.unity_map_entry*, %struct.unity_map_entry** %5, align 8
  %14 = getelementptr inbounds %struct.unity_map_entry, %struct.unity_map_entry* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ule i64 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load i64*, i64** @amd_iommu_alias_table, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.amd_iommu**, %struct.amd_iommu*** @amd_iommu_rlookup_table, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.amd_iommu*, %struct.amd_iommu** %22, i64 %23
  %25 = load %struct.amd_iommu*, %struct.amd_iommu** %24, align 8
  %26 = load %struct.amd_iommu*, %struct.amd_iommu** %4, align 8
  %27 = icmp eq %struct.amd_iommu* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %34

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %7, align 8
  br label %11

33:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
