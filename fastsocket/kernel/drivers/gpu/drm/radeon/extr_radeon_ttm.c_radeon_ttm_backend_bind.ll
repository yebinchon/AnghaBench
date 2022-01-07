; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_backend_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_backend_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32, i32 }
%struct.ttm_mem_reg = type { i32 }
%struct.radeon_ttm_tt = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"nothing to bind %lu pages for mreg %p back %p!\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to bind %lu pages at 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_tt*, %struct.ttm_mem_reg*)* @radeon_ttm_backend_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_ttm_backend_bind(%struct.ttm_tt* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_tt*, align 8
  %5 = alloca %struct.ttm_mem_reg*, align 8
  %6 = alloca %struct.radeon_ttm_tt*, align 8
  %7 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %4, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %5, align 8
  %8 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %9 = bitcast %struct.ttm_tt* %8 to i8*
  %10 = bitcast i8* %9 to %struct.radeon_ttm_tt*
  store %struct.radeon_ttm_tt* %10, %struct.radeon_ttm_tt** %6, align 8
  %11 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %12 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %6, align 8
  %18 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %20 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %2
  %24 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %25 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %28 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %29 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %26, %struct.ttm_mem_reg* %27, %struct.ttm_tt* %28)
  br label %30

30:                                               ; preds = %23, %2
  %31 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %6, align 8
  %32 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %6, align 8
  %35 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %38 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %41 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %6, align 8
  %44 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @radeon_gart_bind(i32 %33, i64 %36, i32 %39, i32 %42, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %30
  %51 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %52 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %6, align 8
  %55 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %57)
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %50
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @WARN(i32, i8*, i32, %struct.ttm_mem_reg*, %struct.ttm_tt*) #1

declare dso_local i32 @radeon_gart_bind(i32, i64, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
