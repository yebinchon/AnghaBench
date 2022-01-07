; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_set_tv_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_set_tv_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tuner_simple_priv* }
%struct.tuner_simple_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.analog_parameters = type { i32, i32 }
%struct.tuner_params = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.v4l2_priv_tun_config = type { i32*, i32 }

@V4L2_STD_NTSC_M_JP = common dso_local global i32 0, align 4
@TUNER_PARAM_TYPE_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_MN = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_LC = common dso_local global i32 0, align 4
@TUNER_PARAM_TYPE_SECAM = common dso_local global i32 0, align 4
@TUNER_PARAM_TYPE_PAL = common dso_local global i32 0, align 4
@offset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Freq= %d.%02d MHz, V_IF=%d.%02d MHz, Offset=%d.%02d MHz, div=%0d\0A\00", align 1
@V4L2_STD_SECAM_L = common dso_local global i32 0, align 4
@TUNER_TDA9887 = common dso_local global i32 0, align 4
@TDA9887_PORT1_ACTIVE = common dso_local global i32 0, align 4
@TDA9887_PORT2_ACTIVE = common dso_local global i32 0, align 4
@TDA9887_INTERCARRIER = common dso_local global i32 0, align 4
@TDA9887_GATING_18 = common dso_local global i32 0, align 4
@TUNER_SET_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"tv 0x%02x 0x%02x 0x%02x 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"i2c i/o error: rc == %d (should be 4)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* @simple_set_tv_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_set_tv_freq(%struct.dvb_frontend* %0, %struct.analog_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.analog_parameters*, align 8
  %5 = alloca %struct.tuner_simple_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tuner_params*, align 8
  %15 = alloca %struct.v4l2_priv_tun_config, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.analog_parameters* %1, %struct.analog_parameters** %4, align 8
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 0
  %20 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %19, align 8
  store %struct.tuner_simple_priv* %20, %struct.tuner_simple_priv** %5, align 8
  %21 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %22 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @V4L2_STD_NTSC_M_JP, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  store i32 940, i32* %11, align 4
  %27 = load i32, i32* @TUNER_PARAM_TYPE_NTSC, align 4
  store i32 %27, i32* %13, align 4
  br label %57

28:                                               ; preds = %2
  %29 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %30 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @V4L2_STD_MN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %37 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @V4L2_STD_MN, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %35
  store i32 732, i32* %11, align 4
  %44 = load i32, i32* @TUNER_PARAM_TYPE_NTSC, align 4
  store i32 %44, i32* %13, align 4
  br label %56

45:                                               ; preds = %35, %28
  %46 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %47 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @V4L2_STD_SECAM_LC, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  store i32 543, i32* %11, align 4
  %52 = load i32, i32* @TUNER_PARAM_TYPE_SECAM, align 4
  store i32 %52, i32* %13, align 4
  br label %55

53:                                               ; preds = %45
  store i32 623, i32* %11, align 4
  %54 = load i32, i32* @TUNER_PARAM_TYPE_PAL, align 4
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %53, %51
  br label %56

56:                                               ; preds = %55, %43
  br label %57

57:                                               ; preds = %56, %26
  %58 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call %struct.tuner_params* @simple_tuner_params(%struct.dvb_frontend* %58, i32 %59)
  store %struct.tuner_params* %60, %struct.tuner_params** %14, align 8
  %61 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %62 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %63 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %64 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %63, i32 0, i32 1
  %65 = call i32 @simple_config_lookup(%struct.dvb_frontend* %61, %struct.tuner_params* %62, i32* %64, i32* %6, i32* %7)
  store i32 %65, i32* %12, align 4
  %66 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %67 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* @offset, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %8, align 4
  %73 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %74 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %75, 16
  %77 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %78 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = srem i32 %79, 16
  %81 = mul nsw i32 %80, 100
  %82 = sdiv i32 %81, 16
  %83 = load i32, i32* %11, align 4
  %84 = sdiv i32 %83, 16
  %85 = load i32, i32* %11, align 4
  %86 = srem i32 %85, 16
  %87 = mul nsw i32 %86, 100
  %88 = sdiv i32 %87, 16
  %89 = load i32, i32* @offset, align 4
  %90 = sdiv i32 %89, 16
  %91 = load i32, i32* @offset, align 4
  %92 = srem i32 %91, 16
  %93 = mul nsw i32 %92, 100
  %94 = sdiv i32 %93, 16
  %95 = load i32, i32* %8, align 4
  %96 = call i32 (i8*, i32, i32, i32, i32, ...) @tuner_dbg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %82, i32 %84, i32 %88, i32 %90, i32 %94, i32 %95)
  %97 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %98 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %99 = call i32 @simple_std_setup(%struct.dvb_frontend* %97, %struct.analog_parameters* %98, i32* %6, i32* %7)
  %100 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %101 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %100, i32 0, i32 13
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %57
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %5, align 8
  %107 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %104
  %111 = load i32, i32* %6, align 4
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %111, i32* %112, align 16
  %113 = load i32, i32* %7, align 4
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %8, align 4
  %116 = ashr i32 %115, 8
  %117 = and i32 %116, 127
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %117, i32* %118, align 8
  %119 = load i32, i32* %8, align 4
  %120 = and i32 %119, 255
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %120, i32* %121, align 4
  br label %134

