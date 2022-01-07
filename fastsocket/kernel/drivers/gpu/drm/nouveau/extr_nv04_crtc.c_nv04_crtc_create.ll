; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_crtc.c_nv04_crtc_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_crtc.c_nv04_crtc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_crtc = type { i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32*, i32*, i32*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NV_DPMS_CLEARED = common dso_local global i32 0, align 4
@nv04_crtc_funcs = common dso_local global i32 0, align 4
@nv04_crtc_helper_funcs = common dso_local global i32 0, align 4
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_crtc_create(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.nouveau_crtc* @kzalloc(i32 48, i32 %9)
  store %struct.nouveau_crtc* %10, %struct.nouveau_crtc** %6, align 8
  %11 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %12 = icmp ne %struct.nouveau_crtc* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %115

16:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %48, %16
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 256
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = shl i32 %21, 8
  %23 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %24 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %22, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 %30, 8
  %32 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %33 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %31, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 %39, 8
  %41 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %42 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %40, i32* %47, align 4
  br label %48

48:                                               ; preds = %20
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %17

51:                                               ; preds = %17
  %52 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %53 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %57 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @NV_DPMS_CLEARED, align 4
  %59 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %60 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %62 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %63 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %62, i32 0, i32 2
  %64 = call i32 @drm_crtc_init(%struct.drm_device* %61, i32* %63, i32* @nv04_crtc_funcs)
  %65 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %66 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %65, i32 0, i32 2
  %67 = call i32 @drm_crtc_helper_add(i32* %66, i32* @nv04_crtc_helper_funcs)
  %68 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %69 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %68, i32 0, i32 2
  %70 = call i32 @drm_mode_crtc_set_gamma_size(i32* %69, i32 256)
  %71 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %72 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %73 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %74 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = call i32 @nouveau_bo_new(%struct.drm_device* %71, i32 16384, i32 256, i32 %72, i32 0, i32 0, i32* null, i32* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %112, label %79

79:                                               ; preds = %51
  %80 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %81 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %85 = call i32 @nouveau_bo_pin(i32 %83, i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %79
  %89 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %90 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @nouveau_bo_map(i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %98 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @nouveau_bo_unpin(i32 %100)
  br label %102

102:                                              ; preds = %96, %88
  br label %103

103:                                              ; preds = %102, %79
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %108 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = call i32 @nouveau_bo_ref(i32* null, i32* %109)
  br label %111

111:                                              ; preds = %106, %103
  br label %112

112:                                              ; preds = %111, %51
  %113 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %114 = call i32 @nv04_cursor_init(%struct.nouveau_crtc* %113)
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %112, %13
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.nouveau_crtc* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_crtc_init(%struct.drm_device*, i32*, i32*) #1

declare dso_local i32 @drm_crtc_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_mode_crtc_set_gamma_size(i32*, i32) #1

declare dso_local i32 @nouveau_bo_new(%struct.drm_device*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @nouveau_bo_pin(i32, i32) #1

declare dso_local i32 @nouveau_bo_map(i32) #1

declare dso_local i32 @nouveau_bo_unpin(i32) #1

declare dso_local i32 @nouveau_bo_ref(i32*, i32*) #1

declare dso_local i32 @nv04_cursor_init(%struct.nouveau_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
