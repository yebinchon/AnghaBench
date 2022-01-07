; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_start_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_start_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@DMDISTATE = common dso_local global i32 0, align 4
@I2C_DEMOD_MODE_FIELD = common dso_local global i32 0, align 4
@CARCFG = common dso_local global i32 0, align 4
@CFRUP1 = common dso_local global i32 0, align 4
@CFRUP0 = common dso_local global i32 0, align 4
@CFRLOW1 = common dso_local global i32 0, align 4
@CFRLOW0 = common dso_local global i32 0, align 4
@RTCS2 = common dso_local global i32 0, align 4
@CFRINIT1 = common dso_local global i32 0, align 4
@CFRINIT0 = common dso_local global i32 0, align 4
@EQUALCFG = common dso_local global i32 0, align 4
@FFECFG = common dso_local global i32 0, align 4
@STV090x_SEARCH_DVBS1 = common dso_local global i64 0, align 8
@STV090x_SEARCH_DSS = common dso_local global i64 0, align 8
@STV090x_SEARCH_AUTO = common dso_local global i64 0, align 8
@VITSCALE = common dso_local global i32 0, align 4
@VAVSRVIT = common dso_local global i32 0, align 4
@SFRSTEP = common dso_local global i32 0, align 4
@TMGTHRISE = common dso_local global i32 0, align 4
@TMGTHFALL = common dso_local global i32 0, align 4
@DMDCFGMD = common dso_local global i32 0, align 4
@SCAN_ENABLE_FIELD = common dso_local global i32 0, align 4
@CFR_AUTOSCAN_FIELD = common dso_local global i32 0, align 4
@DMDCFG2 = common dso_local global i32 0, align 4
@S1S2_SEQUENTIAL_FIELD = common dso_local global i32 0, align 4
@RTC = common dso_local global i32 0, align 4
@CARFREQ = common dso_local global i32 0, align 4
@CARHDR = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_start_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_start_search(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  %7 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %8 = load i32, i32* @DMDISTATE, align 4
  %9 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @I2C_DEMOD_MODE_FIELD, align 4
  %12 = call i32 @STV090x_SETFIELD_Px(i32 %10, i32 %11, i32 31)
  %13 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %14 = load i32, i32* @DMDISTATE, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %13, i32 %14, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %406

19:                                               ; preds = %1
  %20 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %21 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %24, 32
  br i1 %25, label %26, label %82

26:                                               ; preds = %19
  %27 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %28 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sle i32 %29, 5000000
  br i1 %30, label %31, label %68

31:                                               ; preds = %26
  %32 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %33 = load i32, i32* @CARCFG, align 4
  %34 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %32, i32 %33, i32 68)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %406

37:                                               ; preds = %31
  %38 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %39 = load i32, i32* @CFRUP1, align 4
  %40 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %38, i32 %39, i32 15)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %406

43:                                               ; preds = %37
  %44 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %45 = load i32, i32* @CFRUP0, align 4
  %46 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %44, i32 %45, i32 255)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %406

49:                                               ; preds = %43
  %50 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %51 = load i32, i32* @CFRLOW1, align 4
  %52 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %50, i32 %51, i32 240)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %406

55:                                               ; preds = %49
  %56 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %57 = load i32, i32* @CFRLOW0, align 4
  %58 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %56, i32 %57, i32 0)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %406

61:                                               ; preds = %55
  %62 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %63 = load i32, i32* @RTCS2, align 4
  %64 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %62, i32 %63, i32 104)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %406

67:                                               ; preds = %61
  br label %81

68:                                               ; preds = %26
  %69 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %70 = load i32, i32* @CARCFG, align 4
  %71 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %69, i32 %70, i32 196)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %406

74:                                               ; preds = %68
  %75 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %76 = load i32, i32* @RTCS2, align 4
  %77 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %75, i32 %76, i32 68)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %406

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %67
  br label %165

