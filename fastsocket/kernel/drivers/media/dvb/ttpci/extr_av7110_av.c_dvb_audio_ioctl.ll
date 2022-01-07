; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_dvb_audio_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_dvb_audio_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.dvb_device* }
%struct.dvb_device = type { %struct.av7110* }
%struct.av7110 = type { i32, i32*, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i8* }
%struct.audio_mixer = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"av7110:%p, cmd=%04x\0A\00", align 1
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@AUDIO_SOURCE_MEMORY = common dso_local global i32 0, align 4
@RP_AUDIO = common dso_local global i32 0, align 4
@AUDIO_CMD_MUTE = common dso_local global i32 0, align 4
@AUDIO_STOPPED = common dso_local global i8* null, align 8
@AUDIO_CMD_UNMUTE = common dso_local global i32 0, align 4
@AUDIO_PLAYING = common dso_local global i8* null, align 8
@AUDIO_PAUSED = common dso_local global i8* null, align 8
@AUDIO_CMD_PCM16 = common dso_local global i32 0, align 4
@AUDIO_CMD_SYNC_ON = common dso_local global i32 0, align 4
@AUDIO_CMD_SYNC_OFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AUDIO_CMD_STEREO = common dso_local global i32 0, align 4
@DVB_ADAC_CRYSTAL = common dso_local global i32 0, align 4
@DVB_ADAC_MSP34x5 = common dso_local global i32 0, align 4
@MSP_WR_DSP = common dso_local global i32 0, align 4
@AUDIO_CMD_MONO_L = common dso_local global i32 0, align 4
@AUDIO_CMD_MONO_R = common dso_local global i32 0, align 4
@AUDIO_CAP_LPCM = common dso_local global i32 0, align 4
@AUDIO_CAP_MP1 = common dso_local global i32 0, align 4
@AUDIO_CAP_MP2 = common dso_local global i32 0, align 4
@AUDIO_CAP_DTS = common dso_local global i32 0, align 4
@AUDIO_CAP_AC3 = common dso_local global i32 0, align 4
@RP_AV = common dso_local global i32 0, align 4
@COMTYPE_REC_PLAY = common dso_local global i32 0, align 4
@__Play = common dso_local global i32 0, align 4
@AV_PES = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32, i8*)* @dvb_audio_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_audio_ioctl(%struct.inode* %0, %struct.file* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dvb_device*, align 8
  %11 = alloca %struct.av7110*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.audio_mixer*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load %struct.file*, %struct.file** %7, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = load %struct.dvb_device*, %struct.dvb_device** %16, align 8
  store %struct.dvb_device* %17, %struct.dvb_device** %10, align 8
  %18 = load %struct.dvb_device*, %struct.dvb_device** %10, align 8
  %19 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %18, i32 0, i32 0
  %20 = load %struct.av7110*, %struct.av7110** %19, align 8
  store %struct.av7110* %20, %struct.av7110** %11, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = ptrtoint i8* %21 to i64
  store i64 %22, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %23 = load %struct.av7110*, %struct.av7110** %11, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.av7110* %23, i32 %24)
  %26 = load %struct.file*, %struct.file** %7, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @O_ACCMODE, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @O_RDONLY, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 141
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %348

39:                                               ; preds = %33, %4
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %343 [
    i32 128, label %41
    i32 137, label %65
    i32 138, label %92
    i32 143, label %104
    i32 136, label %122
    i32 131, label %128
    i32 135, label %148
    i32 134, label %164
    i32 145, label %179
    i32 141, label %277
    i32 142, label %282
    i32 144, label %309
    i32 133, label %330
    i32 132, label %331
    i32 130, label %342
  ]

41:                                               ; preds = %39
  %42 = load %struct.av7110*, %struct.av7110** %11, align 8
  %43 = getelementptr inbounds %struct.av7110, %struct.av7110* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @AUDIO_SOURCE_MEMORY, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.av7110*, %struct.av7110** %11, align 8
  %50 = load i32, i32* @RP_AUDIO, align 4
  %51 = call i32 @av7110_av_stop(%struct.av7110* %49, i32 %50)
  store i32 %51, i32* %13, align 4
  br label %56

