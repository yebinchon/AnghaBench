; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_init_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_init_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_init = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_init_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.drm_i915_gem_init*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.drm_i915_gem_init*
  store %struct.drm_i915_gem_init* %14, %struct.drm_i915_gem_init** %9, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = load i32, i32* @DRIVER_MODESET, align 4
  %17 = call i64 @drm_core_check_feature(%struct.drm_device* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %78

22:                                               ; preds = %3
  %23 = load %struct.drm_i915_gem_init*, %struct.drm_i915_gem_init** %9, align 8
  %24 = getelementptr inbounds %struct.drm_i915_gem_init, %struct.drm_i915_gem_init* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.drm_i915_gem_init*, %struct.drm_i915_gem_init** %9, align 8
  %27 = getelementptr inbounds %struct.drm_i915_gem_init, %struct.drm_i915_gem_init* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %22
  %31 = load %struct.drm_i915_gem_init*, %struct.drm_i915_gem_init** %9, align 8
  %32 = getelementptr inbounds %struct.drm_i915_gem_init, %struct.drm_i915_gem_init* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_i915_gem_init*, %struct.drm_i915_gem_init** %9, align 8
  %35 = getelementptr inbounds %struct.drm_i915_gem_init, %struct.drm_i915_gem_init* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %33, %36
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30, %22
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %78

45:                                               ; preds = %30
  %46 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %47 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 5
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %78

54:                                               ; preds = %45
  %55 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %59 = load %struct.drm_i915_gem_init*, %struct.drm_i915_gem_init** %9, align 8
  %60 = getelementptr inbounds %struct.drm_i915_gem_init, %struct.drm_i915_gem_init* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.drm_i915_gem_init*, %struct.drm_i915_gem_init** %9, align 8
  %63 = getelementptr inbounds %struct.drm_i915_gem_init, %struct.drm_i915_gem_init* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.drm_i915_gem_init*, %struct.drm_i915_gem_init** %9, align 8
  %66 = getelementptr inbounds %struct.drm_i915_gem_init, %struct.drm_i915_gem_init* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @i915_gem_setup_global_gtt(%struct.drm_device* %58, i32 %61, i32 %64, i32 %67)
  %69 = load %struct.drm_i915_gem_init*, %struct.drm_i915_gem_init** %9, align 8
  %70 = getelementptr inbounds %struct.drm_i915_gem_init, %struct.drm_i915_gem_init* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %73 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %76 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %54, %51, %42, %19
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i915_gem_setup_global_gtt(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
