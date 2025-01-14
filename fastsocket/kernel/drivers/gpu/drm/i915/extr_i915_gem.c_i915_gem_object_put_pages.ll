; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_put_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_put_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32*, i32, i64, i32, %struct.drm_i915_gem_object_ops* }
%struct.drm_i915_gem_object_ops = type { i32 (%struct.drm_i915_gem_object.0*)* }
%struct.drm_i915_gem_object.0 = type opaque

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_object_put_pages(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.drm_i915_gem_object_ops*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  %5 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %6 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %5, i32 0, i32 4
  %7 = load %struct.drm_i915_gem_object_ops*, %struct.drm_i915_gem_object_ops** %6, align 8
  store %struct.drm_i915_gem_object_ops* %7, %struct.drm_i915_gem_object_ops** %4, align 8
  %8 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

13:                                               ; preds = %1
  %14 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %15 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %19 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %44

25:                                               ; preds = %13
  %26 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %27 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %26, i32 0, i32 1
  %28 = call i32 @list_del(i32* %27)
  %29 = load %struct.drm_i915_gem_object_ops*, %struct.drm_i915_gem_object_ops** %4, align 8
  %30 = getelementptr inbounds %struct.drm_i915_gem_object_ops, %struct.drm_i915_gem_object_ops* %29, i32 0, i32 0
  %31 = load i32 (%struct.drm_i915_gem_object.0*)*, i32 (%struct.drm_i915_gem_object.0*)** %30, align 8
  %32 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %33 = bitcast %struct.drm_i915_gem_object* %32 to %struct.drm_i915_gem_object.0*
  %34 = call i32 %31(%struct.drm_i915_gem_object.0* %33)
  %35 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %36 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %38 = call i64 @i915_gem_object_is_purgeable(%struct.drm_i915_gem_object* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %42 = call i32 @i915_gem_object_truncate(%struct.drm_i915_gem_object* %41)
  br label %43

43:                                               ; preds = %40, %25
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %22, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @i915_gem_object_is_purgeable(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_truncate(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
