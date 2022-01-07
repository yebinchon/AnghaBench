; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_bios.c_parse_general_definitions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_bios.c_parse_general_definitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.bdb_header = type { i32 }
%struct.bdb_general_definitions = type { i32 }

@BDB_GENERAL_DEFINITIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"crt_ddc_bus_pin: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"BDB_GD too small (%d). Invalid.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.bdb_header*)* @parse_general_definitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_general_definitions(%struct.drm_i915_private* %0, %struct.bdb_header* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.bdb_header*, align 8
  %5 = alloca %struct.bdb_general_definitions*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.bdb_header* %1, %struct.bdb_header** %4, align 8
  %8 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %9 = load i32, i32* @BDB_GENERAL_DEFINITIONS, align 4
  %10 = call %struct.bdb_general_definitions* @find_section(%struct.bdb_header* %8, i32 %9)
  store %struct.bdb_general_definitions* %10, %struct.bdb_general_definitions** %5, align 8
  %11 = load %struct.bdb_general_definitions*, %struct.bdb_general_definitions** %5, align 8
  %12 = icmp ne %struct.bdb_general_definitions* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %2
  %14 = load %struct.bdb_general_definitions*, %struct.bdb_general_definitions** %5, align 8
  %15 = call i32 @get_blocksize(%struct.bdb_general_definitions* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp uge i64 %17, 4
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load %struct.bdb_general_definitions*, %struct.bdb_general_definitions** %5, align 8
  %21 = getelementptr inbounds %struct.bdb_general_definitions, %struct.bdb_general_definitions* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @intel_gmbus_is_port_valid(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %31 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %19
  br label %36

33:                                               ; preds = %13
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %32
  br label %37

37:                                               ; preds = %36, %2
  ret void
}

declare dso_local %struct.bdb_general_definitions* @find_section(%struct.bdb_header*, i32) #1

declare dso_local i32 @get_blocksize(%struct.bdb_general_definitions*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i64 @intel_gmbus_is_port_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
