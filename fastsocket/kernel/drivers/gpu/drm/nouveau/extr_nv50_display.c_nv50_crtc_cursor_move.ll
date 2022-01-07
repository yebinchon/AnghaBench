; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_cursor_move.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_cursor_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.nv50_curs = type { i32 }
%struct.nv50_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, i32, i32)* @nv50_crtc_cursor_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_crtc_cursor_move(%struct.drm_crtc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv50_curs*, align 8
  %8 = alloca %struct.nv50_chan*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %10 = call %struct.nv50_curs* @nv50_curs(%struct.drm_crtc* %9)
  store %struct.nv50_curs* %10, %struct.nv50_curs** %7, align 8
  %11 = load %struct.nv50_curs*, %struct.nv50_curs** %7, align 8
  %12 = call %struct.nv50_chan* @nv50_chan(%struct.nv50_curs* %11)
  store %struct.nv50_chan* %12, %struct.nv50_chan** %8, align 8
  %13 = load %struct.nv50_chan*, %struct.nv50_chan** %8, align 8
  %14 = getelementptr inbounds %struct.nv50_chan, %struct.nv50_chan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 %16, 16
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 65535
  %20 = or i32 %17, %19
  %21 = call i32 @nv_wo32(i32 %15, i32 132, i32 %20)
  %22 = load %struct.nv50_chan*, %struct.nv50_chan** %8, align 8
  %23 = getelementptr inbounds %struct.nv50_chan, %struct.nv50_chan* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @nv_wo32(i32 %24, i32 128, i32 0)
  ret i32 0
}

declare dso_local %struct.nv50_curs* @nv50_curs(%struct.drm_crtc*) #1

declare dso_local %struct.nv50_chan* @nv50_chan(%struct.nv50_curs*) #1

declare dso_local i32 @nv_wo32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
