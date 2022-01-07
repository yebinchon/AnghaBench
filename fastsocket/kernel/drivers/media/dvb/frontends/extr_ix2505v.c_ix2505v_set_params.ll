; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_ix2505v.c_ix2505v_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_ix2505v.c_ix2505v_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_9__, %struct.ix2505v_state* }
%struct.TYPE_9__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_8__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_8__ = type { i32, i32 }
%struct.ix2505v_state = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Frq=%d x=%d N=%d A=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Osc=%x b_w=%x lpf=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Data 0=[%x%x%x%x]\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Data 2=[%x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @ix2505v_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix2505v_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.ix2505v_state*, align 8
  %7 = alloca i32, align 4
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
  %21 = alloca [4 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 1
  %24 = load %struct.ix2505v_state*, %struct.ix2505v_state** %23, align 8
  store %struct.ix2505v_state* %24, %struct.ix2505v_state** %6, align 8
  %25 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 27
  %34 = sdiv i32 %33, 32000
  store i32 %34, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %35 = bitcast [4 x i32]* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 16, i1 false)
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %38 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %36, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %2
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %46 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %44, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43, %2
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %318

54:                                               ; preds = %43
  %55 = load %struct.ix2505v_state*, %struct.ix2505v_state** %6, align 8
  %56 = getelementptr inbounds %struct.ix2505v_state, %struct.ix2505v_state* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %54
  %62 = load %struct.ix2505v_state*, %struct.ix2505v_state** %6, align 8
  %63 = getelementptr inbounds %struct.ix2505v_state, %struct.ix2505v_state* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, 4
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.ix2505v_state*, %struct.ix2505v_state** %6, align 8
  %70 = getelementptr inbounds %struct.ix2505v_state, %struct.ix2505v_state* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  br label %75

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74, %68
  %76 = phi i32 [ %73, %68 ], [ 0, %74 ]
  store i32 %76, i32* %15, align 4
  br label %78

77:                                               ; preds = %54
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %77, %75
  %79 = load %struct.ix2505v_state*, %struct.ix2505v_state** %6, align 8
  %80 = getelementptr inbounds %struct.ix2505v_state, %struct.ix2505v_state* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load %struct.ix2505v_state*, %struct.ix2505v_state** %6, align 8
  %87 = getelementptr inbounds %struct.ix2505v_state, %struct.ix2505v_state* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %16, align 4
  br label %92

91:                                               ; preds = %78
  store i32 3, i32* %16, align 4
  br label %92

92:                                               ; preds = %91, %85
  store i32 8, i32* %17, align 4
  store i32 32, i32* %18, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %17, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sdiv i32 %95, 40
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %18, align 4
  %99 = sdiv i32 %97, %98
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = sdiv i32 %100, 100
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %10, align 4
  %104 = mul nsw i32 %103, 100
  %105 = sub nsw i32 %102, %104
  %106 = load i32, i32* %18, align 4
  %107 = mul nsw i32 %105, %106
  %108 = sdiv i32 %107, 100
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %15, align 4
  %110 = and i32 %109, 3
  %111 = shl i32 %110, 5
  %112 = load i32, i32* %10, align 4
  %113 = ashr i32 %112, 3
  %114 = or i32 %111, %113
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  store i32 %114, i32* %115, align 16
  %116 = load i32, i32* %10, align 4
  %117 = shl i32 %116, 5
  %118 = load i32, i32* %11, align 4
  %119 = and i32 %118, 31
  %120 = or i32 %117, %119
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* %16, align 4
  %123 = and i32 %122, 3
  %124 = shl i32 %123, 5
  %125 = or i32 129, %124
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  store i32 %125, i32* %126, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32 (i8*, i32, i32, ...) @deb_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %127, i32 %128, i32 %129, i32 %130)
  %132 = load i32, i32* %7, align 4
  %133 = icmp sle i32 %132, 1065000
  br i1 %133, label %134, label %135

134:                                              ; preds = %92
  store i32 194, i32* %19, align 4
  br label %166

135:                                              ; preds = %92
  %136 = load i32, i32* %7, align 4
  %137 = icmp sle i32 %136, 1170000
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 226, i32* %19, align 4
  br label %165

