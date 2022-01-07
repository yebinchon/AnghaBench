; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810_driver_reclaim_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810_driver_reclaim_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_device_dma* }
%struct.drm_device_dma = type { i32, %struct.drm_buf** }
%struct.drm_buf = type { %struct.drm_file*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.drm_file = type { i32 }

@I810_BUF_CLIENT = common dso_local global i32 0, align 4
@I810_BUF_FREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"reclaimed from client\0A\00", align 1
@I810_BUF_MAPPED = common dso_local global i64 0, align 8
@I810_BUF_UNMAPPED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i810_driver_reclaim_buffers(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.drm_device_dma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_buf*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = load %struct.drm_device_dma*, %struct.drm_device_dma** %11, align 8
  store %struct.drm_device_dma* %12, %struct.drm_device_dma** %5, align 8
  %13 = load %struct.drm_device_dma*, %struct.drm_device_dma** %5, align 8
  %14 = icmp ne %struct.drm_device_dma* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %83

16:                                               ; preds = %2
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %83

22:                                               ; preds = %16
  %23 = load %struct.drm_device_dma*, %struct.drm_device_dma** %5, align 8
  %24 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %23, i32 0, i32 1
  %25 = load %struct.drm_buf**, %struct.drm_buf*** %24, align 8
  %26 = icmp ne %struct.drm_buf** %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %83

28:                                               ; preds = %22
  %29 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %30 = call i32 @i810_flush_queue(%struct.drm_device* %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %80, %28
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.drm_device_dma*, %struct.drm_device_dma** %5, align 8
  %34 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %83

37:                                               ; preds = %31
  %38 = load %struct.drm_device_dma*, %struct.drm_device_dma** %5, align 8
  %39 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %38, i32 0, i32 1
  %40 = load %struct.drm_buf**, %struct.drm_buf*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %40, i64 %42
  %44 = load %struct.drm_buf*, %struct.drm_buf** %43, align 8
  store %struct.drm_buf* %44, %struct.drm_buf** %7, align 8
  %45 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %46 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  store %struct.TYPE_2__* %47, %struct.TYPE_2__** %8, align 8
  %48 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %49 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %48, i32 0, i32 0
  %50 = load %struct.drm_file*, %struct.drm_file** %49, align 8
  %51 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %52 = icmp eq %struct.drm_file* %50, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %37
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %55 = icmp ne %struct.TYPE_2__* %54, null
  br i1 %55, label %56, label %79

56:                                               ; preds = %53
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @I810_BUF_CLIENT, align 4
  %61 = load i32, i32* @I810_BUF_FREE, align 4
  %62 = call i32 @cmpxchg(i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @I810_BUF_CLIENT, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %56
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @I810_BUF_MAPPED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i64, i64* @I810_BUF_UNMAPPED, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %74, %68
  br label %79

79:                                               ; preds = %78, %53, %37
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %31

83:                                               ; preds = %15, %21, %27, %31
  ret void
}

declare dso_local i32 @i810_flush_queue(%struct.drm_device*) #1

declare dso_local i32 @cmpxchg(i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
