; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_set_image.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_set_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_crtc = type { i32, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.drm_framebuffer = type { i32, i32 }
%struct.nouveau_framebuffer = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nv50_mast = type { i32 }

@NVD0_DISP_MAST_CLASS = common dso_local global i64 0, align 8
@NV50_DISP_MAST_CLASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_crtc*, %struct.drm_framebuffer*, i32, i32, i32)* @nv50_crtc_set_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_crtc_set_image(%struct.nouveau_crtc* %0, %struct.drm_framebuffer* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nouveau_crtc*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nouveau_framebuffer*, align 8
  %12 = alloca %struct.nv50_mast*, align 8
  %13 = alloca i32*, align 8
  store %struct.nouveau_crtc* %0, %struct.nouveau_crtc** %6, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %15 = call %struct.nouveau_framebuffer* @nouveau_framebuffer(%struct.drm_framebuffer* %14)
  store %struct.nouveau_framebuffer* %15, %struct.nouveau_framebuffer** %11, align 8
  %16 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %17 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.nv50_mast* @nv50_mast(i32 %19)
  store %struct.nv50_mast* %20, %struct.nv50_mast** %12, align 8
  %21 = load %struct.nv50_mast*, %struct.nv50_mast** %12, align 8
  %22 = call i32* @evo_wait(%struct.nv50_mast* %21, i32 16)
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %179

25:                                               ; preds = %5
  %26 = load %struct.nv50_mast*, %struct.nv50_mast** %12, align 8
  %27 = call i64 @nv50_vers(%struct.nv50_mast* %26)
  %28 = load i64, i64* @NVD0_DISP_MAST_CLASS, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %105

30:                                               ; preds = %25
  %31 = load i32*, i32** %13, align 8
  %32 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %33 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 1024
  %36 = add nsw i32 2144, %35
  %37 = call i32 @evo_mthd(i32* %31, i32 %36, i32 1)
  %38 = load i32*, i32** %13, align 8
  %39 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %11, align 8
  %40 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %39, i32 0, i32 3
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 8
  %46 = call i32 @evo_data(i32* %38, i32 %45)
  %47 = load i32*, i32** %13, align 8
  %48 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %49 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %50, 1024
  %52 = add nsw i32 2152, %51
  %53 = call i32 @evo_mthd(i32* %47, i32 %52, i32 3)
  %54 = load i32*, i32** %13, align 8
  %55 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %56 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 16
  %59 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %60 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %58, %61
  %63 = call i32 @evo_data(i32* %54, i32 %62)
  %64 = load i32*, i32** %13, align 8
  %65 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %11, align 8
  %66 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @evo_data(i32* %64, i32 %67)
  %69 = load i32*, i32** %13, align 8
  %70 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %11, align 8
  %71 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @evo_data(i32* %69, i32 %72)
  %74 = load i32*, i32** %13, align 8
  %75 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %76 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %77, 1024
  %79 = add nsw i32 2240, %78
  %80 = call i32 @evo_mthd(i32* %74, i32 %79, i32 1)
  %81 = load i32*, i32** %13, align 8
  %82 = load i32, i32* %9, align 4
  %83 = shl i32 %82, 16
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @evo_data(i32* %81, i32 %85)
  %87 = load %struct.nv50_mast*, %struct.nv50_mast** %12, align 8
  %88 = call i64 @nv50_vers(%struct.nv50_mast* %87)
  %89 = load i64, i64* @NV50_DISP_MAST_CLASS, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %30
  %92 = load i32*, i32** %13, align 8
  %93 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %94 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %95, 1024
  %97 = add nsw i32 2164, %96
  %98 = call i32 @evo_mthd(i32* %92, i32 %97, i32 1)
  %99 = load i32*, i32** %13, align 8
  %100 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %11, align 8
  %101 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @evo_data(i32* %99, i32 %102)
  br label %104

104:                                              ; preds = %91, %30
  br label %167

105:                                              ; preds = %25
  %106 = load i32*, i32** %13, align 8
  %107 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %108 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %109, 768
  %111 = add nsw i32 1120, %110
  %112 = call i32 @evo_mthd(i32* %106, i32 %111, i32 1)
  %113 = load i32*, i32** %13, align 8
  %114 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %11, align 8
  %115 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %114, i32 0, i32 3
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 8
  %121 = call i32 @evo_data(i32* %113, i32 %120)
  %122 = load i32*, i32** %13, align 8
  %123 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %124 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %125, 768
  %127 = add nsw i32 1128, %126
  %128 = call i32 @evo_mthd(i32* %122, i32 %127, i32 4)
  %129 = load i32*, i32** %13, align 8
  %130 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %131 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 16
  %134 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %135 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %133, %136
  %138 = call i32 @evo_data(i32* %129, i32 %137)
  %139 = load i32*, i32** %13, align 8
  %140 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %11, align 8
  %141 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @evo_data(i32* %139, i32 %142)
  %144 = load i32*, i32** %13, align 8
  %145 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %11, align 8
  %146 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @evo_data(i32* %144, i32 %147)
  %149 = load i32*, i32** %13, align 8
  %150 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %11, align 8
  %151 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @evo_data(i32* %149, i32 %152)
  %154 = load i32*, i32** %13, align 8
  %155 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %156 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = mul nsw i32 %157, 768
  %159 = add nsw i32 1200, %158
  %160 = call i32 @evo_mthd(i32* %154, i32 %159, i32 1)
  %161 = load i32*, i32** %13, align 8
  %162 = load i32, i32* %9, align 4
  %163 = shl i32 %162, 16
  %164 = load i32, i32* %8, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @evo_data(i32* %161, i32 %165)
  br label %167

167:                                              ; preds = %105, %104
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load i32*, i32** %13, align 8
  %172 = call i32 @evo_mthd(i32* %171, i32 128, i32 1)
  %173 = load i32*, i32** %13, align 8
  %174 = call i32 @evo_data(i32* %173, i32 0)
  br label %175

175:                                              ; preds = %170, %167
  %176 = load i32*, i32** %13, align 8
  %177 = load %struct.nv50_mast*, %struct.nv50_mast** %12, align 8
  %178 = call i32 @evo_kick(i32* %176, %struct.nv50_mast* %177)
  br label %179

179:                                              ; preds = %175, %5
  %180 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %11, align 8
  %181 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %184 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  store i32 %182, i32* %185, align 4
  ret i32 0
}

declare dso_local %struct.nouveau_framebuffer* @nouveau_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local %struct.nv50_mast* @nv50_mast(i32) #1

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
