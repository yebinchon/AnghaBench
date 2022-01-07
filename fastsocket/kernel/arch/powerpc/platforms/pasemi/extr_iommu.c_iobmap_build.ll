; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pasemi/extr_iommu.c_iobmap_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pasemi/extr_iommu.c_iobmap_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i64, i64 }
%struct.dma_attrs = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"iobmap: build at: %lx, %lx, addr: %lx\0A\00", align 1
@IOBMAP_PAGE_SHIFT = common dso_local global i64 0, align 8
@IOBMAP_L2E_V = common dso_local global i32 0, align 4
@iob = common dso_local global i64 0, align 8
@IOB_AT_INVAL_TLB_REG = common dso_local global i64 0, align 8
@IOBMAP_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_table*, i64, i64, i64, i32, %struct.dma_attrs*)* @iobmap_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iobmap_build(%struct.iommu_table* %0, i64 %1, i64 %2, i64 %3, i32 %4, %struct.dma_attrs* %5) #0 {
  %7 = alloca %struct.iommu_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dma_attrs*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.iommu_table* %0, %struct.iommu_table** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.dma_attrs* %5, %struct.dma_attrs** %12, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %17, i64 %18)
  %20 = load %struct.iommu_table*, %struct.iommu_table** %7, align 8
  %21 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @IOBMAP_PAGE_SHIFT, align 8
  %26 = shl i64 %24, %25
  store i64 %26, i64* %15, align 8
  %27 = load %struct.iommu_table*, %struct.iommu_table** %7, align 8
  %28 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %13, align 8
  br label %33

33:                                               ; preds = %37, %6
  %34 = load i64, i64* %9, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %9, align 8
  %36 = icmp ne i64 %34, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %33
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @virt_to_abs(i64 %38)
  %40 = load i64, i64* @IOBMAP_PAGE_SHIFT, align 8
  %41 = ashr i64 %39, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* @IOBMAP_L2E_V, align 4
  %44 = load i32, i32* %14, align 4
  %45 = or i32 %43, %44
  %46 = load i32*, i32** %13, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %13, align 8
  store i32 %45, i32* %46, align 4
  %48 = load i64, i64* @iob, align 8
  %49 = load i64, i64* @IOB_AT_INVAL_TLB_REG, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64, i64* %15, align 8
  %52 = lshr i64 %51, 14
  %53 = call i32 @out_le32(i64 %50, i64 %52)
  %54 = load i64, i64* @IOBMAP_PAGE_SIZE, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* @IOBMAP_PAGE_SIZE, align 8
  %58 = load i64, i64* %15, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %15, align 8
  br label %33

60:                                               ; preds = %33
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i64, i64, i64) #1

declare dso_local i64 @virt_to_abs(i64) #1

declare dso_local i32 @out_le32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
