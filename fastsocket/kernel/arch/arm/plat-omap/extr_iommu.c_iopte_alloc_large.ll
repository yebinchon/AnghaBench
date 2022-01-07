; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iommu.c_iopte_alloc_large.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iommu.c_iopte_alloc_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu = type { i32 }

@IOLARGE_MASK = common dso_local global i32 0, align 4
@IOPTE_LARGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu*, i32, i32, i32)* @iopte_alloc_large to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iopte_alloc_large(%struct.iommu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iommu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.iommu* %0, %struct.iommu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.iommu*, %struct.iommu** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32* @iopgd_offset(%struct.iommu* %13, i32 %14)
  store i32* %15, i32** %10, align 8
  %16 = load %struct.iommu*, %struct.iommu** %6, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32* @iopte_alloc(%struct.iommu* %16, i32* %17, i32 %18)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i64 @IS_ERR(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @PTR_ERR(i32* %24)
  store i32 %25, i32* %5, align 4
  br label %50

26:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %42, %26
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 16
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @IOLARGE_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @IOPTE_LARGE, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %27

45:                                               ; preds = %27
  %46 = load i32*, i32** %11, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 15
  %49 = call i32 @flush_iopte_range(i32* %46, i32* %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %45, %23
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32* @iopgd_offset(%struct.iommu*, i32) #1

declare dso_local i32* @iopte_alloc(%struct.iommu*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @flush_iopte_range(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
