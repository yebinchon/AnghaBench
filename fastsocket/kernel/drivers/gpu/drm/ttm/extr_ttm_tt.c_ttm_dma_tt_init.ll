; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_dma_tt_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_dma_tt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_dma_tt = type { i32, i32, %struct.ttm_tt }
%struct.ttm_tt = type { i64, i32, i32*, i32, %struct.page*, i32, i32, i32, %struct.ttm_bo_device* }
%struct.ttm_bo_device = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@tt_cached = common dso_local global i32 0, align 4
@tt_unpopulated = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed allocating page table\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_dma_tt_init(%struct.ttm_dma_tt* %0, %struct.ttm_bo_device* %1, i64 %2, i32 %3, %struct.page* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_dma_tt*, align 8
  %8 = alloca %struct.ttm_bo_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.ttm_tt*, align 8
  store %struct.ttm_dma_tt* %0, %struct.ttm_dma_tt** %7, align 8
  store %struct.ttm_bo_device* %1, %struct.ttm_bo_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.page* %4, %struct.page** %11, align 8
  %13 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %7, align 8
  %14 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %13, i32 0, i32 2
  store %struct.ttm_tt* %14, %struct.ttm_tt** %12, align 8
  %15 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %16 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %17 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %16, i32 0, i32 8
  store %struct.ttm_bo_device* %15, %struct.ttm_bo_device** %17, align 8
  %18 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %19 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %22 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @PAGE_SIZE, align 8
  %25 = add i64 %23, %24
  %26 = sub i64 %25, 1
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = lshr i64 %26, %27
  %29 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %30 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* @tt_cached, align 4
  %32 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %33 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %36 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.page*, %struct.page** %11, align 8
  %38 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %39 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %38, i32 0, i32 4
  store %struct.page* %37, %struct.page** %39, align 8
  %40 = load i32, i32* @tt_unpopulated, align 4
  %41 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %42 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %44 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  %45 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %7, align 8
  %46 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %45, i32 0, i32 1
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %7, align 8
  %49 = call i32 @ttm_dma_tt_alloc_page_directory(%struct.ttm_dma_tt* %48)
  %50 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %51 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %5
  %55 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %7, align 8
  %56 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54, %5
  %60 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  %61 = call i32 @ttm_tt_destroy(%struct.ttm_tt* %60)
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %66

65:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %59
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ttm_dma_tt_alloc_page_directory(%struct.ttm_dma_tt*) #1

declare dso_local i32 @ttm_tt_destroy(%struct.ttm_tt*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
