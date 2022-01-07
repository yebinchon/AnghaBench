; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_state.c_mga_dma_iload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_state.c_mga_dma_iload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_8__*, %struct.drm_device_dma* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.drm_device_dma = type { i64, %struct.drm_buf** }
%struct.drm_buf = type { i32* }
%struct.drm_file = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MGA_UPLOAD_CONTEXT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MGA_DMA_DEBUG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @mga_dma_iload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mga_dma_iload(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_device_dma*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.drm_buf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 1
  %15 = load %struct.drm_device_dma*, %struct.drm_device_dma** %14, align 8
  store %struct.drm_device_dma* %15, %struct.drm_device_dma** %8, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %12, align 8
  %21 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %24 = call i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device* %22, %struct.drm_file* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %34 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ugt i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29, %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %86

40:                                               ; preds = %29
  %41 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %42 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %41, i32 0, i32 1
  %43 = load %struct.drm_buf**, %struct.drm_buf*** %42, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %43, i64 %46
  %48 = load %struct.drm_buf*, %struct.drm_buf** %47, align 8
  store %struct.drm_buf* %48, %struct.drm_buf** %10, align 8
  %49 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %50 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %11, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @mga_verify_iload(%struct.TYPE_8__* %52, i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %40
  %62 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %63 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %64 = call i32 @mga_freelist_put(%struct.drm_device* %62, %struct.drm_buf* %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %86

67:                                               ; preds = %40
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = call i32 @WRAP_TEST_WITH_RETURN(%struct.TYPE_8__* %68)
  %70 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %71 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @mga_dma_dispatch_iload(%struct.drm_device* %70, %struct.drm_buf* %71, i32 %74, i32 %77)
  %79 = load i32, i32* @MGA_UPLOAD_CONTEXT, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %79
  store i32 %85, i32* %83, align 4
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %67, %61, %37
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i64 @mga_verify_iload(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mga_freelist_put(%struct.drm_device*, %struct.drm_buf*) #1

declare dso_local i32 @WRAP_TEST_WITH_RETURN(%struct.TYPE_8__*) #1

declare dso_local i32 @mga_dma_dispatch_iload(%struct.drm_device*, %struct.drm_buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
