; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_intel_disable_plane.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_intel_disable_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i64, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_plane = type { i32*, i32 (%struct.drm_plane.0*)* }
%struct.drm_plane.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*)* @intel_disable_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_disable_plane(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %6 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %7 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %6, i32 0, i32 1
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %10 = call %struct.intel_plane* @to_intel_plane(%struct.drm_plane* %9)
  store %struct.intel_plane* %10, %struct.intel_plane** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %12 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %17 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @intel_enable_primary(i64 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %22 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %21, i32 0, i32 1
  %23 = load i32 (%struct.drm_plane.0*)*, i32 (%struct.drm_plane.0*)** %22, align 8
  %24 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %25 = bitcast %struct.drm_plane* %24 to %struct.drm_plane.0*
  %26 = call i32 %23(%struct.drm_plane.0* %25)
  %27 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %28 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %45

32:                                               ; preds = %20
  %33 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %37 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @intel_unpin_fb_obj(i32* %38)
  %40 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %41 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  br label %45

45:                                               ; preds = %32, %31
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.intel_plane* @to_intel_plane(%struct.drm_plane*) #1

declare dso_local i32 @intel_enable_primary(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_unpin_fb_obj(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
