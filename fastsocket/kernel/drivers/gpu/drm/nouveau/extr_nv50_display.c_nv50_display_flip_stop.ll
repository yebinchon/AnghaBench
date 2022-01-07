; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_display_flip_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_display_flip_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nv50_display_flip = type { i32, i32 }

@nv50_display_flip_wait = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_display_flip_stop(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca %struct.nv50_display_flip, align 4
  %5 = alloca i32*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %7 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.nouveau_device* @nouveau_dev(i32 %8)
  store %struct.nouveau_device* %9, %struct.nouveau_device** %3, align 8
  %10 = getelementptr inbounds %struct.nv50_display_flip, %struct.nv50_display_flip* %4, i32 0, i32 0
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %12 = call i32 @nv50_sync(%struct.drm_crtc* %11)
  store i32 %12, i32* %10, align 4
  %13 = getelementptr inbounds %struct.nv50_display_flip, %struct.nv50_display_flip* %4, i32 0, i32 1
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @nv50_disp(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = getelementptr inbounds %struct.nv50_display_flip, %struct.nv50_display_flip* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @evo_wait(i32 %19, i32 8)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %1
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @evo_mthd(i32* %24, i32 132, i32 1)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @evo_data(i32* %26, i32 0)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @evo_mthd(i32* %28, i32 148, i32 1)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @evo_data(i32* %30, i32 0)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @evo_mthd(i32* %32, i32 192, i32 1)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @evo_data(i32* %34, i32 0)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @evo_mthd(i32* %36, i32 128, i32 1)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @evo_data(i32* %38, i32 0)
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds %struct.nv50_display_flip, %struct.nv50_display_flip* %4, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @evo_kick(i32* %40, i32 %42)
  br label %44

44:                                               ; preds = %23, %1
  %45 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %46 = load i32, i32* @nv50_display_flip_wait, align 4
  %47 = call i32 @nv_wait_cb(%struct.nouveau_device* %45, i32 %46, %struct.nv50_display_flip* %4)
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(i32) #1

declare dso_local i32 @nv50_sync(%struct.drm_crtc*) #1

declare dso_local i32 @nv50_disp(i32) #1

declare dso_local i32* @evo_wait(i32, i32) #1

declare dso_local i32 @evo_mthd(i32*, i32, i32) #1

declare dso_local i32 @evo_data(i32*, i32) #1

declare dso_local i32 @evo_kick(i32*, i32) #1

declare dso_local i32 @nv_wait_cb(%struct.nouveau_device*, i32, %struct.nv50_display_flip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
