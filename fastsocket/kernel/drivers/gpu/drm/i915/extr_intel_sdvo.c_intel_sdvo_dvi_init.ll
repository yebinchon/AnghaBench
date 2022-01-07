; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_dvi_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_dvi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_encoder }
%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32, i32 }
%struct.intel_encoder = type { i32 (%struct.intel_encoder*)* }
%struct.intel_connector = type { %struct.drm_connector }
%struct.intel_sdvo_connector = type { i32, %struct.intel_connector }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SDVO_OUTPUT_TMDS0 = common dso_local global i32 0, align 4
@SDVO_OUTPUT_TMDS1 = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_DISCONNECT = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DVID = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, i32)* @intel_sdvo_dvi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_dvi_init(%struct.intel_sdvo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_sdvo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.intel_encoder*, align 8
  %9 = alloca %struct.intel_connector*, align 8
  %10 = alloca %struct.intel_sdvo_connector*, align 8
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %12 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.drm_encoder* %13, %struct.drm_encoder** %6, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %15 = call %struct.intel_encoder* @to_intel_encoder(%struct.drm_encoder* %14)
  store %struct.intel_encoder* %15, %struct.intel_encoder** %8, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.intel_sdvo_connector* @kzalloc(i32 12, i32 %16)
  store %struct.intel_sdvo_connector* %17, %struct.intel_sdvo_connector** %10, align 8
  %18 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %19 = icmp ne %struct.intel_sdvo_connector* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %109

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* @SDVO_OUTPUT_TMDS0, align 4
  %26 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %27 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @SDVO_OUTPUT_TMDS0, align 4
  %31 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %32 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %46

33:                                               ; preds = %21
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32, i32* @SDVO_OUTPUT_TMDS1, align 4
  %38 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %39 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @SDVO_OUTPUT_TMDS1, align 4
  %43 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %44 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %33
  br label %46

46:                                               ; preds = %45, %24
  %47 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %48 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %47, i32 0, i32 1
  store %struct.intel_connector* %48, %struct.intel_connector** %9, align 8
  %49 = load %struct.intel_connector*, %struct.intel_connector** %9, align 8
  %50 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %49, i32 0, i32 0
  store %struct.drm_connector* %50, %struct.drm_connector** %7, align 8
  %51 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %52 = call i32 @intel_sdvo_get_hotplug_support(%struct.intel_sdvo* %51)
  %53 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %54 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %46
  %59 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %60 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %61 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %63 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %66 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %70 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %69, i32 0, i32 0
  store i32 (%struct.intel_encoder*)* @intel_sdvo_enable_hotplug, i32 (%struct.intel_encoder*)** %70, align 8
  %71 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %72 = call i32 @intel_sdvo_enable_hotplug(%struct.intel_encoder* %71)
  br label %79

73:                                               ; preds = %46
  %74 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %75 = load i32, i32* @DRM_CONNECTOR_POLL_DISCONNECT, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %78 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %73, %58
  %80 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %81 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %82 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @DRM_MODE_CONNECTOR_DVID, align 4
  %84 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %85 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i64 @intel_sdvo_is_hdmi_connector(%struct.intel_sdvo* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %92 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %93 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %95 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %94, i32 0, i32 2
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %79
  %97 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %98 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %99 = call i32 @intel_sdvo_connector_init(%struct.intel_sdvo_connector* %97, %struct.intel_sdvo* %98)
  %100 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %101 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %106 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %107 = call i32 @intel_sdvo_add_hdmi_properties(%struct.intel_sdvo* %105, %struct.intel_sdvo_connector* %106)
  br label %108

108:                                              ; preds = %104, %96
  store i32 1, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %20
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.intel_encoder* @to_intel_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.intel_sdvo_connector* @kzalloc(i32, i32) #1

declare dso_local i32 @intel_sdvo_get_hotplug_support(%struct.intel_sdvo*) #1

declare dso_local i32 @intel_sdvo_enable_hotplug(%struct.intel_encoder*) #1

declare dso_local i64 @intel_sdvo_is_hdmi_connector(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @intel_sdvo_connector_init(%struct.intel_sdvo_connector*, %struct.intel_sdvo*) #1

declare dso_local i32 @intel_sdvo_add_hdmi_properties(%struct.intel_sdvo*, %struct.intel_sdvo_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
