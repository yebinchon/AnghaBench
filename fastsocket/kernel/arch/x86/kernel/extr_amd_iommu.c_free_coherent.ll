; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_free_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_free_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.amd_iommu = type { i32 }
%struct.protection_domain = type { i32, i32 }

@cnt_free_coherent = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i8*, i32)* @free_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_coherent(%struct.device* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.amd_iommu*, align 8
  %11 = alloca %struct.protection_domain*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @cnt_free_coherent, align 4
  %14 = call i32 @INC_STATS_COUNTER(i32 %13)
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 @check_device(%struct.device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %58

19:                                               ; preds = %4
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call i32 @get_device_resources(%struct.device* %20, %struct.amd_iommu** %10, %struct.protection_domain** %11, i32* %12)
  %22 = load %struct.amd_iommu*, %struct.amd_iommu** %10, align 8
  %23 = icmp ne %struct.amd_iommu* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.protection_domain*, %struct.protection_domain** %11, align 8
  %26 = icmp ne %struct.protection_domain* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %19
  br label %52

28:                                               ; preds = %24
  %29 = load %struct.protection_domain*, %struct.protection_domain** %11, align 8
  %30 = call i32 @dma_ops_domain(%struct.protection_domain* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %52

33:                                               ; preds = %28
  %34 = load %struct.protection_domain*, %struct.protection_domain** %11, align 8
  %35 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %34, i32 0, i32 0
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.amd_iommu*, %struct.amd_iommu** %10, align 8
  %39 = load %struct.protection_domain*, %struct.protection_domain** %11, align 8
  %40 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %45 = call i32 @__unmap_single(%struct.amd_iommu* %38, i32 %41, i32 %42, i64 %43, i32 %44)
  %46 = load %struct.amd_iommu*, %struct.amd_iommu** %10, align 8
  %47 = call i32 @iommu_completion_wait(%struct.amd_iommu* %46)
  %48 = load %struct.protection_domain*, %struct.protection_domain** %11, align 8
  %49 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %48, i32 0, i32 0
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  br label %52

52:                                               ; preds = %33, %32, %27
  %53 = load i8*, i8** %7, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @get_order(i64 %55)
  %57 = call i32 @free_pages(i64 %54, i32 %56)
  br label %58

58:                                               ; preds = %52, %18
  ret void
}

declare dso_local i32 @INC_STATS_COUNTER(i32) #1

declare dso_local i32 @check_device(%struct.device*) #1

declare dso_local i32 @get_device_resources(%struct.device*, %struct.amd_iommu**, %struct.protection_domain**, i32*) #1

declare dso_local i32 @dma_ops_domain(%struct.protection_domain*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__unmap_single(%struct.amd_iommu*, i32, i32, i64, i32) #1

declare dso_local i32 @iommu_completion_wait(%struct.amd_iommu*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
