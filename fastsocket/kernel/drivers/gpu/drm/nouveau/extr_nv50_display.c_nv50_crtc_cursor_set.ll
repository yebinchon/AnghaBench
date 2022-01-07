; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_cursor_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_cursor_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.nouveau_crtc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.nouveau_bo = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_file*, i32, i32, i32)* @nv50_crtc_cursor_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_crtc_cursor_set(%struct.drm_crtc* %0, %struct.drm_file* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nouveau_crtc*, align 8
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca %struct.drm_gem_object*, align 8
  %15 = alloca %struct.nouveau_bo*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %21 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %20)
  store %struct.nouveau_crtc* %21, %struct.nouveau_crtc** %12, align 8
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %23 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %22, i32 0, i32 0
  %24 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  store %struct.drm_device* %24, %struct.drm_device** %13, align 8
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %84

30:                                               ; preds = %5
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 64
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 64
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %101

39:                                               ; preds = %33
  %40 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %41 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device* %40, %struct.drm_file* %41, i32 %42)
  store %struct.drm_gem_object* %43, %struct.drm_gem_object** %14, align 8
  %44 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %45 = icmp ne %struct.drm_gem_object* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %101

53:                                               ; preds = %39
  %54 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %55 = call %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object* %54)
  store %struct.nouveau_bo* %55, %struct.nouveau_bo** %15, align 8
  %56 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %57 = call i32 @nouveau_bo_map(%struct.nouveau_bo* %56)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %53
  store i32 0, i32* %17, align 4
  br label %61

61:                                               ; preds = %75, %60
  %62 = load i32, i32* %17, align 4
  %63 = icmp slt i32 %62, 4096
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %66 = load i32, i32* %17, align 4
  %67 = call i32 @nouveau_bo_rd32(%struct.nouveau_bo* %65, i32 %66)
  store i32 %67, i32* %19, align 4
  %68 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %69 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %19, align 4
  %74 = call i32 @nouveau_bo_wr32(i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %17, align 4
  br label %61

78:                                               ; preds = %61
  %79 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %80 = call i32 @nouveau_bo_unmap(%struct.nouveau_bo* %79)
  br label %81

81:                                               ; preds = %78, %53
  %82 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %83 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %82)
  br label %84

84:                                               ; preds = %81, %5
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %87 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %85, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  %92 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @nv50_crtc_cursor_show_hide(%struct.nouveau_crtc* %92, i32 %93, i32 1)
  %95 = load i32, i32* %16, align 4
  %96 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %97 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 4
  br label %99

99:                                               ; preds = %91, %84
  %100 = load i32, i32* %18, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %99, %50, %36
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object*) #1

declare dso_local i32 @nouveau_bo_map(%struct.nouveau_bo*) #1

declare dso_local i32 @nouveau_bo_rd32(%struct.nouveau_bo*, i32) #1

declare dso_local i32 @nouveau_bo_wr32(i32, i32, i32) #1

declare dso_local i32 @nouveau_bo_unmap(%struct.nouveau_bo*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @nv50_crtc_cursor_show_hide(%struct.nouveau_crtc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
