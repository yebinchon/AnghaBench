; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_dma_ops_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_dma_ops_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_ops_domain = type { i32, i32, i64, %struct.TYPE_4__**, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64, i8*, %struct.dma_ops_domain*, i32, i32, i32 }
%struct.amd_iommu = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_MODE_2_LEVEL = common dso_local global i32 0, align 4
@PD_DMA_OPS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_ops_domain* (%struct.amd_iommu*)* @dma_ops_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_ops_domain* @dma_ops_domain_alloc(%struct.amd_iommu* %0) #0 {
  %2 = alloca %struct.dma_ops_domain*, align 8
  %3 = alloca %struct.amd_iommu*, align 8
  %4 = alloca %struct.dma_ops_domain*, align 8
  store %struct.amd_iommu* %0, %struct.amd_iommu** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.dma_ops_domain* @kzalloc(i32 64, i32 %5)
  store %struct.dma_ops_domain* %6, %struct.dma_ops_domain** %4, align 8
  %7 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %8 = icmp ne %struct.dma_ops_domain* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.dma_ops_domain* null, %struct.dma_ops_domain** %2, align 8
  br label %76

10:                                               ; preds = %1
  %11 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %12 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = call i64 (...) @domain_id_alloc()
  %16 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %17 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %20 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %10
  br label %73

25:                                               ; preds = %10
  %26 = load i32, i32* @PAGE_MODE_2_LEVEL, align 4
  %27 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %28 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i64 @get_zeroed_page(i32 %30)
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %34 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* @PD_DMA_OPS_MASK, align 4
  %37 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %38 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 8
  %40 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %41 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %42 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store %struct.dma_ops_domain* %40, %struct.dma_ops_domain** %43, align 8
  %44 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %45 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %25
  br label %73

50:                                               ; preds = %25
  %51 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %52 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %54 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %53, i32 0, i32 1
  store i32 65535, i32* %54, align 4
  %55 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %56 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i64 @alloc_new_range(%struct.amd_iommu* %55, %struct.dma_ops_domain* %56, i32 1, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %73

61:                                               ; preds = %50
  %62 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %63 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %64, i64 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 1, i32* %69, align 4
  %70 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %71 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  store %struct.dma_ops_domain* %72, %struct.dma_ops_domain** %2, align 8
  br label %76

73:                                               ; preds = %60, %49, %24
  %74 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %75 = call i32 @dma_ops_domain_free(%struct.dma_ops_domain* %74)
  store %struct.dma_ops_domain* null, %struct.dma_ops_domain** %2, align 8
  br label %76

76:                                               ; preds = %73, %61, %9
  %77 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  ret %struct.dma_ops_domain* %77
}

declare dso_local %struct.dma_ops_domain* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @domain_id_alloc(...) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i64 @alloc_new_range(%struct.amd_iommu*, %struct.dma_ops_domain*, i32, i32) #1

declare dso_local i32 @dma_ops_domain_free(%struct.dma_ops_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