122:                                              ; preds = %104, %57
  %123 = load i32, i32* %8, align 4
  %124 = ashr i32 %123, 8
  %125 = and i32 %124, 127
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %125, i32* %126, align 16
  %127 = load i32, i32* %8, align 4
  %128 = and i32 %127, 255
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %128, i32* %129, align 4
  %130 = load i32, i32* %6, align 4
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %130, i32* %131, align 8
  %132 = load i32, i32* %7, align 4
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %122, %110
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %5, align 8
  %137 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  %138 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %139 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %138, i32 0, i32 12
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %337

142:                                              ; preds = %134
  store i32 0, i32* %16, align 4
  %143 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %144 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %147 = load i32, i32* @V4L2_STD_SECAM_LC, align 4
  %148 = or i32 %146, %147
  %149 = and i32 %145, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %142
  %152 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %153 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %156 = load i32, i32* @V4L2_STD_SECAM_LC, align 4
  %157 = or i32 %155, %156
  %158 = xor i32 %157, -1
  %159 = and i32 %154, %158
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  br label %162

162:                                              ; preds = %151, %142
  %163 = phi i1 [ false, %142 ], [ %161, %151 ]
  %164 = zext i1 %163 to i32
  store i32 %164, i32* %17, align 4
  %165 = load i32, i32* @TUNER_TDA9887, align 4
  %166 = getelementptr inbounds %struct.v4l2_priv_tun_config, %struct.v4l2_priv_tun_config* %15, i32 0, i32 1
  store i32 %165, i32* %166, align 8
  %167 = getelementptr inbounds %struct.v4l2_priv_tun_config, %struct.v4l2_priv_tun_config* %15, i32 0, i32 0
  store i32* %16, i32** %167, align 8
  %168 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %169 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @V4L2_STD_SECAM_LC, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %200

173:                                              ; preds = %162
  %174 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %175 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %178 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = xor i32 %176, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %173
  %183 = load i32, i32* @TDA9887_PORT1_ACTIVE, align 4
  %184 = load i32, i32* %16, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %16, align 4
  br label %186

186:                                              ; preds = %182, %173
  %187 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %188 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %191 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = xor i32 %189, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %186
  %196 = load i32, i32* @TDA9887_PORT2_ACTIVE, align 4
  %197 = load i32, i32* %16, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %16, align 4
  br label %199

199:                                              ; preds = %195, %186
  br label %219

200:                                              ; preds = %162
  %201 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %202 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load i32, i32* @TDA9887_PORT1_ACTIVE, align 4
  %207 = load i32, i32* %16, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %16, align 4
  br label %209

209:                                              ; preds = %205, %200
  %210 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %211 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load i32, i32* @TDA9887_PORT2_ACTIVE, align 4
  %216 = load i32, i32* %16, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %16, align 4
  br label %218

218:                                              ; preds = %214, %209
  br label %219

219:                                              ; preds = %218, %199
  %220 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %221 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %220, i32 0, i32 11
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %219
  %225 = load i32, i32* @TDA9887_INTERCARRIER, align 4
  %226 = load i32, i32* %16, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %16, align 4
  br label %228

228:                                              ; preds = %224, %219
  %229 = load i32, i32* %17, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %276

231:                                              ; preds = %228
  %232 = load i32, i32* %12, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %246

234:                                              ; preds = %231
  %235 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %236 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %235, i32 0, i32 10
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %234
  %240 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %241 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %240, i32 0, i32 10
  %242 = load i64, i64* %241, align 8
  %243 = call i32 @TDA9887_TOP(i64 %242)
  %244 = load i32, i32* %16, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %16, align 4
  br label %275

246:                                              ; preds = %234, %231
  %247 = load i32, i32* %12, align 4
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %261

249:                                              ; preds = %246
  %250 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %251 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %250, i32 0, i32 9
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %249
  %255 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %256 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %255, i32 0, i32 9
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @TDA9887_TOP(i64 %257)
  %259 = load i32, i32* %16, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %16, align 4
  br label %274

