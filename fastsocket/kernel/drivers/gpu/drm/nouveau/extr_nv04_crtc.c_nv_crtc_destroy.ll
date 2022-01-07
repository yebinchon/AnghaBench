; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_crtc.c_nv_crtc_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_crtc.c_nv_crtc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.nouveau_crtc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @nv_crtc_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_crtc_destroy(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.nouveau_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %4 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %5 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %4)
  store %struct.nouveau_crtc* %5, %struct.nouveau_crtc** %3, align 8
  %6 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %7 = icmp ne %struct.nouveau_crtc* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %28

9:                                                ; preds = %1
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = call i32 @drm_crtc_cleanup(%struct.drm_crtc* %10)
  %12 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nouveau_bo_unmap(i32 %15)
  %17 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %18 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nouveau_bo_unpin(i32 %20)
  %22 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %23 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @nouveau_bo_ref(i32* null, i32* %24)
  %26 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %27 = call i32 @kfree(%struct.nouveau_crtc* %26)
  br label %28

28:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_cleanup(%struct.drm_crtc*) #1

declare dso_local i32 @nouveau_bo_unmap(i32) #1

declare dso_local i32 @nouveau_bo_unpin(i32) #1

declare dso_local i32 @nouveau_bo_ref(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.nouveau_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
