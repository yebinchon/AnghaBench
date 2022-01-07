; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_crtc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.radeon_crtc** }
%struct.radeon_crtc = type { i32, i32*, i32*, i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, %struct.drm_connector**, i32* }
%struct.drm_connector = type { i32 }

@RADEONFB_CONN_LIMIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@radeon_crtc_funcs = common dso_local global i32 0, align 4
@radeon_r4xx_atom = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32)* @radeon_crtc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_crtc_init(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_crtc*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  store %struct.radeon_device* %10, %struct.radeon_device** %5, align 8
  %11 = load i32, i32* @RADEONFB_CONN_LIMIT, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = add i64 64, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.radeon_crtc* @kzalloc(i32 %15, i32 %16)
  store %struct.radeon_crtc* %17, %struct.radeon_crtc** %6, align 8
  %18 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %19 = icmp eq %struct.radeon_crtc* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %91

21:                                               ; preds = %2
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %24 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %23, i32 0, i32 5
  %25 = call i32 @drm_crtc_init(%struct.drm_device* %22, i32* %24, i32* @radeon_crtc_funcs)
  %26 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %27 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %26, i32 0, i32 5
  %28 = call i32 @drm_mode_crtc_set_gamma_size(i32* %27, i32 256)
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %31 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %33 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.radeon_crtc**, %struct.radeon_crtc*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.radeon_crtc*, %struct.radeon_crtc** %36, i64 %38
  store %struct.radeon_crtc* %32, %struct.radeon_crtc** %39, align 8
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %68, %21
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 256
  br i1 %42, label %43, label %71

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %44, 2
  %46 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %47 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 %52, 2
  %54 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %55 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = shl i32 %60, 2
  %62 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %63 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  br label %68

68:                                               ; preds = %43
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %40

71:                                               ; preds = %40
  %72 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %78 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* @radeon_r4xx_atom, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80, %76
  %84 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %85 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %86 = call i32 @radeon_atombios_init_crtc(%struct.drm_device* %84, %struct.radeon_crtc* %85)
  br label %91

87:                                               ; preds = %80, %71
  %88 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %89 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %90 = call i32 @radeon_legacy_init_crtc(%struct.drm_device* %88, %struct.radeon_crtc* %89)
  br label %91

91:                                               ; preds = %20, %87, %83
  ret void
}

declare dso_local %struct.radeon_crtc* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_crtc_init(%struct.drm_device*, i32*, i32*) #1

declare dso_local i32 @drm_mode_crtc_set_gamma_size(i32*, i32) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atombios_init_crtc(%struct.drm_device*, %struct.radeon_crtc*) #1

declare dso_local i32 @radeon_legacy_init_crtc(%struct.drm_device*, %struct.radeon_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
