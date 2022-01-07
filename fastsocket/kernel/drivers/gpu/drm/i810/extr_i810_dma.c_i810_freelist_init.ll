; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810_freelist_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810_freelist_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_device_dma* }
%struct.drm_device_dma = type { i32, %struct.drm_buf** }
%struct.drm_buf = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, i32, i32* }
%struct.TYPE_7__ = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@I810_BUF_FREE = common dso_local global i32 0, align 4
@_DRM_AGP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.TYPE_5__*)* @i810_freelist_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i810_freelist_init(%struct.drm_device* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.drm_device_dma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_buf*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.drm_device_dma*, %struct.drm_device_dma** %13, align 8
  store %struct.drm_device_dma* %14, %struct.drm_device_dma** %6, align 8
  store i32 24, i32* %7, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %8, align 8
  %22 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %23 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 1019
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %96

29:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %92, %29
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %33 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %95

36:                                               ; preds = %30
  %37 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %38 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %37, i32 0, i32 1
  %39 = load %struct.drm_buf**, %struct.drm_buf*** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %39, i64 %41
  %43 = load %struct.drm_buf*, %struct.drm_buf** %42, align 8
  store %struct.drm_buf* %43, %struct.drm_buf** %10, align 8
  %44 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %45 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %11, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %8, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  store i32* %47, i32** %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 4
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @I810_BUF_FREE, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  store i32 %56, i32* %59, align 4
  %60 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %61 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 5
  store i32 %62, i32* %65, align 8
  %66 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %67 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @_DRM_AGP, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %85 = call i32 @drm_core_ioremap(%struct.TYPE_7__* %83, %struct.drm_device* %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %36
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %30

95:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %26
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @drm_core_ioremap(%struct.TYPE_7__*, %struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
