; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iovmm.c_iommu_vmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iovmm.c_iommu_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu = type { i32 }
%struct.sg_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IOVMF_HW_MASK = common dso_local global i32 0, align 4
@IOVMF_DISCONT = common dso_local global i32 0, align 4
@IOVMF_MMIO = common dso_local global i32 0, align 4
@IOVMF_DA_FIXED = common dso_local global i32 0, align 4
@IOVMF_DA_ANON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_vmap(%struct.iommu* %0, i32 %1, %struct.sg_table* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iommu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sg_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.iommu* %0, %struct.iommu** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sg_table* %2, %struct.sg_table** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.iommu*, %struct.iommu** %6, align 8
  %13 = icmp ne %struct.iommu* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load %struct.iommu*, %struct.iommu** %6, align 8
  %16 = getelementptr inbounds %struct.iommu, %struct.iommu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %21 = icmp ne %struct.sg_table* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %14, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %79

25:                                               ; preds = %19
  %26 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %27 = call i64 @sgtable_len(%struct.sg_table* %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %79

33:                                               ; preds = %25
  %34 = load i64, i64* %10, align 8
  %35 = call i64 @PAGE_ALIGN(i64 %34)
  store i64 %35, i64* %10, align 8
  %36 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %37 = call i8* @vmap_sg(%struct.sg_table* %36)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i64 @IS_ERR(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @PTR_ERR(i8* %42)
  store i32 %43, i32* %5, align 4
  br label %79

44:                                               ; preds = %33
  %45 = load i32, i32* @IOVMF_HW_MASK, align 4
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @IOVMF_DISCONT, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @IOVMF_MMIO, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* @IOVMF_DA_FIXED, align 4
  br label %60

58:                                               ; preds = %44
  %59 = load i32, i32* @IOVMF_DA_ANON, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load %struct.iommu*, %struct.iommu** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @__iommu_vmap(%struct.iommu* %64, i32 %65, %struct.sg_table* %66, i8* %67, i64 %68, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @IS_ERR_VALUE(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %60
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @vunmap_sg(i8* %75)
  br label %77

77:                                               ; preds = %74, %60
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %41, %30, %22
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i64 @sgtable_len(%struct.sg_table*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i8* @vmap_sg(%struct.sg_table*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @__iommu_vmap(%struct.iommu*, i32, %struct.sg_table*, i8*, i64, i32) #1

declare dso_local i64 @IS_ERR_VALUE(i32) #1

declare dso_local i32 @vunmap_sg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
