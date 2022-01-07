; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_iommu.c_dma_fixed_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_iommu.c_dma_fixed_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (%struct.device*, i64, i32*, i32)* }
%struct.device = type { i32 }

@iommu_fixed_is_weak = common dso_local global i64 0, align 8
@dma_direct_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i64, i32*, i32)* @dma_fixed_alloc_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dma_fixed_alloc_coherent(%struct.device* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i64, i64* @iommu_fixed_is_weak, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %4
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @cell_get_iommu_table(%struct.device* %14)
  %16 = load i64, i64* %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i32 @device_to_mask(%struct.device* %18)
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call i32 @dev_to_node(%struct.device* %21)
  %23 = call i8* @iommu_alloc_coherent(%struct.device* %13, i32 %15, i64 %16, i32* %17, i32 %19, i32 %20, i32 %22)
  store i8* %23, i8** %5, align 8
  br label %31

24:                                               ; preds = %4
  %25 = load i8* (%struct.device*, i64, i32*, i32)*, i8* (%struct.device*, i64, i32*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma_direct_ops, i32 0, i32 0), align 8
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i8* %25(%struct.device* %26, i64 %27, i32* %28, i32 %29)
  store i8* %30, i8** %5, align 8
  br label %31

31:                                               ; preds = %24, %12
  %32 = load i8*, i8** %5, align 8
  ret i8* %32
}

declare dso_local i8* @iommu_alloc_coherent(%struct.device*, i32, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @cell_get_iommu_table(%struct.device*) #1

declare dso_local i32 @device_to_mask(%struct.device*) #1

declare dso_local i32 @dev_to_node(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
