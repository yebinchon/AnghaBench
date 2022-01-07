; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_get_coldlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_get_coldlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, i32, i32, %struct.TYPE_2__*, i64, i32, %struct.dvb_frontend }
%struct.TYPE_2__ = type { i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i64)*, i64 (%struct.dvb_frontend*, i64*)* }
%struct.dvb_frontend = type { i32 }

@DMDISTATE = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Tuner phase locked\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Tuner unlocked\00", align 1
@CFRINIT1 = common dso_local global i32 0, align 4
@CFRINIT0 = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*, i32)* @stv090x_get_coldlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_get_coldlock(%struct.stv090x_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stv090x_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %16 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %15, i32 0, i32 6
  store %struct.dvb_frontend* %16, %struct.dvb_frontend** %6, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %18 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %19, 10000000
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = sdiv i32 %22, 3
  store i32 %23, i32* %13, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @stv090x_get_dmdlock(%struct.stv090x_state* %28, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %274, label %33

33:                                               ; preds = %27
  %34 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %35 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 10000000
  br i1 %37, label %38, label %60

38:                                               ; preds = %33
  %39 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %40 = call i64 @stv090x_chk_tmg(%struct.stv090x_state* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %44 = load i32, i32* @DMDISTATE, align 4
  %45 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %43, i32 %44, i32 31)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %279

48:                                               ; preds = %42
  %49 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %50 = load i32, i32* @DMDISTATE, align 4
  %51 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %49, i32 %50, i32 21)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %279

54:                                               ; preds = %48
  %55 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @stv090x_get_dmdlock(%struct.stv090x_state* %55, i32 %56)
  store i32 %57, i32* %14, align 4
  br label %59

58:                                               ; preds = %38
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %58, %54
  br label %273

60:                                               ; preds = %33
  %61 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %62 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sle i32 %63, 4000000
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1000, i32* %8, align 4
  br label %81

66:                                               ; preds = %60
  %67 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %68 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sle i32 %69, 7000000
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 2000, i32* %8, align 4
  br label %80

72:                                               ; preds = %66
  %73 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %74 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sle i32 %75, 10000000
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 3000, i32* %8, align 4
  br label %79

78:                                               ; preds = %72
  store i32 5000, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %77
  br label %80

80:                                               ; preds = %79, %71
  br label %81

81:                                               ; preds = %80, %65
  %82 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %83 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %84, 1000
  %86 = load i32, i32* %8, align 4
  %87 = sdiv i32 %85, %86
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = sdiv i32 %88, 2
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  %92 = mul nsw i32 2, %91
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %81
  store i32 2, i32* %9, align 4
  br label %101

96:                                               ; preds = %81
  %97 = load i32, i32* %9, align 4
  %98 = icmp sgt i32 %97, 12
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 12, i32* %9, align 4
  br label %100

100:                                              ; preds = %99, %96
  br label %101

101:                                              ; preds = %100, %95
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %272, label %104

104:                                              ; preds = %101
  %105 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %106 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %12, align 4
  %108 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %109 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %112 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @stv090x_car_width(i32 %110, i32 %113)
  %115 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %116 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %114, %118
  %120 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %121 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %120, i32 0, i32 4
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %262, %104
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp sle i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  br label %130

130:                                              ; preds = %126, %122
  %131 = phi i1 [ false, %122 ], [ %129, %126 ]
  br i1 %131, label %132, label %271

132:                                              ; preds = %130
  %133 = load i32, i32* %11, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %8, align 4
  %138 = mul nsw i32 %136, %137
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %12, align 4
  br label %147

141:                                              ; preds = %132
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %8, align 4
  %144 = mul nsw i32 %142, %143
  %145 = load i32, i32* %12, align 4
  %146 = sub nsw i32 %145, %144
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %141, %135
  %148 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %149 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %148, i32 1)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  br label %279

152:                                              ; preds = %147
  %153 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %154 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %153, i32 0, i32 3
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %156, align 8
  %158 = icmp ne i64 (%struct.dvb_frontend*, i32)* %157, null
  br i1 %158, label %159, label %171

159:                                              ; preds = %152
  %160 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %161 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %160, i32 0, i32 3
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %163, align 8
  %165 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %166 = load i32, i32* %12, align 4
  %167 = call i64 %164(%struct.dvb_frontend* %165, i32 %166)
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %159
  br label %276

170:                                              ; preds = %159
  br label %171

171:                                              ; preds = %170, %152
  %172 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %173 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %172, i32 0, i32 3
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i64 (%struct.dvb_frontend*, i64)*, i64 (%struct.dvb_frontend*, i64)** %175, align 8
  %177 = icmp ne i64 (%struct.dvb_frontend*, i64)* %176, null
  br i1 %177, label %178, label %192

