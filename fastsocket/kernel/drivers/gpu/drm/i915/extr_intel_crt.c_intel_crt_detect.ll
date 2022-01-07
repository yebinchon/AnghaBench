; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crt = type { i32 }
%struct.intel_load_detect_pipe = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"CRT detected via hotplug\0A\00", align 1
@connector_status_connected = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CRT not detected via hotplug\0A\00", align 1
@connector_status_disconnected = common dso_local global i32 0, align 4
@connector_status_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @intel_crt_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_crt_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.intel_crt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_load_detect_pipe, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 1
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %6, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %14 = call %struct.intel_crt* @intel_attached_crt(%struct.drm_connector* %13)
  store %struct.intel_crt* %14, %struct.intel_crt** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = call i64 @I915_HAS_HOTPLUG(%struct.drm_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %20 = call i64 @intel_crt_detect_hotplug(%struct.drm_connector* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @connector_status_connected, align 4
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %18
  %26 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %30 = call i64 @intel_crt_detect_ddc(%struct.drm_connector* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @connector_status_connected, align 4
  store i32 %33, i32* %3, align 4
  br label %67

34:                                               ; preds = %28
  %35 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %36 = call i64 @I915_HAS_HOTPLUG(%struct.drm_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %39, i32* %3, align 4
  br label %67

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %45 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %3, align 4
  br label %67

47:                                               ; preds = %40
  %48 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %49 = call i64 @intel_get_load_detect_pipe(%struct.drm_connector* %48, i32* null, %struct.intel_load_detect_pipe* %9)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %53 = call i64 @intel_crt_detect_ddc(%struct.drm_connector* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @connector_status_connected, align 4
  store i32 %56, i32* %8, align 4
  br label %60

57:                                               ; preds = %51
  %58 = load %struct.intel_crt*, %struct.intel_crt** %7, align 8
  %59 = call i32 @intel_crt_load_detect(%struct.intel_crt* %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %55
  %61 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %62 = call i32 @intel_release_load_detect_pipe(%struct.drm_connector* %61, %struct.intel_load_detect_pipe* %9)
  br label %65

63:                                               ; preds = %47
  %64 = load i32, i32* @connector_status_unknown, align 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %43, %38, %32, %22
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.intel_crt* @intel_attached_crt(%struct.drm_connector*) #1

declare dso_local i64 @I915_HAS_HOTPLUG(%struct.drm_device*) #1

declare dso_local i64 @intel_crt_detect_hotplug(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i64 @intel_crt_detect_ddc(%struct.drm_connector*) #1

declare dso_local i64 @intel_get_load_detect_pipe(%struct.drm_connector*, i32*, %struct.intel_load_detect_pipe*) #1

declare dso_local i32 @intel_crt_load_detect(%struct.intel_crt*) #1

declare dso_local i32 @intel_release_load_detect_pipe(%struct.drm_connector*, %struct.intel_load_detect_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
