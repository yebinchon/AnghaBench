; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_bios.c_parse_driver_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_bios.c_parse_driver_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.TYPE_2__, %struct.drm_device* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.bdb_header = type { i32 }
%struct.bdb_driver_features = type { i64, i64 }

@BDB_DRIVER_FEATURES = common dso_local global i32 0, align 4
@BDB_DRIVER_FEATURE_EDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.bdb_header*)* @parse_driver_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_driver_features(%struct.drm_i915_private* %0, %struct.bdb_header* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.bdb_header*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.bdb_driver_features*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.bdb_header* %1, %struct.bdb_header** %4, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 2
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %5, align 8
  %10 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %11 = load i32, i32* @BDB_DRIVER_FEATURES, align 4
  %12 = call %struct.bdb_driver_features* @find_section(%struct.bdb_header* %10, i32 %11)
  store %struct.bdb_driver_features* %12, %struct.bdb_driver_features** %6, align 8
  %13 = load %struct.bdb_driver_features*, %struct.bdb_driver_features** %6, align 8
  %14 = icmp ne %struct.bdb_driver_features* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = call i64 @SUPPORTS_EDP(%struct.drm_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load %struct.bdb_driver_features*, %struct.bdb_driver_features** %6, align 8
  %22 = getelementptr inbounds %struct.bdb_driver_features, %struct.bdb_driver_features* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BDB_DRIVER_FEATURE_EDP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %20, %16
  %31 = load %struct.bdb_driver_features*, %struct.bdb_driver_features** %6, align 8
  %32 = getelementptr inbounds %struct.bdb_driver_features, %struct.bdb_driver_features* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %37 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %15, %35, %30
  ret void
}

declare dso_local %struct.bdb_driver_features* @find_section(%struct.bdb_header*, i32) #1

declare dso_local i64 @SUPPORTS_EDP(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
