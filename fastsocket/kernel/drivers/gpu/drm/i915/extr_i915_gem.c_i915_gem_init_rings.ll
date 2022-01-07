; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_init_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32* }

@BCS = common dso_local global i64 0, align 8
@VCS = common dso_local global i64 0, align 8
@RCS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @i915_gem_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_gem_init_rings(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call i32 @intel_init_render_ring_buffer(%struct.drm_device* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %66

15:                                               ; preds = %1
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = call i64 @HAS_BSD(%struct.drm_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %21 = call i32 @intel_init_bsd_ring_buffer(%struct.drm_device* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %58

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %15
  %27 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %28 = call i64 @intel_enable_blt(%struct.drm_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %32 = call i32 @intel_init_blt_ring_buffer(%struct.drm_device* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %51

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %26
  %38 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %39 = call i32 @i915_gem_set_seqno(%struct.drm_device* %38, i64 -4097)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %44

43:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %66

44:                                               ; preds = %42
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %46 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @BCS, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = call i32 @intel_cleanup_ring_buffer(i32* %49)
  br label %51

51:                                               ; preds = %44, %35
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %53 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @VCS, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = call i32 @intel_cleanup_ring_buffer(i32* %56)
  br label %58

58:                                               ; preds = %51, %24
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %60 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @RCS, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = call i32 @intel_cleanup_ring_buffer(i32* %63)
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %58, %43, %13
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @intel_init_render_ring_buffer(%struct.drm_device*) #1

declare dso_local i64 @HAS_BSD(%struct.drm_device*) #1

declare dso_local i32 @intel_init_bsd_ring_buffer(%struct.drm_device*) #1

declare dso_local i64 @intel_enable_blt(%struct.drm_device*) #1

declare dso_local i32 @intel_init_blt_ring_buffer(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_set_seqno(%struct.drm_device*, i64) #1

declare dso_local i32 @intel_cleanup_ring_buffer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
