; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
define dso_local i32 @ttm_tt_init(%struct.ttm_tt* %0, %struct.ttm_bo_device* %1, i64 %2, i32 %3, %struct.page* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_tt*, align 8
  %8 = alloca %struct.ttm_bo_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  store %struct.ttm_tt* %0, %struct.ttm_tt** %7, align 8
  store %struct.ttm_bo_device* %1, %struct.ttm_bo_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.page* %4, %struct.page** %11, align 8
  %12 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %13 = load %struct.ttm_tt*, %struct.ttm_tt** %7, align 8
  %14 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %13, i32 0, i32 8
  store %struct.ttm_bo_device* %12, %struct.ttm_bo_device** %14, align 8
  %15 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %16 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ttm_tt*, %struct.ttm_tt** %7, align 8
  %19 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = add i64 %20, %21
  %23 = sub i64 %22, 1
  %24 = load i64, i64* @PAGE_SHIFT, align 8
  %25 = lshr i64 %23, %24
  %26 = load %struct.ttm_tt*, %struct.ttm_tt** %7, align 8
  %27 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* @tt_cached, align 4
  %29 = load %struct.ttm_tt*, %struct.ttm_tt** %7, align 8
  %30 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.ttm_tt*, %struct.ttm_tt** %7, align 8
  %33 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load %struct.page*, %struct.page** %11, align 8
  %35 = load %struct.ttm_tt*, %struct.ttm_tt** %7, align 8
  %36 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %35, i32 0, i32 4
  store %struct.page* %34, %struct.page** %36, align 8
  %37 = load i32, i32* @tt_unpopulated, align 4
  %38 = load %struct.ttm_tt*, %struct.ttm_tt** %7, align 8
  %39 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ttm_tt*, %struct.ttm_tt** %7, align 8
  %41 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %struct.ttm_tt*, %struct.ttm_tt** %7, align 8
  %43 = call i32 @ttm_tt_alloc_page_directory(%struct.ttm_tt* %42)
  %44 = load %struct.ttm_tt*, %struct.ttm_tt** %7, align 8
  %45 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %5
  %49 = load %struct.ttm_tt*, %struct.ttm_tt** %7, align 8
  %50 = call i32 @ttm_tt_destroy(%struct.ttm_tt* %49)
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %55

54:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %48
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @ttm_tt_alloc_page_directory(%struct.ttm_tt*) #1

declare dso_local i32 @ttm_tt_destroy(%struct.ttm_tt*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
