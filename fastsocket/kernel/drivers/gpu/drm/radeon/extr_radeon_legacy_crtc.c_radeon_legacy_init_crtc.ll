; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_crtc.c_radeon_legacy_init_crtc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_crtc.c_radeon_legacy_init_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.radeon_crtc = type { i32, i32, i64 }

@RADEON_CRTC2_H_TOTAL_DISP = common dso_local global i64 0, align 8
@RADEON_CRTC_H_TOTAL_DISP = common dso_local global i64 0, align 8
@legacy_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_legacy_init_crtc(%struct.drm_device* %0, %struct.radeon_crtc* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_crtc*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.radeon_crtc* %1, %struct.radeon_crtc** %4, align 8
  %5 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %6 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i64, i64* @RADEON_CRTC2_H_TOTAL_DISP, align 8
  %11 = load i64, i64* @RADEON_CRTC_H_TOTAL_DISP, align 8
  %12 = sub nsw i64 %10, %11
  %13 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %14 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %13, i32 0, i32 2
  store i64 %12, i64* %14, align 8
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %16, i32 0, i32 1
  %18 = call i32 @drm_crtc_helper_add(i32* %17, i32* @legacy_helper_funcs)
  ret void
}

declare dso_local i32 @drm_crtc_helper_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
