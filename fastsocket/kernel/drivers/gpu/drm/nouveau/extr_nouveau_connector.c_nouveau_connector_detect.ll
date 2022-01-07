; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_connector = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.nouveau_encoder = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.nouveau_i2c_port = type { i32 }
%struct.drm_encoder = type { %struct.drm_encoder_helper_funcs* }
%struct.drm_encoder_helper_funcs = type { i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)* }
%struct.drm_encoder.0 = type opaque
%struct.drm_connector.1 = type opaque

@.str = private unnamed_addr constant [35 x i8] c"DDC responded, but no EDID for %s\0A\00", align 1
@DCB_OUTPUT_DP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Detected %s, but failed init\0A\00", align 1
@connector_status_disconnected = common dso_local global i32 0, align 4
@DCB_OUTPUT_TMDS = common dso_local global i32 0, align 4
@DCB_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@DRM_EDID_INPUT_DIGITAL = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@nouveau_tv_disable = common dso_local global i32 0, align 4
@DCB_OUTPUT_TV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @nouveau_connector_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_connector_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nouveau_connector*, align 8
  %9 = alloca %struct.nouveau_encoder*, align 8
  %10 = alloca %struct.nouveau_encoder*, align 8
  %11 = alloca %struct.nouveau_i2c_port*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_encoder*, align 8
  %14 = alloca %struct.drm_encoder_helper_funcs*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %6, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %19 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %18)
  store %struct.nouveau_drm* %19, %struct.nouveau_drm** %7, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %21 = call %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector* %20)
  store %struct.nouveau_connector* %21, %struct.nouveau_connector** %8, align 8
  store %struct.nouveau_encoder* null, %struct.nouveau_encoder** %9, align 8
  %22 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %23 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %28 = call i32 @drm_mode_connector_update_edid_property(%struct.drm_connector* %27, %struct.TYPE_6__* null)
  %29 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %30 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i32 @kfree(%struct.TYPE_6__* %31)
  %33 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %34 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %33, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %34, align 8
  br label %35

35:                                               ; preds = %26, %2
  %36 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %37 = call %struct.nouveau_i2c_port* @nouveau_connector_ddc_detect(%struct.drm_connector* %36, %struct.nouveau_encoder** %9)
  store %struct.nouveau_i2c_port* %37, %struct.nouveau_i2c_port** %11, align 8
  %38 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %11, align 8
  %39 = icmp ne %struct.nouveau_i2c_port* %38, null
  br i1 %39, label %40, label %167

