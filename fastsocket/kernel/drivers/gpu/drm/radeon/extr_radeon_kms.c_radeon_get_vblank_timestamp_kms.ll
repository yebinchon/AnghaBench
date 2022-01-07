; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_get_vblank_timestamp_kms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_get_vblank_timestamp_kms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.drm_crtc }
%struct.drm_crtc = type { i32 }
%struct.timeval = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Invalid crtc %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_get_vblank_timestamp_kms(%struct.drm_device* %0, i32 %1, i32* %2, %struct.timeval* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.timeval*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_crtc*, align 8
  %13 = alloca %struct.radeon_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store %struct.timeval* %3, %struct.timeval** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 1
  %16 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  store %struct.radeon_device* %16, %struct.radeon_device** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19, %5
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %47

30:                                               ; preds = %19
  %31 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %34, i64 %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store %struct.drm_crtc* %39, %struct.drm_crtc** %12, align 8
  %40 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.timeval*, %struct.timeval** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %46 = call i32 @drm_calc_vbltimestamp_from_scanoutpos(%struct.drm_device* %40, i32 %41, i32* %42, %struct.timeval* %43, i32 %44, %struct.drm_crtc* %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %30, %25
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @drm_calc_vbltimestamp_from_scanoutpos(%struct.drm_device*, i32, i32*, %struct.timeval*, i32, %struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
