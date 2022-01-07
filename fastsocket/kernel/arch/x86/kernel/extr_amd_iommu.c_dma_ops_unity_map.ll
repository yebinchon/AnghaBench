; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_dma_ops_unity_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_dma_ops_unity_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_ops_domain = type { i32, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.unity_map_entry = type { i32, i32, i32 }

@PM_MAP_4k = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_ops_domain*, %struct.unity_map_entry*)* @dma_ops_unity_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_ops_unity_map(%struct.dma_ops_domain* %0, %struct.unity_map_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_ops_domain*, align 8
  %5 = alloca %struct.unity_map_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dma_ops_domain* %0, %struct.dma_ops_domain** %4, align 8
  store %struct.unity_map_entry* %1, %struct.unity_map_entry** %5, align 8
  %8 = load %struct.unity_map_entry*, %struct.unity_map_entry** %5, align 8
  %9 = getelementptr inbounds %struct.unity_map_entry, %struct.unity_map_entry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %50, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.unity_map_entry*, %struct.unity_map_entry** %5, align 8
  %14 = getelementptr inbounds %struct.unity_map_entry, %struct.unity_map_entry* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %11
  %18 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %19 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %18, i32 0, i32 2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.unity_map_entry*, %struct.unity_map_entry** %5, align 8
  %23 = getelementptr inbounds %struct.unity_map_entry, %struct.unity_map_entry* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PM_MAP_4k, align 4
  %26 = call i32 @iommu_map_page(i32* %19, i32 %20, i32 %21, i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %57

31:                                               ; preds = %17
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %34 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @PAGE_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %42 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__set_bit(i32 %40, i32 %47)
  br label %49

49:                                               ; preds = %37, %31
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* @PAGE_SIZE, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4
  br label %11

56:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %29
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @iommu_map_page(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
