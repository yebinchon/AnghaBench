; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_wait_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_wait_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_wait = type { i64, i32 }
%struct.drm_i915_gem_object = type { i64, i32, %struct.intel_ring_buffer*, i64 }
%struct.intel_ring_buffer = type { i32 }
%struct.timespec = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_wait_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.drm_i915_gem_wait*, align 8
  %10 = alloca %struct.drm_i915_gem_object*, align 8
  %11 = alloca %struct.intel_ring_buffer*, align 8
  %12 = alloca %struct.timespec, align 4
  %13 = alloca %struct.timespec*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.timespec, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %8, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to %struct.drm_i915_gem_wait*
  store %struct.drm_i915_gem_wait* %22, %struct.drm_i915_gem_wait** %9, align 8
  store %struct.intel_ring_buffer* null, %struct.intel_ring_buffer** %11, align 8
  store %struct.timespec* null, %struct.timespec** %13, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %23 = load %struct.drm_i915_gem_wait*, %struct.drm_i915_gem_wait** %9, align 8
  %24 = getelementptr inbounds %struct.drm_i915_gem_wait, %struct.drm_i915_gem_wait* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  %28 = load %struct.drm_i915_gem_wait*, %struct.drm_i915_gem_wait** %9, align 8
  %29 = getelementptr inbounds %struct.drm_i915_gem_wait, %struct.drm_i915_gem_wait* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @ns_to_timespec(i64 %30)
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %17, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = bitcast %struct.timespec* %12 to i8*
  %34 = bitcast %struct.timespec* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  store %struct.timespec* %12, %struct.timespec** %13, align 8
  br label %35

35:                                               ; preds = %27, %3
  %36 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %37 = call i32 @i915_mutex_lock_interruptible(%struct.drm_device* %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %16, align 4
  store i32 %41, i32* %4, align 4
  br label %128

42:                                               ; preds = %35
  %43 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %44 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %45 = load %struct.drm_i915_gem_wait*, %struct.drm_i915_gem_wait** %9, align 8
  %46 = getelementptr inbounds %struct.drm_i915_gem_wait, %struct.drm_i915_gem_wait* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @drm_gem_object_lookup(%struct.drm_device* %43, %struct.drm_file* %44, i32 %47)
  %49 = call %struct.drm_i915_gem_object* @to_intel_bo(i32 %48)
  store %struct.drm_i915_gem_object* %49, %struct.drm_i915_gem_object** %10, align 8
  %50 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %51 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %50, i32 0, i32 1
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %55 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %128

59:                                               ; preds = %42
  %60 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %61 = call i32 @i915_gem_object_flush_active(%struct.drm_i915_gem_object* %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %120

65:                                               ; preds = %59
  %66 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %67 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %72 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %15, align 8
  %74 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %75 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %74, i32 0, i32 2
  %76 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %75, align 8
  store %struct.intel_ring_buffer* %76, %struct.intel_ring_buffer** %11, align 8
  br label %77

77:                                               ; preds = %70, %65
  %78 = load i64, i64* %15, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %120

81:                                               ; preds = %77
  %82 = load %struct.drm_i915_gem_wait*, %struct.drm_i915_gem_wait** %9, align 8
  %83 = getelementptr inbounds %struct.drm_i915_gem_wait, %struct.drm_i915_gem_wait* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* @ETIME, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %16, align 4
  br label %120

89:                                               ; preds = %81
  %90 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %91 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %90, i32 0, i32 1
  %92 = call i32 @drm_gem_object_unreference(i32* %91)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = call i32 @atomic_read(i32* %95)
  store i32 %96, i32* %14, align 4
  %97 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %98 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %11, align 8
  %101 = load i64, i64* %15, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.timespec*, %struct.timespec** %13, align 8
  %104 = call i32 @__wait_seqno(%struct.intel_ring_buffer* %100, i64 %101, i32 %102, i32 1, %struct.timespec* %103)
  store i32 %104, i32* %16, align 4
  %105 = load %struct.timespec*, %struct.timespec** %13, align 8
  %106 = icmp ne %struct.timespec* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %89
  %108 = load %struct.timespec*, %struct.timespec** %13, align 8
  %109 = call i32 @timespec_valid(%struct.timespec* %108)
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call i32 @WARN_ON(i32 %112)
  %114 = load %struct.timespec*, %struct.timespec** %13, align 8
  %115 = call i64 @timespec_to_ns(%struct.timespec* %114)
  %116 = load %struct.drm_i915_gem_wait*, %struct.drm_i915_gem_wait** %9, align 8
  %117 = getelementptr inbounds %struct.drm_i915_gem_wait, %struct.drm_i915_gem_wait* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %107, %89
  %119 = load i32, i32* %16, align 4
  store i32 %119, i32* %4, align 4
  br label %128

120:                                              ; preds = %86, %80, %64
  %121 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %122 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %121, i32 0, i32 1
  %123 = call i32 @drm_gem_object_unreference(i32* %122)
  %124 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %125 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %124, i32 0, i32 0
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* %16, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %120, %118, %53, %40
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @ns_to_timespec(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i915_mutex_lock_interruptible(%struct.drm_device*) #1

declare dso_local %struct.drm_i915_gem_object* @to_intel_bo(i32) #1

declare dso_local i32 @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i915_gem_object_flush_active(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @drm_gem_object_unreference(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @__wait_seqno(%struct.intel_ring_buffer*, i64, i32, i32, %struct.timespec*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @timespec_valid(%struct.timespec*) #1

declare dso_local i64 @timespec_to_ns(%struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