82:                                               ; preds = %19
  %83 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %84 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sle i32 %85, 5000000
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %89 = load i32, i32* @RTCS2, align 4
  %90 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %88, i32 %89, i32 104)
  br label %95

91:                                               ; preds = %82
  %92 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %93 = load i32, i32* @RTCS2, align 4
  %94 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %92, i32 %93, i32 68)
  br label %95

95:                                               ; preds = %91, %87
  %96 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %97 = load i32, i32* @CARCFG, align 4
  %98 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %96, i32 %97, i32 70)
  %99 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %100 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 128
  br i1 %102, label %103, label %113

103:                                              ; preds = %95
  store i32 65536000, i32* %5, align 4
  %104 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %105 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %104, i32 0, i32 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sdiv i32 %108, 1000
  %110 = load i32, i32* %5, align 4
  %111 = sdiv i32 %110, %109
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %6, align 4
  br label %130

113:                                              ; preds = %95
  %114 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %115 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sdiv i32 %116, 2000
  %118 = add nsw i32 %117, 600
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = shl i32 %119, 16
  store i32 %120, i32* %5, align 4
  %121 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %122 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %121, i32 0, i32 4
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sdiv i32 %125, 1000
  %127 = load i32, i32* %5, align 4
  %128 = sdiv i32 %127, %126
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %113, %103
  %131 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %132 = load i32, i32* @CFRUP1, align 4
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @MSB(i32 %133)
  %135 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %131, i32 %132, i32 %134)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %406

138:                                              ; preds = %130
  %139 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %140 = load i32, i32* @CFRUP0, align 4
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @LSB(i32 %141)
  %143 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %139, i32 %140, i32 %142)
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  br label %406

146:                                              ; preds = %138
  %147 = load i32, i32* %6, align 4
  %148 = mul nsw i32 %147, -1
  store i32 %148, i32* %6, align 4
  %149 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %150 = load i32, i32* @CFRLOW1, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @MSB(i32 %151)
  %153 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %149, i32 %150, i32 %152)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  br label %406

156:                                              ; preds = %146
  %157 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %158 = load i32, i32* @CFRLOW0, align 4
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @LSB(i32 %159)
  %161 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %157, i32 %158, i32 %160)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  br label %406

164:                                              ; preds = %156
  br label %165

165:                                              ; preds = %164, %81
  %166 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %167 = load i32, i32* @CFRINIT1, align 4
  %168 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %166, i32 %167, i32 0)
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %406

171:                                              ; preds = %165
  %172 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %173 = load i32, i32* @CFRINIT0, align 4
  %174 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %172, i32 %173, i32 0)
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %406

177:                                              ; preds = %171
  %178 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %179 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %178, i32 0, i32 4
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp sge i32 %182, 32
  br i1 %183, label %184, label %228

184:                                              ; preds = %177
  %185 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %186 = load i32, i32* @EQUALCFG, align 4
  %187 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %185, i32 %186, i32 65)
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %406

190:                                              ; preds = %184
  %191 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %192 = load i32, i32* @FFECFG, align 4
  %193 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %191, i32 %192, i32 65)
  %194 = icmp slt i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %406

196:                                              ; preds = %190
  %197 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %198 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @STV090x_SEARCH_DVBS1, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %214, label %202

202:                                              ; preds = %196
  %203 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %204 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @STV090x_SEARCH_DSS, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %214, label %208

208:                                              ; preds = %202
  %209 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %210 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @STV090x_SEARCH_AUTO, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %227

214:                                              ; preds = %208, %202, %196
  %215 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %216 = load i32, i32* @VITSCALE, align 4
  %217 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %215, i32 %216, i32 130)
  %218 = icmp slt i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  br label %406

220:                                              ; preds = %214
  %221 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %222 = load i32, i32* @VAVSRVIT, align 4
  %223 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %221, i32 %222, i32 0)
  %224 = icmp slt i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  br label %406

