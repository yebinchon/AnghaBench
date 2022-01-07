; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_tv.c_nv17_tv_set_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_tv.c_nv17_tv_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_crtc*, %struct.TYPE_2__* }
%struct.drm_crtc = type { i32 }
%struct.TYPE_2__ = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
%struct.drm_connector = type { i64 }
%struct.drm_property = type { i32 }
%struct.nv17_tv_encoder = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.nv17_tv_norm_params = type { i64 }
%struct.drm_mode_set = type { %struct.drm_crtc* }

@CTV_ENC_MODE = common dso_local global i64 0, align 8
@TV_ENC_MODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_connector*, %struct.drm_property*, i8*)* @nv17_tv_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv17_tv_set_property(%struct.drm_encoder* %0, %struct.drm_connector* %1, %struct.drm_property* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.drm_property*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.drm_mode_config*, align 8
  %11 = alloca %struct.drm_crtc*, align 8
  %12 = alloca %struct.nv17_tv_encoder*, align 8
  %13 = alloca %struct.nv17_tv_norm_params*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.drm_mode_set, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %6, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %7, align 8
  store %struct.drm_property* %2, %struct.drm_property** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %17 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.drm_mode_config* %19, %struct.drm_mode_config** %10, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %21 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %20, i32 0, i32 0
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %21, align 8
  store %struct.drm_crtc* %22, %struct.drm_crtc** %11, align 8
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %24 = call %struct.nv17_tv_encoder* @to_tv_enc(%struct.drm_encoder* %23)
  store %struct.nv17_tv_encoder* %24, %struct.nv17_tv_encoder** %12, align 8
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %26 = call %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder* %25)
  store %struct.nv17_tv_norm_params* %26, %struct.nv17_tv_norm_params** %13, align 8
  store i32 0, i32* %14, align 4
  %27 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %28 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %29 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %28, i32 0, i32 5
  %30 = load %struct.drm_property*, %struct.drm_property** %29, align 8
  %31 = icmp eq %struct.drm_property* %27, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %4
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %12, align 8
  %35 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  %36 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %37 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %36, i32 0, i32 0
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %37, align 8
  %39 = icmp ne %struct.drm_crtc* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %32
  %41 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %13, align 8
  %42 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CTV_ENC_MODE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %48 = call i32 @nv17_ctv_update_rescaler(%struct.drm_encoder* %47)
  br label %52

49:                                               ; preds = %40
  %50 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %51 = call i32 @nv17_tv_update_rescaler(%struct.drm_encoder* %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %32
  br label %171

54:                                               ; preds = %4
  %55 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %56 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %57 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %56, i32 0, i32 4
  %58 = load %struct.drm_property*, %struct.drm_property** %57, align 8
  %59 = icmp eq %struct.drm_property* %55, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %13, align 8
  %62 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TV_ENC_MODE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %185

69:                                               ; preds = %60
  %70 = load i8*, i8** %9, align 8
  %71 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %12, align 8
  %72 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %74 = call i32 @nv17_tv_update_properties(%struct.drm_encoder* %73)
  br label %170

75:                                               ; preds = %54
  %76 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %77 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %78 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %77, i32 0, i32 3
  %79 = load %struct.drm_property*, %struct.drm_property** %78, align 8
  %80 = icmp eq %struct.drm_property* %76, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %75
  %82 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %13, align 8
  %83 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TV_ENC_MODE, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %185

90:                                               ; preds = %81
  %91 = load i8*, i8** %9, align 8
  %92 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %12, align 8
  %93 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %95 = call i32 @nv17_tv_update_properties(%struct.drm_encoder* %94)
  br label %169

96:                                               ; preds = %75
  %97 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %98 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %99 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %98, i32 0, i32 2
  %100 = load %struct.drm_property*, %struct.drm_property** %99, align 8
  %101 = icmp eq %struct.drm_property* %97, %100
  br i1 %101, label %102, label %123

102:                                              ; preds = %96
  %103 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %13, align 8
  %104 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TV_ENC_MODE, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %185

111:                                              ; preds = %102
  %112 = load i8*, i8** %9, align 8
  %113 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %12, align 8
  %114 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  %115 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %116 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %115, i32 0, i32 0
  %117 = load %struct.drm_crtc*, %struct.drm_crtc** %116, align 8
  %118 = icmp ne %struct.drm_crtc* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %121 = call i32 @nv17_tv_update_rescaler(%struct.drm_encoder* %120)
  br label %122

122:                                              ; preds = %119, %111
  br label %168

123:                                              ; preds = %96
  %124 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %125 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %126 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %125, i32 0, i32 1
  %127 = load %struct.drm_property*, %struct.drm_property** %126, align 8
  %128 = icmp eq %struct.drm_property* %124, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %123
  %130 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %131 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @DRM_MODE_DPMS_OFF, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %5, align 4
  br label %185

138:                                              ; preds = %129
  %139 = load i8*, i8** %9, align 8
  %140 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %12, align 8
  %141 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  store i32 1, i32* %14, align 4
  br label %167

142:                                              ; preds = %123
  %143 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %144 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %145 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %144, i32 0, i32 0
  %146 = load %struct.drm_property*, %struct.drm_property** %145, align 8
  %147 = icmp eq %struct.drm_property* %143, %146
  br i1 %147, label %148, label %163

148:                                              ; preds = %142
  %149 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %13, align 8
  %150 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @TV_ENC_MODE, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %5, align 4
  br label %185

157:                                              ; preds = %148
  %158 = load i8*, i8** %9, align 8
  %159 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %12, align 8
  %160 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  %161 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %162 = call i32 @nv17_tv_update_properties(%struct.drm_encoder* %161)
  br label %166

163:                                              ; preds = %142
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %5, align 4
  br label %185

166:                                              ; preds = %157
  br label %167

167:                                              ; preds = %166, %138
  br label %168

168:                                              ; preds = %167, %122
  br label %169

169:                                              ; preds = %168, %90
  br label %170

170:                                              ; preds = %169, %69
  br label %171

171:                                              ; preds = %170, %53
  %172 = load i32, i32* %14, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %171
  %175 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %176 = call i32 @drm_helper_probe_single_connector_modes(%struct.drm_connector* %175, i32 0, i32 0)
  %177 = load %struct.drm_crtc*, %struct.drm_crtc** %11, align 8
  %178 = icmp ne %struct.drm_crtc* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %15, i32 0, i32 0
  %181 = load %struct.drm_crtc*, %struct.drm_crtc** %11, align 8
  store %struct.drm_crtc* %181, %struct.drm_crtc** %180, align 8
  %182 = call i32 @drm_mode_set_config_internal(%struct.drm_mode_set* %15)
  br label %183

183:                                              ; preds = %179, %174
  br label %184

184:                                              ; preds = %183, %171
  store i32 0, i32* %5, align 4
  br label %185

185:                                              ; preds = %184, %163, %154, %135, %108, %87, %66
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local %struct.nv17_tv_encoder* @to_tv_enc(%struct.drm_encoder*) #1

declare dso_local %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder*) #1

declare dso_local i32 @nv17_ctv_update_rescaler(%struct.drm_encoder*) #1

declare dso_local i32 @nv17_tv_update_rescaler(%struct.drm_encoder*) #1

declare dso_local i32 @nv17_tv_update_properties(%struct.drm_encoder*) #1

declare dso_local i32 @drm_helper_probe_single_connector_modes(%struct.drm_connector*, i32, i32) #1

declare dso_local i32 @drm_mode_set_config_internal(%struct.drm_mode_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