139:                                              ; preds = %135
  %140 = load i32, i32* %7, align 4
  %141 = icmp sle i32 %140, 1300000
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 32, i32* %19, align 4
  br label %164

143:                                              ; preds = %139
  %144 = load i32, i32* %7, align 4
  %145 = icmp sle i32 %144, 1445000
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 64, i32* %19, align 4
  br label %163

147:                                              ; preds = %143
  %148 = load i32, i32* %7, align 4
  %149 = icmp sle i32 %148, 1607000
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i32 96, i32* %19, align 4
  br label %162

151:                                              ; preds = %147
  %152 = load i32, i32* %7, align 4
  %153 = icmp sle i32 %152, 1778000
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i32 128, i32* %19, align 4
  br label %161

155:                                              ; preds = %151
  %156 = load i32, i32* %7, align 4
  %157 = icmp sle i32 %156, 1942000
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 160, i32* %19, align 4
  br label %160

159:                                              ; preds = %155
  store i32 192, i32* %19, align 4
  br label %160

160:                                              ; preds = %159, %158
  br label %161

161:                                              ; preds = %160, %154
  br label %162

162:                                              ; preds = %161, %150
  br label %163

163:                                              ; preds = %162, %146
  br label %164

164:                                              ; preds = %163, %142
  br label %165

165:                                              ; preds = %164, %138
  br label %166

166:                                              ; preds = %165, %134
  %167 = load i32, i32* %19, align 4
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  store i32 %167, i32* %168, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp sle i32 %169, 10000
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i32 12, i32* %20, align 4
  br label %218

172:                                              ; preds = %166
  %173 = load i32, i32* %8, align 4
  %174 = icmp sle i32 %173, 12000
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store i32 2, i32* %20, align 4
  br label %217

176:                                              ; preds = %172
  %177 = load i32, i32* %8, align 4
  %178 = icmp sle i32 %177, 14000
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  store i32 10, i32* %20, align 4
  br label %216

180:                                              ; preds = %176
  %181 = load i32, i32* %8, align 4
  %182 = icmp sle i32 %181, 16000
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  store i32 6, i32* %20, align 4
  br label %215

184:                                              ; preds = %180
  %185 = load i32, i32* %8, align 4
  %186 = icmp sle i32 %185, 18000
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  store i32 14, i32* %20, align 4
  br label %214

188:                                              ; preds = %184
  %189 = load i32, i32* %8, align 4
  %190 = icmp sle i32 %189, 20000
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  store i32 1, i32* %20, align 4
  br label %213

192:                                              ; preds = %188
  %193 = load i32, i32* %8, align 4
  %194 = icmp sle i32 %193, 22000
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  store i32 9, i32* %20, align 4
  br label %212

196:                                              ; preds = %192
  %197 = load i32, i32* %8, align 4
  %198 = icmp sle i32 %197, 24000
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store i32 5, i32* %20, align 4
  br label %211

200:                                              ; preds = %196
  %201 = load i32, i32* %8, align 4
  %202 = icmp sle i32 %201, 26000
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  store i32 13, i32* %20, align 4
  br label %210

204:                                              ; preds = %200
  %205 = load i32, i32* %8, align 4
  %206 = icmp sle i32 %205, 28000
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  store i32 3, i32* %20, align 4
  br label %209

208:                                              ; preds = %204
  store i32 11, i32* %20, align 4
  br label %209

209:                                              ; preds = %208, %207
  br label %210

210:                                              ; preds = %209, %203
  br label %211

211:                                              ; preds = %210, %199
  br label %212

212:                                              ; preds = %211, %195
  br label %213

213:                                              ; preds = %212, %191
  br label %214

214:                                              ; preds = %213, %187
  br label %215

215:                                              ; preds = %214, %183
  br label %216

216:                                              ; preds = %215, %179
  br label %217

217:                                              ; preds = %216, %175
  br label %218

218:                                              ; preds = %217, %171
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* %20, align 4
  %222 = call i32 (i8*, i32, i32, ...) @deb_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %219, i32 %220, i32 %221)
  %223 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %224 = load i32, i32* %223, align 16
  %225 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %228 = load i32, i32* %227, align 8
  %229 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (i8*, i32, i32, ...) @deb_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %224, i32 %226, i32 %228, i32 %230)
  %232 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %233 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %234, align 8
  %236 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %235, null
  br i1 %236, label %237, label %245

