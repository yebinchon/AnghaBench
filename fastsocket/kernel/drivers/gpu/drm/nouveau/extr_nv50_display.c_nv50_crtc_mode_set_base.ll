; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_mode_set_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_mode_set_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32 }
%struct.drm_framebuffer = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_crtc = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"No FB bound\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, i32, i32, %struct.drm_framebuffer*)* @nv50_crtc_mode_set_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_crtc_mode_set_base(%struct.drm_crtc* %0, i32 %1, i32 %2, %struct.drm_framebuffer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.nouveau_drm*, align 8
  %11 = alloca %struct.nouveau_crtc*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.drm_framebuffer* %3, %struct.drm_framebuffer** %9, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.nouveau_drm* @nouveau_drm(i32 %15)
  store %struct.nouveau_drm* %16, %struct.nouveau_drm** %10, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %18 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %17)
  store %struct.nouveau_crtc* %18, %struct.nouveau_crtc** %11, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %25 = call i32 @NV_DEBUG(%struct.nouveau_drm* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %49

26:                                               ; preds = %4
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %29 = call i32 @nv50_crtc_swap_fbs(%struct.drm_crtc* %27, %struct.drm_framebuffer* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %49

34:                                               ; preds = %26
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %36 = call i32 @nv50_display_flip_stop(%struct.drm_crtc* %35)
  %37 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %11, align 8
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %39 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @nv50_crtc_set_image(%struct.nouveau_crtc* %37, i32 %40, i32 %41, i32 %42, i32 1)
  %44 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %46 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nv50_display_flip_next(%struct.drm_crtc* %44, i32 %47, i32* null, i32 1)
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %34, %32, %23
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*) #1

declare dso_local i32 @nv50_crtc_swap_fbs(%struct.drm_crtc*, %struct.drm_framebuffer*) #1

declare dso_local i32 @nv50_display_flip_stop(%struct.drm_crtc*) #1

declare dso_local i32 @nv50_crtc_set_image(%struct.nouveau_crtc*, i32, i32, i32, i32) #1

declare dso_local i32 @nv50_display_flip_next(%struct.drm_crtc*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
