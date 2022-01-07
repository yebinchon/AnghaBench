; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_tv.c_nv04_tv_dpms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_tv.c_nv04_tv_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_encoder = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.nv04_mode_state = type { i32 }
%struct.TYPE_6__ = type { %struct.nv04_mode_state }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 (%struct.drm_encoder*, i32)* }

@.str = private unnamed_addr constant [48 x i8] c"Setting dpms mode %d on TV encoder (output %d)\0A\00", align 1
@PLLSEL_TV_CRTC1_MASK = common dso_local global i32 0, align 4
@PLLSEL_TV_CRTC2_MASK = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@NV_CIO_CRE_RPC1_INDEX = common dso_local global i32 0, align 4
@NV_PRAMDAC_PLL_COEFF_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @nv04_tv_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_tv_dpms(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nouveau_encoder*, align 8
  %8 = alloca %struct.nv04_mode_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %14)
  store %struct.nouveau_drm* %15, %struct.nouveau_drm** %6, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %17 = call %struct.nouveau_encoder* @nouveau_encoder(%struct.drm_encoder* %16)
  store %struct.nouveau_encoder* %17, %struct.nouveau_encoder** %7, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = call %struct.TYPE_6__* @nv04_display(%struct.drm_device* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store %struct.nv04_mode_state* %20, %struct.nv04_mode_state** %8, align 8
  %21 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %24 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @NV_DEBUG(%struct.nouveau_drm* %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27)
  %29 = load i32, i32* @PLLSEL_TV_CRTC1_MASK, align 4
  %30 = load i32, i32* @PLLSEL_TV_CRTC2_MASK, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %8, align 8
  %34 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %2
  %41 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %42 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.TYPE_7__* @nouveau_crtc(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @NV_CIO_CRE_RPC1_INDEX, align 4
  %50 = call i32 @NVReadVgaCrtc(%struct.drm_device* %47, i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32, i32* @PLLSEL_TV_CRTC2_MASK, align 4
  br label %57

55:                                               ; preds = %40
  %56 = load i32, i32* @PLLSEL_TV_CRTC1_MASK, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %8, align 8
  %60 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, 128
  store i32 %64, i32* %9, align 4
  %65 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @NV_CIO_CRE_RPC1_INDEX, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %65, i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %57, %2
  %71 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %72 = load i32, i32* @NV_PRAMDAC_PLL_COEFF_SELECT, align 4
  %73 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %8, align 8
  %74 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @NVWriteRAMDAC(%struct.drm_device* %71, i32 0, i32 %72, i32 %75)
  %77 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %78 = call %struct.TYPE_8__* @get_slave_funcs(%struct.drm_encoder* %77)
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32 (%struct.drm_encoder*, i32)*, i32 (%struct.drm_encoder*, i32)** %79, align 8
  %81 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 %80(%struct.drm_encoder* %81, i32 %82)
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_encoder* @nouveau_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.TYPE_6__* @nv04_display(%struct.drm_device*) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @nouveau_crtc(i32) #1

declare dso_local i32 @NVReadVgaCrtc(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteVgaCrtc(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @get_slave_funcs(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
