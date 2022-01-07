; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_cursor_hide.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_cursor_hide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_crtc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nv50_mast = type { i32 }

@NV84_DISP_MAST_CLASS = common dso_local global i64 0, align 8
@NVD0_DISP_MAST_CLASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_crtc*)* @nv50_crtc_cursor_hide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_crtc_cursor_hide(%struct.nouveau_crtc* %0) #0 {
  %2 = alloca %struct.nouveau_crtc*, align 8
  %3 = alloca %struct.nv50_mast*, align 8
  %4 = alloca i32*, align 8
  store %struct.nouveau_crtc* %0, %struct.nouveau_crtc** %2, align 8
  %5 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %2, align 8
  %6 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.nv50_mast* @nv50_mast(i32 %8)
  store %struct.nv50_mast* %9, %struct.nv50_mast** %3, align 8
  %10 = load %struct.nv50_mast*, %struct.nv50_mast** %3, align 8
  %11 = call i32* @evo_wait(%struct.nv50_mast* %10, i32 16)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %77

14:                                               ; preds = %1
  %15 = load %struct.nv50_mast*, %struct.nv50_mast** %3, align 8
  %16 = call i64 @nv50_vers(%struct.nv50_mast* %15)
  %17 = load i64, i64* @NV84_DISP_MAST_CLASS, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %2, align 8
  %22 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 1024
  %25 = add nsw i32 2176, %24
  %26 = call i32 @evo_mthd(i32* %20, i32 %25, i32 1)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @evo_data(i32* %27, i32 83886080)
  br label %73

29:                                               ; preds = %14
  %30 = load %struct.nv50_mast*, %struct.nv50_mast** %3, align 8
  %31 = call i64 @nv50_vers(%struct.nv50_mast* %30)
  %32 = load i64, i64* @NVD0_DISP_MAST_CLASS, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %2, align 8
  %37 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 1024
  %40 = add nsw i32 2176, %39
  %41 = call i32 @evo_mthd(i32* %35, i32 %40, i32 1)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @evo_data(i32* %42, i32 83886080)
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %2, align 8
  %46 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 1024
  %49 = add nsw i32 2204, %48
  %50 = call i32 @evo_mthd(i32* %44, i32 %49, i32 1)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @evo_data(i32* %51, i32 0)
  br label %72

53:                                               ; preds = %29
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %2, align 8
  %56 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 768
  %59 = add nsw i32 1152, %58
  %60 = call i32 @evo_mthd(i32* %54, i32 %59, i32 1)
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @evo_data(i32* %61, i32 83886080)
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %2, align 8
  %65 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 768
  %68 = add nsw i32 1164, %67
  %69 = call i32 @evo_mthd(i32* %63, i32 %68, i32 1)
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @evo_data(i32* %70, i32 0)
  br label %72

72:                                               ; preds = %53, %34
  br label %73

73:                                               ; preds = %72, %19
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.nv50_mast*, %struct.nv50_mast** %3, align 8
  %76 = call i32 @evo_kick(i32* %74, %struct.nv50_mast* %75)
  br label %77

77:                                               ; preds = %73, %1
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
