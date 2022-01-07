; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_irq.c_radeon_get_vblank_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_irq.c_radeon_get_vblank_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"called with no initialization\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid crtc %d\0A\00", align 1
@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_RS600 = common dso_local global i32 0, align 4
@R500_D1CRTC_FRAME_COUNT = common dso_local global i32 0, align 4
@R500_D2CRTC_FRAME_COUNT = common dso_local global i32 0, align 4
@RADEON_CRTC_CRNT_FRAME = common dso_local global i32 0, align 4
@RADEON_CRTC2_CRNT_FRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_get_vblank_counter(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %6, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %53

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %53

27:                                               ; preds = %19
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @CHIP_RS600, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @R500_D1CRTC_FRAME_COUNT, align 4
  %40 = call i32 @RADEON_READ(i32 %39)
  store i32 %40, i32* %3, align 4
  br label %53

41:                                               ; preds = %35
  %42 = load i32, i32* @R500_D2CRTC_FRAME_COUNT, align 4
  %43 = call i32 @RADEON_READ(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %53

44:                                               ; preds = %27
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @RADEON_CRTC_CRNT_FRAME, align 4
  %49 = call i32 @RADEON_READ(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @RADEON_CRTC2_CRNT_FRAME, align 4
  %52 = call i32 @RADEON_READ(i32 %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %47, %41, %38, %22, %12
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @RADEON_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
