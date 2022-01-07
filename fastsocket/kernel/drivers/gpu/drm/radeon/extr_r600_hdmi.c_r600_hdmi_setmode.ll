; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_setmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.hdmi_avi_infoframe = type { i32 }

@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@HDMI_AVI_INFOFRAME_SIZE = common dso_local global i32 0, align 4
@HDMI0_VBI_PACKET_CONTROL = common dso_local global i64 0, align 8
@HDMI0_NULL_SEND = common dso_local global i32 0, align 4
@HDMI0_AUDIO_CRC_CONTROL = common dso_local global i64 0, align 8
@HDMI0_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@AFMT_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@AFMT_AUDIO_SAMPLE_SEND = common dso_local global i32 0, align 4
@AFMT_60958_CS_UPDATE = common dso_local global i32 0, align 4
@HDMI0_AUDIO_SAMPLE_SEND = common dso_local global i32 0, align 4
@HDMI0_60958_CS_UPDATE = common dso_local global i32 0, align 4
@HDMI0_ACR_PACKET_CONTROL = common dso_local global i64 0, align 8
@HDMI0_ACR_AUTO_SEND = common dso_local global i32 0, align 4
@HDMI0_ACR_SOURCE = common dso_local global i32 0, align 4
@HDMI0_GC_SEND = common dso_local global i32 0, align 4
@HDMI0_GC_CONT = common dso_local global i32 0, align 4
@HDMI0_INFOFRAME_CONTROL0 = common dso_local global i64 0, align 8
@HDMI0_AVI_INFO_SEND = common dso_local global i32 0, align 4
@HDMI0_AVI_INFO_CONT = common dso_local global i32 0, align 4
@HDMI0_AUDIO_INFO_SEND = common dso_local global i32 0, align 4
@HDMI0_AUDIO_INFO_CONT = common dso_local global i32 0, align 4
@HDMI0_INFOFRAME_CONTROL1 = common dso_local global i64 0, align 8
@HDMI0_GC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"failed to setup AVI infoframe: %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to pack AVI infoframe: %zd\0A\00", align 1
@HDMI0_RAMP_CONTROL0 = common dso_local global i64 0, align 8
@HDMI0_RAMP_CONTROL1 = common dso_local global i64 0, align 8
@HDMI0_RAMP_CONTROL2 = common dso_local global i64 0, align 8
@HDMI0_RAMP_CONTROL3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_hdmi_setmode(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.hdmi_avi_infoframe, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %16 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %5, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.radeon_device*, %struct.radeon_device** %19, align 8
  store %struct.radeon_device* %20, %struct.radeon_device** %6, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %22 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %21)
  store %struct.radeon_encoder* %22, %struct.radeon_encoder** %7, align 8
  %23 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %24 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %23, i32 0, i32 0
  %25 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %24, align 8
  store %struct.radeon_encoder_atom_dig* %25, %struct.radeon_encoder_atom_dig** %8, align 8
  %26 = load i32, i32* @HDMI_INFOFRAME_HEADER_SIZE, align 4
  %27 = load i32, i32* @HDMI_AVI_INFOFRAME_SIZE, align 4
  %28 = add nsw i32 %26, %27
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %9, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  %32 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %33 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  store i32 1, i32* %14, align 4
  br label %172

