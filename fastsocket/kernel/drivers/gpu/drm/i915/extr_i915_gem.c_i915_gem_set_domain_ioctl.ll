; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_set_domain_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_set_domain_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_set_domain = type { i32, i32, i32 }
%struct.drm_i915_gem_object = type { i32 }

@I915_GEM_GPU_DOMAINS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_set_domain_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_gem_set_domain*, align 8
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.drm_i915_gem_set_domain*
  store %struct.drm_i915_gem_set_domain* %14, %struct.drm_i915_gem_set_domain** %8, align 8
  %15 = load %struct.drm_i915_gem_set_domain*, %struct.drm_i915_gem_set_domain** %8, align 8
  %16 = getelementptr inbounds %struct.drm_i915_gem_set_domain, %struct.drm_i915_gem_set_domain* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.drm_i915_gem_set_domain*, %struct.drm_i915_gem_set_domain** %8, align 8
  %19 = getelementptr inbounds %struct.drm_i915_gem_set_domain, %struct.drm_i915_gem_set_domain* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @I915_GEM_GPU_DOMAINS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %110

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @I915_GEM_GPU_DOMAINS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %110

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %110

46:                                               ; preds = %39, %36
  %47 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %48 = call i32 @i915_mutex_lock_interruptible(%struct.drm_device* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %4, align 4
  br label %110

53:                                               ; preds = %46
  %54 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %55 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %56 = load %struct.drm_i915_gem_set_domain*, %struct.drm_i915_gem_set_domain** %8, align 8
  %57 = getelementptr inbounds %struct.drm_i915_gem_set_domain, %struct.drm_i915_gem_set_domain* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @drm_gem_object_lookup(%struct.drm_device* %54, %struct.drm_file* %55, i32 %58)
  %60 = call %struct.drm_i915_gem_object* @to_intel_bo(i32 %59)
  store %struct.drm_i915_gem_object* %60, %struct.drm_i915_gem_object** %9, align 8
  %61 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %62 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %61, i32 0, i32 0
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %12, align 4
  br label %105

67:                                               ; preds = %53
  %68 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @i915_gem_object_wait_rendering__nonblocking(%struct.drm_i915_gem_object* %68, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %101

77:                                               ; preds = %67
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @I915_GEM_DOMAIN_GTT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object* %83, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  store i32 0, i32* %12, align 4
  br label %93

93:                                               ; preds = %92, %82
  br label %100

94:                                               ; preds = %77
  %95 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @i915_gem_object_set_to_cpu_domain(%struct.drm_i915_gem_object* %95, i32 %98)
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %94, %93
  br label %101

101:                                              ; preds = %100, %76
  %102 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %103 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %102, i32 0, i32 0
  %104 = call i32 @drm_gem_object_unreference(i32* %103)
  br label %105

105:                                              ; preds = %101, %64
  %106 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %107 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %105, %51, %43, %33, %25
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @i915_mutex_lock_interruptible(%struct.drm_device*) #1

declare dso_local %struct.drm_i915_gem_object* @to_intel_bo(i32) #1

declare dso_local i32 @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @i915_gem_object_wait_rendering__nonblocking(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_set_to_cpu_domain(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @drm_gem_object_unreference(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
