; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iovmm.c_iommu_kmalloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iovmm.c_iommu_kmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IOVMF_HW_MASK = common dso_local global i32 0, align 4
@IOVMF_LINEAR = common dso_local global i32 0, align 4
@IOVMF_ALLOC = common dso_local global i32 0, align 4
@IOVMF_DA_FIXED = common dso_local global i32 0, align 4
@IOVMF_DA_ANON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_kmalloc(%struct.iommu* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iommu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
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
  br label %75

25:                                               ; preds = %19
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @PAGE_ALIGN(i64 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = load i32, i32* @GFP_DMA, align 4
  %31 = or i32 %29, %30
  %32 = call i8* @kmalloc(i64 %28, i32 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %75

38:                                               ; preds = %25
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @virt_to_phys(i8* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @IOVMF_HW_MASK, align 4
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @IOVMF_LINEAR, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @IOVMF_ALLOC, align 4
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = load i32, i32* @IOVMF_DA_FIXED, align 4
  br label %56

54:                                               ; preds = %38
  %55 = load i32, i32* @IOVMF_DA_ANON, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load %struct.iommu*, %struct.iommu** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @__iommu_kmap(%struct.iommu* %60, i32 %61, i32 %62, i8* %63, i64 %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @IS_ERR_VALUE(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %56
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @kfree(i8* %71)
  br label %73

73:                                               ; preds = %70, %56
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %35, %22
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @__iommu_kmap(%struct.iommu*, i32, i32, i8*, i64, i32) #1

declare dso_local i64 @IS_ERR_VALUE(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
