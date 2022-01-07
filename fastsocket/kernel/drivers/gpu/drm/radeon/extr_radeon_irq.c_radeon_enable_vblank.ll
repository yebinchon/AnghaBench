; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_irq.c_radeon_enable_vblank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_irq.c_radeon_enable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_RS600 = common dso_local global i32 0, align 4
@R500_D1MODE_INT_MASK = common dso_local global i32 0, align 4
@R500_D2MODE_INT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"tried to enable vblank on non-existent crtc %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_CRTC_VBLANK_MASK = common dso_local global i32 0, align 4
@RADEON_CRTC2_VBLANK_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_enable_vblank(%struct.drm_device* %0, i32 %1) #0 {
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
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @CHIP_RS600, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %27 [
    i32 0, label %19
    i32 1, label %23
  ]

19:                                               ; preds = %17
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = load i32, i32* @R500_D1MODE_INT_MASK, align 4
  %22 = call i32 @r500_vbl_irq_set_state(%struct.drm_device* %20, i32 %21, i32 1)
  br label %32

23:                                               ; preds = %17
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = load i32, i32* @R500_D2MODE_INT_MASK, align 4
  %26 = call i32 @r500_vbl_irq_set_state(%struct.drm_device* %24, i32 %25, i32 1)
  br label %32

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %50

32:                                               ; preds = %23, %19
  br label %49

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  switch i32 %34, label %43 [
    i32 0, label %35
    i32 1, label %39
  ]

35:                                               ; preds = %33
  %36 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %37 = load i32, i32* @RADEON_CRTC_VBLANK_MASK, align 4
  %38 = call i32 @radeon_irq_set_state(%struct.drm_device* %36, i32 %37, i32 1)
  br label %48

39:                                               ; preds = %33
  %40 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %41 = load i32, i32* @RADEON_CRTC2_VBLANK_MASK, align 4
  %42 = call i32 @radeon_irq_set_state(%struct.drm_device* %40, i32 %41, i32 1)
  br label %48

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %50

48:                                               ; preds = %39, %35
  br label %49

49:                                               ; preds = %48, %32
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %43, %27
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @r500_vbl_irq_set_state(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @radeon_irq_set_state(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
