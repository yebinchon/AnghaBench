; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc_dma.c_ttm_dma_page_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc_dma.c_ttm_dma_page_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pool = type { i32, i32 }
%struct.dma_page = type { i32, i32 }

@IS_CACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s: Failed to set %d pages to wb!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_pool*, %struct.dma_page*)* @ttm_dma_page_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_dma_page_put(%struct.dma_pool* %0, %struct.dma_page* %1) #0 {
  %3 = alloca %struct.dma_pool*, align 8
  %4 = alloca %struct.dma_page*, align 8
  store %struct.dma_pool* %0, %struct.dma_pool** %3, align 8
  store %struct.dma_page* %1, %struct.dma_page** %4, align 8
  %5 = load %struct.dma_pool*, %struct.dma_pool** %3, align 8
  %6 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @IS_CACHED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load %struct.dma_page*, %struct.dma_page** %4, align 8
  %13 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %12, i32 0, i32 1
  %14 = call i64 @set_pages_array_wb(i32* %13, i32 1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.dma_pool*, %struct.dma_pool** %3, align 8
  %18 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %19, i32 1)
  br label %21

21:                                               ; preds = %16, %11, %2
  %22 = load %struct.dma_page*, %struct.dma_page** %4, align 8
  %23 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %22, i32 0, i32 0
  %24 = call i32 @list_del(i32* %23)
  %25 = load %struct.dma_pool*, %struct.dma_pool** %3, align 8
  %26 = load %struct.dma_page*, %struct.dma_page** %4, align 8
  %27 = call i32 @__ttm_dma_free_page(%struct.dma_pool* %25, %struct.dma_page* %26)
  ret void
}

declare dso_local i64 @set_pages_array_wb(i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @__ttm_dma_free_page(%struct.dma_pool*, %struct.dma_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