52:                                               ; preds = %41
  %53 = load %struct.av7110*, %struct.av7110** %11, align 8
  %54 = load i32, i32* @AUDIO_CMD_MUTE, align 4
  %55 = call i32 @audcom(%struct.av7110* %53, i32 %54)
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load i8*, i8** @AUDIO_STOPPED, align 8
  %61 = load %struct.av7110*, %struct.av7110** %11, align 8
  %62 = getelementptr inbounds %struct.av7110, %struct.av7110* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 5
  store i8* %60, i8** %63, align 8
  br label %64

64:                                               ; preds = %59, %56
  br label %346

65:                                               ; preds = %39
  %66 = load %struct.av7110*, %struct.av7110** %11, align 8
  %67 = getelementptr inbounds %struct.av7110, %struct.av7110* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @AUDIO_SOURCE_MEMORY, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load %struct.av7110*, %struct.av7110** %11, align 8
  %74 = load i32, i32* @RP_AUDIO, align 4
  %75 = call i32 @av7110_av_start_play(%struct.av7110* %73, i32 %74)
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %72, %65
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load %struct.av7110*, %struct.av7110** %11, align 8
  %81 = load i32, i32* @AUDIO_CMD_UNMUTE, align 4
  %82 = call i32 @audcom(%struct.av7110* %80, i32 %81)
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = load i8*, i8** @AUDIO_PLAYING, align 8
  %88 = load %struct.av7110*, %struct.av7110** %11, align 8
  %89 = getelementptr inbounds %struct.av7110, %struct.av7110* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 5
  store i8* %87, i8** %90, align 8
  br label %91

91:                                               ; preds = %86, %83
  br label %346