178:                                              ; preds = %171
  %179 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %180 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %179, i32 0, i32 3
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  %183 = load i64 (%struct.dvb_frontend*, i64)*, i64 (%struct.dvb_frontend*, i64)** %182, align 8
  %184 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %185 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %186 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = call i64 %183(%struct.dvb_frontend* %184, i64 %187)
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %178
  br label %276

191:                                              ; preds = %178
  br label %192

192:                                              ; preds = %191, %171
  %193 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %194 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %193, i32 0)
  %195 = icmp slt i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  br label %279

197:                                              ; preds = %192
  %198 = call i32 @msleep(i32 50)
  %199 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %200 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %199, i32 1)
  %201 = icmp slt i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %279

203:                                              ; preds = %197
  %204 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %205 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %204, i32 0, i32 3
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 2
  %208 = load i64 (%struct.dvb_frontend*, i64*)*, i64 (%struct.dvb_frontend*, i64*)** %207, align 8
  %209 = icmp ne i64 (%struct.dvb_frontend*, i64*)* %208, null
  br i1 %209, label %210, label %221

210:                                              ; preds = %203
  %211 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %212 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %211, i32 0, i32 3
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 2
  %215 = load i64 (%struct.dvb_frontend*, i64*)*, i64 (%struct.dvb_frontend*, i64*)** %214, align 8
  %216 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %217 = call i64 %215(%struct.dvb_frontend* %216, i64* %7)
  %218 = icmp slt i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %210
  br label %276

220:                                              ; preds = %210
  br label %221

221:                                              ; preds = %220, %203
  %222 = load i64, i64* %7, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i32, i32* @FE_DEBUG, align 4
  %226 = call i32 @dprintk(i32 %225, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %230

227:                                              ; preds = %221
  %228 = load i32, i32* @FE_DEBUG, align 4
  %229 = call i32 @dprintk(i32 %228, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %230

230:                                              ; preds = %227, %224
  %231 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %232 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %231, i32 0)
  %233 = icmp slt i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  br label %279

235:                                              ; preds = %230
  %236 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %237 = load i32, i32* @DMDISTATE, align 4
  %238 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %236, i32 %237, i32 28)
  %239 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %240 = load i32, i32* @CFRINIT1, align 4
  %241 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %239, i32 %240, i32 0)
  %242 = icmp slt i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %235
  br label %279

244:                                              ; preds = %235
  %245 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %246 = load i32, i32* @CFRINIT0, align 4
  %247 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %245, i32 %246, i32 0)
  %248 = icmp slt i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  br label %279

250:                                              ; preds = %244
  %251 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %252 = load i32, i32* @DMDISTATE, align 4
  %253 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %251, i32 %252, i32 31)
  %254 = icmp slt i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %250
  br label %279

256:                                              ; preds = %250
  %257 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %258 = load i32, i32* @DMDISTATE, align 4
  %259 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %257, i32 %258, i32 21)
  %260 = icmp slt i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %256
  br label %279

262:                                              ; preds = %256
  %263 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %264 = load i32, i32* %5, align 4
  %265 = sdiv i32 %264, 3
  %266 = call i32 @stv090x_get_dmdlock(%struct.stv090x_state* %263, i32 %265)
  store i32 %266, i32* %14, align 4
  %267 = load i32, i32* %11, align 4
  %268 = mul nsw i32 %267, -1
  store i32 %268, i32* %11, align 4
  %269 = load i32, i32* %10, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %10, align 4
  br label %122

271:                                              ; preds = %130
  br label %272

272:                                              ; preds = %271, %101
  br label %273

273:                                              ; preds = %272, %59
  br label %274

274:                                              ; preds = %273, %27
  %275 = load i32, i32* %14, align 4
  store i32 %275, i32* %3, align 4
  br label %282

276:                                              ; preds = %219, %190, %169
  %277 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %278 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %277, i32 0)
  br label %279

279:                                              ; preds = %276, %261, %255, %249, %243, %234, %202, %196, %151, %53, %47
  %280 = load i32, i32* @FE_ERROR, align 4
  %281 = call i32 @dprintk(i32 %280, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %282

282:                                              ; preds = %279, %274
  %283 = load i32, i32* %3, align 4
  ret i32 %283
}

declare dso_local i32 @stv090x_get_dmdlock(%struct.stv090x_state*, i32) #1

declare dso_local i64 @stv090x_chk_tmg(%struct.stv090x_state*) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i64 @stv090x_car_width(i32, i32) #1

declare dso_local i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
