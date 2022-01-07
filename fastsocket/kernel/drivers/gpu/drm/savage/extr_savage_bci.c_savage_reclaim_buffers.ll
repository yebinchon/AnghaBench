; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/savage/extr_savage_bci.c_savage_reclaim_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/savage/extr_savage_bci.c_savage_reclaim_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_8__*, %struct.drm_device_dma* }
%struct.TYPE_8__ = type { i32 }
%struct.drm_device_dma = type { i32, %struct.drm_buf** }
%struct.drm_buf = type { %struct.drm_file*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32*, i32* }
%struct.drm_file = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"reclaimed from client\0A\00", align 1
@SAVAGE_WAIT_3D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @savage_reclaim_buffers(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.drm_device_dma*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_buf*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 1
  %14 = load %struct.drm_device_dma*, %struct.drm_device_dma** %13, align 8
  store %struct.drm_device_dma* %14, %struct.drm_device_dma** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.drm_device_dma*, %struct.drm_device_dma** %5, align 8
  %19 = icmp ne %struct.drm_device_dma* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %114

21:                                               ; preds = %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %114

25:                                               ; preds = %21
  %26 = load %struct.drm_device_dma*, %struct.drm_device_dma** %5, align 8
  %27 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %26, i32 0, i32 1
  %28 = load %struct.drm_buf**, %struct.drm_buf*** %27, align 8
  %29 = icmp ne %struct.drm_buf** %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %114

31:                                               ; preds = %25
  %32 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %33 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %38 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %46 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = call i32 @drm_idlelock_take(%struct.TYPE_10__* %48)
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %44, %36, %31
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %102, %50
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.drm_device_dma*, %struct.drm_device_dma** %5, align 8
  %54 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %105

57:                                               ; preds = %51
  %58 = load %struct.drm_device_dma*, %struct.drm_device_dma** %5, align 8
  %59 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %58, i32 0, i32 1
  %60 = load %struct.drm_buf**, %struct.drm_buf*** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %60, i64 %62
  %64 = load %struct.drm_buf*, %struct.drm_buf** %63, align 8
  store %struct.drm_buf* %64, %struct.drm_buf** %9, align 8
  %65 = load %struct.drm_buf*, %struct.drm_buf** %9, align 8
  %66 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %10, align 8
  %68 = load %struct.drm_buf*, %struct.drm_buf** %9, align 8
  %69 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %68, i32 0, i32 0
  %70 = load %struct.drm_file*, %struct.drm_file** %69, align 8
  %71 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %72 = icmp eq %struct.drm_file* %70, %71
  br i1 %72, label %73, label %101

73:                                               ; preds = %57
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %75 = icmp ne %struct.TYPE_9__* %74, null
  br i1 %75, label %76, label %101

76:                                               ; preds = %73
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %101

81:                                               ; preds = %76
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %101

86:                                               ; preds = %81
  %87 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = load i32, i32* @SAVAGE_WAIT_3D, align 4
  %90 = call i32 @savage_bci_emit_event(%struct.TYPE_8__* %88, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @SET_AGE(i32* %92, i32 %93, i32 %96)
  %98 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %99 = load %struct.drm_buf*, %struct.drm_buf** %9, align 8
  %100 = call i32 @savage_freelist_put(%struct.drm_device* %98, %struct.drm_buf* %99)
  br label %101

101:                                              ; preds = %86, %81, %76, %73, %57
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %51

105:                                              ; preds = %51
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %110 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = call i32 @drm_idlelock_release(%struct.TYPE_10__* %112)
  br label %114

114:                                              ; preds = %20, %24, %30, %108, %105
  ret void
}

declare dso_local i32 @drm_idlelock_take(%struct.TYPE_10__*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @savage_bci_emit_event(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @SET_AGE(i32*, i32, i32) #1

declare dso_local i32 @savage_freelist_put(%struct.drm_device*, %struct.drm_buf*) #1

declare dso_local i32 @drm_idlelock_release(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
