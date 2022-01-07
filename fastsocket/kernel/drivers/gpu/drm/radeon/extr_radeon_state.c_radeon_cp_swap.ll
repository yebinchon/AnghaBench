; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_swap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_file = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.drm_radeon_master_private* }
%struct.drm_radeon_master_private = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RADEON_NR_SAREA_CLIPRECTS = common dso_local global i64 0, align 8
@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @radeon_cp_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_cp_swap(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.drm_radeon_master_private*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_file* %2, %struct.drm_file** %6, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %7, align 8
  %13 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %14 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %16, align 8
  store %struct.drm_radeon_master_private* %17, %struct.drm_radeon_master_private** %8, align 8
  %18 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %8, align 8
  %19 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %9, align 8
  %21 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %23 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %24 = call i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device* %22, %struct.drm_file* %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = call i32 @RING_SPACE_TEST_WITH_RETURN(%struct.TYPE_6__* %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RADEON_NR_SAREA_CLIPRECTS, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i64, i64* @RADEON_NR_SAREA_CLIPRECTS, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @CHIP_R600, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %46 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %47 = call i32 @r600_cp_dispatch_swap(%struct.drm_device* %45, %struct.drm_file* %46)
  br label %54

48:                                               ; preds = %36
  %49 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %50 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %51 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = call i32 @radeon_cp_dispatch_swap(%struct.drm_device* %49, %struct.TYPE_7__* %52)
  br label %54

54:                                               ; preds = %48, %44
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = call i32 (...) @COMMIT_RING()
  ret i32 0
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @RING_SPACE_TEST_WITH_RETURN(%struct.TYPE_6__*) #1

declare dso_local i32 @r600_cp_dispatch_swap(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @radeon_cp_dispatch_swap(%struct.drm_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @COMMIT_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
