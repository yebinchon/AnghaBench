; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_crtc.c_nv_crtc_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_crtc.c_nv_crtc_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_crtc_helper_funcs*, %struct.drm_device* }
%struct.drm_crtc_helper_funcs = type { i32 (%struct.drm_crtc.0*, i32)* }
%struct.drm_crtc.0 = type opaque
%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_crtc = type { i32 }
%struct.TYPE_2__ = type { i64 }

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@NV_PCRTC_CONFIG = common dso_local global i32 0, align 4
@NV_PCRTC_CONFIG_START_ADDRESS_NON_VGA = common dso_local global i32 0, align 4
@NV_40 = common dso_local global i64 0, align 8
@NV_PRAMDAC_900 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @nv_crtc_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_crtc_prepare(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nouveau_crtc*, align 8
  %6 = alloca %struct.drm_crtc_helper_funcs*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 1
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %11)
  store %struct.nouveau_drm* %12, %struct.nouveau_drm** %4, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %13)
  store %struct.nouveau_crtc* %14, %struct.nouveau_crtc** %5, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 0
  %17 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %16, align 8
  store %struct.drm_crtc_helper_funcs* %17, %struct.drm_crtc_helper_funcs** %6, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = call i64 @nv_two_heads(%struct.drm_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %24 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @NVSetOwner(%struct.drm_device* %22, i32 %25)
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %30 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @drm_vblank_pre_modeset(%struct.drm_device* %28, i32 %31)
  %33 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %6, align 8
  %34 = getelementptr inbounds %struct.drm_crtc_helper_funcs, %struct.drm_crtc_helper_funcs* %33, i32 0, i32 0
  %35 = load i32 (%struct.drm_crtc.0*, i32)*, i32 (%struct.drm_crtc.0*, i32)** %34, align 8
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %37 = bitcast %struct.drm_crtc* %36 to %struct.drm_crtc.0*
  %38 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %39 = call i32 %35(%struct.drm_crtc.0* %37, i32 %38)
  %40 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %41 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %42 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @NVBlankScreen(%struct.drm_device* %40, i32 %43, i32 1)
  %45 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %46 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %47 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NV_PCRTC_CONFIG, align 4
  %50 = load i32, i32* @NV_PCRTC_CONFIG_START_ADDRESS_NON_VGA, align 4
  %51 = call i32 @NVWriteCRTC(%struct.drm_device* %45, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %53 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.TYPE_2__* @nv_device(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NV_40, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %27
  %61 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %62 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %63 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NV_PRAMDAC_900, align 4
  %66 = call i32 @NVReadRAMDAC(%struct.drm_device* %61, i32 %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %68 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %69 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @NV_PRAMDAC_900, align 4
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, -65537
  %74 = call i32 @NVWriteRAMDAC(%struct.drm_device* %67, i32 %70, i32 %71, i32 %73)
  br label %75

75:                                               ; preds = %60, %27
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @nv_two_heads(%struct.drm_device*) #1

declare dso_local i32 @NVSetOwner(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_vblank_pre_modeset(%struct.drm_device*, i32) #1

declare dso_local i32 @NVBlankScreen(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteCRTC(%struct.drm_device*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @nv_device(i32) #1

declare dso_local i32 @NVReadRAMDAC(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
