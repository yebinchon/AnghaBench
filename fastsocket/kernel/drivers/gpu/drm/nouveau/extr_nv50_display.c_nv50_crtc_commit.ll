; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32 }
%struct.nouveau_crtc = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.nv50_mast = type { i32 }

@NV84_DISP_MAST_CLASS = common dso_local global i64 0, align 8
@NvEvoVRAM_LP = common dso_local global i32 0, align 4
@NVD0_DISP_MAST_CLASS = common dso_local global i64 0, align 8
@NvEvoVRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @nv50_crtc_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_crtc_commit(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.nouveau_crtc*, align 8
  %4 = alloca %struct.nv50_mast*, align 8
  %5 = alloca i32*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %7 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %6)
  store %struct.nouveau_crtc* %7, %struct.nouveau_crtc** %3, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nv50_mast* @nv50_mast(i32 %10)
  store %struct.nv50_mast* %11, %struct.nv50_mast** %4, align 8
  %12 = load %struct.nv50_mast*, %struct.nv50_mast** %4, align 8
  %13 = call i32* @evo_wait(%struct.nv50_mast* %12, i32 32)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %160

16:                                               ; preds = %1
  %17 = load %struct.nv50_mast*, %struct.nv50_mast** %4, align 8
  %18 = call i64 @nv50_vers(%struct.nv50_mast* %17)
  %19 = load i64, i64* @NV84_DISP_MAST_CLASS, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %24 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 1024
  %27 = add nsw i32 2164, %26
  %28 = call i32 @evo_mthd(i32* %22, i32 %27, i32 1)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @NvEvoVRAM_LP, align 4
  %31 = call i32 @evo_data(i32* %29, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %34 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %35, 1024
  %37 = add nsw i32 2112, %36
  %38 = call i32 @evo_mthd(i32* %32, i32 %37, i32 2)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @evo_data(i32* %39, i32 -1073741824)
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %43 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 8
  %50 = call i32 @evo_data(i32* %41, i32 %49)
  br label %156

51:                                               ; preds = %16
  %52 = load %struct.nv50_mast*, %struct.nv50_mast** %4, align 8
  %53 = call i64 @nv50_vers(%struct.nv50_mast* %52)
  %54 = load i64, i64* @NVD0_DISP_MAST_CLASS, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %99

56:                                               ; preds = %51
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %59 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %60, 1024
  %62 = add nsw i32 2164, %61
  %63 = call i32 @evo_mthd(i32* %57, i32 %62, i32 1)
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %66 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @evo_data(i32* %64, i32 %68)
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %72 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %73, 1024
  %75 = add nsw i32 2112, %74
  %76 = call i32 @evo_mthd(i32* %70, i32 %75, i32 2)
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @evo_data(i32* %77, i32 -1073741824)
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %81 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 8
  %88 = call i32 @evo_data(i32* %79, i32 %87)
  %89 = load i32*, i32** %5, align 8
  %90 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %91 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 %92, 1024
  %94 = add nsw i32 2140, %93
  %95 = call i32 @evo_mthd(i32* %89, i32 %94, i32 1)
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* @NvEvoVRAM, align 4
  %98 = call i32 @evo_data(i32* %96, i32 %97)
  br label %155

99:                                               ; preds = %51
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %102 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = mul nsw i32 %103, 768
  %105 = add nsw i32 1140, %104
  %106 = call i32 @evo_mthd(i32* %100, i32 %105, i32 1)
  %107 = load i32*, i32** %5, align 8
  %108 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %109 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @evo_data(i32* %107, i32 %111)
  %113 = load i32*, i32** %5, align 8
  %114 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %115 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %116, 768
  %118 = add nsw i32 1088, %117
  %119 = call i32 @evo_mthd(i32* %113, i32 %118, i32 4)
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @evo_data(i32* %120, i32 -2097152000)
  %122 = load i32*, i32** %5, align 8
  %123 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %124 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 8
  %131 = call i32 @evo_data(i32* %122, i32 %130)
  %132 = load i32*, i32** %5, align 8
  %133 = call i32 @evo_data(i32* %132, i32 0)
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @evo_data(i32* %134, i32 0)
  %136 = load i32*, i32** %5, align 8
  %137 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %138 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = mul nsw i32 %139, 768
  %141 = add nsw i32 1116, %140
  %142 = call i32 @evo_mthd(i32* %136, i32 %141, i32 1)
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* @NvEvoVRAM, align 4
  %145 = call i32 @evo_data(i32* %143, i32 %144)
  %146 = load i32*, i32** %5, align 8
  %147 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %148 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = mul nsw i32 %149, 768
  %151 = add nsw i32 1072, %150
  %152 = call i32 @evo_mthd(i32* %146, i32 %151, i32 1)
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @evo_data(i32* %153, i32 -256)
  br label %155

155:                                              ; preds = %99, %56
  br label %156

156:                                              ; preds = %155, %21
  %157 = load i32*, i32** %5, align 8
  %158 = load %struct.nv50_mast*, %struct.nv50_mast** %4, align 8
  %159 = call i32 @evo_kick(i32* %157, %struct.nv50_mast* %158)
  br label %160

160:                                              ; preds = %156, %1
  %161 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %162 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %163 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @nv50_crtc_cursor_show_hide(%struct.nouveau_crtc* %161, i32 %165, i32 1)
  %167 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %168 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %169 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @nv50_display_flip_next(%struct.drm_crtc* %167, i32 %170, i32* null, i32 1)
  ret void
}

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.nv50_mast* @nv50_mast(i32) #1

declare dso_local i32* @evo_wait(%struct.nv50_mast*, i32) #1

declare dso_local i64 @nv50_vers(%struct.nv50_mast*) #1

declare dso_local i32 @evo_mthd(i32*, i32, i32) #1

declare dso_local i32 @evo_data(i32*, i32) #1

declare dso_local i32 @evo_kick(i32*, %struct.nv50_mast*) #1

declare dso_local i32 @nv50_crtc_cursor_show_hide(%struct.nouveau_crtc*, i32, i32) #1

declare dso_local i32 @nv50_display_flip_next(%struct.drm_crtc*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
