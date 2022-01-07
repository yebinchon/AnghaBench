; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_free_phys_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_free_phys_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_i915_gem_phys_object** }
%struct.drm_i915_gem_phys_object = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32)* @i915_gem_free_phys_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_gem_free_phys_object(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.drm_i915_gem_phys_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_gem_phys_object**, %struct.drm_i915_gem_phys_object*** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.drm_i915_gem_phys_object*, %struct.drm_i915_gem_phys_object** %13, i64 %16
  %18 = load %struct.drm_i915_gem_phys_object*, %struct.drm_i915_gem_phys_object** %17, align 8
  %19 = icmp ne %struct.drm_i915_gem_phys_object* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %57

21:                                               ; preds = %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.drm_i915_gem_phys_object**, %struct.drm_i915_gem_phys_object*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.drm_i915_gem_phys_object*, %struct.drm_i915_gem_phys_object** %25, i64 %28
  %30 = load %struct.drm_i915_gem_phys_object*, %struct.drm_i915_gem_phys_object** %29, align 8
  store %struct.drm_i915_gem_phys_object* %30, %struct.drm_i915_gem_phys_object** %6, align 8
  %31 = load %struct.drm_i915_gem_phys_object*, %struct.drm_i915_gem_phys_object** %6, align 8
  %32 = getelementptr inbounds %struct.drm_i915_gem_phys_object, %struct.drm_i915_gem_phys_object* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %21
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = load %struct.drm_i915_gem_phys_object*, %struct.drm_i915_gem_phys_object** %6, align 8
  %38 = getelementptr inbounds %struct.drm_i915_gem_phys_object, %struct.drm_i915_gem_phys_object* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @i915_gem_detach_phys_object(%struct.drm_device* %36, i64 %39)
  br label %41

41:                                               ; preds = %35, %21
  %42 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %43 = load %struct.drm_i915_gem_phys_object*, %struct.drm_i915_gem_phys_object** %6, align 8
  %44 = getelementptr inbounds %struct.drm_i915_gem_phys_object, %struct.drm_i915_gem_phys_object* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = call i32 @drm_pci_free(%struct.drm_device* %42, %struct.TYPE_6__* %45)
  %47 = load %struct.drm_i915_gem_phys_object*, %struct.drm_i915_gem_phys_object** %6, align 8
  %48 = call i32 @kfree(%struct.drm_i915_gem_phys_object* %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.drm_i915_gem_phys_object**, %struct.drm_i915_gem_phys_object*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.drm_i915_gem_phys_object*, %struct.drm_i915_gem_phys_object** %52, i64 %55
  store %struct.drm_i915_gem_phys_object* null, %struct.drm_i915_gem_phys_object** %56, align 8
  br label %57

57:                                               ; preds = %41, %20
  ret void
}

declare dso_local i32 @i915_gem_detach_phys_object(%struct.drm_device*, i64) #1

declare dso_local i32 @drm_pci_free(%struct.drm_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.drm_i915_gem_phys_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
