; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iovmm.c___iommu_kmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iovmm.c___iommu_kmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu = type { i32 }
%struct.sg_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu*, i32, i32, i8*, i64, i32)* @__iommu_kmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iommu_kmap(%struct.iommu* %0, i32 %1, i32 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iommu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sg_table*, align 8
  store %struct.iommu* %0, %struct.iommu** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i64, i64* %12, align 8
  %16 = load i32, i32* %13, align 4
  %17 = call %struct.sg_table* @sgtable_alloc(i64 %15, i32 %16)
  store %struct.sg_table* %17, %struct.sg_table** %14, align 8
  %18 = load %struct.sg_table*, %struct.sg_table** %14, align 8
  %19 = call i64 @IS_ERR(%struct.sg_table* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load %struct.sg_table*, %struct.sg_table** %14, align 8
  %23 = call i32 @PTR_ERR(%struct.sg_table* %22)
  store i32 %23, i32* %7, align 4
  br label %46

24:                                               ; preds = %6
  %25 = load %struct.sg_table*, %struct.sg_table** %14, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @sgtable_fill_kmalloc(%struct.sg_table* %25, i32 %26, i64 %27)
  %29 = load %struct.iommu*, %struct.iommu** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.sg_table*, %struct.sg_table** %14, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @map_iommu_region(%struct.iommu* %29, i32 %30, %struct.sg_table* %31, i8* %32, i64 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @IS_ERR_VALUE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %24
  %40 = load %struct.sg_table*, %struct.sg_table** %14, align 8
  %41 = call i32 @sgtable_drain_kmalloc(%struct.sg_table* %40)
  %42 = load %struct.sg_table*, %struct.sg_table** %14, align 8
  %43 = call i32 @sgtable_free(%struct.sg_table* %42)
  br label %44

44:                                               ; preds = %39, %24
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %44, %21
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local %struct.sg_table* @sgtable_alloc(i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.sg_table*) #1

declare dso_local i32 @PTR_ERR(%struct.sg_table*) #1

declare dso_local i32 @sgtable_fill_kmalloc(%struct.sg_table*, i32, i64) #1

declare dso_local i32 @map_iommu_region(%struct.iommu*, i32, %struct.sg_table*, i8*, i64, i32) #1

declare dso_local i64 @IS_ERR_VALUE(i32) #1

declare dso_local i32 @sgtable_drain_kmalloc(%struct.sg_table*) #1

declare dso_local i32 @sgtable_free(%struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
