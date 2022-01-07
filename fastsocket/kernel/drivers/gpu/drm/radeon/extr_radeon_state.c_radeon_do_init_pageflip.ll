; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_do_init_pageflip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_do_init_pageflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_master = type { %struct.drm_radeon_master_private* }
%struct.drm_radeon_master_private = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RADEON_CRTC_OFFSET_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC_OFFSET_FLIP_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC2_OFFSET_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_master*)* @radeon_do_init_pageflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_do_init_pageflip(%struct.drm_device* %0, %struct.drm_master* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_master*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.drm_radeon_master_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_master* %1, %struct.drm_master** %4, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  %10 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %11 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %10, i32 0, i32 0
  %12 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %11, align 8
  store %struct.drm_radeon_master_private* %12, %struct.drm_radeon_master_private** %6, align 8
  %13 = load i32, i32* @RING_LOCALS, align 4
  %14 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @BEGIN_RING(i32 6)
  %16 = call i32 (...) @RADEON_WAIT_UNTIL_3D_IDLE()
  %17 = load i32, i32* @RADEON_CRTC_OFFSET_CNTL, align 4
  %18 = call i32 @CP_PACKET0(i32 %17, i32 0)
  %19 = call i32 @OUT_RING(i32 %18)
  %20 = load i32, i32* @RADEON_CRTC_OFFSET_CNTL, align 4
  %21 = call i32 @RADEON_READ(i32 %20)
  %22 = load i32, i32* @RADEON_CRTC_OFFSET_FLIP_CNTL, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @OUT_RING(i32 %23)
  %25 = load i32, i32* @RADEON_CRTC2_OFFSET_CNTL, align 4
  %26 = call i32 @CP_PACKET0(i32 %25, i32 0)
  %27 = call i32 @OUT_RING(i32 %26)
  %28 = load i32, i32* @RADEON_CRTC2_OFFSET_CNTL, align 4
  %29 = call i32 @RADEON_READ(i32 %28)
  %30 = load i32, i32* @RADEON_CRTC_OFFSET_FLIP_CNTL, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @OUT_RING(i32 %31)
  %33 = call i32 (...) @ADVANCE_RING()
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %6, align 8
  %37 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %2
  %43 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %6, align 8
  %44 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %2
  ret i32 0
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @RADEON_WAIT_UNTIL_3D_IDLE(...) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CP_PACKET0(i32, i32) #1

declare dso_local i32 @RADEON_READ(i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
