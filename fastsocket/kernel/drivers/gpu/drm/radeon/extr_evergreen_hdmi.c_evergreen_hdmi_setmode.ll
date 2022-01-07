; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_evergreen_hdmi_setmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_evergreen_hdmi_setmode.c"
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
@HDMI_VBI_PACKET_CONTROL = common dso_local global i64 0, align 8
@HDMI_NULL_SEND = common dso_local global i32 0, align 4
@AFMT_AUDIO_CRC_CONTROL = common dso_local global i64 0, align 8
@HDMI_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@AFMT_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@AFMT_AUDIO_SAMPLE_SEND = common dso_local global i32 0, align 4
@AFMT_60958_CS_UPDATE = common dso_local global i32 0, align 4
@HDMI_ACR_PACKET_CONTROL = common dso_local global i64 0, align 8
@HDMI_ACR_AUTO_SEND = common dso_local global i32 0, align 4
@HDMI_ACR_SOURCE = common dso_local global i32 0, align 4
@HDMI_GC_SEND = common dso_local global i32 0, align 4
@HDMI_GC_CONT = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_CONTROL0 = common dso_local global i64 0, align 8
@HDMI_AVI_INFO_SEND = common dso_local global i32 0, align 4
@HDMI_AVI_INFO_CONT = common dso_local global i32 0, align 4
@HDMI_AUDIO_INFO_SEND = common dso_local global i32 0, align 4
@HDMI_AUDIO_INFO_CONT = common dso_local global i32 0, align 4
@AFMT_INFOFRAME_CONTROL0 = common dso_local global i64 0, align 8
@AFMT_AUDIO_INFO_UPDATE = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_CONTROL1 = common dso_local global i64 0, align 8
@HDMI_GC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"failed to setup AVI infoframe: %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to pack AVI infoframe: %zd\0A\00", align 1
@AFMT_RAMP_CONTROL0 = common dso_local global i64 0, align 8
@AFMT_RAMP_CONTROL1 = common dso_local global i64 0, align 8
@AFMT_RAMP_CONTROL2 = common dso_local global i64 0, align 8
@AFMT_RAMP_CONTROL3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_hdmi_setmode(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
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
  br label %158

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
  %50 = load i64, i64* @HDMI_VBI_PACKET_CONTROL, align 8
  %51 = load i64, i64* %12, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32, i32* @HDMI_NULL_SEND, align 4
  %54 = call i32 @WREG32(i64 %52, i32 %53)
  %55 = load i64, i64* @AFMT_AUDIO_CRC_CONTROL, align 8
  %56 = load i64, i64* %12, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @WREG32(i64 %57, i32 4096)
  %59 = load i64, i64* @HDMI_AUDIO_PACKET_CONTROL, align 8
  %60 = load i64, i64* %12, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @HDMI_AUDIO_DELAY_EN(i32 1)
  %63 = call i32 @HDMI_AUDIO_PACKETS_PER_LINE(i32 3)
  %64 = or i32 %62, %63
  %65 = call i32 @WREG32(i64 %61, i32 %64)
  %66 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %67 = load i64, i64* %12, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i32, i32* @AFMT_AUDIO_SAMPLE_SEND, align 4
  %70 = load i32, i32* @AFMT_60958_CS_UPDATE, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @WREG32(i64 %68, i32 %71)
  %73 = load i64, i64* @HDMI_ACR_PACKET_CONTROL, align 8
  %74 = load i64, i64* %12, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i32, i32* @HDMI_ACR_AUTO_SEND, align 4
  %77 = load i32, i32* @HDMI_ACR_SOURCE, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @WREG32(i64 %75, i32 %78)
  %80 = load i64, i64* @HDMI_VBI_PACKET_CONTROL, align 8
  %81 = load i64, i64* %12, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32, i32* @HDMI_NULL_SEND, align 4
  %84 = load i32, i32* @HDMI_GC_SEND, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @HDMI_GC_CONT, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @WREG32(i64 %82, i32 %87)
  %89 = load i64, i64* @HDMI_INFOFRAME_CONTROL0, align 8
  %90 = load i64, i64* %12, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i32, i32* @HDMI_AVI_INFO_SEND, align 4
  %93 = load i32, i32* @HDMI_AVI_INFO_CONT, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @HDMI_AUDIO_INFO_SEND, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @HDMI_AUDIO_INFO_CONT, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @WREG32(i64 %91, i32 %98)
  %100 = load i64, i64* @AFMT_INFOFRAME_CONTROL0, align 8
  %101 = load i64, i64* %12, align 8
  %102 = add nsw i64 %100, %101
  %103 = load i32, i32* @AFMT_AUDIO_INFO_UPDATE, align 4
  %104 = call i32 @WREG32(i64 %102, i32 %103)
  %105 = load i64, i64* @HDMI_INFOFRAME_CONTROL1, align 8
  %106 = load i64, i64* %12, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @HDMI_AVI_INFO_LINE(i32 2)
  %109 = call i32 @HDMI_AUDIO_INFO_LINE(i32 2)
  %110 = or i32 %108, %109
  %111 = call i32 @WREG32(i64 %107, i32 %110)
  %112 = load i64, i64* @HDMI_GC, align 8
  %113 = load i64, i64* %12, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @WREG32(i64 %114, i32 0)
  %116 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %117 = call i64 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe* %11, %struct.drm_display_mode* %116)
  store i64 %117, i64* %13, align 8
  %118 = load i64, i64* %13, align 8
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %39
  %121 = load i64, i64* %13, align 8
  %122 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %121)
  store i32 1, i32* %14, align 4
  br label %158

