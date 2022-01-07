; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_vga_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_vga_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.radeon_connector = type { i32, i32, i64, %struct.TYPE_7__*, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.drm_encoder = type { %struct.drm_encoder_helper_funcs* }
%struct.drm_encoder_helper_funcs = type { i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)* }
%struct.drm_encoder.0 = type opaque
%struct.drm_connector.1 = type opaque

@connector_status_disconnected = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: probed a monitor but no|invalid EDID\0A\00", align 1
@connector_status_connected = common dso_local global i32 0, align 4
@DRM_EDID_INPUT_DIGITAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @radeon_vga_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_vga_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_connector*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca %struct.drm_encoder_helper_funcs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 1
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %6, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %7, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %20 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %19)
  store %struct.radeon_connector* %20, %struct.radeon_connector** %8, align 8
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %23 = call %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector* %22)
  store %struct.drm_encoder* %23, %struct.drm_encoder** %9, align 8
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %25 = icmp ne %struct.drm_encoder* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %30 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %29, i32 0, i32 5
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %35 = call i32 @radeon_ddc_probe(%struct.radeon_connector* %34, i32 0)
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %107

39:                                               ; preds = %36
  %40 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %41 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %43 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %42, i32 0, i32 3
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = icmp ne %struct.TYPE_7__* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %48 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %47, i32 0, i32 3
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = call i32 @kfree(%struct.TYPE_7__* %49)
  %51 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %52 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %51, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %52, align 8
  br label %53

53:                                               ; preds = %46, %39
  %54 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %55 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %54, i32 0, i32 6
  %56 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %57 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %56, i32 0, i32 5
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = call %struct.TYPE_7__* @drm_get_edid(i32* %55, i32* %59)
  %61 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %62 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %61, i32 0, i32 3
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %62, align 8
  %63 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %64 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %63, i32 0, i32 3
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = icmp ne %struct.TYPE_7__* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %53
  %68 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %69 = call i32 @drm_get_connector_name(%struct.drm_connector* %68)
  %70 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @connector_status_connected, align 4
  store i32 %71, i32* %12, align 4
  br label %106

72:                                               ; preds = %53
  %73 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %74 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %73, i32 0, i32 3
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DRM_EDID_INPUT_DIGITAL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %85 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %87 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %72
  %91 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %92 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %97 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %96, i32 0, i32 3
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = call i32 @kfree(%struct.TYPE_7__* %98)
  %100 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %101 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %100, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %101, align 8
  %102 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %102, i32* %12, align 4
  br label %105

103:                                              ; preds = %90, %72
  %104 = load i32, i32* @connector_status_connected, align 4
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %103, %95
  br label %106

106:                                              ; preds = %105, %67
  br label %149

107:                                              ; preds = %36
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %107
  %111 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %112 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %117 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %3, align 4
  br label %180

119:                                              ; preds = %110
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %3, align 4
  br label %180

121:                                              ; preds = %107
  %122 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %123 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %148

126:                                              ; preds = %121
  %127 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %128 = icmp ne %struct.drm_encoder* %127, null
  br i1 %128, label %129, label %148

129:                                              ; preds = %126
  %130 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %131 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %130, i32 0, i32 0
  %132 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %131, align 8
  store %struct.drm_encoder_helper_funcs* %132, %struct.drm_encoder_helper_funcs** %10, align 8
  %133 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %10, align 8
  %134 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %133, i32 0, i32 0
  %135 = load i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)*, i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)** %134, align 8
  %136 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %137 = bitcast %struct.drm_encoder* %136 to %struct.drm_encoder.0*
  %138 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %139 = bitcast %struct.drm_connector* %138 to %struct.drm_connector.1*
  %140 = call i32 %135(%struct.drm_encoder.0* %137, %struct.drm_connector.1* %139)
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @connector_status_disconnected, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %129
  %145 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %146 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  br label %147

147:                                              ; preds = %144, %129
  br label %148

148:                                              ; preds = %147, %126, %121
  br label %149

149:                                              ; preds = %148, %106
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @connector_status_connected, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %155 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @radeon_connector_analog_encoder_conflict_solve(%struct.drm_connector* %154, %struct.drm_encoder* %155, i32 %156, i32 1)
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %153, %149
  %159 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %160 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %175, label %163

163:                                              ; preds = %158
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @connector_status_disconnected, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %163
  %168 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %169 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = load i32, i32* @connector_status_connected, align 4
  store i32 %174, i32* %12, align 4
  br label %175

175:                                              ; preds = %173, %167, %163, %158
  %176 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @radeon_connector_update_scratch_regs(%struct.drm_connector* %176, i32 %177)
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %175, %119, %115
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector*) #1

declare dso_local i32 @radeon_ddc_probe(%struct.radeon_connector*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @drm_get_edid(i32*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @drm_get_connector_name(%struct.drm_connector*) #1

declare dso_local i32 @radeon_connector_analog_encoder_conflict_solve(%struct.drm_connector*, %struct.drm_encoder*, i32, i32) #1

declare dso_local i32 @radeon_connector_update_scratch_regs(%struct.drm_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
