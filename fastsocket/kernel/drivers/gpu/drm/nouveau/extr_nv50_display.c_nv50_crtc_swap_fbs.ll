; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_swap_fbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_swap_fbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32 }
%struct.nouveau_framebuffer = type { i32 }

@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*)* @nv50_crtc_swap_fbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_crtc_swap_fbs(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca %struct.nouveau_framebuffer*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %5, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %11 = call %struct.nouveau_framebuffer* @nouveau_framebuffer(%struct.drm_framebuffer* %10)
  store %struct.nouveau_framebuffer* %11, %struct.nouveau_framebuffer** %6, align 8
  %12 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %6, align 8
  %13 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %16 = call i32 @nouveau_bo_pin(i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %23 = icmp ne %struct.drm_framebuffer* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %26 = call %struct.nouveau_framebuffer* @nouveau_framebuffer(%struct.drm_framebuffer* %25)
  store %struct.nouveau_framebuffer* %26, %struct.nouveau_framebuffer** %6, align 8
  %27 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %6, align 8
  %28 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @nouveau_bo_unpin(i32 %29)
  br label %31

31:                                               ; preds = %24, %21
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %19
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.nouveau_framebuffer* @nouveau_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local i32 @nouveau_bo_pin(i32, i32) #1

declare dso_local i32 @nouveau_bo_unpin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
