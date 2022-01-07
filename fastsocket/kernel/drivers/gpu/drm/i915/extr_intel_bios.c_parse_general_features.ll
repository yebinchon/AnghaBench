; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_bios.c_parse_general_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_bios.c_parse_general_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, i32, i32, i32, i32, i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.bdb_header = type { i32 }
%struct.bdb_general_features = type { i32, i32, i32, i32, i32, i32 }

@BDB_GENERAL_FEATURES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [142 x i8] c"BDB_GENERAL_FEATURES int_tv_support %d int_crt_support %d lvds_use_ssc %d lvds_ssc_freq %d display_clock_mode %d fdi_rx_polarity_inverted %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.bdb_header*)* @parse_general_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_general_features(%struct.drm_i915_private* %0, %struct.bdb_header* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.bdb_header*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.bdb_general_features*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.bdb_header* %1, %struct.bdb_header** %4, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 6
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %5, align 8
  %10 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %11 = load i32, i32* @BDB_GENERAL_FEATURES, align 4
  %12 = call %struct.bdb_general_features* @find_section(%struct.bdb_header* %10, i32 %11)
  store %struct.bdb_general_features* %12, %struct.bdb_general_features** %6, align 8
  %13 = load %struct.bdb_general_features*, %struct.bdb_general_features** %6, align 8
  %14 = icmp ne %struct.bdb_general_features* %13, null
  br i1 %14, label %15, label %67

15:                                               ; preds = %2
  %16 = load %struct.bdb_general_features*, %struct.bdb_general_features** %6, align 8
  %17 = getelementptr inbounds %struct.bdb_general_features, %struct.bdb_general_features* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.bdb_general_features*, %struct.bdb_general_features** %6, align 8
  %22 = getelementptr inbounds %struct.bdb_general_features, %struct.bdb_general_features* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.bdb_general_features*, %struct.bdb_general_features** %6, align 8
  %27 = getelementptr inbounds %struct.bdb_general_features, %struct.bdb_general_features* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %32 = load %struct.bdb_general_features*, %struct.bdb_general_features** %6, align 8
  %33 = getelementptr inbounds %struct.bdb_general_features, %struct.bdb_general_features* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @intel_bios_ssc_frequency(%struct.drm_device* %31, i32 %34)
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %37 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.bdb_general_features*, %struct.bdb_general_features** %6, align 8
  %39 = getelementptr inbounds %struct.bdb_general_features, %struct.bdb_general_features* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.bdb_general_features*, %struct.bdb_general_features** %6, align 8
  %44 = getelementptr inbounds %struct.bdb_general_features, %struct.bdb_general_features* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %49 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %52 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %55 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %58 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %64 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53, i32 %56, i32 %59, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %15, %2
  ret void
}

declare dso_local %struct.bdb_general_features* @find_section(%struct.bdb_header*, i32) #1

declare dso_local i32 @intel_bios_ssc_frequency(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
