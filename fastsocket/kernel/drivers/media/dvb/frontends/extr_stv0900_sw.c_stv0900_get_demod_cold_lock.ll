; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_sw.c_stv0900_get_demod_cold_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_sw.c_stv0900_get_demod_cold_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0900_state* }
%struct.stv0900_state = type { i32, %struct.stv0900_internal* }
%struct.stv0900_internal = type { i32*, i32*, i32, i32*, i32*, i32*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@DMDISTATE = common dso_local global i32 0, align 4
@CFRINIT1 = common dso_local global i32 0, align 4
@CFRINIT0 = common dso_local global i32 0, align 4
@CFR_INIT1 = common dso_local global i32 0, align 4
@CFR_INIT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @stv0900_get_demod_cold_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0900_get_demod_cold_lock(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stv0900_state*, align 8
  %7 = alloca %struct.stv0900_internal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 0
  %23 = load %struct.stv0900_state*, %struct.stv0900_state** %22, align 8
  store %struct.stv0900_state* %23, %struct.stv0900_state** %6, align 8
  %24 = load %struct.stv0900_state*, %struct.stv0900_state** %6, align 8
  %25 = getelementptr inbounds %struct.stv0900_state, %struct.stv0900_state* %24, i32 0, i32 1
  %26 = load %struct.stv0900_internal*, %struct.stv0900_internal** %25, align 8
  store %struct.stv0900_internal* %26, %struct.stv0900_internal** %7, align 8
  %27 = load %struct.stv0900_state*, %struct.stv0900_state** %6, align 8
  %28 = getelementptr inbounds %struct.stv0900_state, %struct.stv0900_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %33 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  %39 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %40 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp sge i32 %46, 10000000
  br i1 %47, label %48, label %51

48:                                               ; preds = %2
  %49 = load i32, i32* %5, align 4
  %50 = sdiv i32 %49, 3
  store i32 %50, i32* %13, align 4
  br label %54

51:                                               ; preds = %2
  %52 = load i32, i32* %5, align 4
  %53 = sdiv i32 %52, 2
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @stv0900_get_demod_lock(%struct.stv0900_internal* %55, i32 %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @FALSE, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %309

64:                                               ; preds = %54
  %65 = load i32, i32* %11, align 4
  %66 = icmp sge i32 %65, 10000000
  br i1 %66, label %67, label %88

67:                                               ; preds = %64
  %68 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @stv0900_check_timing_lock(%struct.stv0900_internal* %68, i32 %69)
  %71 = load i64, i64* @TRUE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %75 = load i32, i32* @DMDISTATE, align 4
  %76 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %74, i32 %75, i32 31)
  %77 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %78 = load i32, i32* @DMDISTATE, align 4
  %79 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %77, i32 %78, i32 21)
  %80 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @stv0900_get_demod_lock(%struct.stv0900_internal* %80, i32 %81, i32 %82)
  store i32 %83, i32* %9, align 4
  br label %86

84:                                               ; preds = %67
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %84, %73
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %309

88:                                               ; preds = %64
  %89 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %90 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp sle i32 %91, 32
  br i1 %92, label %93, label %127

93:                                               ; preds = %88
  %94 = load i32, i32* %11, align 4
  %95 = icmp sle i32 %94, 1000000
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 500, i32* %14, align 4
  br label %113

97:                                               ; preds = %93
  %98 = load i32, i32* %11, align 4
  %99 = icmp sle i32 %98, 4000000
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 1000, i32* %14, align 4
  br label %112

101:                                              ; preds = %97
  %102 = load i32, i32* %11, align 4
  %103 = icmp sle i32 %102, 7000000
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 2000, i32* %14, align 4
  br label %111

105:                                              ; preds = %101
  %106 = load i32, i32* %11, align 4
  %107 = icmp sle i32 %106, 10000000
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 3000, i32* %14, align 4
  br label %110

109:                                              ; preds = %105
  store i32 5000, i32* %14, align 4
  br label %110

110:                                              ; preds = %109, %108
  br label %111

111:                                              ; preds = %110, %104
  br label %112

112:                                              ; preds = %111, %100
  br label %113

113:                                              ; preds = %112, %96
  %114 = load i32, i32* %11, align 4
  %115 = icmp sge i32 %114, 2000000
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load i32, i32* %5, align 4
  %118 = sdiv i32 %117, 3
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* %19, align 4
  %120 = icmp sgt i32 %119, 1000
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 1000, i32* %19, align 4
  br label %122

122:                                              ; preds = %121, %116
  br label %126

123:                                              ; preds = %113
  %124 = load i32, i32* %5, align 4
  %125 = sdiv i32 %124, 2
  store i32 %125, i32* %19, align 4
  br label %126

126:                                              ; preds = %123, %122
  br label %133

127:                                              ; preds = %88
  %128 = load i32, i32* %11, align 4
  %129 = sdiv i32 %128, 4000
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %5, align 4
  %131 = mul nsw i32 %130, 3
  %132 = sdiv i32 %131, 4
  store i32 %132, i32* %19, align 4
  br label %133

133:                                              ; preds = %127, %126
  %134 = load i32, i32* %12, align 4
  %135 = sdiv i32 %134, 1000
  %136 = load i32, i32* %14, align 4
  %137 = sdiv i32 %135, %136
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %15, align 4
  %139 = srem i32 %138, 2
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %133
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %141, %133
  %145 = load i32, i32* %15, align 4
  %146 = icmp sle i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 2, i32* %15, align 4
  br label %153

148:                                              ; preds = %144
  %149 = load i32, i32* %15, align 4
  %150 = icmp sgt i32 %149, 12
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 12, i32* %15, align 4
  br label %152

152:                                              ; preds = %151, %148
  br label %153

153:                                              ; preds = %152, %147
  store i32 1, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %154 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %155 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp sle i32 %156, 32
  br i1 %157, label %158, label %191

158:                                              ; preds = %153
  %159 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %160 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %18, align 4
  %166 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %167 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %174 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @stv0900_carrier_width(i32 %172, i32 %175)
  %177 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %178 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %176, %183
  %185 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %186 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  store i32 %184, i32* %190, align 4
  br label %192

191:                                              ; preds = %153
  store i32 0, i32* %18, align 4
  br label %192

192:                                              ; preds = %191, %158
  br label %193

193:                                              ; preds = %298, %192
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* %15, align 4
  %196 = icmp sle i32 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* @FALSE, align 4
  %200 = icmp eq i32 %198, %199
  br label %201

201:                                              ; preds = %197, %193
  %202 = phi i1 [ false, %193 ], [ %200, %197 ]
  br i1 %202, label %203, label %307

203:                                              ; preds = %201
  %204 = load i32, i32* %17, align 4
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %203
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* %14, align 4
  %209 = mul nsw i32 %207, %208
  %210 = load i32, i32* %18, align 4
  %211 = add nsw i32 %210, %209
  store i32 %211, i32* %18, align 4
  br label %218

212:                                              ; preds = %203
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* %14, align 4
  %215 = mul nsw i32 %213, %214
  %216 = load i32, i32* %18, align 4
  %217 = sub nsw i32 %216, %215
  store i32 %217, i32* %18, align 4
  br label %218

218:                                              ; preds = %212, %206
  %219 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %220 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = icmp sle i32 %221, 32
  br i1 %222, label %223, label %271

223:                                              ; preds = %218
  %224 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %225 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %224, i32 0, i32 5
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %230, 3
  br i1 %231, label %232, label %244

232:                                              ; preds = %223
  %233 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %234 = load i32, i32* %18, align 4
  %235 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %236 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %235, i32 0, i32 4
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %8, align 4
  %243 = call i32 @stv0900_set_tuner_auto(%struct.stv0900_internal* %233, i32 %234, i32 %241, i32 %242)
  br label %255

244:                                              ; preds = %223
  %245 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %246 = load i32, i32* %18, align 4
  %247 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %248 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %247, i32 0, i32 4
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %10, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @stv0900_set_tuner(%struct.dvb_frontend* %245, i32 %246, i32 %253)
  br label %255

255:                                              ; preds = %244, %232
  %256 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %257 = load i32, i32* @DMDISTATE, align 4
  %258 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %256, i32 %257, i32 28)
  %259 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %260 = load i32, i32* @CFRINIT1, align 4
  %261 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %259, i32 %260, i32 0)
  %262 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %263 = load i32, i32* @CFRINIT0, align 4
  %264 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %262, i32 %263, i32 0)
  %265 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %266 = load i32, i32* @DMDISTATE, align 4
  %267 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %265, i32 %266, i32 31)
  %268 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %269 = load i32, i32* @DMDISTATE, align 4
  %270 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %268, i32 %269, i32 21)
  br label %298

