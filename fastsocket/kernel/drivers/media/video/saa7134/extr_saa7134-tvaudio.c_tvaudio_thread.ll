; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-tvaudio.c_tvaudio_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-tvaudio.c_tvaudio_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.saa7134_dev = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_12__*, %struct.TYPE_10__*, i64 }
%struct.TYPE_11__ = type { i64, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@mainscan = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"tvaudio thread scan start [%d]\0A\00", align 1
@SAA7134_MONITOR_SELECT = common dso_local global i32 0, align 4
@SAA7134_FM_DEMATRIX = common dso_local global i32 0, align 4
@SCAN_INITIAL_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"only one main carrier candidate - skipping scan\0A\00", align 1
@tvaudio = common dso_local global %struct.TYPE_12__* null, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"found %s main sound carrier @ %d.%03d MHz [%d/%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"audio carrier scan failed, using %d.%03d MHz [last detected]\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"audio carrier scan failed, using %d.%03d MHz [default]\0A\00", align 1
@SAA7134_STEREO_DAC_OUTPUT_SELECT = common dso_local global i32 0, align 4
@UNSET = common dso_local global i32 0, align 4
@TVAUDIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"trying\00", align 1
@SCAN_SUBCARRIER_DELAY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"using\00", align 1
@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @tvaudio_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvaudio_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = bitcast i8* %16 to %struct.saa7134_dev*
  store %struct.saa7134_dev* %17, %struct.saa7134_dev** %3, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mainscan, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %18)
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %4, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %5, align 8
  %23 = call i32 (...) @set_freezable()
  br label %24

24:                                               ; preds = %390, %324, %1
  %25 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %26 = call i64 @tvaudio_sleep(%struct.saa7134_dev* %25, i32 -1)
  %27 = call i64 (...) @kthread_should_stop()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %391

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %350, %303, %140, %65, %30
  %32 = call i32 (...) @try_to_freeze()
  %33 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %34 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %38 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %41 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %46 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %45, i32 0, i32 3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %46, align 8
  %47 = load i32, i32* @SAA7134_MONITOR_SELECT, align 4
  %48 = call i32 @saa_writeb(i32 %47, i32 160)
  %49 = load i32, i32* @SAA7134_FM_DEMATRIX, align 4
  %50 = call i32 @saa_writeb(i32 %49, i32 128)
  %51 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %52 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %31
  %56 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %57 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %31
  %59 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %60 = call i32 @mute_input_7134(%struct.saa7134_dev* %59)
  %61 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %62 = load i32, i32* @SCAN_INITIAL_DELAY, align 4
  %63 = call i64 @tvaudio_sleep(%struct.saa7134_dev* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %31

66:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %100, %66
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mainscan, align 8
  %70 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %69)
  %71 = icmp ult i32 %68, %70
  br i1 %71, label %72, label %103

72:                                               ; preds = %67
  %73 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %74 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %73, i32 0, i32 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mainscan, align 8
  %79 = load i32, i32* %6, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %77, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %72
  br label %100

87:                                               ; preds = %72
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mainscan, align 8
  %92 = load i32, i32* %6, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %15, align 4
  br label %97

97:                                               ; preds = %90, %87
  %98 = load i32, i32* %8, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %97, %86
  %101 = load i32, i32* %6, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %67

103:                                              ; preds = %67
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 1, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 12345, i32* %9, align 4
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %11, align 4
  br label %188

109:                                              ; preds = %103
  %110 = load i32, i32* @SAA7134_MONITOR_SELECT, align 4
  %111 = call i32 @saa_writeb(i32 %110, i32 0)
  %112 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tvaudio, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i64 0
  %115 = call i32 @tvaudio_setmode(%struct.saa7134_dev* %112, %struct.TYPE_12__* %114, i8* null)
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %142, %109
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mainscan, align 8
  %119 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %118)
  %120 = icmp ult i32 %117, %119
  br i1 %120, label %121, label %145

121:                                              ; preds = %116
  %122 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mainscan, align 8
  %124 = load i32, i32* %6, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i64 %125
  %127 = call i32 @tvaudio_checkcarrier(%struct.saa7134_dev* %122, %struct.TYPE_13__* %126)
  %128 = load i32, i32* %6, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %22, i64 %129
  store i32 %127, i32* %130, align 4
  %131 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %132 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %136 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %134, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %121
  br label %31

141:                                              ; preds = %121
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %6, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %116

145:                                              ; preds = %116
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %184, %145
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mainscan, align 8
  %149 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %148)
  %150 = icmp ult i32 %147, %149
  br i1 %150, label %151, label %187

151:                                              ; preds = %146
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %6, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %22, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %152, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %151
  %159 = load i32, i32* %9, align 4
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %6, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %22, i64 %161
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %9, align 4
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mainscan, align 8
  %165 = load i32, i32* %6, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %11, align 4
  br label %183

