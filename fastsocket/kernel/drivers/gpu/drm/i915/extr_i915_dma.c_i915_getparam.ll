; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_getparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_getparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_8__*, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, i32*, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"called with no initialization\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VCS = common dso_local global i64 0, align 8
@BCS = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unknown parameter %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"DRM_COPY_TO_USER failed\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @i915_getparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_getparam(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 2
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %9, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %133

22:                                               ; preds = %3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %115 [
    i32 130, label %26
    i32 152, label %35
    i32 129, label %43
    i32 151, label %46
    i32 142, label %50
    i32 128, label %51
    i32 139, label %59
    i32 138, label %66
    i32 146, label %67
    i32 148, label %68
    i32 149, label %75
    i32 134, label %82
    i32 147, label %83
    i32 145, label %84
    i32 135, label %91
    i32 141, label %92
    i32 140, label %93
    i32 150, label %96
    i32 131, label %104
    i32 132, label %105
    i32 136, label %108
    i32 133, label %109
    i32 137, label %112
    i32 143, label %113
    i32 144, label %114
  ]

26:                                               ; preds = %22
  %27 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  store i32 %34, i32* %10, align 4
  br label %122

35:                                               ; preds = %22
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  store i32 %42, i32* %10, align 4
  br label %122

43:                                               ; preds = %22
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = call i32 @READ_BREADCRUMB(%struct.TYPE_11__* %44)
  store i32 %45, i32* %10, align 4
  br label %122

46:                                               ; preds = %22
  %47 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %10, align 4
  br label %122

50:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %122

51:                                               ; preds = %22
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %54, %57
  store i32 %58, i32* %10, align 4
  br label %122

59:                                               ; preds = %22
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  store i32 %65, i32* %10, align 4
  br label %122

66:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %122

67:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %122

68:                                               ; preds = %22
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @VCS, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = call i32 @intel_ring_initialized(i32* %73)
  store i32 %74, i32* %10, align 4
  br label %122

75:                                               ; preds = %22
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @BCS, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = call i32 @intel_ring_initialized(i32* %80)
  store i32 %81, i32* %10, align 4
  br label %122

82:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %122

83:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %122

84:                                               ; preds = %22
  %85 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %86 = call %struct.TYPE_13__* @INTEL_INFO(%struct.drm_device* %85)
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp sge i32 %88, 4
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %10, align 4
  br label %122

91:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %122

92:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %122

93:                                               ; preds = %22
  %94 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %95 = call i32 @HAS_LLC(%struct.drm_device* %94)
  store i32 %95, i32* %10, align 4
  br label %122

96:                                               ; preds = %22
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 1, i32 0
  store i32 %103, i32* %10, align 4
  br label %122

104:                                              ; preds = %22
  store i32 1, i32* %10, align 4
  br label %122

105:                                              ; preds = %22
  %106 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %107 = call i32 @i915_semaphore_is_enabled(%struct.drm_device* %106)
  store i32 %107, i32* %10, align 4
  br label %122

108:                                              ; preds = %22
  store i32 1, i32* %10, align 4
  br label %122

109:                                              ; preds = %22
  %110 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %111 = call i32 @capable(i32 %110)
  store i32 %111, i32* %10, align 4
  br label %122

112:                                              ; preds = %22
  store i32 1, i32* %10, align 4
  br label %122

113:                                              ; preds = %22
  store i32 1, i32* %10, align 4
  br label %122

114:                                              ; preds = %22
  store i32 1, i32* %10, align 4
  br label %122

115:                                              ; preds = %22
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %133

122:                                              ; preds = %114, %113, %112, %109, %108, %105, %104, %96, %93, %92, %91, %84, %83, %82, %75, %68, %67, %66, %59, %51, %50, %46, %43, %35, %26
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @DRM_COPY_TO_USER(i32 %125, i32* %10, i32 4)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %130 = load i32, i32* @EFAULT, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %133

132:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %128, %115, %18
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @READ_BREADCRUMB(%struct.TYPE_11__*) #1

declare dso_local i32 @intel_ring_initialized(i32*) #1

declare dso_local %struct.TYPE_13__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @HAS_LLC(%struct.drm_device*) #1

declare dso_local i32 @i915_semaphore_is_enabled(%struct.drm_device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i64 @DRM_COPY_TO_USER(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