261:                                              ; preds = %249, %246
  %262 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %263 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %262, i32 0, i32 8
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %261
  %267 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %268 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %267, i32 0, i32 8
  %269 = load i64, i64* %268, align 8
  %270 = call i32 @TDA9887_TOP(i64 %269)
  %271 = load i32, i32* %16, align 4
  %272 = or i32 %271, %270
  store i32 %272, i32* %16, align 4
  br label %273

273:                                              ; preds = %266, %261
  br label %274

274:                                              ; preds = %273, %254
  br label %275

275:                                              ; preds = %274, %239
  br label %321

276:                                              ; preds = %228
  %277 = load i32, i32* %12, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %291

279:                                              ; preds = %276
  %280 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %281 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %280, i32 0, i32 7
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %279
  %285 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %286 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %285, i32 0, i32 7
  %287 = load i64, i64* %286, align 8
  %288 = call i32 @TDA9887_TOP(i64 %287)
  %289 = load i32, i32* %16, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %16, align 4
  br label %320

291:                                              ; preds = %279, %276
  %292 = load i32, i32* %12, align 4
  %293 = icmp eq i32 %292, 1
  br i1 %293, label %294, label %306

294:                                              ; preds = %291
  %295 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %296 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %295, i32 0, i32 6
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %294
  %300 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %301 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %300, i32 0, i32 6
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @TDA9887_TOP(i64 %302)
  %304 = load i32, i32* %16, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %16, align 4
  br label %319

306:                                              ; preds = %294, %291
  %307 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %308 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %307, i32 0, i32 5
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %318

311:                                              ; preds = %306
  %312 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %313 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %312, i32 0, i32 5
  %314 = load i64, i64* %313, align 8
  %315 = call i32 @TDA9887_TOP(i64 %314)
  %316 = load i32, i32* %16, align 4
  %317 = or i32 %316, %315
  store i32 %317, i32* %16, align 4
  br label %318

318:                                              ; preds = %311, %306
  br label %319

319:                                              ; preds = %318, %299
  br label %320

320:                                              ; preds = %319, %284
  br label %321

321:                                              ; preds = %320, %275
  %322 = load %struct.tuner_params*, %struct.tuner_params** %14, align 8
  %323 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %322, i32 0, i32 4
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %321
  %327 = load i32, i32* @TDA9887_GATING_18, align 4
  %328 = load i32, i32* %16, align 4
  %329 = or i32 %328, %327
  store i32 %329, i32* %16, align 4
  br label %330

330:                                              ; preds = %326, %321
  %331 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %5, align 8
  %332 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @TUNER_SET_CONFIG, align 4
  %336 = call i32 @i2c_clients_command(i32 %334, i32 %335, %struct.v4l2_priv_tun_config* %15)
  br label %337

337:                                              ; preds = %330, %134
  %338 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %339 = load i32, i32* %338, align 16
  %340 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %341 = load i32, i32* %340, align 4
  %342 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %343 = load i32, i32* %342, align 8
  %344 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %345 = load i32, i32* %344, align 4
  %346 = call i32 (i8*, i32, i32, i32, i32, ...) @tuner_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %339, i32 %341, i32 %343, i32 %345)
  %347 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %5, align 8
  %348 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %347, i32 0, i32 1
  %349 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %350 = call i32 @tuner_i2c_xfer_send(%struct.TYPE_2__* %348, i32* %349, i32 4)
  store i32 %350, i32* %10, align 4
  %351 = load i32, i32* %10, align 4
  %352 = icmp ne i32 4, %351
  br i1 %352, label %353, label %356

353:                                              ; preds = %337
  %354 = load i32, i32* %10, align 4
  %355 = call i32 @tuner_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %354)
  br label %356

356:                                              ; preds = %353, %337
  %357 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %358 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %359 = load i32, i32* %8, align 4
  %360 = load i32, i32* %6, align 4
  %361 = load i32, i32* %7, align 4
  %362 = call i32 @simple_post_tune(%struct.dvb_frontend* %357, i32* %358, i32 %359, i32 %360, i32 %361)
  ret i32 0
}

declare dso_local %struct.tuner_params* @simple_tuner_params(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @simple_config_lookup(%struct.dvb_frontend*, %struct.tuner_params*, i32*, i32*, i32*) #1

declare dso_local i32 @tuner_dbg(i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @simple_std_setup(%struct.dvb_frontend*, %struct.analog_parameters*, i32*, i32*) #1

declare dso_local i32 @TDA9887_TOP(i64) #1

declare dso_local i32 @i2c_clients_command(i32, i32, %struct.v4l2_priv_tun_config*) #1

declare dso_local i32 @tuner_i2c_xfer_send(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @tuner_warn(i8*, i32) #1

declare dso_local i32 @simple_post_tune(%struct.dvb_frontend*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