40:                                               ; preds = %35
  %41 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %42 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %11, align 8
  %43 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %42, i32 0, i32 0
  %44 = call %struct.TYPE_6__* @drm_get_edid(%struct.drm_connector* %41, i32* %43)
  %45 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %46 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %45, i32 0, i32 0
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %46, align 8
  %47 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %48 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %49 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call i32 @drm_mode_connector_update_edid_property(%struct.drm_connector* %47, %struct.TYPE_6__* %50)
  %52 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %53 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = icmp ne %struct.TYPE_6__* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %40
  %57 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %58 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %59 = call i32 @drm_get_connector_name(%struct.drm_connector* %58)
  %60 = call i32 @NV_ERROR(%struct.nouveau_drm* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %178

61:                                               ; preds = %40
  %62 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %63 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DCB_OUTPUT_DP, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %61
  %70 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %71 = call %struct.drm_encoder* @to_drm_encoder(%struct.nouveau_encoder* %70)
  %72 = call i32 @nouveau_dp_detect(%struct.drm_encoder* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %76 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %77 = call i32 @drm_get_connector_name(%struct.drm_connector* %76)
  %78 = call i32 @NV_ERROR(%struct.nouveau_drm* %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %79, i32* %3, align 4
  br label %221

80:                                               ; preds = %69, %61
  store %struct.nouveau_encoder* null, %struct.nouveau_encoder** %10, align 8
  %81 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %82 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @DCB_OUTPUT_TMDS, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp eq i64 %85, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %91 = load i32, i32* @DCB_OUTPUT_ANALOG, align 4
  %92 = call %struct.nouveau_encoder* @find_encoder(%struct.drm_connector* %90, i32 %91)
  store %struct.nouveau_encoder* %92, %struct.nouveau_encoder** %10, align 8
  br label %93

93:                                               ; preds = %89, %80
  %94 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %95 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @DCB_OUTPUT_ANALOG, align 4
  %100 = sext i32 %99 to i64
  %101 = icmp eq i64 %98, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %93
  %103 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %104 = load i32, i32* @DCB_OUTPUT_TMDS, align 4
  %105 = call %struct.nouveau_encoder* @find_encoder(%struct.drm_connector* %103, i32 %104)
  store %struct.nouveau_encoder* %105, %struct.nouveau_encoder** %10, align 8
  br label %106

106:                                              ; preds = %102, %93
  %107 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %10, align 8
  %108 = icmp ne %struct.nouveau_encoder* %107, null
  br i1 %108, label %109, label %162

109:                                              ; preds = %106
  %110 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %111 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* @DCB_OUTPUT_ANALOG, align 4
  %116 = sext i32 %115 to i64
  %117 = icmp eq i64 %114, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %109
  %119 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %10, align 8
  %120 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %119, i32 0, i32 0
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @DCB_OUTPUT_TMDS, align 4
  %125 = sext i32 %124 to i64
  %126 = icmp eq i64 %123, %125
  br i1 %126, label %145, label %127

127:                                              ; preds = %118, %109
  %128 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %129 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %128, i32 0, i32 0
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* @DCB_OUTPUT_TMDS, align 4
  %134 = sext i32 %133 to i64
  %135 = icmp eq i64 %132, %134
  br i1 %135, label %136, label %162

136:                                              ; preds = %127
  %137 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %10, align 8
  %138 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %137, i32 0, i32 0
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* @DCB_OUTPUT_ANALOG, align 4
  %143 = sext i32 %142 to i64
  %144 = icmp eq i64 %141, %143
  br i1 %144, label %145, label %162

145:                                              ; preds = %136, %118
  %146 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %147 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %146, i32 0, i32 0
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @DRM_EDID_INPUT_DIGITAL, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  %155 = load i32, i32* @DCB_OUTPUT_TMDS, align 4
  store i32 %155, i32* %12, align 4
  br label %158

156:                                              ; preds = %145
  %157 = load i32, i32* @DCB_OUTPUT_ANALOG, align 4
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %160 = load i32, i32* %12, align 4
  %161 = call %struct.nouveau_encoder* @find_encoder(%struct.drm_connector* %159, i32 %160)
  store %struct.nouveau_encoder* %161, %struct.nouveau_encoder** %9, align 8
  br label %162

162:                                              ; preds = %158, %136, %127, %106
  %163 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %164 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %165 = call i32 @nouveau_connector_set_encoder(%struct.drm_connector* %163, %struct.nouveau_encoder* %164)
  %166 = load i32, i32* @connector_status_connected, align 4
  store i32 %166, i32* %3, align 4
  br label %221

167:                                              ; preds = %35
  %168 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %169 = call %struct.nouveau_encoder* @nouveau_connector_of_detect(%struct.drm_connector* %168)
  store %struct.nouveau_encoder* %169, %struct.nouveau_encoder** %9, align 8
  %170 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %171 = icmp ne %struct.nouveau_encoder* %170, null
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %174 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %175 = call i32 @nouveau_connector_set_encoder(%struct.drm_connector* %173, %struct.nouveau_encoder* %174)
  %176 = load i32, i32* @connector_status_connected, align 4
  store i32 %176, i32* %3, align 4
  br label %221

177:                                              ; preds = %167
  br label %178

178:                                              ; preds = %177, %56
  %179 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %180 = load i32, i32* @DCB_OUTPUT_ANALOG, align 4
  %181 = call %struct.nouveau_encoder* @find_encoder(%struct.drm_connector* %179, i32 %180)
  store %struct.nouveau_encoder* %181, %struct.nouveau_encoder** %9, align 8
  %182 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %183 = icmp ne %struct.nouveau_encoder* %182, null
  br i1 %183, label %191, label %184

184:                                              ; preds = %178
  %185 = load i32, i32* @nouveau_tv_disable, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %184
  %188 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %189 = load i32, i32* @DCB_OUTPUT_TV, align 4
  %190 = call %struct.nouveau_encoder* @find_encoder(%struct.drm_connector* %188, i32 %189)
  store %struct.nouveau_encoder* %190, %struct.nouveau_encoder** %9, align 8
  br label %191

191:                                              ; preds = %187, %184, %178
  %192 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %193 = icmp ne %struct.nouveau_encoder* %192, null
  br i1 %193, label %194, label %219

194:                                              ; preds = %191
  %195 = load i32, i32* %5, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %219

197:                                              ; preds = %194
  %198 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %199 = call %struct.drm_encoder* @to_drm_encoder(%struct.nouveau_encoder* %198)
  store %struct.drm_encoder* %199, %struct.drm_encoder** %13, align 8
  %200 = load %struct.drm_encoder*, %struct.drm_encoder** %13, align 8
  %201 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %200, i32 0, i32 0
  %202 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %201, align 8
  store %struct.drm_encoder_helper_funcs* %202, %struct.drm_encoder_helper_funcs** %14, align 8
  %203 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %14, align 8
  %204 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %203, i32 0, i32 0
  %205 = load i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)*, i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)** %204, align 8
  %206 = load %struct.drm_encoder*, %struct.drm_encoder** %13, align 8
  %207 = bitcast %struct.drm_encoder* %206 to %struct.drm_encoder.0*
  %208 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %209 = bitcast %struct.drm_connector* %208 to %struct.drm_connector.1*
  %210 = call i32 %205(%struct.drm_encoder.0* %207, %struct.drm_connector.1* %209)
  %211 = load i32, i32* @connector_status_connected, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %197
  %214 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %215 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %216 = call i32 @nouveau_connector_set_encoder(%struct.drm_connector* %214, %struct.nouveau_encoder* %215)
  %217 = load i32, i32* @connector_status_connected, align 4
  store i32 %217, i32* %3, align 4
  br label %221

218:                                              ; preds = %197
  br label %219

219:                                              ; preds = %218, %194, %191
  %220 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %219, %213, %172, %162, %74
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_mode_connector_update_edid_property(%struct.drm_connector*, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local %struct.nouveau_i2c_port* @nouveau_connector_ddc_detect(%struct.drm_connector*, %struct.nouveau_encoder**) #1

declare dso_local %struct.TYPE_6__* @drm_get_edid(%struct.drm_connector*, i32*) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local i32 @drm_get_connector_name(%struct.drm_connector*) #1

declare dso_local i32 @nouveau_dp_detect(%struct.drm_encoder*) #1

declare dso_local %struct.drm_encoder* @to_drm_encoder(%struct.nouveau_encoder*) #1

declare dso_local %struct.nouveau_encoder* @find_encoder(%struct.drm_connector*, i32) #1

declare dso_local i32 @nouveau_connector_set_encoder(%struct.drm_connector*, %struct.nouveau_encoder*) #1

declare dso_local %struct.nouveau_encoder* @nouveau_connector_of_detect(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