226:                                              ; preds = %220
  br label %227

227:                                              ; preds = %226, %208
  br label %228

228:                                              ; preds = %227, %177
  %229 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %230 = load i32, i32* @SFRSTEP, align 4
  %231 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %229, i32 %230, i32 0)
  %232 = icmp slt i64 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  br label %406

234:                                              ; preds = %228
  %235 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %236 = load i32, i32* @TMGTHRISE, align 4
  %237 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %235, i32 %236, i32 224)
  %238 = icmp slt i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  br label %406

240:                                              ; preds = %234
  %241 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %242 = load i32, i32* @TMGTHFALL, align 4
  %243 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %241, i32 %242, i32 192)
  %244 = icmp slt i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  br label %406

246:                                              ; preds = %240
  %247 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %248 = load i32, i32* @DMDCFGMD, align 4
  %249 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %247, i32 %248)
  store i32 %249, i32* %4, align 4
  %250 = load i32, i32* %4, align 4
  %251 = load i32, i32* @SCAN_ENABLE_FIELD, align 4
  %252 = call i32 @STV090x_SETFIELD_Px(i32 %250, i32 %251, i32 0)
  %253 = load i32, i32* %4, align 4
  %254 = load i32, i32* @CFR_AUTOSCAN_FIELD, align 4
  %255 = call i32 @STV090x_SETFIELD_Px(i32 %253, i32 %254, i32 0)
  %256 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %257 = load i32, i32* @DMDCFGMD, align 4
  %258 = load i32, i32* %4, align 4
  %259 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %256, i32 %257, i32 %258)
  %260 = icmp slt i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %246
  br label %406

262:                                              ; preds = %246
  %263 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %264 = load i32, i32* @DMDCFG2, align 4
  %265 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %263, i32 %264)
  store i32 %265, i32* %4, align 4
  %266 = load i32, i32* %4, align 4
  %267 = load i32, i32* @S1S2_SEQUENTIAL_FIELD, align 4
  %268 = call i32 @STV090x_SETFIELD_Px(i32 %266, i32 %267, i32 0)
  %269 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %270 = load i32, i32* @DMDCFG2, align 4
  %271 = load i32, i32* %4, align 4
  %272 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %269, i32 %270, i32 %271)
  %273 = icmp slt i64 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %262
  br label %406

275:                                              ; preds = %262
  %276 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %277 = load i32, i32* @RTC, align 4
  %278 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %276, i32 %277, i32 136)
  %279 = icmp slt i64 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %275
  br label %406

281:                                              ; preds = %275
  %282 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %283 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %282, i32 0, i32 4
  %284 = load %struct.TYPE_2__*, %struct.TYPE_2__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = icmp sge i32 %286, 32
  br i1 %287, label %288, label %354

288:                                              ; preds = %281
  %289 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %290 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = icmp slt i32 %291, 2000000
  br i1 %292, label %293, label %321

293:                                              ; preds = %288
  %294 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %295 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %294, i32 0, i32 4
  %296 = load %struct.TYPE_2__*, %struct.TYPE_2__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = icmp sle i32 %298, 32
  br i1 %299, label %300, label %307

300:                                              ; preds = %293
  %301 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %302 = load i32, i32* @CARFREQ, align 4
  %303 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %301, i32 %302, i32 57)
  %304 = icmp slt i64 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %300
  br label %406

306:                                              ; preds = %300
  br label %314

307:                                              ; preds = %293
  %308 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %309 = load i32, i32* @CARFREQ, align 4
  %310 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %308, i32 %309, i32 137)
  %311 = icmp slt i64 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %307
  br label %406

313:                                              ; preds = %307
  br label %314

314:                                              ; preds = %313, %306
  %315 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %316 = load i32, i32* @CARHDR, align 4
  %317 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %315, i32 %316, i32 64)
  %318 = icmp slt i64 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %314
  br label %406

