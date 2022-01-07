; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_set_dither.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_set_dither.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_crtc = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nv50_mast = type { i32 }
%struct.nouveau_connector = type { i64, i32, %struct.drm_connector }
%struct.drm_connector = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@DITHERING_MODE_AUTO = common dso_local global i64 0, align 8
@DITHERING_MODE_DYNAMIC2X2 = common dso_local global i32 0, align 4
@DITHERING_DEPTH_AUTO = common dso_local global i32 0, align 4
@DITHERING_DEPTH_8BPC = common dso_local global i32 0, align 4
@NVD0_DISP_MAST_CLASS = common dso_local global i64 0, align 8
@NVE0_DISP_MAST_CLASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_crtc*, i32)* @nv50_crtc_set_dither to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_crtc_set_dither(%struct.nouveau_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv50_mast*, align 8
  %6 = alloca %struct.nouveau_connector*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.nouveau_crtc* %0, %struct.nouveau_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.nv50_mast* @nv50_mast(i32 %13)
  store %struct.nv50_mast* %14, %struct.nv50_mast** %5, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %16 = call %struct.nouveau_connector* @nouveau_crtc_connector_get(%struct.nouveau_crtc* %15)
  store %struct.nouveau_connector* %16, %struct.nouveau_connector** %6, align 8
  %17 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %18 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %17, i32 0, i32 2
  store %struct.drm_connector* %18, %struct.drm_connector** %7, align 8
  %19 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %20 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DITHERING_MODE_AUTO, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %2
  %25 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %26 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %32 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 3
  %36 = icmp sgt i32 %30, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* @DITHERING_MODE_DYNAMIC2X2, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %37, %24
  br label %45

40:                                               ; preds = %2
  %41 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %42 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %40, %39
  %46 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %47 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DITHERING_DEPTH_AUTO, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %53 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %55, 8
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @DITHERING_DEPTH_8BPC, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %57, %51
  br label %68

62:                                               ; preds = %45
  %63 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %64 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %62, %61
  %69 = load %struct.nv50_mast*, %struct.nv50_mast** %5, align 8
  %70 = call i32* @evo_wait(%struct.nv50_mast* %69, i32 4)
  store i32* %70, i32** %8, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %129

73:                                               ; preds = %68
  %74 = load %struct.nv50_mast*, %struct.nv50_mast** %5, align 8
  %75 = call i64 @nv50_vers(%struct.nv50_mast* %74)
  %76 = load i64, i64* @NVD0_DISP_MAST_CLASS, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load i32*, i32** %8, align 8
  %80 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %81 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %82, 1024
  %84 = add nsw i32 2208, %83
  %85 = call i32 @evo_mthd(i32* %79, i32 %84, i32 1)
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @evo_data(i32* %86, i32 %87)
  br label %117

89:                                               ; preds = %73
  %90 = load %struct.nv50_mast*, %struct.nv50_mast** %5, align 8
  %91 = call i64 @nv50_vers(%struct.nv50_mast* %90)
  %92 = load i64, i64* @NVE0_DISP_MAST_CLASS, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load i32*, i32** %8, align 8
  %96 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %97 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %98, 768
  %100 = add nsw i32 1168, %99
  %101 = call i32 @evo_mthd(i32* %95, i32 %100, i32 1)
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @evo_data(i32* %102, i32 %103)
  br label %116

105:                                              ; preds = %89
  %106 = load i32*, i32** %8, align 8
  %107 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %108 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = mul nsw i32 %109, 768
  %111 = add nsw i32 1184, %110
  %112 = call i32 @evo_mthd(i32* %106, i32 %111, i32 1)
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @evo_data(i32* %113, i32 %114)
  br label %116

116:                                              ; preds = %105, %94
  br label %117

117:                                              ; preds = %116, %78
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 @evo_mthd(i32* %121, i32 128, i32 1)
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @evo_data(i32* %123, i32 0)
  br label %125

125:                                              ; preds = %120, %117
  %126 = load i32*, i32** %8, align 8
  %127 = load %struct.nv50_mast*, %struct.nv50_mast** %5, align 8
  %128 = call i32 @evo_kick(i32* %126, %struct.nv50_mast* %127)
  br label %129

129:                                              ; preds = %125, %68
  ret i32 0
}

declare dso_local %struct.nv50_mast* @nv50_mast(i32) #1

declare dso_local %struct.nouveau_connector* @nouveau_crtc_connector_get(%struct.nouveau_crtc*) #1

declare dso_local i32* @evo_wait(%struct.nv50_mast*, i32) #1

declare dso_local i64 @nv50_vers(%struct.nv50_mast*) #1

declare dso_local i32 @evo_mthd(i32*, i32, i32) #1

declare dso_local i32 @evo_data(i32*, i32) #1

declare dso_local i32 @evo_kick(i32*, %struct.nv50_mast*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
