; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_user_framebuffer_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_user_framebuffer_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.nouveau_framebuffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_framebuffer*)* @nouveau_user_framebuffer_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_user_framebuffer_destroy(%struct.drm_framebuffer* %0) #0 {
  %2 = alloca %struct.drm_framebuffer*, align 8
  %3 = alloca %struct.nouveau_framebuffer*, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %2, align 8
  %4 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %5 = call %struct.nouveau_framebuffer* @nouveau_framebuffer(%struct.drm_framebuffer* %4)
  store %struct.nouveau_framebuffer* %5, %struct.nouveau_framebuffer** %3, align 8
  %6 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %3, align 8
  %7 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %3, align 8
  %12 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @drm_gem_object_unreference_unlocked(i32 %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %19 = call i32 @drm_framebuffer_cleanup(%struct.drm_framebuffer* %18)
  %20 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %3, align 8
  %21 = call i32 @kfree(%struct.nouveau_framebuffer* %20)
  ret void
}

declare dso_local %struct.nouveau_framebuffer* @nouveau_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(i32) #1

declare dso_local i32 @drm_framebuffer_cleanup(%struct.drm_framebuffer*) #1

declare dso_local i32 @kfree(%struct.nouveau_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
