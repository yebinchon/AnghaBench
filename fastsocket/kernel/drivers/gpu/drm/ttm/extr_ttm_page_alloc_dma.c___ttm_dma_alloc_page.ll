; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc_dma.c___ttm_dma_alloc_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc_dma.c___ttm_dma_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_page = type { i64, i32, i32 }
%struct.dma_pool = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_page* (%struct.dma_pool*)* @__ttm_dma_alloc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_page* @__ttm_dma_alloc_page(%struct.dma_pool* %0) #0 {
  %2 = alloca %struct.dma_page*, align 8
  %3 = alloca %struct.dma_pool*, align 8
  %4 = alloca %struct.dma_page*, align 8
  store %struct.dma_pool* %0, %struct.dma_pool** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.dma_page* @kmalloc(i32 16, i32 %5)
  store %struct.dma_page* %6, %struct.dma_page** %4, align 8
  %7 = load %struct.dma_page*, %struct.dma_page** %4, align 8
  %8 = icmp ne %struct.dma_page* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.dma_page* null, %struct.dma_page** %2, align 8
  br label %41

10:                                               ; preds = %1
  %11 = load %struct.dma_pool*, %struct.dma_pool** %3, align 8
  %12 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.dma_pool*, %struct.dma_pool** %3, align 8
  %15 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dma_page*, %struct.dma_page** %4, align 8
  %18 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %17, i32 0, i32 2
  %19 = load %struct.dma_pool*, %struct.dma_pool** %3, align 8
  %20 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @dma_alloc_coherent(i32 %13, i32 %16, i32* %18, i32 %21)
  %23 = load %struct.dma_page*, %struct.dma_page** %4, align 8
  %24 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.dma_page*, %struct.dma_page** %4, align 8
  %26 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %10
  %30 = load %struct.dma_page*, %struct.dma_page** %4, align 8
  %31 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @virt_to_page(i64 %32)
  %34 = load %struct.dma_page*, %struct.dma_page** %4, align 8
  %35 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %39

36:                                               ; preds = %10
  %37 = load %struct.dma_page*, %struct.dma_page** %4, align 8
  %38 = call i32 @kfree(%struct.dma_page* %37)
  store %struct.dma_page* null, %struct.dma_page** %4, align 8
  br label %39

39:                                               ; preds = %36, %29
  %40 = load %struct.dma_page*, %struct.dma_page** %4, align 8
  store %struct.dma_page* %40, %struct.dma_page** %2, align 8
  br label %41

41:                                               ; preds = %39, %9
  %42 = load %struct.dma_page*, %struct.dma_page** %2, align 8
  ret %struct.dma_page* %42
}

declare dso_local %struct.dma_page* @kmalloc(i32, i32) #1

declare dso_local i64 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @virt_to_page(i64) #1

declare dso_local i32 @kfree(%struct.dma_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