92:                                               ; preds = %39
  %93 = load %struct.av7110*, %struct.av7110** %11, align 8
  %94 = load i32, i32* @AUDIO_CMD_MUTE, align 4
  %95 = call i32 @audcom(%struct.av7110* %93, i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %92
  %99 = load i8*, i8** @AUDIO_PAUSED, align 8
  %100 = load %struct.av7110*, %struct.av7110** %11, align 8
  %101 = getelementptr inbounds %struct.av7110, %struct.av7110* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 5
  store i8* %99, i8** %102, align 8
  br label %103

103:                                              ; preds = %98, %92
  br label %346

104:                                              ; preds = %39
  %105 = load %struct.av7110*, %struct.av7110** %11, align 8
  %106 = getelementptr inbounds %struct.av7110, %struct.av7110* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 5
  %108 = load i8*, i8** %107, align 8
  %109 = load i8*, i8** @AUDIO_PAUSED, align 8
  %110 = icmp eq i8* %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %104
  %112 = load i8*, i8** @AUDIO_PLAYING, align 8
  %113 = load %struct.av7110*, %struct.av7110** %11, align 8
  %114 = getelementptr inbounds %struct.av7110, %struct.av7110* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 5
  store i8* %112, i8** %115, align 8
  %116 = load %struct.av7110*, %struct.av7110** %11, align 8
  %117 = load i32, i32* @AUDIO_CMD_UNMUTE, align 4
  %118 = load i32, i32* @AUDIO_CMD_PCM16, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @audcom(%struct.av7110* %116, i32 %119)
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %111, %104
  br label %346

122:                                              ; preds = %39
  %123 = load i64, i64* %12, align 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.av7110*, %struct.av7110** %11, align 8
  %126 = getelementptr inbounds %struct.av7110, %struct.av7110* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 4
  store i32 %124, i32* %127, align 8
  br label %346

128:                                              ; preds = %39
  %129 = load %struct.av7110*, %struct.av7110** %11, align 8
  %130 = load i64, i64* %12, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @AUDIO_CMD_MUTE, align 4
  br label %136

134:                                              ; preds = %128
  %135 = load i32, i32* @AUDIO_CMD_UNMUTE, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  %138 = call i32 @audcom(%struct.av7110* %129, i32 %137)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %136
  %142 = load i64, i64* %12, align 8
  %143 = trunc i64 %142 to i32
  %144 = load %struct.av7110*, %struct.av7110** %11, align 8
  %145 = getelementptr inbounds %struct.av7110, %struct.av7110* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 8
  br label %147

147:                                              ; preds = %141, %136
  br label %346

148:                                              ; preds = %39
  %149 = load i64, i64* %12, align 8
  %150 = trunc i64 %149 to i32
  %151 = load %struct.av7110*, %struct.av7110** %11, align 8
  %152 = getelementptr inbounds %struct.av7110, %struct.av7110* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 4
  %154 = load %struct.av7110*, %struct.av7110** %11, align 8
  %155 = load i64, i64* %12, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %148
  %158 = load i32, i32* @AUDIO_CMD_SYNC_ON, align 4
  br label %161

159:                                              ; preds = %148
  %160 = load i32, i32* @AUDIO_CMD_SYNC_OFF, align 4
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i32 [ %158, %157 ], [ %160, %159 ]
  %163 = call i32 @audcom(%struct.av7110* %154, i32 %162)
  store i32 %163, i32* %13, align 4
  br label %346

164:                                              ; preds = %39
  %165 = load %struct.av7110*, %struct.av7110** %11, align 8
  %166 = getelementptr inbounds %struct.av7110, %struct.av7110* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @FW_VERSION(i32 %167)
  %169 = icmp slt i32 %168, 9761
  br i1 %169, label %170, label %173

170:                                              ; preds = %164
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %13, align 4
  br label %173

173:                                              ; preds = %170, %164
  %174 = load i64, i64* %12, align 8
  %175 = trunc i64 %174 to i32
  %176 = load %struct.av7110*, %struct.av7110** %11, align 8
  %177 = getelementptr inbounds %struct.av7110, %struct.av7110* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 2
  store i32 %175, i32* %178, align 8
  br label %346

179:                                              ; preds = %39
  %180 = load i64, i64* %12, align 8
  %181 = trunc i64 %180 to i32
  %182 = load %struct.av7110*, %struct.av7110** %11, align 8
  %183 = getelementptr inbounds %struct.av7110, %struct.av7110* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 3
  store i32 %181, i32* %184, align 4
  %185 = load %struct.av7110*, %struct.av7110** %11, align 8
  %186 = getelementptr inbounds %struct.av7110, %struct.av7110* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  switch i32 %188, label %273 [
    i32 129, label %189
    i32 140, label %217
    i32 139, label %245
  ]

189:                                              ; preds = %179
  %190 = load %struct.av7110*, %struct.av7110** %11, align 8
  %191 = load i32, i32* @AUDIO_CMD_STEREO, align 4
  %192 = call i32 @audcom(%struct.av7110* %190, i32 %191)
  store i32 %192, i32* %13, align 4
  %193 = load i32, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %216, label %195

195:                                              ; preds = %189
  %196 = load %struct.av7110*, %struct.av7110** %11, align 8
  %197 = getelementptr inbounds %struct.av7110, %struct.av7110* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @DVB_ADAC_CRYSTAL, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = load %struct.av7110*, %struct.av7110** %11, align 8
  %203 = call i32 @i2c_writereg(%struct.av7110* %202, i32 32, i32 2, i32 73)
  br label %215

204:                                              ; preds = %195
  %205 = load %struct.av7110*, %struct.av7110** %11, align 8
  %206 = getelementptr inbounds %struct.av7110, %struct.av7110* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @DVB_ADAC_MSP34x5, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %204
  %211 = load %struct.av7110*, %struct.av7110** %11, align 8
  %212 = load i32, i32* @MSP_WR_DSP, align 4
  %213 = call i32 @msp_writereg(%struct.av7110* %211, i32 %212, i32 8, i32 544)
  br label %214

214:                                              ; preds = %210, %204
  br label %215

215:                                              ; preds = %214, %201
  br label %216

216:                                              ; preds = %215, %189
  br label %276

217:                                              ; preds = %179
  %218 = load %struct.av7110*, %struct.av7110** %11, align 8
  %219 = load i32, i32* @AUDIO_CMD_MONO_L, align 4
  %220 = call i32 @audcom(%struct.av7110* %218, i32 %219)
  store i32 %220, i32* %13, align 4
  %221 = load i32, i32* %13, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %244, label %223

223:                                              ; preds = %217
  %224 = load %struct.av7110*, %struct.av7110** %11, align 8
  %225 = getelementptr inbounds %struct.av7110, %struct.av7110* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @DVB_ADAC_CRYSTAL, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %223
  %230 = load %struct.av7110*, %struct.av7110** %11, align 8
  %231 = call i32 @i2c_writereg(%struct.av7110* %230, i32 32, i32 2, i32 74)
  br label %243

232:                                              ; preds = %223
  %233 = load %struct.av7110*, %struct.av7110** %11, align 8
  %234 = getelementptr inbounds %struct.av7110, %struct.av7110* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @DVB_ADAC_MSP34x5, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %232
  %239 = load %struct.av7110*, %struct.av7110** %11, align 8
  %240 = load i32, i32* @MSP_WR_DSP, align 4
  %241 = call i32 @msp_writereg(%struct.av7110* %239, i32 %240, i32 8, i32 512)
  br label %242

242:                                              ; preds = %238, %232
  br label %243

243:                                              ; preds = %242, %229
  br label %244

244:                                              ; preds = %243, %217
  br label %276

245:                                              ; preds = %179
  %246 = load %struct.av7110*, %struct.av7110** %11, align 8
  %247 = load i32, i32* @AUDIO_CMD_MONO_R, align 4
  %248 = call i32 @audcom(%struct.av7110* %246, i32 %247)
  store i32 %248, i32* %13, align 4
  %249 = load i32, i32* %13, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %272, label %251

251:                                              ; preds = %245
  %252 = load %struct.av7110*, %struct.av7110** %11, align 8
  %253 = getelementptr inbounds %struct.av7110, %struct.av7110* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @DVB_ADAC_CRYSTAL, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %251
  %258 = load %struct.av7110*, %struct.av7110** %11, align 8
  %259 = call i32 @i2c_writereg(%struct.av7110* %258, i32 32, i32 2, i32 69)
  br label %271

260:                                              ; preds = %251
  %261 = load %struct.av7110*, %struct.av7110** %11, align 8
  %262 = getelementptr inbounds %struct.av7110, %struct.av7110* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @DVB_ADAC_MSP34x5, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %260
  %267 = load %struct.av7110*, %struct.av7110** %11, align 8
  %268 = load i32, i32* @MSP_WR_DSP, align 4
  %269 = call i32 @msp_writereg(%struct.av7110* %267, i32 %268, i32 8, i32 528)
  br label %270

270:                                              ; preds = %266, %260
  br label %271

271:                                              ; preds = %270, %257
  br label %272

272:                                              ; preds = %271, %245
  br label %276

273:                                              ; preds = %179
  %274 = load i32, i32* @EINVAL, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %13, align 4
  br label %276

276:                                              ; preds = %273, %272, %244, %216
  br label %346

277:                                              ; preds = %39
  %278 = load i8*, i8** %9, align 8
  %279 = load %struct.av7110*, %struct.av7110** %11, align 8
  %280 = getelementptr inbounds %struct.av7110, %struct.av7110* %279, i32 0, i32 4
  %281 = call i32 @memcpy(i8* %278, %struct.TYPE_2__* %280, i32 4)
  br label %346

282:                                              ; preds = %39
  %283 = load %struct.av7110*, %struct.av7110** %11, align 8
  %284 = getelementptr inbounds %struct.av7110, %struct.av7110* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @FW_VERSION(i32 %285)
  %287 = icmp slt i32 %286, 9761
  br i1 %287, label %288, label %296

288:                                              ; preds = %282
  %289 = load i32, i32* @AUDIO_CAP_LPCM, align 4
  %290 = load i32, i32* @AUDIO_CAP_MP1, align 4
  %291 = or i32 %289, %290
  %292 = load i32, i32* @AUDIO_CAP_MP2, align 4
  %293 = or i32 %291, %292
  %294 = load i8*, i8** %9, align 8
  %295 = bitcast i8* %294 to i32*
  store i32 %293, i32* %295, align 4
  br label %308

296:                                              ; preds = %282
  %297 = load i32, i32* @AUDIO_CAP_LPCM, align 4
  %298 = load i32, i32* @AUDIO_CAP_DTS, align 4
  %299 = or i32 %297, %298
  %300 = load i32, i32* @AUDIO_CAP_AC3, align 4
  %301 = or i32 %299, %300
  %302 = load i32, i32* @AUDIO_CAP_MP1, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* @AUDIO_CAP_MP2, align 4
  %305 = or i32 %303, %304
  %306 = load i8*, i8** %9, align 8
  %307 = bitcast i8* %306 to i32*
  store i32 %305, i32* %307, align 4
  br label %308

308:                                              ; preds = %296, %288
  br label %346

309:                                              ; preds = %39
  %310 = load %struct.av7110*, %struct.av7110** %11, align 8
  %311 = getelementptr inbounds %struct.av7110, %struct.av7110* %310, i32 0, i32 2
  %312 = call i32 @dvb_ringbuffer_flush_spinlock_wakeup(i32* %311)
  %313 = load %struct.av7110*, %struct.av7110** %11, align 8
  %314 = getelementptr inbounds %struct.av7110, %struct.av7110* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  %317 = call i32 @av7110_ipack_reset(i32* %316)
  %318 = load %struct.av7110*, %struct.av7110** %11, align 8
  %319 = getelementptr inbounds %struct.av7110, %struct.av7110* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @RP_AV, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %329

323:                                              ; preds = %309
  %324 = load %struct.av7110*, %struct.av7110** %11, align 8
  %325 = load i32, i32* @COMTYPE_REC_PLAY, align 4
  %326 = load i32, i32* @__Play, align 4
  %327 = load i32, i32* @AV_PES, align 4
  %328 = call i32 @av7110_fw_cmd(%struct.av7110* %324, i32 %325, i32 %326, i32 2, i32 %327, i32 0)
  store i32 %328, i32* %13, align 4
  br label %329

329:                                              ; preds = %323, %309
  br label %346

330:                                              ; preds = %39
  br label %346

331:                                              ; preds = %39
  %332 = load i8*, i8** %9, align 8
  %333 = bitcast i8* %332 to %struct.audio_mixer*
  store %struct.audio_mixer* %333, %struct.audio_mixer** %14, align 8
  %334 = load %struct.av7110*, %struct.av7110** %11, align 8
  %335 = load %struct.audio_mixer*, %struct.audio_mixer** %14, align 8
  %336 = getelementptr inbounds %struct.audio_mixer, %struct.audio_mixer* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.audio_mixer*, %struct.audio_mixer** %14, align 8
  %339 = getelementptr inbounds %struct.audio_mixer, %struct.audio_mixer* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @av7110_set_volume(%struct.av7110* %334, i32 %337, i32 %340)
  store i32 %341, i32* %13, align 4
  br label %346

342:                                              ; preds = %39
  br label %346

343:                                              ; preds = %39
  %344 = load i32, i32* @ENOIOCTLCMD, align 4
  %345 = sub nsw i32 0, %344
  store i32 %345, i32* %13, align 4
  br label %346

346:                                              ; preds = %343, %342, %331, %330, %329, %308, %277, %276, %173, %161, %147, %122, %121, %103, %91, %64
  %347 = load i32, i32* %13, align 4
  store i32 %347, i32* %5, align 4
  br label %348

348:                                              ; preds = %346, %36
  %349 = load i32, i32* %5, align 4
  ret i32 %349
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*, i32) #1

declare dso_local i32 @av7110_av_stop(%struct.av7110*, i32) #1

declare dso_local i32 @audcom(%struct.av7110*, i32) #1

declare dso_local i32 @av7110_av_start_play(%struct.av7110*, i32) #1

declare dso_local i32 @FW_VERSION(i32) #1

declare dso_local i32 @i2c_writereg(%struct.av7110*, i32, i32, i32) #1

declare dso_local i32 @msp_writereg(%struct.av7110*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @dvb_ringbuffer_flush_spinlock_wakeup(i32*) #1

declare dso_local i32 @av7110_ipack_reset(i32*) #1

declare dso_local i32 @av7110_fw_cmd(%struct.av7110*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av7110_set_volume(%struct.av7110*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
