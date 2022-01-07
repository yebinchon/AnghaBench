; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_move_to_inactive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_move_to_inactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, %struct.TYPE_4__, i64, i64, i64, i64, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@I915_GEM_GPU_DOMAINS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_gem_object*)* @i915_gem_object_move_to_inactive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_gem_object_move_to_inactive(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca %struct.drm_i915_gem_object*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %2, align 8
  %5 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %4, align 8
  %12 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %13 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @I915_GEM_GPU_DOMAINS, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %21 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %28 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %27, i32 0, i32 8
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @list_move_tail(i32* %28, i32* %31)
  %33 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %34 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %33, i32 0, i32 7
  %35 = call i32 @list_del_init(i32* %34)
  %36 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %37 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %36, i32 0, i32 6
  store i32* null, i32** %37, align 8
  %38 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %39 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %41 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %43 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %46 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %48 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %50 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %52 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %51, i32 0, i32 1
  %53 = call i32 @drm_gem_object_unreference(%struct.TYPE_4__* %52)
  %54 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %55 = call i32 @i915_verify_lists(%struct.drm_device* %54)
  %56 = call i32 @WARN_ON(i32 %55)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @drm_gem_object_unreference(%struct.TYPE_4__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @i915_verify_lists(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
