; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc_helper.c_drm_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc_helper.c_drm_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_encoder_helper_funcs* }
%struct.drm_encoder_helper_funcs = type { i32 (%struct.drm_encoder.0*, i32)*, i32 (%struct.drm_encoder.1*)* }
%struct.drm_encoder.0 = type opaque
%struct.drm_encoder.1 = type opaque

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @drm_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_encoder_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_encoder_helper_funcs*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %4 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %5 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %4, i32 0, i32 0
  %6 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %5, align 8
  store %struct.drm_encoder_helper_funcs* %6, %struct.drm_encoder_helper_funcs** %3, align 8
  %7 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %3, align 8
  %8 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %7, i32 0, i32 1
  %9 = load i32 (%struct.drm_encoder.1*)*, i32 (%struct.drm_encoder.1*)** %8, align 8
  %10 = icmp ne i32 (%struct.drm_encoder.1*)* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %3, align 8
  %13 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %12, i32 0, i32 1
  %14 = load i32 (%struct.drm_encoder.1*)*, i32 (%struct.drm_encoder.1*)** %13, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %16 = bitcast %struct.drm_encoder* %15 to %struct.drm_encoder.1*
  %17 = call i32 %14(%struct.drm_encoder.1* %16)
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %3, align 8
  %20 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %19, i32 0, i32 0
  %21 = load i32 (%struct.drm_encoder.0*, i32)*, i32 (%struct.drm_encoder.0*, i32)** %20, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %23 = bitcast %struct.drm_encoder* %22 to %struct.drm_encoder.0*
  %24 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %25 = call i32 %21(%struct.drm_encoder.0* %23, i32 %24)
  br label %26

26:                                               ; preds = %18, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
