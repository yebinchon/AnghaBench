; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ps3/extr_ps3av_cmd.c_ps3av_cmd_set_audio_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ps3/extr_ps3av_cmd.c_ps3av_cmd_set_audio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3av_pkt_audio_mode = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i64, i32, i8*, i32*, i32*, i64, i32 }

@PS3AV_CMD_AUDIO_FS_48K = common dso_local global i32 0, align 4
@PS3AV_CMD_AUDIO_WORD_BITS_16 = common dso_local global i8* null, align 8
@PS3AV_CMD_AUDIO_FORMAT_PCM = common dso_local global i32 0, align 4
@PS3AV_CMD_AUDIO_SOURCE_SERIAL = common dso_local global i32 0, align 4
@PS3AV_CID_AUDIO_MODE = common dso_local global i32 0, align 4
@PS3AV_CMD_AUDIO_SWAP_0 = common dso_local global i32 0, align 4
@PS3AV_CMD_AUDIO_MAP_OUTPUT_0 = common dso_local global i32 0, align 4
@PS3AV_CMD_AUDIO_MAP_OUTPUT_1 = common dso_local global i32 0, align 4
@PS3AV_CMD_AUDIO_MAP_OUTPUT_2 = common dso_local global i32 0, align 4
@PS3AV_CMD_AUDIO_MAP_OUTPUT_3 = common dso_local global i32 0, align 4
@PS3AV_CMD_AVPORT_HDMI_0 = common dso_local global i32 0, align 4
@PS3AV_CMD_AVPORT_HDMI_1 = common dso_local global i32 0, align 4
@PS3AV_CMD_AUDIO_LAYOUT_8CH = common dso_local global i8* null, align 8
@PS3AV_CMD_AUDIO_LAYOUT_6CH = common dso_local global i8* null, align 8
@PS3AV_CMD_AUDIO_LAYOUT_2CH = common dso_local global i8* null, align 8
@PS3AV_CMD_AUDIO_DOWNMIX_PERMITTED = common dso_local global i32 0, align 4
@ps3av_mode_cs_info = common dso_local global i32* null, align 8
@CS_MASK = common dso_local global i32 0, align 4
@CS_44 = common dso_local global i32 0, align 4
@CS_88 = common dso_local global i32 0, align 4
@CS_96 = common dso_local global i32 0, align 4
@CS_176 = common dso_local global i32 0, align 4
@CS_192 = common dso_local global i32 0, align 4
@PS3AV_CMD_AVPORT_SPDIF_0 = common dso_local global i32 0, align 4
@PS3AV_CMD_AVPORT_SPDIF_1 = common dso_local global i32 0, align 4
@PS3AV_CMD_AUDIO_FORMAT_BITSTREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ps3av_cmd_set_audio_mode(%struct.ps3av_pkt_audio_mode* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ps3av_pkt_audio_mode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ps3av_pkt_audio_mode* %0, %struct.ps3av_pkt_audio_mode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %13, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %12, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %14, align 4
  %25 = or i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %7
  store i32 130, i32* %10, align 4
  %28 = load i32, i32* @PS3AV_CMD_AUDIO_FS_48K, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i8*, i8** @PS3AV_CMD_AUDIO_WORD_BITS_16, align 8
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* @PS3AV_CMD_AUDIO_FORMAT_PCM, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* @PS3AV_CMD_AUDIO_SOURCE_SERIAL, align 4
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %27, %7
  %34 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %35 = call i32 @memset(%struct.ps3av_pkt_audio_mode* %34, i32 0, i32 96)
  %36 = load i32, i32* @PS3AV_CID_AUDIO_MODE, align 4
  %37 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %38 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %37, i32 0, i32 14
  %39 = call i32 @ps3av_set_hdr(i32 %36, i32 96, i32* %38)
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %43 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %42, i32 0, i32 13
  store i64 %41, i64* %43, align 8
  %44 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %45 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %44, i32 0, i32 0
  store i32 4095, i32* %45, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %48 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %51 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %54 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %57 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %60 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  switch i32 %61, label %77 [
    i32 128, label %62
    i32 129, label %67
    i32 130, label %76
  ]

62:                                               ; preds = %33
  %63 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %64 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %33, %62
  %68 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %69 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %68, i32 0, i32 6
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32 1, i32* %71, align 4
  %72 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %73 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %72, i32 0, i32 6
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %33, %67
  br label %77

77:                                               ; preds = %33, %76
  %78 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %79 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %77
  store i32 0, i32* %16, align 4
  br label %83

83:                                               ; preds = %94, %82
  %84 = load i32, i32* %16, align 4
  %85 = icmp slt i32 %84, 4
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load i32, i32* @PS3AV_CMD_AUDIO_SWAP_0, align 4
  %88 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %89 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %88, i32 0, i32 12
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  br label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %16, align 4
  br label %83

97:                                               ; preds = %83
  %98 = load i32, i32* @PS3AV_CMD_AUDIO_MAP_OUTPUT_0, align 4
  %99 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %100 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %99, i32 0, i32 11
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* @PS3AV_CMD_AUDIO_MAP_OUTPUT_1, align 4
  %104 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %105 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %104, i32 0, i32 11
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* @PS3AV_CMD_AUDIO_MAP_OUTPUT_2, align 4
  %109 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %110 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %109, i32 0, i32 11
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  store i32 %108, i32* %112, align 4
  %113 = load i32, i32* @PS3AV_CMD_AUDIO_MAP_OUTPUT_3, align 4
  %114 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %115 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %114, i32 0, i32 11
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  store i32 %113, i32* %117, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @PS3AV_CMD_AVPORT_HDMI_0, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %97
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @PS3AV_CMD_AVPORT_HDMI_1, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %121, %97
  %126 = load i32, i32* %10, align 4
  switch i32 %126, label %136 [
    i32 128, label %127
    i32 129, label %131
    i32 130, label %135
  ]

127:                                              ; preds = %125
  %128 = load i8*, i8** @PS3AV_CMD_AUDIO_LAYOUT_8CH, align 8
  %129 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %130 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %129, i32 0, i32 10
  store i8* %128, i8** %130, align 8
  br label %140

131:                                              ; preds = %125
  %132 = load i8*, i8** @PS3AV_CMD_AUDIO_LAYOUT_6CH, align 8
  %133 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %134 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %133, i32 0, i32 10
  store i8* %132, i8** %134, align 8
  br label %140

135:                                              ; preds = %125
  br label %136

136:                                              ; preds = %125, %135
  %137 = load i8*, i8** @PS3AV_CMD_AUDIO_LAYOUT_2CH, align 8
  %138 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %139 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %138, i32 0, i32 10
  store i8* %137, i8** %139, align 8
  br label %140

140:                                              ; preds = %136, %131, %127
  br label %145

141:                                              ; preds = %121
  %142 = load i8*, i8** @PS3AV_CMD_AUDIO_LAYOUT_2CH, align 8
  %143 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %144 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %143, i32 0, i32 10
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %141, %140
  %146 = load i32, i32* @PS3AV_CMD_AUDIO_DOWNMIX_PERMITTED, align 4
  %147 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %148 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %147, i32 0, i32 9
  store i32 %146, i32* %148, align 8
  %149 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %150 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %149, i32 0, i32 8
  store i64 0, i64* %150, align 8
  store i32 0, i32* %16, align 4
  br label %151

151:                                              ; preds = %166, %145
  %152 = load i32, i32* %16, align 4
  %153 = icmp slt i32 %152, 8
  br i1 %153, label %154, label %169

154:                                              ; preds = %151
  %155 = load i32*, i32** @ps3av_mode_cs_info, align 8
  %156 = load i32, i32* %16, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %161 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %160, i32 0, i32 7
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %16, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %159, i32* %165, align 4
  br label %166

166:                                              ; preds = %154
  %167 = load i32, i32* %16, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %16, align 4
  br label %151

169:                                              ; preds = %151
  %170 = load i32, i32* %11, align 4
  switch i32 %170, label %251 [
    i32 133, label %171
    i32 132, label %187
    i32 131, label %203
    i32 135, label %219
    i32 134, label %235
  ]

171:                                              ; preds = %169
  %172 = load i32, i32* @CS_MASK, align 4
  %173 = xor i32 %172, -1
  %174 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %175 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %174, i32 0, i32 7
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 3
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, %173
  store i32 %179, i32* %177, align 4
  %180 = load i32, i32* @CS_44, align 4
  %181 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %182 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %181, i32 0, i32 7
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 3
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %180
  store i32 %186, i32* %184, align 4
  br label %252

187:                                              ; preds = %169
  %188 = load i32, i32* @CS_MASK, align 4
  %189 = xor i32 %188, -1
  %190 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %191 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %190, i32 0, i32 7
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 3
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, %189
  store i32 %195, i32* %193, align 4
  %196 = load i32, i32* @CS_88, align 4
  %197 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %198 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %197, i32 0, i32 7
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 3
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %196
  store i32 %202, i32* %200, align 4
  br label %252

203:                                              ; preds = %169
  %204 = load i32, i32* @CS_MASK, align 4
  %205 = xor i32 %204, -1
  %206 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %207 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %206, i32 0, i32 7
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 3
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %210, %205
  store i32 %211, i32* %209, align 4
  %212 = load i32, i32* @CS_96, align 4
  %213 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %214 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %213, i32 0, i32 7
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 3
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %212
  store i32 %218, i32* %216, align 4
  br label %252

219:                                              ; preds = %169
  %220 = load i32, i32* @CS_MASK, align 4
  %221 = xor i32 %220, -1
  %222 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %223 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %222, i32 0, i32 7
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 3
  %226 = load i32, i32* %225, align 4
  %227 = and i32 %226, %221
  store i32 %227, i32* %225, align 4
  %228 = load i32, i32* @CS_176, align 4
  %229 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %230 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %229, i32 0, i32 7
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 3
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %233, %228
  store i32 %234, i32* %232, align 4
  br label %252

235:                                              ; preds = %169
  %236 = load i32, i32* @CS_MASK, align 4
  %237 = xor i32 %236, -1
  %238 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %239 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %238, i32 0, i32 7
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 3
  %242 = load i32, i32* %241, align 4
  %243 = and i32 %242, %237
  store i32 %243, i32* %241, align 4
  %244 = load i32, i32* @CS_192, align 4
  %245 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %246 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %245, i32 0, i32 7
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 3
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %244
  store i32 %250, i32* %248, align 4
  br label %252

251:                                              ; preds = %169
  br label %252

252:                                              ; preds = %251, %235, %219, %203, %187, %171
  %253 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %254 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %253, i32 0, i32 7
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 0
  %257 = load i32, i32* %256, align 4
  %258 = and i32 %257, 2
  store i32 %258, i32* %15, align 4
  %259 = load i32, i32* %15, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %285

261:                                              ; preds = %252
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* @PS3AV_CMD_AVPORT_SPDIF_0, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %277, label %265

265:                                              ; preds = %261
  %266 = load i32, i32* %9, align 4
  %267 = load i32, i32* @PS3AV_CMD_AVPORT_SPDIF_1, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %277, label %269

269:                                              ; preds = %265
  %270 = load i32, i32* %9, align 4
  %271 = load i32, i32* @PS3AV_CMD_AVPORT_HDMI_0, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %277, label %273

273:                                              ; preds = %269
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* @PS3AV_CMD_AVPORT_HDMI_1, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %285

277:                                              ; preds = %273, %269, %265, %261
  %278 = load i8*, i8** @PS3AV_CMD_AUDIO_WORD_BITS_16, align 8
  %279 = ptrtoint i8* %278 to i32
  %280 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %281 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %280, i32 0, i32 3
  store i32 %279, i32* %281, align 4
  %282 = load i32, i32* @PS3AV_CMD_AUDIO_FORMAT_BITSTREAM, align 4
  %283 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %8, align 8
  %284 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %283, i32 0, i32 4
  store i32 %282, i32* %284, align 8
  br label %285

285:                                              ; preds = %277, %273, %252
  ret void
}

declare dso_local i32 @memset(%struct.ps3av_pkt_audio_mode*, i32, i32) #1

declare dso_local i32 @ps3av_set_hdr(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
