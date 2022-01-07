; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_alloc_pte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_alloc_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protection_domain = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.protection_domain*, i64, i32, i32**, i32)* @alloc_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @alloc_pte(%struct.protection_domain* %0, i64 %1, i32 %2, i32** %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.protection_domain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.protection_domain* %0, %struct.protection_domain** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32** %3, i32*** %10, align 8
  store i32 %4, i32* %11, align 4
  br label %15

15:                                               ; preds = %22, %5
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.protection_domain*, %struct.protection_domain** %7, align 8
  %18 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @PM_LEVEL_SIZE(i32 %19)
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.protection_domain*, %struct.protection_domain** %7, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @increase_address_space(%struct.protection_domain* %23, i32 %24)
  br label %15

26:                                               ; preds = %15
  %27 = load %struct.protection_domain*, %struct.protection_domain** %7, align 8
  %28 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %14, align 4
  %31 = load %struct.protection_domain*, %struct.protection_domain** %7, align 8
  %32 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @PM_LEVEL_INDEX(i32 %34, i64 %35)
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32* %37, i32** %12, align 8
  br label %38

38:                                               ; preds = %75, %26
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %38
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @IOMMU_PTE_PRESENT(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @get_zeroed_page(i32 %48)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  store i32* null, i32** %6, align 8
  br label %83

54:                                               ; preds = %47
  %55 = load i32, i32* %14, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @virt_to_phys(i32* %56)
  %58 = call i32 @PM_LEVEL_PDE(i32 %55, i32 %57)
  %59 = load i32*, i32** %12, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %42
  %61 = load i32, i32* %14, align 4
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32* @IOMMU_PTE_PAGE(i32 %64)
  store i32* %65, i32** %12, align 8
  %66 = load i32**, i32*** %10, align 8
  %67 = icmp ne i32** %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32*, i32** %12, align 8
  %74 = load i32**, i32*** %10, align 8
  store i32* %73, i32** %74, align 8
  br label %75

75:                                               ; preds = %72, %68, %60
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i64, i64* %8, align 8
  %79 = call i64 @PM_LEVEL_INDEX(i32 %77, i64 %78)
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32* %80, i32** %12, align 8
  br label %38

81:                                               ; preds = %38
  %82 = load i32*, i32** %12, align 8
  store i32* %82, i32** %6, align 8
  br label %83

83:                                               ; preds = %81, %53
  %84 = load i32*, i32** %6, align 8
  ret i32* %84
}

declare dso_local i64 @PM_LEVEL_SIZE(i32) #1

declare dso_local i32 @increase_address_space(%struct.protection_domain*, i32) #1

declare dso_local i64 @PM_LEVEL_INDEX(i32, i64) #1

declare dso_local i32 @IOMMU_PTE_PRESENT(i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @PM_LEVEL_PDE(i32, i32) #1

declare dso_local i32 @virt_to_phys(i32*) #1

declare dso_local i32* @IOMMU_PTE_PAGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
