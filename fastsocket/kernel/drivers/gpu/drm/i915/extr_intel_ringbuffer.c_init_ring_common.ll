; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_init_ring_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_init_ring_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i32, i32, i32, i32, i32, %struct.drm_device*, i32, i32 (%struct.intel_ring_buffer*, i32)*, %struct.drm_i915_gem_object* }
%struct.drm_device = type { i32* }
%struct.drm_i915_gem_object = type { i64 }

@HEAD_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"%s head not reset to zero ctl %08x head %08x tail %08x start %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"failed to set %s head to zero ctl %08x head %08x tail %08x start %08x\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@RING_NR_PAGES = common dso_local global i32 0, align 4
@RING_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"%s initialization failed ctl %08x head %08x tail %08x start %08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DRIVER_MODESET = common dso_local global i32 0, align 4
@TAIL_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*)* @init_ring_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_ring_common(%struct.intel_ring_buffer* %0) #0 {
  %2 = alloca %struct.intel_ring_buffer*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %2, align 8
  %8 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %8, i32 0, i32 5
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %15 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %14, i32 0, i32 8
  %16 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %15, align 8
  store %struct.drm_i915_gem_object* %16, %struct.drm_i915_gem_object** %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = call i64 @HAS_FORCE_WAKE(%struct.drm_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @gen6_gt_force_wake_get(i32* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %25 = call i32 @I915_WRITE_CTL(%struct.intel_ring_buffer* %24, i32 0)
  %26 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %27 = call i32 @I915_WRITE_HEAD(%struct.intel_ring_buffer* %26, i32 0)
  %28 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %29 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %28, i32 0, i32 7
  %30 = load i32 (%struct.intel_ring_buffer*, i32)*, i32 (%struct.intel_ring_buffer*, i32)** %29, align 8
  %31 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %32 = call i32 %30(%struct.intel_ring_buffer* %31, i32 0)
  %33 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %34 = call i32 @I915_READ_HEAD(%struct.intel_ring_buffer* %33)
  %35 = load i32, i32* @HEAD_ADDR, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %23
  %40 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %41 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %44 = call i32 @I915_READ_CTL(%struct.intel_ring_buffer* %43)
  %45 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %46 = call i32 @I915_READ_HEAD(%struct.intel_ring_buffer* %45)
  %47 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %48 = call i32 @I915_READ_TAIL(%struct.intel_ring_buffer* %47)
  %49 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %50 = call i64 @I915_READ_START(%struct.intel_ring_buffer* %49)
  %51 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %44, i32 %46, i32 %48, i64 %50)
  %52 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %53 = call i32 @I915_WRITE_HEAD(%struct.intel_ring_buffer* %52, i32 0)
  %54 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %55 = call i32 @I915_READ_HEAD(%struct.intel_ring_buffer* %54)
  %56 = load i32, i32* @HEAD_ADDR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %39
  %60 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %61 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %64 = call i32 @I915_READ_CTL(%struct.intel_ring_buffer* %63)
  %65 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %66 = call i32 @I915_READ_HEAD(%struct.intel_ring_buffer* %65)
  %67 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %68 = call i32 @I915_READ_TAIL(%struct.intel_ring_buffer* %67)
  %69 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %70 = call i64 @I915_READ_START(%struct.intel_ring_buffer* %69)
  %71 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %64, i32 %66, i32 %68, i64 %70)
  br label %72

72:                                               ; preds = %59, %39
  br label %73

73:                                               ; preds = %72, %23
  %74 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %75 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %76 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @I915_WRITE_START(%struct.intel_ring_buffer* %74, i64 %77)
  %79 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %80 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %81 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i32, i32* @RING_NR_PAGES, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @RING_VALID, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @I915_WRITE_CTL(%struct.intel_ring_buffer* %79, i32 %88)
  %90 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %91 = call i32 @I915_READ_CTL(%struct.intel_ring_buffer* %90)
  %92 = load i32, i32* @RING_VALID, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %73
  %96 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %97 = call i64 @I915_READ_START(%struct.intel_ring_buffer* %96)
  %98 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %99 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %104 = call i32 @I915_READ_HEAD(%struct.intel_ring_buffer* %103)
  %105 = load i32, i32* @HEAD_ADDR, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br label %108

108:                                              ; preds = %102, %95, %73
  %109 = phi i1 [ false, %95 ], [ false, %73 ], [ %107, %102 ]
  %110 = zext i1 %109 to i32
  %111 = call i64 @wait_for(i32 %110, i32 50)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %108
  %114 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %115 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %118 = call i32 @I915_READ_CTL(%struct.intel_ring_buffer* %117)
  %119 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %120 = call i32 @I915_READ_HEAD(%struct.intel_ring_buffer* %119)
  %121 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %122 = call i32 @I915_READ_TAIL(%struct.intel_ring_buffer* %121)
  %123 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %124 = call i64 @I915_READ_START(%struct.intel_ring_buffer* %123)
  %125 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %118, i32 %120, i32 %122, i64 %124)
  %126 = load i32, i32* @EIO, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %6, align 4
  br label %158

128:                                              ; preds = %108
  %129 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %130 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %129, i32 0, i32 5
  %131 = load %struct.drm_device*, %struct.drm_device** %130, align 8
  %132 = load i32, i32* @DRIVER_MODESET, align 4
  %133 = call i32 @drm_core_check_feature(%struct.drm_device* %131, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %128
  %136 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %137 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %136, i32 0, i32 5
  %138 = load %struct.drm_device*, %struct.drm_device** %137, align 8
  %139 = call i32 @i915_kernel_lost_context(%struct.drm_device* %138)
  br label %157

140:                                              ; preds = %128
  %141 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %142 = call i32 @I915_READ_HEAD(%struct.intel_ring_buffer* %141)
  %143 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %144 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %146 = call i32 @I915_READ_TAIL(%struct.intel_ring_buffer* %145)
  %147 = load i32, i32* @TAIL_ADDR, align 4
  %148 = and i32 %146, %147
  %149 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %150 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %152 = call i32 @ring_space(%struct.intel_ring_buffer* %151)
  %153 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %154 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 8
  %155 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %156 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %155, i32 0, i32 3
  store i32 -1, i32* %156, align 4
  br label %157

157:                                              ; preds = %140, %135
  br label %158

158:                                              ; preds = %157, %113
  %159 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %160 = call i64 @HAS_FORCE_WAKE(%struct.drm_device* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load i32*, i32** %4, align 8
  %164 = call i32 @gen6_gt_force_wake_put(i32* %163)
  br label %165

165:                                              ; preds = %162, %158
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local i64 @HAS_FORCE_WAKE(%struct.drm_device*) #1

declare dso_local i32 @gen6_gt_force_wake_get(i32*) #1

declare dso_local i32 @I915_WRITE_CTL(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @I915_WRITE_HEAD(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @I915_READ_HEAD(%struct.intel_ring_buffer*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @I915_READ_CTL(%struct.intel_ring_buffer*) #1

declare dso_local i32 @I915_READ_TAIL(%struct.intel_ring_buffer*) #1

declare dso_local i64 @I915_READ_START(%struct.intel_ring_buffer*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @I915_WRITE_START(%struct.intel_ring_buffer*, i64) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @i915_kernel_lost_context(%struct.drm_device*) #1

declare dso_local i32 @ring_space(%struct.intel_ring_buffer*) #1

declare dso_local i32 @gen6_gt_force_wake_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