271:                                              ; preds = %218
  %272 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %273 = load i32, i32* @DMDISTATE, align 4
  %274 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %272, i32 %273, i32 28)
  %275 = load i32, i32* %18, align 4
  %276 = mul nsw i32 %275, 65536
  %277 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %278 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %277, i32 0, i32 6
  %279 = load i32, i32* %278, align 8
  %280 = sdiv i32 %279, 1000
  %281 = sdiv i32 %276, %280
  store i32 %281, i32* %20, align 4
  %282 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %283 = load i32, i32* @CFR_INIT1, align 4
  %284 = load i32, i32* %20, align 4
  %285 = call i32 @MSB(i32 %284)
  %286 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %282, i32 %283, i32 %285)
  %287 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %288 = load i32, i32* @CFR_INIT0, align 4
  %289 = load i32, i32* %20, align 4
  %290 = call i32 @LSB(i32 %289)
  %291 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %287, i32 %288, i32 %290)
  %292 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %293 = load i32, i32* @DMDISTATE, align 4
  %294 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %292, i32 %293, i32 31)
  %295 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %296 = load i32, i32* @DMDISTATE, align 4
  %297 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %295, i32 %296, i32 5)
  br label %298

298:                                              ; preds = %271, %255
  %299 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %300 = load i32, i32* %10, align 4
  %301 = load i32, i32* %19, align 4
  %302 = call i32 @stv0900_get_demod_lock(%struct.stv0900_internal* %299, i32 %300, i32 %301)
  store i32 %302, i32* %9, align 4
  %303 = load i32, i32* %17, align 4
  %304 = mul nsw i32 %303, -1
  store i32 %304, i32* %17, align 4
  %305 = load i32, i32* %16, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %16, align 4
  br label %193

307:                                              ; preds = %201
  %308 = load i32, i32* %9, align 4
  store i32 %308, i32* %3, align 4
  br label %309

309:                                              ; preds = %307, %86, %62
  %310 = load i32, i32* %3, align 4
  ret i32 %310
}

declare dso_local i32 @stv0900_get_demod_lock(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i64 @stv0900_check_timing_lock(%struct.stv0900_internal*, i32) #1

declare dso_local i32 @stv0900_write_reg(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @stv0900_carrier_width(i32, i32) #1

declare dso_local i32 @stv0900_set_tuner_auto(%struct.stv0900_internal*, i32, i32, i32) #1

declare dso_local i32 @stv0900_set_tuner(%struct.dvb_frontend*, i32, i32) #1

declare dso_local i32 @stv0900_write_bits(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @MSB(i32) #1

declare dso_local i32 @LSB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
