; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.nouveau_crtc = type { i32 }
%struct.nv50_mast = type { i32 }

@NV84_DISP_MAST_CLASS = common dso_local global i64 0, align 8
@NVD0_DISP_MAST_CLASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @nv50_crtc_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_crtc_prepare(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.nouveau_crtc*, align 8
  %4 = alloca %struct.nv50_mast*, align 8
  %5 = alloca i32*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %7 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %6)
  store %struct.nouveau_crtc* %7, %struct.nouveau_crtc** %3, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nv50_mast* @nv50_mast(i32 %10)
  store %struct.nv50_mast* %11, %struct.nv50_mast** %4, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %13 = call i32 @nv50_display_flip_stop(%struct.drm_crtc* %12)
  %14 = load %struct.nv50_mast*, %struct.nv50_mast** %4, align 8
  %15 = call i32* @evo_wait(%struct.nv50_mast* %14, i32 2)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %108

18:                                               ; preds = %1
  %19 = load %struct.nv50_mast*, %struct.nv50_mast** %4, align 8
  %20 = call i64 @nv50_vers(%struct.nv50_mast* %19)
  %21 = load i64, i64* @NV84_DISP_MAST_CLASS, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %26 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 1024
  %29 = add nsw i32 2164, %28
  %30 = call i32 @evo_mthd(i32* %24, i32 %29, i32 1)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @evo_data(i32* %31, i32 0)
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %35 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 1024
  %38 = add nsw i32 2112, %37
  %39 = call i32 @evo_mthd(i32* %33, i32 %38, i32 1)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @evo_data(i32* %40, i32 1073741824)
  br label %104

42:                                               ; preds = %18
  %43 = load %struct.nv50_mast*, %struct.nv50_mast** %4, align 8
  %44 = call i64 @nv50_vers(%struct.nv50_mast* %43)
  %45 = load i64, i64* @NVD0_DISP_MAST_CLASS, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %50 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 1024
  %53 = add nsw i32 2164, %52
  %54 = call i32 @evo_mthd(i32* %48, i32 %53, i32 1)
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @evo_data(i32* %55, i32 0)
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %59 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 1024
  %62 = add nsw i32 2112, %61
  %63 = call i32 @evo_mthd(i32* %57, i32 %62, i32 1)
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @evo_data(i32* %64, i32 1073741824)
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %68 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 1024
  %71 = add nsw i32 2140, %70
  %72 = call i32 @evo_mthd(i32* %66, i32 %71, i32 1)
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @evo_data(i32* %73, i32 0)
  br label %103

75:                                               ; preds = %42
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %78 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %79, 768
  %81 = add nsw i32 1140, %80
  %82 = call i32 @evo_mthd(i32* %76, i32 %81, i32 1)
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @evo_data(i32* %83, i32 0)
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %87 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %88, 768
  %90 = add nsw i32 1088, %89
  %91 = call i32 @evo_mthd(i32* %85, i32 %90, i32 1)
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @evo_data(i32* %92, i32 50331648)
  %94 = load i32*, i32** %5, align 8
  %95 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %96 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %97, 768
  %99 = add nsw i32 1116, %98
  %100 = call i32 @evo_mthd(i32* %94, i32 %99, i32 1)
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @evo_data(i32* %101, i32 0)
  br label %103

103:                                              ; preds = %75, %47
  br label %104

104:                                              ; preds = %103, %23
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.nv50_mast*, %struct.nv50_mast** %4, align 8
  %107 = call i32 @evo_kick(i32* %105, %struct.nv50_mast* %106)
  br label %108

108:                                              ; preds = %104, %1
  %109 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %110 = call i32 @nv50_crtc_cursor_show_hide(%struct.nouveau_crtc* %109, i32 0, i32 0)
  ret void
}

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.nv50_mast* @nv50_mast(i32) #1

declare dso_local i32 @nv50_display_flip_stop(%struct.drm_crtc*) #1

declare dso_local i32* @evo_wait(%struct.nv50_mast*, i32) #1

declare dso_local i64 @nv50_vers(%struct.nv50_mast*) #1

declare dso_local i32 @evo_mthd(i32*, i32, i32) #1

declare dso_local i32 @evo_data(i32*, i32) #1

declare dso_local i32 @evo_kick(i32*, %struct.nv50_mast*) #1

declare dso_local i32 @nv50_crtc_cursor_show_hide(%struct.nouveau_crtc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
