; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_init_phys_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_init_phys_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_i915_gem_phys_object** }
%struct.drm_i915_gem_phys_object = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32, i32)* @i915_gem_init_phys_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_gem_init_phys_object(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.drm_i915_gem_phys_object*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.drm_i915_gem_phys_object**, %struct.drm_i915_gem_phys_object*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.drm_i915_gem_phys_object*, %struct.drm_i915_gem_phys_object** %19, i64 %22
  %24 = load %struct.drm_i915_gem_phys_object*, %struct.drm_i915_gem_phys_object** %23, align 8
  %25 = icmp ne %struct.drm_i915_gem_phys_object* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %4
  store i32 0, i32* %5, align 4
  br label %69

30:                                               ; preds = %26
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.drm_i915_gem_phys_object* @kzalloc(i32 16, i32 %31)
  store %struct.drm_i915_gem_phys_object* %32, %struct.drm_i915_gem_phys_object** %11, align 8
  %33 = load %struct.drm_i915_gem_phys_object*, %struct.drm_i915_gem_phys_object** %11, align 8
  %34 = icmp ne %struct.drm_i915_gem_phys_object* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %69

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.drm_i915_gem_phys_object*, %struct.drm_i915_gem_phys_object** %11, align 8
  %41 = getelementptr inbounds %struct.drm_i915_gem_phys_object, %struct.drm_i915_gem_phys_object* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call %struct.TYPE_6__* @drm_pci_alloc(%struct.drm_device* %42, i32 %43, i32 %44)
  %46 = load %struct.drm_i915_gem_phys_object*, %struct.drm_i915_gem_phys_object** %11, align 8
  %47 = getelementptr inbounds %struct.drm_i915_gem_phys_object, %struct.drm_i915_gem_phys_object* %46, i32 0, i32 1
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %47, align 8
  %48 = load %struct.drm_i915_gem_phys_object*, %struct.drm_i915_gem_phys_object** %11, align 8
  %49 = getelementptr inbounds %struct.drm_i915_gem_phys_object, %struct.drm_i915_gem_phys_object* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %38
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %12, align 4
  br label %65

55:                                               ; preds = %38
  %56 = load %struct.drm_i915_gem_phys_object*, %struct.drm_i915_gem_phys_object** %11, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.drm_i915_gem_phys_object**, %struct.drm_i915_gem_phys_object*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.drm_i915_gem_phys_object*, %struct.drm_i915_gem_phys_object** %60, i64 %63
  store %struct.drm_i915_gem_phys_object* %56, %struct.drm_i915_gem_phys_object** %64, align 8
  store i32 0, i32* %5, align 4
  br label %69

65:                                               ; preds = %52
  %66 = load %struct.drm_i915_gem_phys_object*, %struct.drm_i915_gem_phys_object** %11, align 8
  %67 = call i32 @kfree(%struct.drm_i915_gem_phys_object* %66)
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %55, %35, %29
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.drm_i915_gem_phys_object* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_6__* @drm_pci_alloc(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @kfree(%struct.drm_i915_gem_phys_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
