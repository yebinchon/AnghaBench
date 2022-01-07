; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iovmm.c_iommu_kmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iovmm.c_iommu_kmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IOVMF_HW_MASK = common dso_local global i32 0, align 4
@IOVMF_LINEAR = common dso_local global i32 0, align 4
@IOVMF_MMIO = common dso_local global i32 0, align 4
@IOVMF_DA_FIXED = common dso_local global i32 0, align 4
@IOVMF_DA_ANON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_kmap(%struct.iommu* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iommu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.iommu* %0, %struct.iommu** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.iommu*, %struct.iommu** %7, align 8
  %14 = icmp ne %struct.iommu* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %5
  %16 = load %struct.iommu*, %struct.iommu** %7, align 8
  %17 = getelementptr inbounds %struct.iommu, %struct.iommu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %15, %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %72

26:                                               ; preds = %20
  %27 = load i64, i64* %10, align 8
  %28 = call i64 @PAGE_ALIGN(i64 %27)
  store i64 %28, i64* %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i64, i64* %10, align 8
  %31 = call i8* @ioremap(i32 %29, i64 %30)
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %72

37:                                               ; preds = %26
  %38 = load i32, i32* @IOVMF_HW_MASK, align 4
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @IOVMF_LINEAR, align 4
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* @IOVMF_MMIO, align 4
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @IOVMF_DA_FIXED, align 4
  br label %53

51:                                               ; preds = %37
  %52 = load i32, i32* @IOVMF_DA_ANON, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load %struct.iommu*, %struct.iommu** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @__iommu_kmap(%struct.iommu* %57, i32 %58, i32 %59, i8* %60, i64 %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @IS_ERR_VALUE(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %53
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @iounmap(i8* %68)
  br label %70

70:                                               ; preds = %67, %53
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %34, %23
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i8* @ioremap(i32, i64) #1

declare dso_local i32 @__iommu_kmap(%struct.iommu*, i32, i32, i8*, i64, i32) #1

declare dso_local i64 @IS_ERR_VALUE(i32) #1

declare dso_local i32 @iounmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
