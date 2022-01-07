; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_tv_set_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_tv_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.drm_connector = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
%struct.drm_property = type { i32 }
%struct.intel_tv = type { i64*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }

@TV_MARGIN_LEFT = common dso_local global i64 0, align 8
@TV_MARGIN_RIGHT = common dso_local global i64 0, align 8
@TV_MARGIN_TOP = common dso_local global i64 0, align 8
@TV_MARGIN_BOTTOM = common dso_local global i64 0, align 8
@tv_modes = common dso_local global %struct.TYPE_9__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_property*, i64)* @intel_tv_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_tv_set_property(%struct.drm_connector* %0, %struct.drm_property* %1, i64 %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_property*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.intel_tv*, align 8
  %9 = alloca %struct.drm_crtc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_property* %1, %struct.drm_property** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %7, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %16 = call %struct.intel_tv* @intel_attached_tv(%struct.drm_connector* %15)
  store %struct.intel_tv* %16, %struct.intel_tv** %8, align 8
  %17 = load %struct.intel_tv*, %struct.intel_tv** %8, align 8
  %18 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %20, align 8
  store %struct.drm_crtc* %21, %struct.drm_crtc** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 0
  %24 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @drm_object_property_set_value(i32* %23, %struct.drm_property* %24, i64 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %174

30:                                               ; preds = %3
  %31 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  %35 = load %struct.drm_property*, %struct.drm_property** %34, align 8
  %36 = icmp eq %struct.drm_property* %31, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %30
  %38 = load %struct.intel_tv*, %struct.intel_tv** %8, align 8
  %39 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @TV_MARGIN_LEFT, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.intel_tv*, %struct.intel_tv** %8, align 8
  %49 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @TV_MARGIN_LEFT, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 %47, i64* %52, align 8
  store i32 1, i32* %11, align 4
  br label %164

53:                                               ; preds = %37, %30
  %54 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %55 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  %58 = load %struct.drm_property*, %struct.drm_property** %57, align 8
  %59 = icmp eq %struct.drm_property* %54, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %53
  %61 = load %struct.intel_tv*, %struct.intel_tv** %8, align 8
  %62 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @TV_MARGIN_RIGHT, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.intel_tv*, %struct.intel_tv** %8, align 8
  %72 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* @TV_MARGIN_RIGHT, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  store i64 %70, i64* %75, align 8
  store i32 1, i32* %11, align 4
  br label %163

76:                                               ; preds = %60, %53
  %77 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %78 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %79 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load %struct.drm_property*, %struct.drm_property** %80, align 8
  %82 = icmp eq %struct.drm_property* %77, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %76
  %84 = load %struct.intel_tv*, %struct.intel_tv** %8, align 8
  %85 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* @TV_MARGIN_TOP, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %83
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.intel_tv*, %struct.intel_tv** %8, align 8
  %95 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @TV_MARGIN_TOP, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 %93, i64* %98, align 8
  store i32 1, i32* %11, align 4
  br label %162

99:                                               ; preds = %83, %76
  %100 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %101 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %102 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load %struct.drm_property*, %struct.drm_property** %103, align 8
  %105 = icmp eq %struct.drm_property* %100, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %99
  %107 = load %struct.intel_tv*, %struct.intel_tv** %8, align 8
  %108 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* @TV_MARGIN_BOTTOM, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %106
  %116 = load i64, i64* %6, align 8
  %117 = load %struct.intel_tv*, %struct.intel_tv** %8, align 8
  %118 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* @TV_MARGIN_BOTTOM, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  store i64 %116, i64* %121, align 8
  store i32 1, i32* %11, align 4
  br label %161

122:                                              ; preds = %106, %99
  %123 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %124 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %125 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load %struct.drm_property*, %struct.drm_property** %126, align 8
  %128 = icmp eq %struct.drm_property* %123, %127
  br i1 %128, label %129, label %157

129:                                              ; preds = %122
  %130 = load i64, i64* %6, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tv_modes, align 8
  %132 = call i64 @ARRAY_SIZE(%struct.TYPE_9__* %131)
  %133 = icmp sge i64 %130, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %10, align 4
  br label %174

137:                                              ; preds = %129
  %138 = load %struct.intel_tv*, %struct.intel_tv** %8, align 8
  %139 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tv_modes, align 8
  %142 = load i64, i64* %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @strcmp(i32 %140, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %137
  br label %174

149:                                              ; preds = %137
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tv_modes, align 8
  %151 = load i64, i64* %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.intel_tv*, %struct.intel_tv** %8, align 8
  %156 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  store i32 1, i32* %11, align 4
  br label %160

157:                                              ; preds = %122
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %10, align 4
  br label %174

160:                                              ; preds = %149
  br label %161

161:                                              ; preds = %160, %115
  br label %162

162:                                              ; preds = %161, %92
  br label %163

163:                                              ; preds = %162, %69
  br label %164

164:                                              ; preds = %163, %46
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %169 = icmp ne %struct.drm_crtc* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %172 = call i32 @intel_crtc_restore_mode(%struct.drm_crtc* %171)
  br label %173

173:                                              ; preds = %170, %167, %164
  br label %174

174:                                              ; preds = %173, %157, %148, %134, %29
  %175 = load i32, i32* %10, align 4
  ret i32 %175
}

declare dso_local %struct.intel_tv* @intel_attached_tv(%struct.drm_connector*) #1

declare dso_local i32 @drm_object_property_set_value(i32*, %struct.drm_property*, i64) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @intel_crtc_restore_mode(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
