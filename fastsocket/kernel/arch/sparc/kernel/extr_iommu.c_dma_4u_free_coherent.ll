; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_iommu.c_dma_4u_free_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_iommu.c_dma_4u_free_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iommu* }
%struct.iommu = type { i32, i32, i32* }

@IO_PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i8*, i32)* @dma_4u_free_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_4u_free_coherent(%struct.device* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iommu*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @IO_PAGE_ALIGN(i64 %14)
  %16 = load i32, i32* @IO_PAGE_SHIFT, align 4
  %17 = ashr i32 %15, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %13, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.iommu*, %struct.iommu** %21, align 8
  store %struct.iommu* %22, %struct.iommu** %9, align 8
  %23 = load %struct.iommu*, %struct.iommu** %9, align 8
  %24 = getelementptr inbounds %struct.iommu, %struct.iommu* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.iommu*, %struct.iommu** %9, align 8
  %28 = getelementptr inbounds %struct.iommu, %struct.iommu* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %26, %29
  %31 = load i32, i32* @IO_PAGE_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %25, i64 %33
  store i32* %34, i32** %10, align 8
  %35 = load %struct.iommu*, %struct.iommu** %9, align 8
  %36 = getelementptr inbounds %struct.iommu, %struct.iommu* %35, i32 0, i32 1
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.iommu*, %struct.iommu** %9, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @iommu_range_free(%struct.iommu* %39, i32 %40, i64 %41)
  %43 = load %struct.iommu*, %struct.iommu** %9, align 8
  %44 = getelementptr inbounds %struct.iommu, %struct.iommu* %43, i32 0, i32 1
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @get_order(i64 %47)
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp ult i64 %49, 10
  br i1 %50, label %51, label %56

51:                                               ; preds = %4
  %52 = load i8*, i8** %7, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @free_pages(i64 %53, i64 %54)
  br label %56

56:                                               ; preds = %51, %4
  ret void
}

declare dso_local i32 @IO_PAGE_ALIGN(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iommu_range_free(%struct.iommu*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @get_order(i64) #1

declare dso_local i32 @free_pages(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
