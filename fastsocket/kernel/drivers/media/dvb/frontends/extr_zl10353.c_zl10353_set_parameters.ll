; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_zl10353.c_zl10353_set_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_zl10353.c_zl10353_set_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_8__, %struct.zl10353_state* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 (%struct.dvb_frontend.2*, i32)* }
%struct.TYPE_7__ = type { i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i32*, i32)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dvb_frontend.1 = type opaque
%struct.dvb_frontend.2 = type opaque
%struct.zl10353_state = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.dvb_ofdm_parameters }
%struct.dvb_ofdm_parameters = type { i32, i32, i32, i32, i32, i32, i32 }

@__const.zl10353_set_parameters.pllbuf = private unnamed_addr constant [6 x i32] [i32 103, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@RESET = common dso_local global i32 0, align 4
@AGC_TARGET = common dso_local global i32 0, align 4
@ACQ_CTL = common dso_local global i32 0, align 4
@MCLK_RATIO = common dso_local global i32 0, align 4
@TRL_NOMINAL_RATE_1 = common dso_local global i32 0, align 4
@TRL_NOMINAL_RATE_0 = common dso_local global i32 0, align 4
@INPUT_FREQ_1 = common dso_local global i32 0, align 4
@INPUT_FREQ_0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TPS_GIVEN_1 = common dso_local global i32 0, align 4
@TPS_GIVEN_0 = common dso_local global i32 0, align 4
@FSM_GO = common dso_local global i32 0, align 4
@TUNER_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @zl10353_set_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zl10353_set_parameters(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.zl10353_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [6 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dvb_ofdm_parameters*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = load %struct.zl10353_state*, %struct.zl10353_state** %14, align 8
  store %struct.zl10353_state* %15, %struct.zl10353_state** %6, align 8
  %16 = bitcast [6 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([6 x i32]* @__const.zl10353_set_parameters.pllbuf to i8*), i64 24, i1 false)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.dvb_ofdm_parameters* %19, %struct.dvb_ofdm_parameters** %12, align 8
  %20 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.zl10353_state*, %struct.zl10353_state** %6, align 8
  %24 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %26 = load i32, i32* @RESET, align 4
  %27 = call i32 @zl10353_single_write(%struct.dvb_frontend* %25, i32 %26, i32 128)
  %28 = call i32 @udelay(i32 200)
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %30 = call i32 @zl10353_single_write(%struct.dvb_frontend* %29, i32 234, i32 1)
  %31 = call i32 @udelay(i32 200)
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %33 = call i32 @zl10353_single_write(%struct.dvb_frontend* %32, i32 234, i32 0)
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %35 = load i32, i32* @AGC_TARGET, align 4
  %36 = call i32 @zl10353_single_write(%struct.dvb_frontend* %34, i32 %35, i32 40)
  %37 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %12, align 8
  %38 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 128
  br i1 %40, label %41, label %44

41:                                               ; preds = %2
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %41, %2
  %45 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %12, align 8
  %46 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 140
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, 2
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %54 = load i32, i32* @ACQ_CTL, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @zl10353_single_write(%struct.dvb_frontend* %53, i32 %54, i32 %55)
  %57 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %12, align 8
  %58 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %77 [
    i32 154, label %60
    i32 153, label %68
    i32 152, label %76
  ]

60:                                               ; preds = %52
  %61 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %62 = load i32, i32* @MCLK_RATIO, align 4
  %63 = call i32 @zl10353_single_write(%struct.dvb_frontend* %61, i32 %62, i32 151)
  %64 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %65 = call i32 @zl10353_single_write(%struct.dvb_frontend* %64, i32 100, i32 52)
  %66 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %67 = call i32 @zl10353_single_write(%struct.dvb_frontend* %66, i32 204, i32 221)
  br label %85

68:                                               ; preds = %52
  %69 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %70 = load i32, i32* @MCLK_RATIO, align 4
  %71 = call i32 @zl10353_single_write(%struct.dvb_frontend* %69, i32 %70, i32 134)
  %72 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %73 = call i32 @zl10353_single_write(%struct.dvb_frontend* %72, i32 100, i32 53)
  %74 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %75 = call i32 @zl10353_single_write(%struct.dvb_frontend* %74, i32 204, i32 115)
  br label %85

76:                                               ; preds = %52
  br label %77

77:                                               ; preds = %52, %76
  %78 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %79 = load i32, i32* @MCLK_RATIO, align 4
  %80 = call i32 @zl10353_single_write(%struct.dvb_frontend* %78, i32 %79, i32 117)
  %81 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %82 = call i32 @zl10353_single_write(%struct.dvb_frontend* %81, i32 100, i32 54)
  %83 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %84 = call i32 @zl10353_single_write(%struct.dvb_frontend* %83, i32 204, i32 115)
  br label %85

85:                                               ; preds = %77, %68, %60
  %86 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %87 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %12, align 8
  %88 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @zl10353_calc_nominal_rate(%struct.dvb_frontend* %86, i32 %89, i32* %7)
  %91 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %92 = load i32, i32* @TRL_NOMINAL_RATE_1, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @msb(i32 %93)
  %95 = call i32 @zl10353_single_write(%struct.dvb_frontend* %91, i32 %92, i32 %94)
  %96 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %97 = load i32, i32* @TRL_NOMINAL_RATE_0, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @lsb(i32 %98)
  %100 = call i32 @zl10353_single_write(%struct.dvb_frontend* %96, i32 %97, i32 %99)
  %101 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %12, align 8
  %102 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.zl10353_state*, %struct.zl10353_state** %6, align 8
  %105 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %107 = call i32 @zl10353_calc_input_freq(%struct.dvb_frontend* %106, i32* %8)
  %108 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %109 = load i32, i32* @INPUT_FREQ_1, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @msb(i32 %110)
  %112 = call i32 @zl10353_single_write(%struct.dvb_frontend* %108, i32 %109, i32 %111)
  %113 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %114 = load i32, i32* @INPUT_FREQ_0, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @lsb(i32 %115)
  %117 = call i32 @zl10353_single_write(%struct.dvb_frontend* %113, i32 %114, i32 %116)
  %118 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %12, align 8
  %119 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %134 [
    i32 150, label %121
    i32 149, label %124
    i32 148, label %127
    i32 147, label %130
    i32 151, label %133
    i32 146, label %133
  ]

121:                                              ; preds = %85
  %122 = load i32, i32* %11, align 4
  %123 = or i32 %122, 128
  store i32 %123, i32* %11, align 4
  br label %137

124:                                              ; preds = %85
  %125 = load i32, i32* %11, align 4
  %126 = or i32 %125, 256
  store i32 %126, i32* %11, align 4
  br label %137

127:                                              ; preds = %85
  %128 = load i32, i32* %11, align 4
  %129 = or i32 %128, 384
  store i32 %129, i32* %11, align 4
  br label %137

130:                                              ; preds = %85
  %131 = load i32, i32* %11, align 4
  %132 = or i32 %131, 512
  store i32 %132, i32* %11, align 4
  br label %137

133:                                              ; preds = %85, %85
  br label %137

134:                                              ; preds = %85
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %340

137:                                              ; preds = %133, %130, %127, %124, %121
  %138 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %12, align 8
  %139 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  switch i32 %140, label %166 [
    i32 150, label %141
    i32 149, label %144
    i32 148, label %147
    i32 147, label %150
    i32 151, label %153
    i32 146, label %153
    i32 145, label %154
  ]

141:                                              ; preds = %137
  %142 = load i32, i32* %11, align 4
  %143 = or i32 %142, 16
  store i32 %143, i32* %11, align 4
  br label %169

144:                                              ; preds = %137
  %145 = load i32, i32* %11, align 4
  %146 = or i32 %145, 32
  store i32 %146, i32* %11, align 4
  br label %169

147:                                              ; preds = %137
  %148 = load i32, i32* %11, align 4
  %149 = or i32 %148, 48
  store i32 %149, i32* %11, align 4
  br label %169

150:                                              ; preds = %137
  %151 = load i32, i32* %11, align 4
  %152 = or i32 %151, 64
  store i32 %152, i32* %11, align 4
  br label %169

153:                                              ; preds = %137, %137
  br label %169

154:                                              ; preds = %137
  %155 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %12, align 8
  %156 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 136
  br i1 %158, label %164, label %159

159:                                              ; preds = %154
  %160 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %12, align 8
  %161 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 135
  br i1 %163, label %164, label %165

164:                                              ; preds = %159, %154
  br label %169

165:                                              ; preds = %159
  br label %166

166:                                              ; preds = %137, %165
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %340

169:                                              ; preds = %164, %153, %150, %147, %144, %141
  %170 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %12, align 8
  %171 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  switch i32 %172, label %180 [
    i32 131, label %173
    i32 132, label %174
    i32 134, label %174
    i32 133, label %177
  ]

173:                                              ; preds = %169
  br label %183

174:                                              ; preds = %169, %169
  %175 = load i32, i32* %11, align 4
  %176 = or i32 %175, 8192
  store i32 %176, i32* %11, align 4
  br label %183

177:                                              ; preds = %169
  %178 = load i32, i32* %11, align 4
  %179 = or i32 %178, 16384
  store i32 %179, i32* %11, align 4
  br label %183

180:                                              ; preds = %169
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %3, align 4
  br label %340

183:                                              ; preds = %177, %174, %173
  %184 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %12, align 8
  %185 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  switch i32 %186, label %191 [
    i32 130, label %187
    i32 128, label %187
    i32 129, label %188
  ]

187:                                              ; preds = %183, %183
  br label %194

188:                                              ; preds = %183
  %189 = load i32, i32* %11, align 4
  %190 = or i32 %189, 1
  store i32 %190, i32* %11, align 4
  br label %194

191:                                              ; preds = %183
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %3, align 4
  br label %340

194:                                              ; preds = %188, %187
  %195 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %12, align 8
  %196 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  switch i32 %197, label %208 [
    i32 143, label %198
    i32 140, label %198
    i32 144, label %199
    i32 141, label %202
    i32 142, label %205
  ]

198:                                              ; preds = %194, %194
  br label %211

199:                                              ; preds = %194
  %200 = load i32, i32* %11, align 4
  %201 = or i32 %200, 4
  store i32 %201, i32* %11, align 4
  br label %211

202:                                              ; preds = %194
  %203 = load i32, i32* %11, align 4
  %204 = or i32 %203, 8
  store i32 %204, i32* %11, align 4
  br label %211

205:                                              ; preds = %194
  %206 = load i32, i32* %11, align 4
  %207 = or i32 %206, 12
  store i32 %207, i32* %11, align 4
  br label %211

208:                                              ; preds = %194
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %3, align 4
  br label %340

211:                                              ; preds = %205, %202, %199, %198
  %212 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %12, align 8
  %213 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  switch i32 %214, label %225 [
    i32 136, label %215
    i32 135, label %215
    i32 139, label %216
    i32 138, label %219
    i32 137, label %222
  ]

215:                                              ; preds = %211, %211
  br label %228

216:                                              ; preds = %211
  %217 = load i32, i32* %11, align 4
  %218 = or i32 %217, 1024
  store i32 %218, i32* %11, align 4
  br label %228

219:                                              ; preds = %211
  %220 = load i32, i32* %11, align 4
  %221 = or i32 %220, 2048
  store i32 %221, i32* %11, align 4
  br label %228

222:                                              ; preds = %211
  %223 = load i32, i32* %11, align 4
  %224 = or i32 %223, 3072
  store i32 %224, i32* %11, align 4
  br label %228

225:                                              ; preds = %211
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %3, align 4
  br label %340

228:                                              ; preds = %222, %219, %216, %215
  %229 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %230 = load i32, i32* @TPS_GIVEN_1, align 4
  %231 = load i32, i32* %11, align 4
  %232 = call i32 @msb(i32 %231)
  %233 = call i32 @zl10353_single_write(%struct.dvb_frontend* %229, i32 %230, i32 %232)
  %234 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %235 = load i32, i32* @TPS_GIVEN_0, align 4
  %236 = load i32, i32* %11, align 4
  %237 = call i32 @lsb(i32 %236)
  %238 = call i32 @zl10353_single_write(%struct.dvb_frontend* %234, i32 %235, i32 %237)
  %239 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %240 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 1
  %242 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %241, align 8
  %243 = icmp ne i32 (%struct.dvb_frontend.2*, i32)* %242, null
  br i1 %243, label %244, label %252

244:                                              ; preds = %228
  %245 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %246 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 1
  %248 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %247, align 8
  %249 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %250 = bitcast %struct.dvb_frontend* %249 to %struct.dvb_frontend.2*
  %251 = call i32 %248(%struct.dvb_frontend.2* %250, i32 0)
  br label %252

252:                                              ; preds = %244, %228
  %253 = load %struct.zl10353_state*, %struct.zl10353_state** %6, align 8
  %254 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %290

258:                                              ; preds = %252
  %259 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %260 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 1
  %263 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %262, align 8
  %264 = icmp ne i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* %263, null
  br i1 %264, label %265, label %289

265:                                              ; preds = %258
  %266 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %267 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 1
  %270 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %269, align 8
  %271 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %272 = bitcast %struct.dvb_frontend* %271 to %struct.dvb_frontend.1*
  %273 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %274 = call i32 %270(%struct.dvb_frontend.1* %272, %struct.dvb_frontend_parameters* %273)
  %275 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %276 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 1
  %278 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %277, align 8
  %279 = icmp ne i32 (%struct.dvb_frontend.2*, i32)* %278, null
  br i1 %279, label %280, label %288

280:                                              ; preds = %265
  %281 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %282 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 1
  %284 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %283, align 8
  %285 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %286 = bitcast %struct.dvb_frontend* %285 to %struct.dvb_frontend.2*
  %287 = call i32 %284(%struct.dvb_frontend.2* %286, i32 0)
  br label %288

288:                                              ; preds = %280, %265
  br label %289

289:                                              ; preds = %288, %258
  br label %316

290:                                              ; preds = %252
  %291 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %292 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 0
  %295 = load i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i32*, i32)*, i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i32*, i32)** %294, align 8
  %296 = icmp ne i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i32*, i32)* %295, null
  br i1 %296, label %297, label %315

