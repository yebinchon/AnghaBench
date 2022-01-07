; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@TTM_PL_VRAM = common dso_local global i32 0, align 4
@TTM_PL_TT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"radeon: ttm finalized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_ttm_fini(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %58

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @radeon_bo_reserve(i64 %18, i32 0)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @radeon_bo_unpin(i64 %25)
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @radeon_bo_unreserve(i64 %29)
  br label %31

31:                                               ; preds = %22, %15
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 1
  %34 = call i32 @radeon_bo_unref(i64* %33)
  br label %35

35:                                               ; preds = %31, %10
  %36 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* @TTM_PL_VRAM, align 4
  %40 = call i32 @ttm_bo_clean_mm(i32* %38, i32 %39)
  %41 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* @TTM_PL_TT, align 4
  %45 = call i32 @ttm_bo_clean_mm(i32* %43, i32 %44)
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = call i32 @ttm_bo_device_release(i32* %48)
  %50 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %51 = call i32 @radeon_gart_fini(%struct.radeon_device* %50)
  %52 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %53 = call i32 @radeon_ttm_global_fini(%struct.radeon_device* %52)
  %54 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = call i32 @DRM_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %35, %9
  ret void
}

declare dso_local i32 @radeon_bo_reserve(i64, i32) #1

declare dso_local i32 @radeon_bo_unpin(i64) #1

declare dso_local i32 @radeon_bo_unreserve(i64) #1

declare dso_local i32 @radeon_bo_unref(i64*) #1

declare dso_local i32 @ttm_bo_clean_mm(i32*, i32) #1

declare dso_local i32 @ttm_bo_device_release(i32*) #1

declare dso_local i32 @radeon_gart_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ttm_global_fini(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
