; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_set_color_vibrance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_set_color_vibrance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_crtc = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nv50_mast = type { i32 }

@NVD0_DISP_MAST_CLASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_crtc*, i32)* @nv50_crtc_set_color_vibrance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_crtc_set_color_vibrance(%struct.nouveau_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv50_mast*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nouveau_crtc* %0, %struct.nouveau_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.nv50_mast* @nv50_mast(i32 %13)
  store %struct.nv50_mast* %14, %struct.nv50_mast** %5, align 8
  %15 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %16 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 50, i32 0
  store i32 %20, i32* %9, align 4
  %21 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %22 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 2047
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %24, %25
  %27 = sdiv i32 %26, 100
  %28 = and i32 %27, 4095
  store i32 %28, i32* %8, align 4
  %29 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %30 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 2047
  %33 = sdiv i32 %32, 100
  %34 = and i32 %33, 4095
  store i32 %34, i32* %7, align 4
  %35 = load %struct.nv50_mast*, %struct.nv50_mast** %5, align 8
  %36 = call i32* @evo_wait(%struct.nv50_mast* %35, i32 16)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %86

39:                                               ; preds = %2
  %40 = load %struct.nv50_mast*, %struct.nv50_mast** %5, align 8
  %41 = call i64 @nv50_vers(%struct.nv50_mast* %40)
  %42 = load i64, i64* @NVD0_DISP_MAST_CLASS, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %47 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 1024
  %50 = add nsw i32 2216, %49
  %51 = call i32 @evo_mthd(i32* %45, i32 %50, i32 1)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 %53, 20
  %55 = load i32, i32* %8, align 4
  %56 = shl i32 %55, 8
  %57 = or i32 %54, %56
  %58 = call i32 @evo_data(i32* %52, i32 %57)
  br label %74

59:                                               ; preds = %39
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %62 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 768
  %65 = add nsw i32 1176, %64
  %66 = call i32 @evo_mthd(i32* %60, i32 %65, i32 1)
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = shl i32 %68, 20
  %70 = load i32, i32* %8, align 4
  %71 = shl i32 %70, 8
  %72 = or i32 %69, %71
  %73 = call i32 @evo_data(i32* %67, i32 %72)
  br label %74

74:                                               ; preds = %59, %44
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @evo_mthd(i32* %78, i32 128, i32 1)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @evo_data(i32* %80, i32 0)
  br label %82

82:                                               ; preds = %77, %74
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.nv50_mast*, %struct.nv50_mast** %5, align 8
  %85 = call i32 @evo_kick(i32* %83, %struct.nv50_mast* %84)
  br label %86

86:                                               ; preds = %82, %2
  ret i32 0
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
