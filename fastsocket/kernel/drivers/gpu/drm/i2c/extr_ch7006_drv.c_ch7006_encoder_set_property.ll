; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_ch7006_drv.c_ch7006_encoder_set_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_ch7006_drv.c_ch7006_encoder_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_crtc*, %struct.TYPE_2__* }
%struct.drm_crtc = type { i32 }
%struct.TYPE_2__ = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
%struct.drm_connector = type { i64 }
%struct.drm_property = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ch7006_priv = type { i8*, %struct.drm_property*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.ch7006_state }
%struct.ch7006_state = type { i32 }
%struct.drm_mode_set = type { %struct.drm_crtc* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CH7006_POWER = common dso_local global i32 0, align 4
@CH7006_POV = common dso_local global i32 0, align 4
@CH7006_HPOS = common dso_local global i32 0, align 4
@CH7006_VPOS = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CH7006_BLACK_LEVEL = common dso_local global i32 0, align 4
@CH7006_CONTRAST = common dso_local global i32 0, align 4
@CH7006_FFILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_connector*, %struct.drm_property*, i8*)* @ch7006_encoder_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch7006_encoder_set_property(%struct.drm_encoder* %0, %struct.drm_connector* %1, %struct.drm_property* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.drm_property*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.ch7006_priv*, align 8
  %12 = alloca %struct.ch7006_state*, align 8
  %13 = alloca %struct.drm_mode_config*, align 8
  %14 = alloca %struct.drm_crtc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.drm_mode_set, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %6, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %7, align 8
  store %struct.drm_property* %2, %struct.drm_property** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %18 = call %struct.i2c_client* @drm_i2c_encoder_get_client(%struct.drm_encoder* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %20 = call %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder* %19)
  store %struct.ch7006_priv* %20, %struct.ch7006_priv** %11, align 8
  %21 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %22 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %21, i32 0, i32 9
  store %struct.ch7006_state* %22, %struct.ch7006_state** %12, align 8
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %24 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.drm_mode_config* %26, %struct.drm_mode_config** %13, align 8
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %28 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %27, i32 0, i32 0
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %28, align 8
  store %struct.drm_crtc* %29, %struct.drm_crtc** %14, align 8
  store i32 0, i32* %15, align 4
  %30 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %31 = call i32 @ch7006_dbg(%struct.i2c_client* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %33 = load %struct.drm_mode_config*, %struct.drm_mode_config** %13, align 8
  %34 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %33, i32 0, i32 6
  %35 = load %struct.drm_property*, %struct.drm_property** %34, align 8
  %36 = icmp eq %struct.drm_property* %32, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %4
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %40 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  %41 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %42 = call i32 @ch7006_setup_power_state(%struct.drm_encoder* %41)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %44 = load %struct.ch7006_state*, %struct.ch7006_state** %12, align 8
  %45 = load i32, i32* @CH7006_POWER, align 4
  %46 = call i32 @ch7006_load_reg(%struct.i2c_client* %43, %struct.ch7006_state* %44, i32 %45)
  br label %183

47:                                               ; preds = %4
  %48 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %49 = load %struct.drm_mode_config*, %struct.drm_mode_config** %13, align 8
  %50 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %49, i32 0, i32 5
  %51 = load %struct.drm_property*, %struct.drm_property** %50, align 8
  %52 = icmp eq %struct.drm_property* %48, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %56 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %55, i32 0, i32 7
  store i8* %54, i8** %56, align 8
  %57 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %58 = call i32 @ch7006_setup_properties(%struct.drm_encoder* %57)
  %59 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %60 = load %struct.ch7006_state*, %struct.ch7006_state** %12, align 8
  %61 = load i32, i32* @CH7006_POV, align 4
  %62 = call i32 @ch7006_load_reg(%struct.i2c_client* %59, %struct.ch7006_state* %60, i32 %61)
  %63 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %64 = load %struct.ch7006_state*, %struct.ch7006_state** %12, align 8
  %65 = load i32, i32* @CH7006_HPOS, align 4
  %66 = call i32 @ch7006_load_reg(%struct.i2c_client* %63, %struct.ch7006_state* %64, i32 %65)
  br label %182

67:                                               ; preds = %47
  %68 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %69 = load %struct.drm_mode_config*, %struct.drm_mode_config** %13, align 8
  %70 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %69, i32 0, i32 4
  %71 = load %struct.drm_property*, %struct.drm_property** %70, align 8
  %72 = icmp eq %struct.drm_property* %68, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %67
  %74 = load i8*, i8** %9, align 8
  %75 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %76 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %75, i32 0, i32 6
  store i8* %74, i8** %76, align 8
  %77 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %78 = call i32 @ch7006_setup_properties(%struct.drm_encoder* %77)
  %79 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %80 = load %struct.ch7006_state*, %struct.ch7006_state** %12, align 8
  %81 = load i32, i32* @CH7006_POV, align 4
  %82 = call i32 @ch7006_load_reg(%struct.i2c_client* %79, %struct.ch7006_state* %80, i32 %81)
  %83 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %84 = load %struct.ch7006_state*, %struct.ch7006_state** %12, align 8
  %85 = load i32, i32* @CH7006_VPOS, align 4
  %86 = call i32 @ch7006_load_reg(%struct.i2c_client* %83, %struct.ch7006_state* %84, i32 %85)
  br label %181

87:                                               ; preds = %67
  %88 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %89 = load %struct.drm_mode_config*, %struct.drm_mode_config** %13, align 8
  %90 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %89, i32 0, i32 3
  %91 = load %struct.drm_property*, %struct.drm_property** %90, align 8
  %92 = icmp eq %struct.drm_property* %88, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %95 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @DRM_MODE_DPMS_OFF, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %197

102:                                              ; preds = %93
  %103 = load i8*, i8** %9, align 8
  %104 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %105 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %104, i32 0, i32 5
  store i8* %103, i8** %105, align 8
  store i32 1, i32* %15, align 4
  br label %180

106:                                              ; preds = %87
  %107 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %108 = load %struct.drm_mode_config*, %struct.drm_mode_config** %13, align 8
  %109 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %108, i32 0, i32 2
  %110 = load %struct.drm_property*, %struct.drm_property** %109, align 8
  %111 = icmp eq %struct.drm_property* %107, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %106
  %113 = load i8*, i8** %9, align 8
  %114 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %115 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %114, i32 0, i32 4
  store i8* %113, i8** %115, align 8
  %116 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %117 = call i32 @ch7006_setup_levels(%struct.drm_encoder* %116)
  %118 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %119 = load %struct.ch7006_state*, %struct.ch7006_state** %12, align 8
  %120 = load i32, i32* @CH7006_BLACK_LEVEL, align 4
  %121 = call i32 @ch7006_load_reg(%struct.i2c_client* %118, %struct.ch7006_state* %119, i32 %120)
  br label %179

122:                                              ; preds = %106
  %123 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %124 = load %struct.drm_mode_config*, %struct.drm_mode_config** %13, align 8
  %125 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %124, i32 0, i32 1
  %126 = load %struct.drm_property*, %struct.drm_property** %125, align 8
  %127 = icmp eq %struct.drm_property* %123, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %122
  %129 = load i8*, i8** %9, align 8
  %130 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %131 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  %132 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %133 = call i32 @ch7006_setup_properties(%struct.drm_encoder* %132)
  %134 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %135 = load %struct.ch7006_state*, %struct.ch7006_state** %12, align 8
  %136 = load i32, i32* @CH7006_CONTRAST, align 4
  %137 = call i32 @ch7006_load_reg(%struct.i2c_client* %134, %struct.ch7006_state* %135, i32 %136)
  br label %178

138:                                              ; preds = %122
  %139 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %140 = load %struct.drm_mode_config*, %struct.drm_mode_config** %13, align 8
  %141 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %140, i32 0, i32 0
  %142 = load %struct.drm_property*, %struct.drm_property** %141, align 8
  %143 = icmp eq %struct.drm_property* %139, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %138
  %145 = load i8*, i8** %9, align 8
  %146 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %147 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %146, i32 0, i32 2
  store i8* %145, i8** %147, align 8
  %148 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %149 = call i32 @ch7006_setup_properties(%struct.drm_encoder* %148)
  %150 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %151 = load %struct.ch7006_state*, %struct.ch7006_state** %12, align 8
  %152 = load i32, i32* @CH7006_FFILTER, align 4
  %153 = call i32 @ch7006_load_reg(%struct.i2c_client* %150, %struct.ch7006_state* %151, i32 %152)
  br label %177

154:                                              ; preds = %138
  %155 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %156 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %157 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %156, i32 0, i32 1
  %158 = load %struct.drm_property*, %struct.drm_property** %157, align 8
  %159 = icmp eq %struct.drm_property* %155, %158
  br i1 %159, label %160, label %173

160:                                              ; preds = %154
  %161 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %162 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @DRM_MODE_DPMS_OFF, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %5, align 4
  br label %197

169:                                              ; preds = %160
  %170 = load i8*, i8** %9, align 8
  %171 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %172 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %171, i32 0, i32 0
  store i8* %170, i8** %172, align 8
  store i32 1, i32* %15, align 4
  br label %176

173:                                              ; preds = %154
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %5, align 4
  br label %197

176:                                              ; preds = %169
  br label %177

177:                                              ; preds = %176, %144
  br label %178

178:                                              ; preds = %177, %128
  br label %179

179:                                              ; preds = %178, %112
  br label %180

180:                                              ; preds = %179, %102
  br label %181

181:                                              ; preds = %180, %73
  br label %182

182:                                              ; preds = %181, %53
  br label %183

183:                                              ; preds = %182, %37
  %184 = load i32, i32* %15, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %183
  %187 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %188 = call i32 @drm_helper_probe_single_connector_modes(%struct.drm_connector* %187, i32 0, i32 0)
  %189 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %190 = icmp ne %struct.drm_crtc* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %16, i32 0, i32 0
  %193 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  store %struct.drm_crtc* %193, %struct.drm_crtc** %192, align 8
  %194 = call i32 @drm_mode_set_config_internal(%struct.drm_mode_set* %16)
  br label %195

195:                                              ; preds = %191, %186
  br label %196

196:                                              ; preds = %195, %183
  store i32 0, i32* %5, align 4
  br label %197

197:                                              ; preds = %196, %173, %166, %99
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local %struct.i2c_client* @drm_i2c_encoder_get_client(%struct.drm_encoder*) #1

declare dso_local %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder*) #1

declare dso_local i32 @ch7006_dbg(%struct.i2c_client*, i8*) #1

declare dso_local i32 @ch7006_setup_power_state(%struct.drm_encoder*) #1

declare dso_local i32 @ch7006_load_reg(%struct.i2c_client*, %struct.ch7006_state*, i32) #1

declare dso_local i32 @ch7006_setup_properties(%struct.drm_encoder*) #1

declare dso_local i32 @ch7006_setup_levels(%struct.drm_encoder*) #1

declare dso_local i32 @drm_helper_probe_single_connector_modes(%struct.drm_connector*, i32, i32) #1

declare dso_local i32 @drm_mode_set_config_internal(%struct.drm_mode_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
