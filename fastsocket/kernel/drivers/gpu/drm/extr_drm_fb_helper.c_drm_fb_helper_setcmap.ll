; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_setcmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_setcmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_cmap = type { i32*, i32*, i32*, i32*, i32, i32 }
%struct.fb_info = type { %struct.drm_fb_helper* }
%struct.drm_fb_helper = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.drm_crtc_helper_funcs* }
%struct.drm_crtc_helper_funcs = type { i32 (%struct.drm_crtc.0*)* }
%struct.drm_crtc.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fb_helper_setcmap(%struct.fb_cmap* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_cmap*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.drm_fb_helper*, align 8
  %7 = alloca %struct.drm_crtc_helper_funcs*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.drm_crtc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.fb_cmap* %0, %struct.fb_cmap** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 0
  %23 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %22, align 8
  store %struct.drm_fb_helper* %23, %struct.drm_fb_helper** %6, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %104, %2
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %27 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %107

30:                                               ; preds = %24
  %31 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %32 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %38, align 8
  store %struct.drm_crtc* %39, %struct.drm_crtc** %12, align 8
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %41 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %40, i32 0, i32 0
  %42 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %41, align 8
  store %struct.drm_crtc_helper_funcs* %42, %struct.drm_crtc_helper_funcs** %7, align 8
  %43 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %44 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %8, align 8
  %46 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %47 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %9, align 8
  %49 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %50 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %10, align 8
  %52 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %53 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %11, align 8
  %55 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %56 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %58

58:                                               ; preds = %94, %30
  %59 = load i32, i32* %14, align 4
  %60 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %61 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %97

64:                                               ; preds = %58
  store i32 65535, i32* %20, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %8, align 8
  %67 = load i32, i32* %65, align 4
  store i32 %67, i32* %17, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %9, align 8
  %70 = load i32, i32* %68, align 4
  store i32 %70, i32* %18, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %10, align 8
  %73 = load i32, i32* %71, align 4
  store i32 %73, i32* %19, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %64
  %77 = load i32*, i32** %11, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %11, align 8
  %79 = load i32, i32* %77, align 4
  store i32 %79, i32* %20, align 4
  br label %80

80:                                               ; preds = %76, %64
  %81 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %16, align 4
  %87 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %88 = call i32 @setcolreg(%struct.drm_crtc* %81, i32 %82, i32 %83, i32 %84, i32 %85, %struct.fb_info* %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %3, align 4
  br label %109

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %58

97:                                               ; preds = %58
  %98 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %7, align 8
  %99 = getelementptr inbounds %struct.drm_crtc_helper_funcs, %struct.drm_crtc_helper_funcs* %98, i32 0, i32 0
  %100 = load i32 (%struct.drm_crtc.0*)*, i32 (%struct.drm_crtc.0*)** %99, align 8
  %101 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %102 = bitcast %struct.drm_crtc* %101 to %struct.drm_crtc.0*
  %103 = call i32 %100(%struct.drm_crtc.0* %102)
  br label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %24

107:                                              ; preds = %24
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %91
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @setcolreg(%struct.drm_crtc*, i32, i32, i32, i32, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
