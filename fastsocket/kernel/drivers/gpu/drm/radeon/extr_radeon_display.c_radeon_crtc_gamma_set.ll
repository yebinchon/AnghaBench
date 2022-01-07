; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_crtc_gamma_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_crtc_gamma_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.radeon_crtc = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32*, i32*, i32*, i32, i32)* @radeon_crtc_gamma_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_crtc_gamma_set(%struct.drm_crtc* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.radeon_crtc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %17 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %16)
  store %struct.radeon_crtc* %17, %struct.radeon_crtc** %13, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = add nsw i32 %18, %19
  %21 = icmp sgt i32 %20, 256
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  br label %27

23:                                               ; preds = %6
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = add nsw i32 %24, %25
  br label %27

27:                                               ; preds = %23, %22
  %28 = phi i32 [ 256, %22 ], [ %26, %23 ]
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %15, align 4
  br label %30

30:                                               ; preds = %71, %27
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %30
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 6
  %41 = load %struct.radeon_crtc*, %struct.radeon_crtc** %13, align 8
  %42 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 6
  %53 = load %struct.radeon_crtc*, %struct.radeon_crtc** %13, align 8
  %54 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 6
  %65 = load %struct.radeon_crtc*, %struct.radeon_crtc** %13, align 8
  %66 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  br label %71

71:                                               ; preds = %34
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %15, align 4
  br label %30

74:                                               ; preds = %30
  %75 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %76 = call i32 @radeon_crtc_load_lut(%struct.drm_crtc* %75)
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @radeon_crtc_load_lut(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
