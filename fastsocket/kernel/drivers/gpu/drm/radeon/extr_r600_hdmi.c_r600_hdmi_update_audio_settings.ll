; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_update_audio_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_update_audio_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.r600_audio = type { i32, i32, i32, i32, i64 }
%struct.hdmi_audio_infoframe = type { i32 }

@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@HDMI_AUDIO_INFOFRAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"%s with %d channels, %d Hz sampling rate, %d bits per sample,\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"playing\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"0x%02X IEC60958 status bits and 0x%02X category code\0A\00", align 1
@AUDIO_STATUS_PROFESSIONAL = common dso_local global i32 0, align 4
@AUDIO_STATUS_NONAUDIO = common dso_local global i32 0, align 4
@AUDIO_STATUS_COPYRIGHT = common dso_local global i32 0, align 4
@AUDIO_STATUS_EMPHASIS = common dso_local global i32 0, align 4
@HDMI0_60958_0 = common dso_local global i32 0, align 4
@AUDIO_STATUS_V = common dso_local global i32 0, align 4
@HDMI0_60958_1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to setup audio infoframe\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to pack audio infoframe\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_hdmi_update_audio_settings(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_encoder*, align 8
  %6 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %7 = alloca %struct.r600_audio, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hdmi_audio_infoframe, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %16 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %3, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.radeon_device*, %struct.radeon_device** %19, align 8
  store %struct.radeon_device* %20, %struct.radeon_device** %4, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %22 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %21)
  store %struct.radeon_encoder* %22, %struct.radeon_encoder** %5, align 8
  %23 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %23, i32 0, i32 0
  %25 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %24, align 8
  store %struct.radeon_encoder_atom_dig* %25, %struct.radeon_encoder_atom_dig** %6, align 8
  %26 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  call void @r600_audio_status(%struct.r600_audio* sret %7, %struct.radeon_device* %26)
  %27 = load i32, i32* @HDMI_INFOFRAME_HEADER_SIZE, align 4
  %28 = load i32, i32* @HDMI_AUDIO_INFOFRAME_SIZE, align 4
  %29 = add nsw i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %8, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %9, align 8
  %33 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %34 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %39 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37, %1
  store i32 1, i32* %14, align 4
  br label %198

45:                                               ; preds = %37
  %46 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %47 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  %51 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %52 = call i64 @r600_hdmi_is_audio_buffer_filled(%struct.drm_encoder* %51)
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %56 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %7, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %7, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %55, i32 %57, i32 %59, i32 %61)
  %63 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %7, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %7, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %67)
  store i32 0, i32* %12, align 4
  %69 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %7, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @AUDIO_STATUS_PROFESSIONAL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %45
  %75 = load i32, i32* %12, align 4
  %76 = or i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %74, %45
  %78 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %7, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @AUDIO_STATUS_NONAUDIO, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* %12, align 4
  %85 = or i32 %84, 2
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %83, %77
  %87 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %7, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @AUDIO_STATUS_COPYRIGHT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* %12, align 4
  %94 = or i32 %93, 4
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %92, %86
  %96 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %7, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @AUDIO_STATUS_EMPHASIS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %102, 8
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %101, %95
  %105 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %7, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @HDMI0_60958_CS_CATEGORY_CODE(i64 %106)
  %108 = load i32, i32* %12, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %12, align 4
  %110 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %7, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %140 [
    i32 32000, label %112
    i32 44100, label %116
    i32 48000, label %120
    i32 88200, label %124
    i32 96000, label %128
    i32 176400, label %132
    i32 192000, label %136
  ]

112:                                              ; preds = %104
  %113 = call i32 @HDMI0_60958_CS_SAMPLING_FREQUENCY(i32 3)
  %114 = load i32, i32* %12, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %12, align 4
  br label %140

116:                                              ; preds = %104
  %117 = call i32 @HDMI0_60958_CS_SAMPLING_FREQUENCY(i32 0)
  %118 = load i32, i32* %12, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %12, align 4
  br label %140

120:                                              ; preds = %104
  %121 = call i32 @HDMI0_60958_CS_SAMPLING_FREQUENCY(i32 2)
  %122 = load i32, i32* %12, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %12, align 4
  br label %140

124:                                              ; preds = %104
  %125 = call i32 @HDMI0_60958_CS_SAMPLING_FREQUENCY(i32 8)
  %126 = load i32, i32* %12, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %12, align 4
  br label %140

