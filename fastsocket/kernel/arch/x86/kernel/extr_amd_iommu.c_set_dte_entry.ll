; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_set_dte_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_set_dte_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.protection_domain = type { i32, i32, i32 }

@DEV_ENTRY_MODE_MASK = common dso_local global i32 0, align 4
@DEV_ENTRY_MODE_SHIFT = common dso_local global i32 0, align 4
@IOMMU_PTE_IR = common dso_local global i32 0, align 4
@IOMMU_PTE_IW = common dso_local global i32 0, align 4
@IOMMU_PTE_P = common dso_local global i32 0, align 4
@IOMMU_PTE_TV = common dso_local global i32 0, align 4
@amd_iommu_dev_table = common dso_local global %struct.TYPE_2__* null, align 8
@amd_iommu_pd_table = common dso_local global %struct.protection_domain** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.protection_domain*)* @set_dte_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dte_entry(i64 %0, %struct.protection_domain* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.protection_domain*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.protection_domain* %1, %struct.protection_domain** %4, align 8
  %6 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %7 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @virt_to_phys(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %11 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DEV_ENTRY_MODE_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @DEV_ENTRY_MODE_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @IOMMU_PTE_IR, align 4
  %20 = load i32, i32* @IOMMU_PTE_IW, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IOMMU_PTE_P, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @IOMMU_PTE_TV, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %29 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amd_iommu_dev_table, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 %30, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @upper_32_bits(i32 %37)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amd_iommu_dev_table, align 8
  %40 = load i64, i64* %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %38, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @lower_32_bits(i32 %45)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amd_iommu_dev_table, align 8
  %48 = load i64, i64* %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %46, i32* %52, align 4
  %53 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %54 = load %struct.protection_domain**, %struct.protection_domain*** @amd_iommu_pd_table, align 8
  %55 = load i64, i64* %3, align 8
  %56 = getelementptr inbounds %struct.protection_domain*, %struct.protection_domain** %54, i64 %55
  store %struct.protection_domain* %53, %struct.protection_domain** %56, align 8
  ret void
}

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