297:                                              ; preds = %290
  %298 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %299 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 0
  %302 = load i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i32*, i32)*, i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i32*, i32)** %301, align 8
  %303 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %304 = bitcast %struct.dvb_frontend* %303 to %struct.dvb_frontend.0*
  %305 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %306 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %307 = getelementptr inbounds i32, i32* %306, i64 1
  %308 = call i32 %302(%struct.dvb_frontend.0* %304, %struct.dvb_frontend_parameters* %305, i32* %307, i32 5)
  %309 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 1
  %310 = load i32, i32* %309, align 4
  %311 = shl i32 %310, 1
  store i32 %311, i32* %309, align 4
  %312 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %313 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %314 = call i32 @zl10353_write(%struct.dvb_frontend* %312, i32* %313, i32 24)
  br label %315

315:                                              ; preds = %297, %290
  br label %316

316:                                              ; preds = %315, %289
  %317 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %318 = call i32 @zl10353_single_write(%struct.dvb_frontend* %317, i32 95, i32 19)
  %319 = load %struct.zl10353_state*, %struct.zl10353_state** %6, align 8
  %320 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %331, label %324

324:                                              ; preds = %316
  %325 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %326 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 0
  %329 = load i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i32*, i32)*, i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i32*, i32)** %328, align 8
  %330 = icmp eq i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i32*, i32)* %329, null
  br i1 %330, label %331, label %335

331:                                              ; preds = %324, %316
  %332 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %333 = load i32, i32* @FSM_GO, align 4
  %334 = call i32 @zl10353_single_write(%struct.dvb_frontend* %332, i32 %333, i32 1)
  br label %339

335:                                              ; preds = %324
  %336 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %337 = load i32, i32* @TUNER_GO, align 4
  %338 = call i32 @zl10353_single_write(%struct.dvb_frontend* %336, i32 %337, i32 1)
  br label %339

339:                                              ; preds = %335, %331
  store i32 0, i32* %3, align 4
  br label %340

340:                                              ; preds = %339, %225, %208, %191, %180, %166, %134
  %341 = load i32, i32* %3, align 4
  ret i32 %341
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @zl10353_single_write(%struct.dvb_frontend*, i32, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @zl10353_calc_nominal_rate(%struct.dvb_frontend*, i32, i32*) #2

declare dso_local i32 @msb(i32) #2

declare dso_local i32 @lsb(i32) #2

declare dso_local i32 @zl10353_calc_input_freq(%struct.dvb_frontend*, i32*) #2

declare dso_local i32 @zl10353_write(%struct.dvb_frontend*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
