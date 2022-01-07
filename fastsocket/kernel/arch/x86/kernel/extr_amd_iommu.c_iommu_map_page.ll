; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_iommu_map_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_iommu_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protection_domain = type { i32 }

@IOMMU_PROT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IOMMU_PTE_P = common dso_local global i64 0, align 8
@IOMMU_PROT_IR = common dso_local global i32 0, align 4
@IOMMU_PTE_IR = common dso_local global i64 0, align 8
@IOMMU_PROT_IW = common dso_local global i32 0, align 4
@IOMMU_PTE_IW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.protection_domain*, i64, i64, i32, i32)* @iommu_map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_map_page(%struct.protection_domain* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.protection_domain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  store %struct.protection_domain* %0, %struct.protection_domain** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* %8, align 8
  %15 = call i64 @PAGE_ALIGN(i64 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i64 @PAGE_ALIGN(i64 %16)
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @PM_ALIGNED(i32 %18, i64 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32, i32* %11, align 4
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @PM_ALIGNED(i32 %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @IOMMU_PROT_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %5
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %78

39:                                               ; preds = %5
  %40 = load %struct.protection_domain*, %struct.protection_domain** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i64* @alloc_pte(%struct.protection_domain* %40, i64 %41, i32 %42, i32* null, i32 %43)
  store i64* %44, i64** %13, align 8
  %45 = load i64*, i64** %13, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @IOMMU_PTE_PRESENT(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %78

52:                                               ; preds = %39
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @IOMMU_PTE_P, align 8
  %55 = or i64 %53, %54
  store i64 %55, i64* %12, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @IOMMU_PROT_IR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i64, i64* @IOMMU_PTE_IR, align 8
  %62 = load i64, i64* %12, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %60, %52
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @IOMMU_PROT_IW, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i64, i64* @IOMMU_PTE_IW, align 8
  %71 = load i64, i64* %12, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %12, align 8
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i64, i64* %12, align 8
  %75 = load i64*, i64** %13, align 8
  store i64 %74, i64* %75, align 8
  %76 = load %struct.protection_domain*, %struct.protection_domain** %7, align 8
  %77 = call i32 @update_domain(%struct.protection_domain* %76)
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %73, %49, %36
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PM_ALIGNED(i32, i64) #1

declare dso_local i64* @alloc_pte(%struct.protection_domain*, i64, i32, i32*, i32) #1

declare dso_local i64 @IOMMU_PTE_PRESENT(i64) #1

declare dso_local i32 @update_domain(%struct.protection_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
