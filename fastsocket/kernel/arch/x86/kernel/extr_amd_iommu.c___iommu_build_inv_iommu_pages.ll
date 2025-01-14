; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c___iommu_build_inv_iommu_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c___iommu_build_inv_iommu_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_cmd = type { i32* }

@PAGE_MASK = common dso_local global i32 0, align 4
@CMD_INV_IOMMU_PAGES = common dso_local global i32 0, align 4
@CMD_INV_IOMMU_PAGES_SIZE_MASK = common dso_local global i32 0, align 4
@CMD_INV_IOMMU_PAGES_PDE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_cmd*, i32, i32, i32, i32)* @__iommu_build_inv_iommu_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__iommu_build_inv_iommu_pages(%struct.iommu_cmd* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iommu_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iommu_cmd* %0, %struct.iommu_cmd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %12 = call i32 @memset(%struct.iommu_cmd* %11, i32 0, i32 8)
  %13 = load i32, i32* @PAGE_MASK, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %17 = load i32, i32* @CMD_INV_IOMMU_PAGES, align 4
  %18 = call i32 @CMD_SET_TYPE(%struct.iommu_cmd* %16, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %21 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %19
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @lower_32_bits(i32 %26)
  %28 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %29 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @upper_32_bits(i32 %32)
  %34 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %5
  %41 = load i32, i32* @CMD_INV_IOMMU_PAGES_SIZE_MASK, align 4
  %42 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %43 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %41
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %40, %5
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32, i32* @CMD_INV_IOMMU_PAGES_PDE_MASK, align 4
  %53 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %54 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %52
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %51, %48
  ret void
}

declare dso_local i32 @memset(%struct.iommu_cmd*, i32, i32) #1

declare dso_local i32 @CMD_SET_TYPE(%struct.iommu_cmd*, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
