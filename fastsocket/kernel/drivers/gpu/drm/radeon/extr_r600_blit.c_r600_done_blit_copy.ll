; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_r600_done_blit_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_r600_done_blit_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32* }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@R600_IT_EVENT_WRITE = common dso_local global i32 0, align 4
@R600_CACHE_FLUSH_AND_INV_EVENT = common dso_local global i32 0, align 4
@R600_IT_SET_CONFIG_REG = common dso_local global i32 0, align 4
@R600_WAIT_UNTIL = common dso_local global i32 0, align 4
@R600_SET_CONFIG_REG_OFFSET = common dso_local global i32 0, align 4
@RADEON_WAIT_3D_IDLE = common dso_local global i32 0, align 4
@RADEON_WAIT_3D_IDLECLEAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_done_blit_copy(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  %7 = load i32, i32* @RING_LOCALS, align 4
  %8 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @BEGIN_RING(i32 5)
  %10 = load i32, i32* @R600_IT_EVENT_WRITE, align 4
  %11 = call i32 @CP_PACKET3(i32 %10, i32 0)
  %12 = call i32 @OUT_RING(i32 %11)
  %13 = load i32, i32* @R600_CACHE_FLUSH_AND_INV_EVENT, align 4
  %14 = call i32 @OUT_RING(i32 %13)
  %15 = load i32, i32* @R600_IT_SET_CONFIG_REG, align 4
  %16 = call i32 @CP_PACKET3(i32 %15, i32 1)
  %17 = call i32 @OUT_RING(i32 %16)
  %18 = load i32, i32* @R600_WAIT_UNTIL, align 4
  %19 = load i32, i32* @R600_SET_CONFIG_REG_OFFSET, align 4
  %20 = sub nsw i32 %18, %19
  %21 = ashr i32 %20, 2
  %22 = call i32 @OUT_RING(i32 %21)
  %23 = load i32, i32* @RADEON_WAIT_3D_IDLE, align 4
  %24 = load i32, i32* @RADEON_WAIT_3D_IDLECLEAN, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @OUT_RING(i32 %25)
  %27 = call i32 (...) @ADVANCE_RING()
  %28 = call i32 (...) @COMMIT_RING()
  %29 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %30 = call i32 @r600_nomm_put_vb(%struct.drm_device* %29)
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CP_PACKET3(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

declare dso_local i32 @COMMIT_RING(...) #1

declare dso_local i32 @r600_nomm_put_vb(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
