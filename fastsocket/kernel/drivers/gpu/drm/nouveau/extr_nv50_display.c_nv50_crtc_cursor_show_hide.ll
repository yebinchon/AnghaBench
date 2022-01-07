; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_cursor_show_hide.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_cursor_show_hide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_crtc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nv50_mast = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_crtc*, i32, i32)* @nv50_crtc_cursor_show_hide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_crtc_cursor_show_hide(%struct.nouveau_crtc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv50_mast*, align 8
  %8 = alloca i32*, align 8
  store %struct.nouveau_crtc* %0, %struct.nouveau_crtc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %10 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.nv50_mast* @nv50_mast(i32 %12)
  store %struct.nv50_mast* %13, %struct.nv50_mast** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %18 = call i32 @nv50_crtc_cursor_show(%struct.nouveau_crtc* %17)
  br label %22

19:                                               ; preds = %3
  %20 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %21 = call i32 @nv50_crtc_cursor_hide(%struct.nouveau_crtc* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load %struct.nv50_mast*, %struct.nv50_mast** %7, align 8
  %27 = call i32* @evo_wait(%struct.nv50_mast* %26, i32 2)
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @evo_mthd(i32* %31, i32 128, i32 1)
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @evo_data(i32* %33, i32 0)
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.nv50_mast*, %struct.nv50_mast** %7, align 8
  %37 = call i32 @evo_kick(i32* %35, %struct.nv50_mast* %36)
  br label %38

38:                                               ; preds = %30, %25
  br label %39

39:                                               ; preds = %38, %22
  ret void
}

declare dso_local %struct.nv50_mast* @nv50_mast(i32) #1

declare dso_local i32 @nv50_crtc_cursor_show(%struct.nouveau_crtc*) #1

declare dso_local i32 @nv50_crtc_cursor_hide(%struct.nouveau_crtc*) #1

declare dso_local i32* @evo_wait(%struct.nv50_mast*, i32) #1

declare dso_local i32 @evo_mthd(i32*, i32, i32) #1

declare dso_local i32 @evo_data(i32*, i32) #1

declare dso_local i32 @evo_kick(i32*, %struct.nv50_mast*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
