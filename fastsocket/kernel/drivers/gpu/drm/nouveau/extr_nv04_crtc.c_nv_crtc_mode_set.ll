; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_crtc.c_nv_crtc_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_crtc.c_nv_crtc_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.nouveau_crtc = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"CTRC mode on CRTC %d:\0A\00", align 1
@NV_40 = common dso_local global i64 0, align 8
@NV_PRAMDAC_SEL_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*, i32, i32, %struct.drm_framebuffer*)* @nv_crtc_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_crtc_mode_set(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2, i32 %3, i32 %4, %struct.drm_framebuffer* %5) #0 {
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_framebuffer*, align 8
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca %struct.nouveau_crtc*, align 8
  %15 = alloca %struct.nouveau_drm*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %8, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.drm_framebuffer* %5, %struct.drm_framebuffer** %12, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %13, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %20 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %19)
  store %struct.nouveau_crtc* %20, %struct.nouveau_crtc** %14, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %22 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %21)
  store %struct.nouveau_drm* %22, %struct.nouveau_drm** %15, align 8
  %23 = load %struct.nouveau_drm*, %struct.nouveau_drm** %15, align 8
  %24 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %25 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @NV_DEBUG(%struct.nouveau_drm* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %29 = call i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode* %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %31 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %32 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @nv_lock_vga_crtc_shadow(%struct.drm_device* %30, i32 %33, i32 -1)
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %37 = call i32 @nv_crtc_mode_set_vga(%struct.drm_crtc* %35, %struct.drm_display_mode* %36)
  %38 = load %struct.nouveau_drm*, %struct.nouveau_drm** %15, align 8
  %39 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_5__* @nv_device(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NV_40, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %6
  %47 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %48 = load i32, i32* @NV_PRAMDAC_SEL_CLK, align 4
  %49 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %50 = call %struct.TYPE_6__* @nv04_display(%struct.drm_device* %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @NVWriteRAMDAC(%struct.drm_device* %47, i32 0, i32 %48, i32 %53)
  br label %55

55:                                               ; preds = %46, %6
  %56 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %58 = call i32 @nv_crtc_mode_set_regs(%struct.drm_crtc* %56, %struct.drm_display_mode* %57)
  %59 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @nv_crtc_calc_state_ext(%struct.drm_crtc* %59, %struct.drm_display_mode* %60, i32 %63)
  ret i32 0
}

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode*) #1

declare dso_local i32 @nv_lock_vga_crtc_shadow(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @nv_crtc_mode_set_vga(%struct.drm_crtc*, %struct.drm_display_mode*) #1

declare dso_local %struct.TYPE_5__* @nv_device(i32) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @nv04_display(%struct.drm_device*) #1

declare dso_local i32 @nv_crtc_mode_set_regs(%struct.drm_crtc*, %struct.drm_display_mode*) #1

declare dso_local i32 @nv_crtc_calc_state_ext(%struct.drm_crtc*, %struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