170:                                              ; preds = %151
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %6, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %22, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %171, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %170
  %178 = load i32, i32* %6, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %22, i64 %179
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %10, align 4
  br label %182

182:                                              ; preds = %177, %170
  br label %183

183:                                              ; preds = %182, %158
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %6, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %6, align 4
  br label %146

187:                                              ; preds = %146
  br label %188

188:                                              ; preds = %187, %106
  %189 = load i32, i32* %11, align 4
  %190 = icmp ne i32 0, %189
  br i1 %190, label %191, label %215

191:                                              ; preds = %188
  %192 = load i32, i32* %9, align 4
  %193 = icmp sgt i32 %192, 2000
  br i1 %193, label %194, label %215

194:                                              ; preds = %191
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %10, align 4
  %197 = mul nsw i32 %196, 3
  %198 = icmp sgt i32 %195, %197
  br i1 %198, label %199, label %215

199:                                              ; preds = %194
  %200 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %201 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %200, i32 0, i32 4
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %11, align 4
  %206 = sdiv i32 %205, 1000
  %207 = load i32, i32* %11, align 4
  %208 = srem i32 %207, 1000
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* %10, align 4
  %211 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %204, i32 %206, i32 %208, i32 %209, i32 %210)
  %212 = load i32, i32* %11, align 4
  %213 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %214 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  br label %237

215:                                              ; preds = %194, %191, %188
  %216 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %217 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 0, %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %215
  %221 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %222 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %11, align 4
  %224 = load i32, i32* %11, align 4
  %225 = sdiv i32 %224, 1000
  %226 = load i32, i32* %11, align 4
  %227 = srem i32 %226, 1000
  %228 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %225, i32 %227)
  br label %236

229:                                              ; preds = %215
  %230 = load i32, i32* %15, align 4
  store i32 %230, i32* %11, align 4
  %231 = load i32, i32* %11, align 4
  %232 = sdiv i32 %231, 1000
  %233 = load i32, i32* %11, align 4
  %234 = srem i32 %233, 1000
  %235 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %232, i32 %234)
  br label %236

236:                                              ; preds = %229, %220
  br label %237

237:                                              ; preds = %236, %199
  %238 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* %11, align 4
  %241 = call i32 @tvaudio_setcarrier(%struct.saa7134_dev* %238, i32 %239, i32 %240)
  %242 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %243 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %242, i32 0, i32 0
  store i32 0, i32* %243, align 8
  %244 = load i32, i32* @SAA7134_STEREO_DAC_OUTPUT_SELECT, align 4
  %245 = call i32 @saa_andorb(i32 %244, i32 48, i32 0)
  %246 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %247 = call i32 @saa7134_tvaudio_setmute(%struct.saa7134_dev* %246)
  %248 = load i32, i32* @UNSET, align 4
  store i32 %248, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %249

249:                                              ; preds = %315, %237
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* @TVAUDIO, align 4
  %252 = icmp ult i32 %250, %251
  br i1 %252, label %253, label %318

253:                                              ; preds = %249
  %254 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %255 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %254, i32 0, i32 4
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @UNSET, align 4
  %260 = icmp ne i32 %258, %259
  br i1 %260, label %261, label %276

261:                                              ; preds = %253
  %262 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %263 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %262, i32 0, i32 4
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tvaudio, align 8
  %268 = load i32, i32* %6, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %266, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %261
  br label %315

276:                                              ; preds = %261, %253
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tvaudio, align 8
  %278 = load i32, i32* %6, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %11, align 4
  %284 = icmp ne i32 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %276
  br label %315

286:                                              ; preds = %276
  %287 = load i32, i32* @UNSET, align 4
  %288 = load i32, i32* %7, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %286
  %291 = load i32, i32* %6, align 4
  store i32 %291, i32* %7, align 4
  br label %292