39:                                               ; preds = %2
  %40 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %41 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %12, align 8
  %45 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @r600_audio_set_clock(%struct.drm_encoder* %45, i32 %48)
  %50 = load i64, i64* @HDMI0_VBI_PACKET_CONTROL, align 8
  %51 = load i64, i64* %12, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32, i32* @HDMI0_NULL_SEND, align 4
  %54 = call i32 @WREG32(i64 %52, i32 %53)
  %55 = load i64, i64* @HDMI0_AUDIO_CRC_CONTROL, align 8
  %56 = load i64, i64* %12, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @WREG32(i64 %57, i32 4096)
  %59 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %60 = call i64 @ASIC_IS_DCE32(%struct.radeon_device* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %39
  %63 = load i64, i64* @HDMI0_AUDIO_PACKET_CONTROL, align 8
  %64 = load i64, i64* %12, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @HDMI0_AUDIO_DELAY_EN(i32 1)
  %67 = call i32 @HDMI0_AUDIO_PACKETS_PER_LINE(i32 3)
  %68 = or i32 %66, %67
  %69 = call i32 @WREG32(i64 %65, i32 %68)
  %70 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %71 = load i64, i64* %12, align 8
  %72 = add nsw i64 %70, %71
  %73 = load i32, i32* @AFMT_AUDIO_SAMPLE_SEND, align 4
  %74 = load i32, i32* @AFMT_60958_CS_UPDATE, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @WREG32(i64 %72, i32 %75)
  br label %89

77:                                               ; preds = %39
  %78 = load i64, i64* @HDMI0_AUDIO_PACKET_CONTROL, align 8
  %79 = load i64, i64* %12, align 8
  %80 = add nsw i64 %78, %79
  %81 = load i32, i32* @HDMI0_AUDIO_SAMPLE_SEND, align 4
  %82 = call i32 @HDMI0_AUDIO_DELAY_EN(i32 1)
  %83 = or i32 %81, %82
  %84 = call i32 @HDMI0_AUDIO_PACKETS_PER_LINE(i32 3)
  %85 = or i32 %83, %84
  %86 = load i32, i32* @HDMI0_60958_CS_UPDATE, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @WREG32(i64 %80, i32 %87)
  br label %89

89:                                               ; preds = %77, %62
  %90 = load i64, i64* @HDMI0_ACR_PACKET_CONTROL, align 8
  %91 = load i64, i64* %12, align 8
  %92 = add nsw i64 %90, %91
  %93 = load i32, i32* @HDMI0_ACR_AUTO_SEND, align 4
  %94 = load i32, i32* @HDMI0_ACR_SOURCE, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @WREG32(i64 %92, i32 %95)
  %97 = load i64, i64* @HDMI0_VBI_PACKET_CONTROL, align 8
  %98 = load i64, i64* %12, align 8
  %99 = add nsw i64 %97, %98
  %100 = load i32, i32* @HDMI0_NULL_SEND, align 4
  %101 = load i32, i32* @HDMI0_GC_SEND, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @HDMI0_GC_CONT, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @WREG32(i64 %99, i32 %104)
  %106 = load i64, i64* @HDMI0_INFOFRAME_CONTROL0, align 8
  %107 = load i64, i64* %12, align 8
  %108 = add nsw i64 %106, %107
  %109 = load i32, i32* @HDMI0_AVI_INFO_SEND, align 4
  %110 = load i32, i32* @HDMI0_AVI_INFO_CONT, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @HDMI0_AUDIO_INFO_SEND, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @HDMI0_AUDIO_INFO_CONT, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @WREG32(i64 %108, i32 %115)
  %117 = load i64, i64* @HDMI0_INFOFRAME_CONTROL1, align 8
  %118 = load i64, i64* %12, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @HDMI0_AVI_INFO_LINE(i32 2)
  %121 = call i32 @HDMI0_AUDIO_INFO_LINE(i32 2)
  %122 = or i32 %120, %121
  %123 = call i32 @WREG32(i64 %119, i32 %122)
  %124 = load i64, i64* @HDMI0_GC, align 8
  %125 = load i64, i64* %12, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @WREG32(i64 %126, i32 0)
  %128 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %129 = call i64 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe* %11, %struct.drm_display_mode* %128)
  store i64 %129, i64* %13, align 8
  %130 = load i64, i64* %13, align 8
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %89
  %133 = load i64, i64* %13, align 8
  %134 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %133)
  store i32 1, i32* %14, align 4
  br label %172

135:                                              ; preds = %89
  %136 = mul nuw i64 4, %29
  %137 = trunc i64 %136 to i32
  %138 = call i64 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe* %11, i32* %31, i32 %137)
  store i64 %138, i64* %13, align 8
  %139 = load i64, i64* %13, align 8
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i64, i64* %13, align 8
  %143 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %142)
  store i32 1, i32* %14, align 4
  br label %172

144:                                              ; preds = %135
  %145 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %146 = mul nuw i64 4, %29
  %147 = trunc i64 %146 to i32
  %148 = call i32 @r600_hdmi_update_avi_infoframe(%struct.drm_encoder* %145, i32* %31, i32 %147)
  %149 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %150 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %151 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @r600_hdmi_update_ACR(%struct.drm_encoder* %149, i32 %152)
  %154 = load i64, i64* @HDMI0_RAMP_CONTROL0, align 8
  %155 = load i64, i64* %12, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @WREG32(i64 %156, i32 16777215)
  %158 = load i64, i64* @HDMI0_RAMP_CONTROL1, align 8
  %159 = load i64, i64* %12, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @WREG32(i64 %160, i32 8388607)
  %162 = load i64, i64* @HDMI0_RAMP_CONTROL2, align 8
  %163 = load i64, i64* %12, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @WREG32(i64 %164, i32 1)
  %166 = load i64, i64* @HDMI0_RAMP_CONTROL3, align 8
  %167 = load i64, i64* %12, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @WREG32(i64 %168, i32 1)
  %170 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %171 = call i32 @r600_hdmi_audio_workaround(%struct.drm_encoder* %170)
  store i32 0, i32* %14, align 4
  br label %172

172:                                              ; preds = %144, %141, %132, %38
  %173 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load i32, i32* %14, align 4
  switch i32 %174, label %176 [
    i32 0, label %175
    i32 1, label %175
  ]

175:                                              ; preds = %172, %172
  ret void

176:                                              ; preds = %172
  unreachable
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @r600_audio_set_clock(%struct.drm_encoder*, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i64 @ASIC_IS_DCE32(%struct.radeon_device*) #1

declare dso_local i32 @HDMI0_AUDIO_DELAY_EN(i32) #1

declare dso_local i32 @HDMI0_AUDIO_PACKETS_PER_LINE(i32) #1

declare dso_local i32 @HDMI0_AVI_INFO_LINE(i32) #1

declare dso_local i32 @HDMI0_AUDIO_INFO_LINE(i32) #1

declare dso_local i64 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe*, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

declare dso_local i64 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe*, i32*, i32) #1

declare dso_local i32 @r600_hdmi_update_avi_infoframe(%struct.drm_encoder*, i32*, i32) #1

declare dso_local i32 @r600_hdmi_update_ACR(%struct.drm_encoder*, i32) #1

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