237:                                              ; preds = %218
  %238 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %239 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %240, align 8
  %242 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %243 = bitcast %struct.dvb_frontend* %242 to %struct.dvb_frontend.0*
  %244 = call i32 %241(%struct.dvb_frontend.0* %243, i32 1)
  br label %245

245:                                              ; preds = %237, %218
  store i32 16, i32* %14, align 4
  %246 = load %struct.ix2505v_state*, %struct.ix2505v_state** %6, align 8
  %247 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %248 = load i32, i32* %14, align 4
  %249 = call i32 @ix2505v_write(%struct.ix2505v_state* %246, i32* %247, i32 %248)
  %250 = load i32, i32* %13, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %13, align 4
  %252 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %253, 4
  store i32 %254, i32* %252, align 8
  store i32 1, i32* %14, align 4
  %255 = load %struct.ix2505v_state*, %struct.ix2505v_state** %6, align 8
  %256 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %257 = load i32, i32* %14, align 4
  %258 = call i32 @ix2505v_write(%struct.ix2505v_state* %255, i32* %256, i32 %257)
  %259 = load i32, i32* %13, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %13, align 4
  %261 = call i32 @msleep(i32 10)
  %262 = load i32, i32* %20, align 4
  %263 = ashr i32 %262, 2
  %264 = and i32 %263, 3
  %265 = shl i32 %264, 3
  %266 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %267 = load i32, i32* %266, align 8
  %268 = or i32 %267, %265
  store i32 %268, i32* %266, align 8
  %269 = load i32, i32* %20, align 4
  %270 = and i32 %269, 3
  %271 = shl i32 %270, 2
  %272 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  %273 = load i32, i32* %272, align 4
  %274 = or i32 %273, %271
  store i32 %274, i32* %272, align 4
  %275 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %276 = load i32, i32* %275, align 8
  %277 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  %278 = load i32, i32* %277, align 4
  %279 = call i32 (i8*, i32, i32, ...) @deb_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %276, i32 %278)
  store i32 2, i32* %14, align 4
  %280 = load %struct.ix2505v_state*, %struct.ix2505v_state** %6, align 8
  %281 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %282 = load i32, i32* %14, align 4
  %283 = call i32 @ix2505v_write(%struct.ix2505v_state* %280, i32* %281, i32 %282)
  %284 = load i32, i32* %13, align 4
  %285 = or i32 %284, %283
  store i32 %285, i32* %13, align 4
  %286 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %287 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 0
  %289 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %288, align 8
  %290 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %289, null
  br i1 %290, label %291, label %299

291:                                              ; preds = %245
  %292 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %293 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 0
  %295 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %294, align 8
  %296 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %297 = bitcast %struct.dvb_frontend* %296 to %struct.dvb_frontend.0*
  %298 = call i32 %295(%struct.dvb_frontend.0* %297, i32 0)
  br label %299

299:                                              ; preds = %291, %245
  %300 = load %struct.ix2505v_state*, %struct.ix2505v_state** %6, align 8
  %301 = getelementptr inbounds %struct.ix2505v_state, %struct.ix2505v_state* %300, i32 0, i32 1
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %299
  %307 = load %struct.ix2505v_state*, %struct.ix2505v_state** %6, align 8
  %308 = getelementptr inbounds %struct.ix2505v_state, %struct.ix2505v_state* %307, i32 0, i32 1
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @msleep(i32 %311)
  br label %313

313:                                              ; preds = %306, %299
  %314 = load i32, i32* %7, align 4
  %315 = load %struct.ix2505v_state*, %struct.ix2505v_state** %6, align 8
  %316 = getelementptr inbounds %struct.ix2505v_state, %struct.ix2505v_state* %315, i32 0, i32 0
  store i32 %314, i32* %316, align 8
  %317 = load i32, i32* %13, align 4
  store i32 %317, i32* %3, align 4
  br label %318

318:                                              ; preds = %313, %51
  %319 = load i32, i32* %3, align 4
  ret i32 %319
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @deb_info(i8*, i32, i32, ...) #2

declare dso_local i32 @ix2505v_write(%struct.ix2505v_state*, i32*, i32) #2

declare dso_local i32 @msleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
