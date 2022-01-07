; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_freelist_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_freelist_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_buf = type { i64, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.drm_device = type { %struct.TYPE_6__*, %struct.drm_device_dma* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.drm_device_dma = type { i32, %struct.drm_buf** }

@.str = private unnamed_addr constant [15 x i8] c"done_age = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_buf* @radeon_freelist_get(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_buf*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_device_dma*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.drm_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 1
  %14 = load %struct.drm_device_dma*, %struct.drm_device_dma** %13, align 8
  store %struct.drm_device_dma* %14, %struct.drm_device_dma** %4, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %5, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.drm_device_dma*, %struct.drm_device_dma** %4, align 8
  %23 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %108, %29
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %111

39:                                               ; preds = %33
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = call i64 @GET_SCRATCH(%struct.TYPE_6__* %40, i32 1)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %42)
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %94, %39
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.drm_device_dma*, %struct.drm_device_dma** %4, align 8
  %47 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %97

50:                                               ; preds = %44
  %51 = load %struct.drm_device_dma*, %struct.drm_device_dma** %4, align 8
  %52 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %51, i32 0, i32 1
  %53 = load %struct.drm_buf**, %struct.drm_buf*** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %53, i64 %55
  %57 = load %struct.drm_buf*, %struct.drm_buf** %56, align 8
  store %struct.drm_buf* %57, %struct.drm_buf** %7, align 8
  %58 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %59 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %58, i32 0, i32 2
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %6, align 8
  %61 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %62 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %76, label %65

65:                                               ; preds = %50
  %66 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %67 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp sle i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %70, %50
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %83 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  store %struct.drm_buf* %84, %struct.drm_buf** %2, align 8
  br label %112

85:                                               ; preds = %70, %65
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  %88 = load %struct.drm_device_dma*, %struct.drm_device_dma** %4, align 8
  %89 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp sge i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %92, %85
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %44

97:                                               ; preds = %44
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = call i32 @DRM_UDELAY(i32 1)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %100, %97
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %33

111:                                              ; preds = %33
  store %struct.drm_buf* null, %struct.drm_buf** %2, align 8
  br label %112

112:                                              ; preds = %111, %76
  %113 = load %struct.drm_buf*, %struct.drm_buf** %2, align 8
  ret %struct.drm_buf* %113
}

declare dso_local i64 @GET_SCRATCH(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64) #1

declare dso_local i32 @DRM_UDELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
