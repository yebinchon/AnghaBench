; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.intel_sdvo = type { i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_sdvo_connector = type { i32 }
%struct.edid = type { i32 }

@SDVO_CMD_GET_ATTACHED_DISPLAYS = common dso_local global i32 0, align 4
@connector_status_unknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"SDVO response %d %d [%x]\0A\00", align 1
@connector_status_disconnected = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@SDVO_TV_MASK = common dso_local global i32 0, align 4
@SDVO_LVDS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @intel_sdvo_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_sdvo*, align 8
  %8 = alloca %struct.intel_sdvo_connector*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.edid*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = call %struct.intel_sdvo* @intel_attached_sdvo(%struct.drm_connector* %11)
  store %struct.intel_sdvo* %12, %struct.intel_sdvo** %7, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %14 = call %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector* %13)
  store %struct.intel_sdvo_connector* %14, %struct.intel_sdvo_connector** %8, align 8
  %15 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %16 = load i32, i32* @SDVO_CMD_GET_ATTACHED_DISPLAYS, align 4
  %17 = call i32 @intel_sdvo_get_value(%struct.intel_sdvo* %15, i32 %16, i32* %6, i32 2)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @connector_status_unknown, align 4
  store i32 %20, i32* %3, align 4
  br label %124

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 255
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 8
  %26 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %8, align 8
  %27 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %33, i32* %3, align 4
  br label %124

34:                                               ; preds = %21
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %37 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %39 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %41 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %40, i32 0, i32 2
  store i32 0, i32* %41, align 8
  %42 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %43 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %42, i32 0, i32 3
  store i32 0, i32* %43, align 4
  %44 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %8, align 8
  %45 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %34
  %51 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %51, i32* %9, align 4
  br label %86

52:                                               ; preds = %34
  %53 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %8, align 8
  %54 = call i64 @IS_TMDS(%struct.intel_sdvo_connector* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %58 = call i32 @intel_sdvo_tmds_sink_detect(%struct.drm_connector* %57)
  store i32 %58, i32* %9, align 4
  br label %85

59:                                               ; preds = %52
  %60 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %61 = call %struct.edid* @intel_sdvo_get_edid(%struct.drm_connector* %60)
  store %struct.edid* %61, %struct.edid** %10, align 8
  %62 = load %struct.edid*, %struct.edid** %10, align 8
  %63 = icmp eq %struct.edid* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %66 = call %struct.edid* @intel_sdvo_get_analog_edid(%struct.drm_connector* %65)
  store %struct.edid* %66, %struct.edid** %10, align 8
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.edid*, %struct.edid** %10, align 8
  %69 = icmp ne %struct.edid* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %8, align 8
  %72 = load %struct.edid*, %struct.edid** %10, align 8
  %73 = call i64 @intel_sdvo_connector_matches_edid(%struct.intel_sdvo_connector* %71, %struct.edid* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @connector_status_connected, align 4
  store i32 %76, i32* %9, align 4
  br label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = load %struct.edid*, %struct.edid** %10, align 8
  %81 = call i32 @kfree(%struct.edid* %80)
  br label %84

82:                                               ; preds = %67
  %83 = load i32, i32* @connector_status_connected, align 4
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %82, %79
  br label %85

85:                                               ; preds = %84, %56
  br label %86

86:                                               ; preds = %85, %50
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @connector_status_connected, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %122

90:                                               ; preds = %86
  %91 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %92 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %91, i32 0, i32 4
  store i32 0, i32* %92, align 8
  %93 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %94 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %93, i32 0, i32 5
  store i32 0, i32* %94, align 4
  %95 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %96 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %95, i32 0, i32 7
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @SDVO_TV_MASK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %90
  %103 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %104 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %103, i32 0, i32 4
  store i32 1, i32* %104, align 8
  %105 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %106 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %105, i32 0, i32 7
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %102, %90
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @SDVO_LVDS_MASK, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %115 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %114, i32 0, i32 6
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  %118 = zext i1 %117 to i32
  %119 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %120 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %113, %108
  br label %122

122:                                              ; preds = %121, %86
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %32, %19
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.intel_sdvo* @intel_attached_sdvo(%struct.drm_connector*) #1

declare dso_local %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector*) #1

declare dso_local i32 @intel_sdvo_get_value(%struct.intel_sdvo*, i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

declare dso_local i64 @IS_TMDS(%struct.intel_sdvo_connector*) #1

declare dso_local i32 @intel_sdvo_tmds_sink_detect(%struct.drm_connector*) #1

declare dso_local %struct.edid* @intel_sdvo_get_edid(%struct.drm_connector*) #1

declare dso_local %struct.edid* @intel_sdvo_get_analog_edid(%struct.drm_connector*) #1

declare dso_local i64 @intel_sdvo_connector_matches_edid(%struct.intel_sdvo_connector*, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
