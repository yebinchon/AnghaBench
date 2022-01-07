; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_legacy_tv_get_std_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_legacy_tv_get_std_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_tv_mode_constants = type { i32 }
%struct.radeon_encoder = type { %struct.TYPE_3__, %struct.radeon_encoder_tv_dac* }
%struct.TYPE_3__ = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.radeon_pll, %struct.radeon_pll }
%struct.radeon_pll = type { i32 }
%struct.radeon_encoder_tv_dac = type { i64 }
%struct.radeon_crtc = type { i32 }

@TV_STD_NTSC = common dso_local global i64 0, align 8
@TV_STD_NTSC_J = common dso_local global i64 0, align 8
@TV_STD_PAL_M = common dso_local global i64 0, align 8
@available_tv_modes = common dso_local global %struct.radeon_tv_mode_constants* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radeon_tv_mode_constants* (%struct.radeon_encoder*, i32*)* @radeon_legacy_tv_get_std_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radeon_tv_mode_constants* @radeon_legacy_tv_get_std_mode(%struct.radeon_encoder* %0, i32* %1) #0 {
  %3 = alloca %struct.radeon_encoder*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_crtc*, align 8
  %8 = alloca %struct.radeon_encoder_tv_dac*, align 8
  %9 = alloca %struct.radeon_tv_mode_constants*, align 8
  %10 = alloca %struct.radeon_pll*, align 8
  store %struct.radeon_encoder* %0, %struct.radeon_encoder** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  store %struct.radeon_device* %17, %struct.radeon_device** %6, align 8
  %18 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %18, i32 0, i32 1
  %20 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %19, align 8
  store %struct.radeon_encoder_tv_dac* %20, %struct.radeon_encoder_tv_dac** %8, align 8
  %21 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.radeon_crtc* @to_radeon_crtc(i32 %24)
  store %struct.radeon_crtc* %25, %struct.radeon_crtc** %7, align 8
  %26 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %27 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store %struct.radeon_pll* %33, %struct.radeon_pll** %10, align 8
  br label %38

34:                                               ; preds = %2
  %35 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store %struct.radeon_pll* %37, %struct.radeon_pll** %10, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32*, i32** %4, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %43 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %4, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %38
  %47 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %8, align 8
  %48 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TV_STD_NTSC, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %8, align 8
  %54 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TV_STD_NTSC_J, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %8, align 8
  %60 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TV_STD_PAL_M, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %58, %52, %46
  %65 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %66 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 2700
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** @available_tv_modes, align 8
  %71 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %70, i64 0
  store %struct.radeon_tv_mode_constants* %71, %struct.radeon_tv_mode_constants** %9, align 8
  br label %75

72:                                               ; preds = %64
  %73 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** @available_tv_modes, align 8
  %74 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %73, i64 2
  store %struct.radeon_tv_mode_constants* %74, %struct.radeon_tv_mode_constants** %9, align 8
  br label %75

75:                                               ; preds = %72, %69
  br label %88

76:                                               ; preds = %58
  %77 = load %struct.radeon_pll*, %struct.radeon_pll** %10, align 8
  %78 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 2700
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** @available_tv_modes, align 8
  %83 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %82, i64 1
  store %struct.radeon_tv_mode_constants* %83, %struct.radeon_tv_mode_constants** %9, align 8
  br label %87

84:                                               ; preds = %76
  %85 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** @available_tv_modes, align 8
  %86 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %85, i64 3
  store %struct.radeon_tv_mode_constants* %86, %struct.radeon_tv_mode_constants** %9, align 8
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87, %75
  %89 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %9, align 8
  ret %struct.radeon_tv_mode_constants* %89
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
