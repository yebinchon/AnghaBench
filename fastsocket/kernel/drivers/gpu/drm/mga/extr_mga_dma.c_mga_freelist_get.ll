; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_dma.c_mga_freelist_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_dma.c_mga_freelist_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_buf = type { i32 }
%struct.drm_device = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.drm_buf*, %struct.TYPE_11__, i32*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MGA_PRIMADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"   tail=0x%06lx %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"   head=0x%06lx %d\0A\00", align 1
@MGA_BUFFER_USED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"returning NULL!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_buf* (%struct.drm_device*)* @mga_freelist_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_buf* @mga_freelist_get(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_buf*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %7, align 8
  %16 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @MGA_PRIMADDRESS, align 4
  %18 = call i64 @MGA_READ(i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %33, %38
  br label %41

40:                                               ; preds = %1
  br label %41

41:                                               ; preds = %40, %29
  %42 = phi i64 [ %39, %29 ], [ 0, %40 ]
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %42, i32 %46)
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %48, %53
  %55 = load i64, i64* %9, align 8
  %56 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %54, i64 %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i64 @TEST_AGE(%struct.TYPE_11__* %58, i64 %59, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %41
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %6, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %5, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  store i32* null, i32** %73, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  store i32* null, i32** %75, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %77, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %80, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32, i32* @MGA_BUFFER_USED, align 4
  %84 = call i32 @SET_AGE(%struct.TYPE_11__* %82, i32 %83, i32 0)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load %struct.drm_buf*, %struct.drm_buf** %86, align 8
  store %struct.drm_buf* %87, %struct.drm_buf** %2, align 8
  br label %90

88:                                               ; preds = %41
  %89 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store %struct.drm_buf* null, %struct.drm_buf** %2, align 8
  br label %90

90:                                               ; preds = %88, %63
  %91 = load %struct.drm_buf*, %struct.drm_buf** %2, align 8
  ret %struct.drm_buf* %91
}

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i64 @MGA_READ(i32) #1

declare dso_local i64 @TEST_AGE(%struct.TYPE_11__*, i64, i64) #1

declare dso_local i32 @SET_AGE(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