320:                                              ; preds = %314
  br label %353

321:                                              ; preds = %288
  %322 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %323 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = icmp slt i32 %324, 10000000
  br i1 %325, label %326, label %339

326:                                              ; preds = %321
  %327 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %328 = load i32, i32* @CARFREQ, align 4
  %329 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %327, i32 %328, i32 76)
  %330 = icmp slt i64 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %326
  br label %406

332:                                              ; preds = %326
  %333 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %334 = load i32, i32* @CARHDR, align 4
  %335 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %333, i32 %334, i32 32)
  %336 = icmp slt i64 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %332
  br label %406

338:                                              ; preds = %332
  br label %352

339:                                              ; preds = %321
  %340 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %341 = load i32, i32* @CARFREQ, align 4
  %342 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %340, i32 %341, i32 75)
  %343 = icmp slt i64 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %339
  br label %406

345:                                              ; preds = %339
  %346 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %347 = load i32, i32* @CARHDR, align 4
  %348 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %346, i32 %347, i32 32)
  %349 = icmp slt i64 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %345
  br label %406

351:                                              ; preds = %345
  br label %352

352:                                              ; preds = %351, %338
  br label %353

353:                                              ; preds = %352, %320
  br label %374

354:                                              ; preds = %281
  %355 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %356 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = icmp slt i32 %357, 10000000
  br i1 %358, label %359, label %366

359:                                              ; preds = %354
  %360 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %361 = load i32, i32* @CARFREQ, align 4
  %362 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %360, i32 %361, i32 239)
  %363 = icmp slt i64 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %359
  br label %406

365:                                              ; preds = %359
  br label %373

366:                                              ; preds = %354
  %367 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %368 = load i32, i32* @CARFREQ, align 4
  %369 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %367, i32 %368, i32 237)
  %370 = icmp slt i64 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %366
  br label %406

372:                                              ; preds = %366
  br label %373

373:                                              ; preds = %372, %365
  br label %374

374:                                              ; preds = %373, %353
  %375 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %376 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  switch i32 %377, label %404 [
    i32 128, label %378
    i32 129, label %391
  ]

378:                                              ; preds = %374
  %379 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %380 = load i32, i32* @DMDISTATE, align 4
  %381 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %379, i32 %380, i32 31)
  %382 = icmp slt i64 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %378
  br label %406

384:                                              ; preds = %378
  %385 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %386 = load i32, i32* @DMDISTATE, align 4
  %387 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %385, i32 %386, i32 24)
  %388 = icmp slt i64 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %384
  br label %406

390:                                              ; preds = %384
  br label %405

391:                                              ; preds = %374
  %392 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %393 = load i32, i32* @DMDISTATE, align 4
  %394 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %392, i32 %393, i32 31)
  %395 = icmp slt i64 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %391
  br label %406

397:                                              ; preds = %391
  %398 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %399 = load i32, i32* @DMDISTATE, align 4
  %400 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %398, i32 %399, i32 21)
  %401 = icmp slt i64 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %397
  br label %406

403:                                              ; preds = %397
  br label %405

404:                                              ; preds = %374
  br label %405

405:                                              ; preds = %404, %403, %390
  store i32 0, i32* %2, align 4
  br label %409

406:                                              ; preds = %402, %396, %389, %383, %371, %364, %350, %344, %337, %331, %319, %312, %305, %280, %274, %261, %245, %239, %233, %225, %219, %195, %189, %176, %170, %163, %155, %145, %137, %79, %73, %66, %60, %54, %48, %42, %36, %18
  %407 = load i32, i32* @FE_ERROR, align 4
  %408 = call i32 @dprintk(i32 %407, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %409

409:                                              ; preds = %406, %405
  %410 = load i32, i32* %2, align 4
  ret i32 %410
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @MSB(i32) #1

declare dso_local i32 @LSB(i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
