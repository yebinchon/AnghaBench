; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iovmm.c_iommu_vmalloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iovmm.c_iommu_vmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu = type { i32 }
%struct.sg_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IOVMF_HW_MASK = common dso_local global i32 0, align 4
@IOVMF_DISCONT = common dso_local global i32 0, align 4
@IOVMF_ALLOC = common dso_local global i32 0, align 4
@IOVMF_DA_FIXED = common dso_local global i32 0, align 4
@IOVMF_DA_ANON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_vmalloc(%struct.iommu* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iommu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sg_table*, align 8
  store %struct.iommu* %0, %struct.iommu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
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
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %14, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %90

25:                                               ; preds = %19
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @PAGE_ALIGN(i64 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i8* @vmalloc(i64 %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %90

35:                                               ; preds = %25
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call %struct.sg_table* @sgtable_alloc(i64 %36, i32 %37)
  store %struct.sg_table* %38, %struct.sg_table** %11, align 8
  %39 = load %struct.sg_table*, %struct.sg_table** %11, align 8
  %40 = call i64 @IS_ERR(%struct.sg_table* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.sg_table*, %struct.sg_table** %11, align 8
  %44 = call i32 @PTR_ERR(%struct.sg_table* %43)
  store i32 %44, i32* %7, align 4
  br label %86

45:                                               ; preds = %35
  %46 = load %struct.sg_table*, %struct.sg_table** %11, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @sgtable_fill_vmalloc(%struct.sg_table* %46, i8* %47)
  %49 = load i32, i32* @IOVMF_HW_MASK, align 4
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @IOVMF_DISCONT, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @IOVMF_ALLOC, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %45
  %61 = load i32, i32* @IOVMF_DA_FIXED, align 4
  br label %64

62:                                               ; preds = %45
  %63 = load i32, i32* @IOVMF_DA_ANON, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load %struct.iommu*, %struct.iommu** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.sg_table*, %struct.sg_table** %11, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @__iommu_vmap(%struct.iommu* %68, i32 %69, %struct.sg_table* %70, i8* %71, i64 %72, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @IS_ERR_VALUE(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %64
  br label %81

79:                                               ; preds = %64
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %5, align 4
  br label %90

81:                                               ; preds = %78
  %82 = load %struct.sg_table*, %struct.sg_table** %11, align 8
  %83 = call i32 @sgtable_drain_vmalloc(%struct.sg_table* %82)
  %84 = load %struct.sg_table*, %struct.sg_table** %11, align 8
  %85 = call i32 @sgtable_free(%struct.sg_table* %84)
  br label %86

86:                                               ; preds = %81, %42
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @vfree(i8* %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %79, %32, %22
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i8* @vmalloc(i64) #1

declare dso_local %struct.sg_table* @sgtable_alloc(i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.sg_table*) #1

declare dso_local i32 @PTR_ERR(%struct.sg_table*) #1

declare dso_local i32 @sgtable_fill_vmalloc(%struct.sg_table*, i8*) #1

declare dso_local i32 @__iommu_vmap(%struct.iommu*, i32, %struct.sg_table*, i8*, i64, i32) #1

declare dso_local i64 @IS_ERR_VALUE(i32) #1

declare dso_local i32 @sgtable_drain_vmalloc(%struct.sg_table*) #1

declare dso_local i32 @sgtable_free(%struct.sg_table*) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
