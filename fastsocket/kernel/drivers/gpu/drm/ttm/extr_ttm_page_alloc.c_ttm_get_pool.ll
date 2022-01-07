; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_get_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_get_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ttm_page_pool* }
%struct.ttm_page_pool = type { i32 }

@tt_cached = common dso_local global i32 0, align 4
@tt_wc = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_DMA32 = common dso_local global i32 0, align 4
@_manager = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ttm_page_pool* (i32, i32)* @ttm_get_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ttm_page_pool* @ttm_get_pool(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.ttm_page_pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @tt_cached, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.ttm_page_pool* null, %struct.ttm_page_pool** %3, align 8
  br label %32

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @tt_wc, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %17

16:                                               ; preds = %11
  store i32 1, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TTM_PAGE_FLAG_DMA32, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, 2
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_manager, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %28, i64 %30
  store %struct.ttm_page_pool* %31, %struct.ttm_page_pool** %3, align 8
  br label %32

32:                                               ; preds = %25, %10
  %33 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %3, align 8
  ret %struct.ttm_page_pool* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
