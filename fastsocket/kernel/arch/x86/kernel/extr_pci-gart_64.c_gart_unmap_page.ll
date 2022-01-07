; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pci-gart_64.c_gart_unmap_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pci-gart_64.c_gart_unmap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_attrs = type { i32 }

@iommu_bus_base = common dso_local global i64 0, align 8
@EMERGENCY_PAGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@iommu_size = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@gart_unmapped_entry = common dso_local global i32 0, align 4
@iommu_gatt_base = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i64, i32, %struct.dma_attrs*)* @gart_unmap_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gart_unmap_page(%struct.device* %0, i64 %1, i64 %2, i32 %3, %struct.dma_attrs* %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_attrs*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.dma_attrs* %4, %struct.dma_attrs** %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @iommu_bus_base, align 8
  %16 = load i32, i32* @EMERGENCY_PAGES, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %15, %19
  %21 = icmp slt i64 %14, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %5
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @iommu_bus_base, align 8
  %25 = load i64, i64* @iommu_size, align 8
  %26 = add nsw i64 %24, %25
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %5
  br label %58

29:                                               ; preds = %22
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @iommu_bus_base, align 8
  %32 = sub nsw i64 %30, %31
  %33 = load i64, i64* @PAGE_SHIFT, align 8
  %34 = ashr i64 %32, %33
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i32 @iommu_num_pages(i64 %35, i64 %36, i32 %37)
  store i32 %38, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %51, %29
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i32, i32* @gart_unmapped_entry, align 4
  %45 = load i32*, i32** @iommu_gatt_base, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %46, %48
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  store i32 %44, i32* %50, align 4
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %39

54:                                               ; preds = %39
  %55 = load i64, i64* %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @free_iommu(i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %28
  ret void
}

declare dso_local i32 @iommu_num_pages(i64, i64, i32) #1

declare dso_local i32 @free_iommu(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
