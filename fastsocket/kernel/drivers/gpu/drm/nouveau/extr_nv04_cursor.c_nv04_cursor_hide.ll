; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_cursor.c_nv04_cursor_hide.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_cursor.c_nv04_cursor_hide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_crtc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_crtc*, i32)* @nv04_cursor_hide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_cursor_hide(%struct.nouveau_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_crtc*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_crtc* %0, %struct.nouveau_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %6 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @nv_show_cursor(i32 %8, i32 %11, i32 0)
  ret void
}

declare dso_local i32 @nv_show_cursor(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