123:                                              ; preds = %39
  %124 = mul nuw i64 4, %29
  %125 = trunc i64 %124 to i32
  %126 = call i64 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe* %11, i32* %31, i32 %125)
  store i64 %126, i64* %13, align 8
  %127 = load i64, i64* %13, align 8
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load i64, i64* %13, align 8
  %131 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %130)
  store i32 1, i32* %14, align 4
  br label %158

132:                                              ; preds = %123
  %133 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %134 = mul nuw i64 4, %29
  %135 = trunc i64 %134 to i32
  %136 = call i32 @evergreen_hdmi_update_avi_infoframe(%struct.drm_encoder* %133, i32* %31, i32 %135)
  %137 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %138 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %139 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @evergreen_hdmi_update_ACR(%struct.drm_encoder* %137, i32 %140)
  %142 = load i64, i64* @AFMT_RAMP_CONTROL0, align 8
  %143 = load i64, i64* %12, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @WREG32(i64 %144, i32 16777215)
  %146 = load i64, i64* @AFMT_RAMP_CONTROL1, align 8
  %147 = load i64, i64* %12, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @WREG32(i64 %148, i32 8388607)
  %150 = load i64, i64* @AFMT_RAMP_CONTROL2, align 8
  %151 = load i64, i64* %12, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @WREG32(i64 %152, i32 1)
  %154 = load i64, i64* @AFMT_RAMP_CONTROL3, align 8
  %155 = load i64, i64* %12, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @WREG32(i64 %156, i32 1)
  store i32 0, i32* %14, align 4
  br label %158

158:                                              ; preds = %132, %129, %120, %38
  %159 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %159)
  %160 = load i32, i32* %14, align 4
  switch i32 %160, label %162 [
    i32 0, label %161
    i32 1, label %161
  ]

161:                                              ; preds = %158, %158
  ret void

162:                                              ; preds = %158
  unreachable
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @r600_audio_set_clock(%struct.drm_encoder*, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @HDMI_AUDIO_DELAY_EN(i32) #1

declare dso_local i32 @HDMI_AUDIO_PACKETS_PER_LINE(i32) #1

declare dso_local i32 @HDMI_AVI_INFO_LINE(i32) #1

declare dso_local i32 @HDMI_AUDIO_INFO_LINE(i32) #1

declare dso_local i64 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe*, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

declare dso_local i64 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe*, i32*, i32) #1

declare dso_local i32 @evergreen_hdmi_update_avi_infoframe(%struct.drm_encoder*, i32*, i32) #1

declare dso_local i32 @evergreen_hdmi_update_ACR(%struct.drm_encoder*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
