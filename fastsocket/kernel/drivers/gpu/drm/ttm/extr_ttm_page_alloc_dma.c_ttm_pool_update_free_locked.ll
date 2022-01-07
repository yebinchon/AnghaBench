; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc_dma.c_ttm_pool_update_free_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc_dma.c_ttm_pool_update_free_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pool = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_pool*, i32)* @ttm_pool_update_free_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_pool_update_free_locked(%struct.dma_pool* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_pool*, align 8
  %4 = alloca i32, align 4
  store %struct.dma_pool* %0, %struct.dma_pool** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.dma_pool*, %struct.dma_pool** %3, align 8
  %7 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = sub i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.dma_pool*, %struct.dma_pool** %3, align 8
  %12 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %10
  store i32 %14, i32* %12, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
