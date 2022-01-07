; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_set_config_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_set_config_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mode_set = type { %struct.drm_framebuffer*, %struct.drm_crtc* }
%struct.drm_framebuffer = type { i32 }
%struct.drm_crtc = type { %struct.TYPE_2__*, %struct.drm_framebuffer* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_set_config_internal(%struct.drm_mode_set* %0) #0 {
  %2 = alloca %struct.drm_mode_set*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_mode_set* %0, %struct.drm_mode_set** %2, align 8
  %7 = load %struct.drm_mode_set*, %struct.drm_mode_set** %2, align 8
  %8 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %7, i32 0, i32 1
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  store %struct.drm_crtc* %9, %struct.drm_crtc** %3, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 1
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  store %struct.drm_framebuffer* %12, %struct.drm_framebuffer** %5, align 8
  %13 = load %struct.drm_mode_set*, %struct.drm_mode_set** %2, align 8
  %14 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %13, i32 0, i32 0
  %15 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %14, align 8
  store %struct.drm_framebuffer* %15, %struct.drm_framebuffer** %4, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.drm_mode_set*)**
  %21 = load i32 (%struct.drm_mode_set*)*, i32 (%struct.drm_mode_set*)** %20, align 8
  %22 = load %struct.drm_mode_set*, %struct.drm_mode_set** %2, align 8
  %23 = call i32 %21(%struct.drm_mode_set* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %1
  %27 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %28 = icmp ne %struct.drm_framebuffer* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %31 = call i32 @drm_framebuffer_unreference(%struct.drm_framebuffer* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %34 = icmp ne %struct.drm_framebuffer* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %37 = call i32 @drm_framebuffer_reference(%struct.drm_framebuffer* %36)
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @drm_framebuffer_unreference(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_framebuffer_reference(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
