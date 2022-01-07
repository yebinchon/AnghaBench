; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_free_pagetable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_free_pagetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protection_domain = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.protection_domain*)* @free_pagetable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pagetable(%struct.protection_domain* %0) #0 {
  %2 = alloca %struct.protection_domain*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.protection_domain* %0, %struct.protection_domain** %2, align 8
  %8 = load %struct.protection_domain*, %struct.protection_domain** %2, align 8
  %9 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %72

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %63, %14
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 512
  br i1 %17, label %18, label %66

18:                                               ; preds = %15
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IOMMU_PTE_PRESENT(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %63

27:                                               ; preds = %18
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @IOMMU_PTE_PAGE(i32 %32)
  store i32* %33, i32** %6, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %56, %27
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 512
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @IOMMU_PTE_PRESENT(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  br label %56

46:                                               ; preds = %37
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32* @IOMMU_PTE_PAGE(i32 %51)
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = ptrtoint i32* %53 to i64
  %55 = call i32 @free_page(i64 %54)
  br label %56

56:                                               ; preds = %46, %45
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %34

59:                                               ; preds = %34
  %60 = load i32*, i32** %6, align 8
  %61 = ptrtoint i32* %60 to i64
  %62 = call i32 @free_page(i64 %61)
  br label %63

63:                                               ; preds = %59, %26
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %15

66:                                               ; preds = %15
  %67 = load i32*, i32** %5, align 8
  %68 = ptrtoint i32* %67 to i64
  %69 = call i32 @free_page(i64 %68)
  %70 = load %struct.protection_domain*, %struct.protection_domain** %2, align 8
  %71 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %66, %13
  ret void
}

declare dso_local i32 @IOMMU_PTE_PRESENT(i32) #1

declare dso_local i32* @IOMMU_PTE_PAGE(i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