292:                                              ; preds = %290, %286
  %293 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tvaudio, align 8
  %295 = load i32, i32* %6, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i64 %296
  %298 = call i32 @tvaudio_setmode(%struct.saa7134_dev* %293, %struct.TYPE_12__* %297, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %299 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %300 = load i32, i32* @SCAN_SUBCARRIER_DELAY, align 4
  %301 = call i64 @tvaudio_sleep(%struct.saa7134_dev* %299, i32 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %292
  br label %31

304:                                              ; preds = %292
  %305 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tvaudio, align 8
  %307 = load i32, i32* %6, align 4
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i64 %308
  %310 = call i32 @tvaudio_getstereo(%struct.saa7134_dev* %305, %struct.TYPE_12__* %309)
  %311 = icmp ne i32 -1, %310
  br i1 %311, label %312, label %314

312:                                              ; preds = %304
  %313 = load i32, i32* %6, align 4
  store i32 %313, i32* %7, align 4
  br label %318

314:                                              ; preds = %304
  br label %315

315:                                              ; preds = %314, %285, %275
  %316 = load i32, i32* %6, align 4
  %317 = add i32 %316, 1
  store i32 %317, i32* %6, align 4
  br label %249

318:                                              ; preds = %312, %249
  %319 = load i32, i32* @SAA7134_STEREO_DAC_OUTPUT_SELECT, align 4
  %320 = call i32 @saa_andorb(i32 %319, i32 48, i32 48)
  %321 = load i32, i32* @UNSET, align 4
  %322 = load i32, i32* %7, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %325

324:                                              ; preds = %318
  br label %24

325:                                              ; preds = %318
  %326 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %327 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tvaudio, align 8
  %328 = load i32, i32* %7, align 4
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i64 %329
  %331 = call i32 @tvaudio_setmode(%struct.saa7134_dev* %326, %struct.TYPE_12__* %330, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %332 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tvaudio, align 8
  %334 = load i32, i32* %7, align 4
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i64 %335
  %337 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  %338 = call i32 @tvaudio_setstereo(%struct.saa7134_dev* %332, %struct.TYPE_12__* %336, i32 %337)
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tvaudio, align 8
  %340 = load i32, i32* %7, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i64 %341
  %343 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %344 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %343, i32 0, i32 3
  store %struct.TYPE_12__* %342, %struct.TYPE_12__** %344, align 8
  store i32 42, i32* %14, align 4
  br label %345

345:                                              ; preds = %389, %325
  %346 = call i32 (...) @try_to_freeze()
  %347 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %348 = call i64 @tvaudio_sleep(%struct.saa7134_dev* %347, i32 5000)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %345
  br label %31

351:                                              ; preds = %345
  %352 = call i64 (...) @kthread_should_stop()
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %351
  br label %390

355:                                              ; preds = %351
  %356 = load i32, i32* @UNSET, align 4
  %357 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %358 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = icmp eq i32 %356, %360
  br i1 %361, label %362, label %371

362:                                              ; preds = %355
  %363 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %364 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tvaudio, align 8
  %365 = load i32, i32* %6, align 4
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i64 %366
  %368 = call i32 @tvaudio_getstereo(%struct.saa7134_dev* %363, %struct.TYPE_12__* %367)
  store i32 %368, i32* %12, align 4
  %369 = load i32, i32* %12, align 4
  %370 = call i32 @saa7134_tvaudio_rx2mode(i32 %369)
  store i32 %370, i32* %13, align 4
  br label %376

371:                                              ; preds = %355
  %372 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %373 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 8
  store i32 %375, i32* %13, align 4
  br label %376

376:                                              ; preds = %371, %362
  %377 = load i32, i32* %14, align 4
  %378 = load i32, i32* %13, align 4
  %379 = icmp ne i32 %377, %378
  br i1 %379, label %380, label %389

380:                                              ; preds = %376
  %381 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %382 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tvaudio, align 8
  %383 = load i32, i32* %7, align 4
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i64 %384
  %386 = load i32, i32* %13, align 4
  %387 = call i32 @tvaudio_setstereo(%struct.saa7134_dev* %381, %struct.TYPE_12__* %385, i32 %386)
  %388 = load i32, i32* %13, align 4
  store i32 %388, i32* %14, align 4
  br label %389

389:                                              ; preds = %380, %376
  br label %345

390:                                              ; preds = %354
  br label %24

391:                                              ; preds = %29
  %392 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %393 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %392, i32 0, i32 2
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %393, i32 0, i32 3
  store i32 1, i32* %394, align 4
  %395 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %395)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_13__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @set_freezable(...) #1

declare dso_local i64 @tvaudio_sleep(%struct.saa7134_dev*, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @mute_input_7134(%struct.saa7134_dev*) #1

declare dso_local i32 @tvaudio_setmode(%struct.saa7134_dev*, %struct.TYPE_12__*, i8*) #1

declare dso_local i32 @tvaudio_checkcarrier(%struct.saa7134_dev*, %struct.TYPE_13__*) #1

declare dso_local i32 @tvaudio_setcarrier(%struct.saa7134_dev*, i32, i32) #1

declare dso_local i32 @saa_andorb(i32, i32, i32) #1

declare dso_local i32 @saa7134_tvaudio_setmute(%struct.saa7134_dev*) #1

declare dso_local i32 @tvaudio_getstereo(%struct.saa7134_dev*, %struct.TYPE_12__*) #1

declare dso_local i32 @tvaudio_setstereo(%struct.saa7134_dev*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @saa7134_tvaudio_rx2mode(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
