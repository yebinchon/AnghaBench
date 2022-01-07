; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_free_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_free_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_i915_gem_object = type { i32, %struct.TYPE_8__, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i64, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_free_object(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %8 = call %struct.drm_i915_gem_object* @to_intel_bo(%struct.drm_gem_object* %7)
  store %struct.drm_i915_gem_object* %8, %struct.drm_i915_gem_object** %3, align 8
  %9 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %5, align 8
  %16 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %17 = call i32 @trace_i915_gem_object_destroy(%struct.drm_i915_gem_object* %16)
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %19 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %25 = call i32 @i915_gem_detach_phys_object(%struct.drm_device* %23, %struct.drm_i915_gem_object* %24)
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %28 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %30 = call i32 @i915_gem_object_unbind(%struct.drm_i915_gem_object* %29)
  %31 = load i32, i32* @ERESTARTSYS, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %26
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %46 = call i32 @i915_gem_object_unbind(%struct.drm_i915_gem_object* %45)
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %37, %26
  %53 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %54 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %56 = call i32 @i915_gem_object_put_pages(%struct.drm_i915_gem_object* %55)
  %57 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %58 = call i32 @i915_gem_object_free_mmap_offset(%struct.drm_i915_gem_object* %57)
  %59 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %60 = call i32 @i915_gem_object_release_stolen(%struct.drm_i915_gem_object* %59)
  %61 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %62 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @BUG_ON(i32 %63)
  %65 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %66 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %52
  %71 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %72 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %71, i32 0, i32 1
  %73 = call i32 @drm_prime_gem_destroy(%struct.TYPE_8__* %72, i32* null)
  br label %74

74:                                               ; preds = %70, %52
  %75 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %76 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %75, i32 0, i32 1
  %77 = call i32 @drm_gem_object_release(%struct.TYPE_8__* %76)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %80 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @i915_gem_info_remove_obj(%struct.TYPE_7__* %78, i32 %82)
  %84 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %85 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @kfree(i32 %86)
  %88 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %89 = call i32 @i915_gem_object_free(%struct.drm_i915_gem_object* %88)
  ret void
}

declare dso_local %struct.drm_i915_gem_object* @to_intel_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @trace_i915_gem_object_destroy(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_detach_phys_object(%struct.drm_device*, %struct.drm_i915_gem_object*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @i915_gem_object_unbind(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_put_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_free_mmap_offset(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_release_stolen(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @drm_prime_gem_destroy(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @drm_gem_object_release(%struct.TYPE_8__*) #1

declare dso_local i32 @i915_gem_info_remove_obj(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @i915_gem_object_free(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
