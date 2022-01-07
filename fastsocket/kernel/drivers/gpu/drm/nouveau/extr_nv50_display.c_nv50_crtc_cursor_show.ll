; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_cursor_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_cursor_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_crtc = type { i32, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nv50_mast = type { i32 }

@NV84_DISP_MAST_CLASS = common dso_local global i64 0, align 8
@NVD0_DISP_MAST_CLASS = common dso_local global i64 0, align 8
@NvEvoVRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_crtc*)* @nv50_crtc_cursor_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_crtc_cursor_show(%struct.nouveau_crtc* %0) #0 {
  %2 = alloca %struct.nouveau_crtc*, align 8
  %3 = alloca %struct.nv50_mast*, align 8
  %4 = alloca i32*, align 8
  store %struct.nouveau_crtc* %0, %struct.nouveau_crtc** %2, align 8
  %5 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %2, align 8
  %6 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.nv50_mast* @nv50_mast(i32 %8)
  store %struct.nv50_mast* %9, %struct.nv50_mast** %3, align 8
  %10 = load %struct.nv50_mast*, %struct.nv50_mast** %3, align 8
  %11 = call i32* @evo_wait(%struct.nv50_mast* %10, i32 16)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %109

14:                                               ; preds = %1
  %15 = load %struct.nv50_mast*, %struct.nv50_mast** %3, align 8
  %16 = call i64 @nv50_vers(%struct.nv50_mast* %15)
  %17 = load i64, i64* @NV84_DISP_MAST_CLASS, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %2, align 8
  %22 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %23, 1024
  %25 = add nsw i32 2176, %24
  %26 = call i32 @evo_mthd(i32* %20, i32 %25, i32 2)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @evo_data(i32* %27, i32 -2063597568)
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %2, align 8
  %31 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 8
  %38 = call i32 @evo_data(i32* %29, i32 %37)
  br label %105

39:                                               ; preds = %14
  %40 = load %struct.nv50_mast*, %struct.nv50_mast** %3, align 8
  %41 = call i64 @nv50_vers(%struct.nv50_mast* %40)
  %42 = load i64, i64* @NVD0_DISP_MAST_CLASS, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %39
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %2, align 8
  %47 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %48, 1024
  %50 = add nsw i32 2176, %49
  %51 = call i32 @evo_mthd(i32* %45, i32 %50, i32 2)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @evo_data(i32* %52, i32 -2063597568)
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %2, align 8
  %56 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 8
  %63 = call i32 @evo_data(i32* %54, i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %2, align 8
  %66 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 %67, 1024
  %69 = add nsw i32 2204, %68
  %70 = call i32 @evo_mthd(i32* %64, i32 %69, i32 1)
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* @NvEvoVRAM, align 4
  %73 = call i32 @evo_data(i32* %71, i32 %72)
  br label %104

74:                                               ; preds = %39
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %2, align 8
  %77 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %78, 768
  %80 = add nsw i32 1152, %79
  %81 = call i32 @evo_mthd(i32* %75, i32 %80, i32 2)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @evo_data(i32* %82, i32 -2063597568)
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %2, align 8
  %86 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 8
  %93 = call i32 @evo_data(i32* %84, i32 %92)
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %2, align 8
  %96 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 %97, 768
  %99 = add nsw i32 1164, %98
  %100 = call i32 @evo_mthd(i32* %94, i32 %99, i32 1)
  %101 = load i32*, i32** %4, align 8
  %102 = load i32, i32* @NvEvoVRAM, align 4
  %103 = call i32 @evo_data(i32* %101, i32 %102)
  br label %104

104:                                              ; preds = %74, %44
  br label %105

105:                                              ; preds = %104, %19
  %106 = load i32*, i32** %4, align 8
  %107 = load %struct.nv50_mast*, %struct.nv50_mast** %3, align 8
  %108 = call i32 @evo_kick(i32* %106, %struct.nv50_mast* %107)
  br label %109

109:                                              ; preds = %105, %1
  ret void
}

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
