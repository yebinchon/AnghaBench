; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_vertex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_device_dma*, i32* }
%struct.drm_device_dma = type { i64, %struct.drm_buf** }
%struct.drm_buf = type { i32, i64, %struct.drm_file*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.drm_file = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"pid=%d index=%d count=%d discard=%d\0A\00", align 1
@DRM_CURRENTPID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"buffer index %d (of %d max)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@R128_CCE_VC_CNTL_PRIM_TYPE_TRI_TYPE2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"buffer prim %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"process %d using buffer owned by %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"sending pending buffer %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @r128_cce_vertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r128_cce_vertex(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.drm_device_dma*, align 8
  %10 = alloca %struct.drm_buf*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.drm_device_dma*, %struct.drm_device_dma** %17, align 8
  store %struct.drm_device_dma* %18, %struct.drm_device_dma** %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %12, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %23 = call i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device* %21, %struct.drm_file* %22)
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @DEV_INIT_TEST_WITH_RETURN(i32* %24)
  %26 = load i32, i32* @DRM_CURRENTPID, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %29, i32 %32, i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.drm_device_dma*, %struct.drm_device_dma** %9, align 8
  %46 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp uge i64 %44, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %41, %3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.drm_device_dma*, %struct.drm_device_dma** %9, align 8
  %54 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %55, 1
  %57 = call i32 (i8*, i64, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %52, i64 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %140

60:                                               ; preds = %41
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @R128_CCE_VC_CNTL_PRIM_TYPE_TRI_TYPE2, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65, %60
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i8*, i64, ...) @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %140

78:                                               ; preds = %65
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @RING_SPACE_TEST_WITH_RETURN(i32* %79)
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @VB_AGE_TEST_WITH_RETURN(i32* %81)
  %83 = load %struct.drm_device_dma*, %struct.drm_device_dma** %9, align 8
  %84 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %83, i32 0, i32 1
  %85 = load %struct.drm_buf**, %struct.drm_buf*** %84, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %85, i64 %88
  %90 = load %struct.drm_buf*, %struct.drm_buf** %89, align 8
  store %struct.drm_buf* %90, %struct.drm_buf** %10, align 8
  %91 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %92 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %91, i32 0, i32 3
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  store %struct.TYPE_4__* %93, %struct.TYPE_4__** %11, align 8
  %94 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %95 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %94, i32 0, i32 2
  %96 = load %struct.drm_file*, %struct.drm_file** %95, align 8
  %97 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %98 = icmp ne %struct.drm_file* %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %78
  %100 = load i32, i32* @DRM_CURRENTPID, align 4
  %101 = sext i32 %100 to i64
  %102 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %103 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %102, i32 0, i32 2
  %104 = load %struct.drm_file*, %struct.drm_file** %103, align 8
  %105 = call i32 (i8*, i64, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %101, %struct.drm_file* %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %140

108:                                              ; preds = %78
  %109 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %110 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 (i8*, i64, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %140

120:                                              ; preds = %108
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %125 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  %136 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %137 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %138 = call i32 @r128_cce_dispatch_vertex(%struct.drm_device* %136, %struct.drm_buf* %137)
  %139 = call i32 (...) @COMMIT_RING()
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %120, %113, %99, %71, %49
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @DEV_INIT_TEST_WITH_RETURN(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i64, ...) #1

declare dso_local i32 @RING_SPACE_TEST_WITH_RETURN(i32*) #1

declare dso_local i32 @VB_AGE_TEST_WITH_RETURN(i32*) #1

declare dso_local i32 @r128_cce_dispatch_vertex(%struct.drm_device*, %struct.drm_buf*) #1

declare dso_local i32 @COMMIT_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
