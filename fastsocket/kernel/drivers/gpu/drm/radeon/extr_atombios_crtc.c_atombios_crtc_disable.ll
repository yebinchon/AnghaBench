; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32, i64 }
%struct.radeon_crtc = type { i32, i32, i32*, i32*, i64 }
%struct.radeon_atom_ss = type { i32 }

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@ATOM_ENABLE = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@ATOM_PPLL_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @atombios_crtc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atombios_crtc_disable(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.radeon_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_atom_ss, align 4
  %7 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %8)
  store %struct.radeon_crtc* %9, %struct.radeon_crtc** %3, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %5, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %17 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %18 = call i32 @atombios_crtc_dpms(%struct.drm_crtc* %16, i32 %17)
  %19 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %20 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %24 = load i32, i32* @ATOM_ENABLE, align 4
  %25 = call i32 @atombios_powergate_crtc(%struct.drm_crtc* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %1
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %78, %26
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %81

33:                                               ; preds = %27
  %34 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %37, i64 %39
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = icmp ne %struct.TYPE_3__* %41, null
  br i1 %42, label %43, label %77

43:                                               ; preds = %33
  %44 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %47, i64 %49
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %43
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %58 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %68, i64 %70
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %64, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %61
  br label %112

77:                                               ; preds = %61, %55, %43, %33
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %27

81:                                               ; preds = %27
  %82 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %83 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %110 [
    i32 129, label %85
    i32 128, label %85
    i32 130, label %95
  ]

85:                                               ; preds = %81, %81
  %86 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %87 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %88 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %91 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ATOM_DISABLE, align 4
  %94 = call i32 @atombios_crtc_program_pll(%struct.drm_crtc* %86, i32 %89, i32 %92, i32 0, i32 0, i32 %93, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.radeon_atom_ss* %6)
  br label %111

95:                                               ; preds = %81
  %96 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %97 = call i32 @ASIC_IS_DCE61(%struct.radeon_device* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %101 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %102 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %105 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ATOM_DISABLE, align 4
  %108 = call i32 @atombios_crtc_program_pll(%struct.drm_crtc* %100, i32 %103, i32 %106, i32 0, i32 0, i32 %107, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.radeon_atom_ss* %6)
  br label %109

109:                                              ; preds = %99, %95
  br label %111

110:                                              ; preds = %81
  br label %111

111:                                              ; preds = %110, %109, %85
  br label %112

112:                                              ; preds = %111, %76
  %113 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %114 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %115 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %117 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %116, i32 0, i32 4
  store i64 0, i64* %117, align 8
  %118 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %119 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %118, i32 0, i32 3
  store i32* null, i32** %119, align 8
  %120 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %121 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %120, i32 0, i32 2
  store i32* null, i32** %121, align 8
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @atombios_crtc_dpms(%struct.drm_crtc*, i32) #1

declare dso_local i64 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i32 @atombios_powergate_crtc(%struct.drm_crtc*, i32) #1

declare dso_local i32 @atombios_crtc_program_pll(%struct.drm_crtc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.radeon_atom_ss*) #1

declare dso_local i32 @ASIC_IS_DCE61(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
