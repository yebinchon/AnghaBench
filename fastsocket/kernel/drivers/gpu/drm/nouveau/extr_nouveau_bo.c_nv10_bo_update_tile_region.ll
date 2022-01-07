; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv10_bo_update_tile_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv10_bo_update_tile_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm_tile = type { i32 }
%struct.nouveau_drm = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nouveau_drm_tile* }
%struct.nouveau_fb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.nouveau_fb.0*, i32, %struct.nouveau_fb_tile*)*, i32 (%struct.nouveau_fb.1*, i32, i32, i32, i32, i32, %struct.nouveau_fb_tile*)*, i32 (%struct.nouveau_fb.2*, i32, %struct.nouveau_fb_tile*)*, %struct.nouveau_fb_tile* }
%struct.nouveau_fb.0 = type opaque
%struct.nouveau_fb.1 = type opaque
%struct.nouveau_fb.2 = type opaque
%struct.nouveau_fb_tile = type { i64 }
%struct.nouveau_engine = type { i32 (%struct.nouveau_engine*, i32)* }

@NVDEV_ENGINE_GR = common dso_local global i32 0, align 4
@NVDEV_ENGINE_MPEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.nouveau_drm_tile*, i32, i32, i32, i32)* @nv10_bo_update_tile_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10_bo_update_tile_region(%struct.drm_device* %0, %struct.nouveau_drm_tile* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.nouveau_drm_tile*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_drm*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nouveau_fb*, align 8
  %16 = alloca %struct.nouveau_fb_tile*, align 8
  %17 = alloca %struct.nouveau_engine*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store %struct.nouveau_drm_tile* %1, %struct.nouveau_drm_tile** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %19 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %18)
  store %struct.nouveau_drm* %19, %struct.nouveau_drm** %13, align 8
  %20 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %8, align 8
  %21 = load %struct.nouveau_drm*, %struct.nouveau_drm** %13, align 8
  %22 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %23, align 8
  %25 = ptrtoint %struct.nouveau_drm_tile* %20 to i64
  %26 = ptrtoint %struct.nouveau_drm_tile* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %14, align 4
  %30 = load %struct.nouveau_drm*, %struct.nouveau_drm** %13, align 8
  %31 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.nouveau_fb* @nouveau_fb(i32 %32)
  store %struct.nouveau_fb* %33, %struct.nouveau_fb** %15, align 8
  %34 = load %struct.nouveau_fb*, %struct.nouveau_fb** %15, align 8
  %35 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %36, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %37, i64 %39
  store %struct.nouveau_fb_tile* %40, %struct.nouveau_fb_tile** %16, align 8
  %41 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %8, align 8
  %42 = getelementptr inbounds %struct.nouveau_drm_tile, %struct.nouveau_drm_tile* %41, i32 0, i32 0
  %43 = call i32 @nouveau_fence_unref(i32* %42)
  %44 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %16, align 8
  %45 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %6
  %49 = load %struct.nouveau_fb*, %struct.nouveau_fb** %15, align 8
  %50 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32 (%struct.nouveau_fb.2*, i32, %struct.nouveau_fb_tile*)*, i32 (%struct.nouveau_fb.2*, i32, %struct.nouveau_fb_tile*)** %51, align 8
  %53 = load %struct.nouveau_fb*, %struct.nouveau_fb** %15, align 8
  %54 = bitcast %struct.nouveau_fb* %53 to %struct.nouveau_fb.2*
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %16, align 8
  %57 = call i32 %52(%struct.nouveau_fb.2* %54, i32 %55, %struct.nouveau_fb_tile* %56)
  br label %58

58:                                               ; preds = %48, %6
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load %struct.nouveau_fb*, %struct.nouveau_fb** %15, align 8
  %63 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32 (%struct.nouveau_fb.1*, i32, i32, i32, i32, i32, %struct.nouveau_fb_tile*)*, i32 (%struct.nouveau_fb.1*, i32, i32, i32, i32, i32, %struct.nouveau_fb_tile*)** %64, align 8
  %66 = load %struct.nouveau_fb*, %struct.nouveau_fb** %15, align 8
  %67 = bitcast %struct.nouveau_fb* %66 to %struct.nouveau_fb.1*
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %16, align 8
  %74 = call i32 %65(%struct.nouveau_fb.1* %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, %struct.nouveau_fb_tile* %73)
  br label %75

75:                                               ; preds = %61, %58
  %76 = load %struct.nouveau_fb*, %struct.nouveau_fb** %15, align 8
  %77 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32 (%struct.nouveau_fb.0*, i32, %struct.nouveau_fb_tile*)*, i32 (%struct.nouveau_fb.0*, i32, %struct.nouveau_fb_tile*)** %78, align 8
  %80 = load %struct.nouveau_fb*, %struct.nouveau_fb** %15, align 8
  %81 = bitcast %struct.nouveau_fb* %80 to %struct.nouveau_fb.0*
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %16, align 8
  %84 = call i32 %79(%struct.nouveau_fb.0* %81, i32 %82, %struct.nouveau_fb_tile* %83)
  %85 = load %struct.nouveau_fb*, %struct.nouveau_fb** %15, align 8
  %86 = load i32, i32* @NVDEV_ENGINE_GR, align 4
  %87 = call %struct.nouveau_engine* @nouveau_engine(%struct.nouveau_fb* %85, i32 %86)
  store %struct.nouveau_engine* %87, %struct.nouveau_engine** %17, align 8
  %88 = icmp ne %struct.nouveau_engine* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %75
  %90 = load %struct.nouveau_engine*, %struct.nouveau_engine** %17, align 8
  %91 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %90, i32 0, i32 0
  %92 = load i32 (%struct.nouveau_engine*, i32)*, i32 (%struct.nouveau_engine*, i32)** %91, align 8
  %93 = load %struct.nouveau_engine*, %struct.nouveau_engine** %17, align 8
  %94 = load i32, i32* %14, align 4
  %95 = call i32 %92(%struct.nouveau_engine* %93, i32 %94)
  br label %96

96:                                               ; preds = %89, %75
  %97 = load %struct.nouveau_fb*, %struct.nouveau_fb** %15, align 8
  %98 = load i32, i32* @NVDEV_ENGINE_MPEG, align 4
  %99 = call %struct.nouveau_engine* @nouveau_engine(%struct.nouveau_fb* %97, i32 %98)
  store %struct.nouveau_engine* %99, %struct.nouveau_engine** %17, align 8
  %100 = icmp ne %struct.nouveau_engine* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.nouveau_engine*, %struct.nouveau_engine** %17, align 8
  %103 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %102, i32 0, i32 0
  %104 = load i32 (%struct.nouveau_engine*, i32)*, i32 (%struct.nouveau_engine*, i32)** %103, align 8
  %105 = load %struct.nouveau_engine*, %struct.nouveau_engine** %17, align 8
  %106 = load i32, i32* %14, align 4
  %107 = call i32 %104(%struct.nouveau_engine* %105, i32 %106)
  br label %108

108:                                              ; preds = %101, %96
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_fb* @nouveau_fb(i32) #1

declare dso_local i32 @nouveau_fence_unref(i32*) #1

declare dso_local %struct.nouveau_engine* @nouveau_engine(%struct.nouveau_fb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
