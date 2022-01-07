; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/savage/extr_savage_bci.c_savage_freelist_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/savage/extr_savage_bci.c_savage_freelist_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_buf = type { i32 }
%struct.drm_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.drm_buf*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SAVAGE_STATUS_WORD1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"   tail=0x%04x %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"   head=0x%04x %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"returning NULL, tail->buf=%p!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_buf* (%struct.drm_device*)* @savage_freelist_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_buf* @savage_freelist_get(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_buf*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %5, align 8
  %17 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (...) @UPDATE_EVENT_COUNTER()
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 65535
  store i32 %29, i32* %6, align 4
  br label %34

30:                                               ; preds = %1
  %31 = load i32, i32* @SAVAGE_STATUS_WORD1, align 4
  %32 = call i32 @SAVAGE_READ(i32 %31)
  %33 = and i32 %32, 65535
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, -1
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %34
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.drm_buf*, %struct.drm_buf** %60, align 8
  %62 = icmp ne %struct.drm_buf* %61, null
  br i1 %62, label %63, label %93

63:                                               ; preds = %46
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @TEST_AGE(%struct.TYPE_8__* %65, i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %70, %63
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %8, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %9, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %85, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %87, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.drm_buf*, %struct.drm_buf** %91, align 8
  store %struct.drm_buf* %92, %struct.drm_buf** %2, align 8
  br label %98

93:                                               ; preds = %70, %46
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.drm_buf*, %struct.drm_buf** %95, align 8
  %97 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), %struct.drm_buf* %96)
  store %struct.drm_buf* null, %struct.drm_buf** %2, align 8
  br label %98

98:                                               ; preds = %93, %73
  %99 = load %struct.drm_buf*, %struct.drm_buf** %2, align 8
  ret %struct.drm_buf* %99
}

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @UPDATE_EVENT_COUNTER(...) #1

declare dso_local i32 @SAVAGE_READ(i32) #1

declare dso_local i64 @TEST_AGE(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
