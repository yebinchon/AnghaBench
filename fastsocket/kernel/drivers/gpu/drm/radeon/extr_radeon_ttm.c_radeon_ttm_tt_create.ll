; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_tt_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_tt_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32* }
%struct.ttm_bo_device = type { i32 }
%struct.page = type { i32 }
%struct.radeon_device = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_ttm_tt = type { %struct.TYPE_6__, %struct.radeon_device* }
%struct.TYPE_6__ = type { %struct.ttm_tt }

@GFP_KERNEL = common dso_local global i32 0, align 4
@radeon_backend_func = common dso_local global i32 0, align 4
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ttm_tt* (%struct.ttm_bo_device*, i64, i32, %struct.page*)* @radeon_ttm_tt_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ttm_tt* @radeon_ttm_tt_create(%struct.ttm_bo_device* %0, i64 %1, i32 %2, %struct.page* %3) #0 {
  %5 = alloca %struct.ttm_tt*, align 8
  %6 = alloca %struct.ttm_bo_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.radeon_device*, align 8
  %11 = alloca %struct.radeon_ttm_tt*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.page* %3, %struct.page** %9, align 8
  %12 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %13 = call %struct.radeon_device* @radeon_get_rdev(%struct.ttm_bo_device* %12)
  store %struct.radeon_device* %13, %struct.radeon_device** %10, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.radeon_ttm_tt* @kzalloc(i32 16, i32 %14)
  store %struct.radeon_ttm_tt* %15, %struct.radeon_ttm_tt** %11, align 8
  %16 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %11, align 8
  %17 = icmp eq %struct.radeon_ttm_tt* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store %struct.ttm_tt* null, %struct.ttm_tt** %5, align 8
  br label %42

19:                                               ; preds = %4
  %20 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %11, align 8
  %21 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %22, i32 0, i32 0
  store i32* @radeon_backend_func, i32** %23, align 8
  %24 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %25 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %11, align 8
  %26 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %25, i32 0, i32 1
  store %struct.radeon_device* %24, %struct.radeon_device** %26, align 8
  %27 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %11, align 8
  %28 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %27, i32 0, i32 0
  %29 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.page*, %struct.page** %9, align 8
  %33 = call i64 @ttm_dma_tt_init(%struct.TYPE_6__* %28, %struct.ttm_bo_device* %29, i64 %30, i32 %31, %struct.page* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %19
  %36 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %11, align 8
  %37 = call i32 @kfree(%struct.radeon_ttm_tt* %36)
  store %struct.ttm_tt* null, %struct.ttm_tt** %5, align 8
  br label %42

38:                                               ; preds = %19
  %39 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %11, align 8
  %40 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store %struct.ttm_tt* %41, %struct.ttm_tt** %5, align 8
  br label %42

42:                                               ; preds = %38, %35, %18
  %43 = load %struct.ttm_tt*, %struct.ttm_tt** %5, align 8
  ret %struct.ttm_tt* %43
}

declare dso_local %struct.radeon_device* @radeon_get_rdev(%struct.ttm_bo_device*) #1

declare dso_local %struct.radeon_ttm_tt* @kzalloc(i32, i32) #1

declare dso_local i64 @ttm_dma_tt_init(%struct.TYPE_6__*, %struct.ttm_bo_device*, i64, i32, %struct.page*) #1

declare dso_local i32 @kfree(%struct.radeon_ttm_tt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