128:                                              ; preds = %104
  %129 = call i32 @HDMI0_60958_CS_SAMPLING_FREQUENCY(i32 10)
  %130 = load i32, i32* %12, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %12, align 4
  br label %140

132:                                              ; preds = %104
  %133 = call i32 @HDMI0_60958_CS_SAMPLING_FREQUENCY(i32 12)
  %134 = load i32, i32* %12, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %12, align 4
  br label %140

136:                                              ; preds = %104
  %137 = call i32 @HDMI0_60958_CS_SAMPLING_FREQUENCY(i32 14)
  %138 = load i32, i32* %12, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %12, align 4
  br label %140

140:                                              ; preds = %104, %136, %132, %128, %124, %120, %116, %112
  %141 = load i32, i32* @HDMI0_60958_0, align 4
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %141, %142
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @WREG32(i32 %143, i32 %144)
  store i32 0, i32* %12, align 4
  %146 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %7, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  switch i32 %147, label %160 [
    i32 16, label %148
    i32 20, label %152
    i32 24, label %156
  ]

148:                                              ; preds = %140
  %149 = call i32 @HDMI0_60958_CS_WORD_LENGTH(i32 2)
  %150 = load i32, i32* %12, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %12, align 4
  br label %160

152:                                              ; preds = %140
  %153 = call i32 @HDMI0_60958_CS_WORD_LENGTH(i32 3)
  %154 = load i32, i32* %12, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %12, align 4
  br label %160

156:                                              ; preds = %140
  %157 = call i32 @HDMI0_60958_CS_WORD_LENGTH(i32 11)
  %158 = load i32, i32* %12, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %12, align 4
  br label %160

160:                                              ; preds = %140, %156, %152, %148
  %161 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %7, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @AUDIO_STATUS_V, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load i32, i32* %12, align 4
  %168 = or i32 %167, 327680
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %166, %160
  %170 = load i32, i32* @HDMI0_60958_1, align 4
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %170, %171
  %173 = load i32, i32* %12, align 4
  %174 = call i32 @WREG32_P(i32 %172, i32 %173, i32 -327696)
  %175 = call i64 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe* %10)
  store i64 %175, i64* %13, align 8
  %176 = load i64, i64* %13, align 8
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %169
  %179 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %198

180:                                              ; preds = %169
  %181 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %7, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %10, i32 0, i32 0
  store i32 %182, i32* %183, align 4
  %184 = mul nuw i64 4, %30
  %185 = trunc i64 %184 to i32
  %186 = call i64 @hdmi_audio_infoframe_pack(%struct.hdmi_audio_infoframe* %10, i32* %32, i32 %185)
  store i64 %186, i64* %13, align 8
  %187 = load i64, i64* %13, align 8
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %180
  %190 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %198

191:                                              ; preds = %180
  %192 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %193 = mul nuw i64 4, %30
  %194 = trunc i64 %193 to i32
  %195 = call i32 @r600_hdmi_update_audio_infoframe(%struct.drm_encoder* %192, i32* %32, i32 %194)
  %196 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %197 = call i32 @r600_hdmi_audio_workaround(%struct.drm_encoder* %196)
  store i32 0, i32* %14, align 4
  br label %198

198:                                              ; preds = %191, %189, %178, %44
  %199 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %199)
  %200 = load i32, i32* %14, align 4
  switch i32 %200, label %202 [
    i32 0, label %201
    i32 1, label %201
  ]

201:                                              ; preds = %198, %198
  ret void

202:                                              ; preds = %198
  unreachable
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local void @r600_audio_status(%struct.r600_audio* sret, %struct.radeon_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i64 @r600_hdmi_is_audio_buffer_filled(%struct.drm_encoder*) #1

declare dso_local i32 @HDMI0_60958_CS_CATEGORY_CODE(i64) #1

declare dso_local i32 @HDMI0_60958_CS_SAMPLING_FREQUENCY(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @HDMI0_60958_CS_WORD_LENGTH(i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i64 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @hdmi_audio_infoframe_pack(%struct.hdmi_audio_infoframe*, i32*, i32) #1

declare dso_local i32 @r600_hdmi_update_audio_infoframe(%struct.drm_encoder*, i32*, i32) #1

declare dso_local i32 @r600_hdmi_audio_workaround(%struct.drm_encoder*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
