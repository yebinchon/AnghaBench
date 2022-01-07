; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_emit_clip_rect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_emit_clip_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_clip_rect = type { i32, i32, i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"   box:  x1=%d y1=%d  x2=%d y2=%d\0A\00", align 1
@RADEON_RE_TOP_LEFT = common dso_local global i32 0, align 4
@RADEON_RE_WIDTH_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.drm_clip_rect*)* @radeon_emit_clip_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_emit_clip_rect(i32* %0, %struct.drm_clip_rect* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.drm_clip_rect*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.drm_clip_rect* %1, %struct.drm_clip_rect** %4, align 8
  %5 = load i32, i32* @RING_LOCALS, align 4
  %6 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %7 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %10 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %13 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %16 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11, i32 %14, i32 %17)
  %19 = call i32 @BEGIN_RING(i32 4)
  %20 = load i32, i32* @RADEON_RE_TOP_LEFT, align 4
  %21 = call i32 @CP_PACKET0(i32 %20, i32 0)
  %22 = call i32 @OUT_RING(i32 %21)
  %23 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %24 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 16
  %27 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %28 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %26, %29
  %31 = call i32 @OUT_RING(i32 %30)
  %32 = load i32, i32* @RADEON_RE_WIDTH_HEIGHT, align 4
  %33 = call i32 @CP_PACKET0(i32 %32, i32 0)
  %34 = call i32 @OUT_RING(i32 %33)
  %35 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %36 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = shl i32 %38, 16
  %40 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %41 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = or i32 %39, %43
  %45 = call i32 @OUT_RING(i32 %44)
  %46 = call i32 (...) @ADVANCE_RING()
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CP_PACKET0(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
