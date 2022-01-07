; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_algo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, i64, i32, i32, i64, i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__*, i32, i32, %struct.dvb_frontend }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 (%struct.dvb_frontend*, i32)*, i32, i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32*)* }
%struct.dvb_frontend = type { i32 }

@STV090x_NOCARRIER = common dso_local global i32 0, align 4
@TSCFGH = common dso_local global i32 0, align 4
@RST_HWARE_FIELD = common dso_local global i32 0, align 4
@DMDISTATE = common dso_local global i32 0, align 4
@CORRELABS = common dso_local global i32 0, align 4
@STV090x_BLIND_SEARCH = common dso_local global i64 0, align 8
@TMGCFG2 = common dso_local global i32 0, align 4
@CORRELMANT = common dso_local global i32 0, align 4
@DMDTOM = common dso_local global i32 0, align 4
@TMGCFG = common dso_local global i32 0, align 4
@AGC2REF = common dso_local global i32 0, align 4
@KREFTMG = common dso_local global i32 0, align 4
@STV090x_COLD_SEARCH = common dso_local global i64 0, align 8
@STV090x_WARM_SEARCH = common dso_local global i64 0, align 8
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Tuner phase locked\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Tuner unlocked\00", align 1
@AGCIQIN1 = common dso_local global i32 0, align 4
@AGCIQIN0 = common dso_local global i32 0, align 4
@POWERI = common dso_local global i32 0, align 4
@POWERQ = common dso_local global i32 0, align 4
@STV090x_IQPOWER_THRESHOLD = common dso_local global i64 0, align 8
@FE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"No Signal: POWER_IQ=0x%02x\00", align 1
@STV090x_NOAGC1 = common dso_local global i32 0, align 4
@DEMOD = common dso_local global i32 0, align 4
@SPECINV_CONTROL_FIELD = common dso_local global i32 0, align 4
@MANUAL_SXROLLOFF_FIELD = common dso_local global i32 0, align 4
@MANUAL_S2ROLLOFF_FIELD = common dso_local global i32 0, align 4
@STV090x_RANGEOK = common dso_local global i32 0, align 4
@STV090x_DVBS2 = common dso_local global i64 0, align 8
@PDELCTRL2 = common dso_local global i32 0, align 4
@RESET_UPKO_COUNT = common dso_local global i32 0, align 4
@ERRCTRL1 = common dso_local global i32 0, align 4
@FBERCPT4 = common dso_local global i32 0, align 4
@ERRCTRL2 = common dso_local global i32 0, align 4
@STV090x_NODATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_algo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_algo(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  %13 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %14 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %13, i32 0, i32 11
  store %struct.dvb_frontend* %14, %struct.dvb_frontend** %4, align 8
  %15 = load i32, i32* @STV090x_NOCARRIER, align 4
  store i32 %15, i32* %5, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %17 = load i32, i32* @TSCFGH, align 4
  %18 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @RST_HWARE_FIELD, align 4
  %21 = call i32 @STV090x_SETFIELD_Px(i32 %19, i32 %20, i32 1)
  %22 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %23 = load i32, i32* @TSCFGH, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %22, i32 %23, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %639

28:                                               ; preds = %1
  %29 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %30 = load i32, i32* @DMDISTATE, align 4
  %31 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %29, i32 %30, i32 92)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %639

34:                                               ; preds = %28
  %35 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %36 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %35, i32 0, i32 6
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 32
  br i1 %40, label %41, label %61

41:                                               ; preds = %34
  %42 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %43 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 5000000
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %48 = load i32, i32* @CORRELABS, align 4
  %49 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %47, i32 %48, i32 158)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %639

52:                                               ; preds = %46
  br label %60

53:                                               ; preds = %41
  %54 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %55 = load i32, i32* @CORRELABS, align 4
  %56 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %54, i32 %55, i32 130)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %639

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %52
  br label %61

61:                                               ; preds = %60, %34
  %62 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %63 = call i32 @stv090x_get_lock_tmg(%struct.stv090x_state* %62)
  %64 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %65 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @STV090x_BLIND_SEARCH, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %61
  %70 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %71 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %70, i32 0, i32 2
  store i32 72000000, i32* %71, align 8
  %72 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %73 = load i32, i32* @TMGCFG2, align 4
  %74 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %72, i32 %73, i32 192)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %639

77:                                               ; preds = %69
  %78 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %79 = load i32, i32* @CORRELMANT, align 4
  %80 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %78, i32 %79, i32 112)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %639

83:                                               ; preds = %77
  %84 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %85 = call i64 @stv090x_set_srate(%struct.stv090x_state* %84, i32 1000000)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %639

88:                                               ; preds = %83
  br label %225

89:                                               ; preds = %61
  %90 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %91 = load i32, i32* @DMDTOM, align 4
  %92 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %90, i32 %91, i32 32)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %639

95:                                               ; preds = %89
  %96 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %97 = load i32, i32* @TMGCFG, align 4
  %98 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %96, i32 %97, i32 210)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %639

101:                                              ; preds = %95
  %102 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %103 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %104, 2000000
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %108 = load i32, i32* @CORRELMANT, align 4
  %109 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %107, i32 %108, i32 99)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %639

112:                                              ; preds = %106
  br label %120

113:                                              ; preds = %101
  %114 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %115 = load i32, i32* @CORRELMANT, align 4
  %116 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %114, i32 %115, i32 112)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %639

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %112
  %121 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %122 = load i32, i32* @AGC2REF, align 4
  %123 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %121, i32 %122, i32 56)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %639

126:                                              ; preds = %120
  %127 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %128 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %127, i32 0, i32 6
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp sge i32 %131, 32
  br i1 %132, label %133, label %177

133:                                              ; preds = %126
  %134 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %135 = load i32, i32* @KREFTMG, align 4
  %136 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %134, i32 %135, i32 90)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %639

139:                                              ; preds = %133
  %140 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %141 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @STV090x_COLD_SEARCH, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %139
  %146 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %147 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %150 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %149, i32 0, i32 10
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @stv090x_car_width(i32 %148, i32 %151)
  %153 = add nsw i32 %152, 10000000
  %154 = mul nsw i32 15, %153
  %155 = sdiv i32 %154, 10
  %156 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %157 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  br label %176

158:                                              ; preds = %139
  %159 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %160 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @STV090x_WARM_SEARCH, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %158
  %165 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %166 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %169 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %168, i32 0, i32 10
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @stv090x_car_width(i32 %167, i32 %170)
  %172 = add nsw i32 %171, 10000000
  %173 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %174 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %164, %158
  br label %176

176:                                              ; preds = %175, %145
  br label %177

177:                                              ; preds = %176, %126
  %178 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %179 = load i32, i32* @TMGCFG2, align 4
  %180 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %178, i32 %179, i32 193)
  %181 = icmp slt i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %639

183:                                              ; preds = %177
  %184 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %185 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %186 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @stv090x_set_srate(%struct.stv090x_state* %184, i32 %187)
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %183
  br label %639

191:                                              ; preds = %183
  %192 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %193 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %194 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %193, i32 0, i32 6
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %199 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i64 @stv090x_set_max_srate(%struct.stv090x_state* %192, i32 %197, i32 %200)
  %202 = icmp slt i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %191
  br label %639

204:                                              ; preds = %191
  %205 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %206 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %207 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %206, i32 0, i32 6
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %212 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i64 @stv090x_set_min_srate(%struct.stv090x_state* %205, i32 %210, i32 %213)
  %215 = icmp slt i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %204
  br label %639

217:                                              ; preds = %204
  %218 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %219 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp sge i32 %220, 10000000
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  store i32 0, i32* %11, align 4
  br label %224

223:                                              ; preds = %217
  store i32 1, i32* %11, align 4
  br label %224

224:                                              ; preds = %223, %222
  br label %225

225:                                              ; preds = %224, %88
  %226 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %227 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %226, i32 1)
  %228 = icmp slt i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  br label %639

230:                                              ; preds = %225
  %231 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %232 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %231, i32 0, i32 8
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %234, align 8
  %236 = icmp ne i64 (%struct.dvb_frontend*, i32)* %235, null
  br i1 %236, label %237, label %258

237:                                              ; preds = %230
  %238 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %239 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %238, i32 0, i32 8
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  store i32 %242, i32* %6, align 4
  %243 = load i32, i32* %6, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %237
  store i32 10, i32* %6, align 4
  br label %246

246:                                              ; preds = %245, %237
  %247 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %248 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %247, i32 0, i32 8
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 0
  %251 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %250, align 8
  %252 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %253 = load i32, i32* %6, align 4
  %254 = call i64 %251(%struct.dvb_frontend* %252, i32 %253)
  %255 = icmp slt i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %246
  br label %636

257:                                              ; preds = %246
  br label %258

258:                                              ; preds = %257, %230
  %259 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %260 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %259, i32 0, i32 8
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 2
  %263 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %262, align 8
  %264 = icmp ne i64 (%struct.dvb_frontend*, i32)* %263, null
  br i1 %264, label %265, label %279

265:                                              ; preds = %258
  %266 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %267 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %266, i32 0, i32 8
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 2
  %270 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %269, align 8
  %271 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %272 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %273 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %272, i32 0, i32 9
  %274 = load i32, i32* %273, align 8
  %275 = call i64 %270(%struct.dvb_frontend* %271, i32 %274)
  %276 = icmp slt i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %265
  br label %636

278:                                              ; preds = %265
  br label %279

279:                                              ; preds = %278, %258
  %280 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %281 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %280, i32 0, i32 8
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 3
  %284 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %283, align 8
  %285 = icmp ne i64 (%struct.dvb_frontend*, i32)* %284, null
  br i1 %285, label %286, label %300

286:                                              ; preds = %279
  %287 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %288 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %287, i32 0, i32 8
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 3
  %291 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %290, align 8
  %292 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %293 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %294 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = call i64 %291(%struct.dvb_frontend* %292, i32 %295)
  %297 = icmp slt i64 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %286
  br label %636

299:                                              ; preds = %286
  br label %300

300:                                              ; preds = %299, %279
  %301 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %302 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %301, i32 0)
  %303 = icmp slt i64 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %300
  br label %639

305:                                              ; preds = %300
  %306 = call i32 @msleep(i32 50)
  %307 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %308 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %307, i32 0, i32 8
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 4
  %311 = load i64 (%struct.dvb_frontend*, i32*)*, i64 (%struct.dvb_frontend*, i32*)** %310, align 8
  %312 = icmp ne i64 (%struct.dvb_frontend*, i32*)* %311, null
  br i1 %312, label %313, label %344

313:                                              ; preds = %305
  %314 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %315 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %314, i32 1)
  %316 = icmp slt i64 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %313
  br label %639

318:                                              ; preds = %313
  %319 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %320 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %319, i32 0, i32 8
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 4
  %323 = load i64 (%struct.dvb_frontend*, i32*)*, i64 (%struct.dvb_frontend*, i32*)** %322, align 8
  %324 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %325 = call i64 %323(%struct.dvb_frontend* %324, i32* %6)
  %326 = icmp slt i64 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %318
  br label %636

328:                                              ; preds = %318
  %329 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %330 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %329, i32 0)
  %331 = icmp slt i64 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %328
  br label %639

333:                                              ; preds = %328
  %334 = load i32, i32* %6, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %333
  %337 = load i32, i32* @FE_DEBUG, align 4
  %338 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %337, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %343

339:                                              ; preds = %333
  %340 = load i32, i32* @FE_DEBUG, align 4
  %341 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %340, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %342 = load i32, i32* @STV090x_NOCARRIER, align 4
  store i32 %342, i32* %2, align 4
  br label %642

343:                                              ; preds = %336
  br label %344

344:                                              ; preds = %343, %305
  %345 = call i32 @msleep(i32 10)
  %346 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %347 = load i32, i32* @AGCIQIN1, align 4
  %348 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %346, i32 %347)
  %349 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %350 = load i32, i32* @AGCIQIN0, align 4
  %351 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %349, i32 %350)
  %352 = call i64 @MAKEWORD16(i32 %348, i32 %351)
  store i64 %352, i64* %7, align 8
  %353 = load i64, i64* %7, align 8
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %355, label %377

355:                                              ; preds = %344
  store i64 0, i64* %9, align 8
  br label %356

356:                                              ; preds = %371, %355
  %357 = load i64, i64* %9, align 8
  %358 = icmp slt i64 %357, 5
  br i1 %358, label %359, label %374

359:                                              ; preds = %356
  %360 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %361 = load i32, i32* @POWERI, align 4
  %362 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %360, i32 %361)
  %363 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %364 = load i32, i32* @POWERQ, align 4
  %365 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %363, i32 %364)
  %366 = add nsw i32 %362, %365
  %367 = ashr i32 %366, 1
  %368 = sext i32 %367 to i64
  %369 = load i64, i64* %8, align 8
  %370 = add nsw i64 %369, %368
  store i64 %370, i64* %8, align 8
  br label %371

371:                                              ; preds = %359
  %372 = load i64, i64* %9, align 8
  %373 = add nsw i64 %372, 1
  store i64 %373, i64* %9, align 8
  br label %356

374:                                              ; preds = %356
  %375 = load i64, i64* %8, align 8
  %376 = sdiv i64 %375, 5
  store i64 %376, i64* %8, align 8
  br label %377

377:                                              ; preds = %374, %344
  %378 = load i64, i64* %7, align 8
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %380, label %389

380:                                              ; preds = %377
  %381 = load i64, i64* %8, align 8
  %382 = load i64, i64* @STV090x_IQPOWER_THRESHOLD, align 8
  %383 = icmp slt i64 %381, %382
  br i1 %383, label %384, label %389

384:                                              ; preds = %380
  %385 = load i32, i32* @FE_ERROR, align 4
  %386 = load i64, i64* %8, align 8
  %387 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %385, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %386)
  store i32 0, i32* %10, align 4
  %388 = load i32, i32* @STV090x_NOAGC1, align 4
  store i32 %388, i32* %5, align 4
  br label %438

389:                                              ; preds = %380, %377
  %390 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %391 = load i32, i32* @DEMOD, align 4
  %392 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %390, i32 %391)
  store i32 %392, i32* %6, align 4
  %393 = load i32, i32* %6, align 4
  %394 = load i32, i32* @SPECINV_CONTROL_FIELD, align 4
  %395 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %396 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 4
  %398 = call i32 @STV090x_SETFIELD_Px(i32 %393, i32 %394, i32 %397)
  %399 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %400 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %399, i32 0, i32 6
  %401 = load %struct.TYPE_3__*, %struct.TYPE_3__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = icmp sle i32 %403, 32
  br i1 %404, label %405, label %409

405:                                              ; preds = %389
  %406 = load i32, i32* %6, align 4
  %407 = load i32, i32* @MANUAL_SXROLLOFF_FIELD, align 4
  %408 = call i32 @STV090x_SETFIELD_Px(i32 %406, i32 %407, i32 1)
  br label %413

409:                                              ; preds = %389
  %410 = load i32, i32* %6, align 4
  %411 = load i32, i32* @MANUAL_S2ROLLOFF_FIELD, align 4
  %412 = call i32 @STV090x_SETFIELD_Px(i32 %410, i32 %411, i32 1)
  br label %413

413:                                              ; preds = %409, %405
  %414 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %415 = load i32, i32* @DEMOD, align 4
  %416 = load i32, i32* %6, align 4
  %417 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %414, i32 %415, i32 %416)
  %418 = icmp slt i64 %417, 0
  br i1 %418, label %419, label %420

419:                                              ; preds = %413
  br label %639

420:                                              ; preds = %413
  %421 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %422 = call i64 @stv090x_delivery_search(%struct.stv090x_state* %421)
  %423 = icmp slt i64 %422, 0
  br i1 %423, label %424, label %425

424:                                              ; preds = %420
  br label %639

425:                                              ; preds = %420
  %426 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %427 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %426, i32 0, i32 1
  %428 = load i64, i64* %427, align 8
  %429 = load i64, i64* @STV090x_BLIND_SEARCH, align 8
  %430 = icmp ne i64 %428, %429
  br i1 %430, label %431, label %437

431:                                              ; preds = %425
  %432 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %433 = call i64 @stv090x_start_search(%struct.stv090x_state* %432)
  %434 = icmp slt i64 %433, 0
  br i1 %434, label %435, label %436

435:                                              ; preds = %431
  br label %639

436:                                              ; preds = %431
  br label %437

437:                                              ; preds = %436, %425
  br label %438

438:                                              ; preds = %437, %384
  %439 = load i32, i32* %5, align 4
  %440 = load i32, i32* @STV090x_NOAGC1, align 4
  %441 = icmp eq i32 %439, %440
  br i1 %441, label %442, label %444

442:                                              ; preds = %438
  %443 = load i32, i32* %5, align 4
  store i32 %443, i32* %2, align 4
  br label %642

444:                                              ; preds = %438
  %445 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %446 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %445, i32 0, i32 1
  %447 = load i64, i64* %446, align 8
  %448 = load i64, i64* @STV090x_BLIND_SEARCH, align 8
  %449 = icmp eq i64 %447, %448
  br i1 %449, label %450, label %453

450:                                              ; preds = %444
  %451 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %452 = call i32 @stv090x_blind_search(%struct.stv090x_state* %451)
  store i32 %452, i32* %10, align 4
  br label %479

453:                                              ; preds = %444
  %454 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %455 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %454, i32 0, i32 1
  %456 = load i64, i64* %455, align 8
  %457 = load i64, i64* @STV090x_COLD_SEARCH, align 8
  %458 = icmp eq i64 %456, %457
  br i1 %458, label %459, label %465

459:                                              ; preds = %453
  %460 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %461 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %462 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %461, i32 0, i32 7
  %463 = load i32, i32* %462, align 8
  %464 = call i32 @stv090x_get_coldlock(%struct.stv090x_state* %460, i32 %463)
  store i32 %464, i32* %10, align 4
  br label %478

465:                                              ; preds = %453
  %466 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %467 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %466, i32 0, i32 1
  %468 = load i64, i64* %467, align 8
  %469 = load i64, i64* @STV090x_WARM_SEARCH, align 8
  %470 = icmp eq i64 %468, %469
  br i1 %470, label %471, label %477

471:                                              ; preds = %465
  %472 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %473 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %474 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %473, i32 0, i32 7
  %475 = load i32, i32* %474, align 8
  %476 = call i32 @stv090x_get_dmdlock(%struct.stv090x_state* %472, i32 %475)
  store i32 %476, i32* %10, align 4
  br label %477

477:                                              ; preds = %471, %465
  br label %478

478:                                              ; preds = %477, %459
  br label %479

479:                                              ; preds = %478, %450
  %480 = load i32, i32* %10, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %500, label %482

482:                                              ; preds = %479
  %483 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %484 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %483, i32 0, i32 1
  %485 = load i64, i64* %484, align 8
  %486 = load i64, i64* @STV090x_COLD_SEARCH, align 8
  %487 = icmp eq i64 %485, %486
  br i1 %487, label %488, label %500

488:                                              ; preds = %482
  %489 = load i32, i32* %11, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %499, label %491

491:                                              ; preds = %488
  %492 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %493 = call i64 @stv090x_chk_tmg(%struct.stv090x_state* %492)
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %498

495:                                              ; preds = %491
  %496 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %497 = call i32 @stv090x_sw_algo(%struct.stv090x_state* %496)
  store i32 %497, i32* %10, align 4
  br label %498

498:                                              ; preds = %495, %491
  br label %499

499:                                              ; preds = %498, %488
  br label %500

500:                                              ; preds = %499, %482, %479
  %501 = load i32, i32* %10, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %506

503:                                              ; preds = %500
  %504 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %505 = call i32 @stv090x_get_sig_params(%struct.stv090x_state* %504)
  store i32 %505, i32* %5, align 4
  br label %506

506:                                              ; preds = %503, %500
  %507 = load i32, i32* %10, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %634

509:                                              ; preds = %506
  %510 = load i32, i32* %5, align 4
  %511 = load i32, i32* @STV090x_RANGEOK, align 4
  %512 = icmp eq i32 %510, %511
  br i1 %512, label %513, label %634

513:                                              ; preds = %509
  %514 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %515 = call i32 @stv090x_optimize_track(%struct.stv090x_state* %514)
  %516 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %517 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %516, i32 0, i32 6
  %518 = load %struct.TYPE_3__*, %struct.TYPE_3__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 4
  %521 = icmp sge i32 %520, 32
  br i1 %521, label %522, label %557

522:                                              ; preds = %513
  %523 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %524 = load i32, i32* @TSCFGH, align 4
  %525 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %523, i32 %524)
  store i32 %525, i32* %6, align 4
  %526 = load i32, i32* %6, align 4
  %527 = load i32, i32* @RST_HWARE_FIELD, align 4
  %528 = call i32 @STV090x_SETFIELD_Px(i32 %526, i32 %527, i32 0)
  %529 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %530 = load i32, i32* @TSCFGH, align 4
  %531 = load i32, i32* %6, align 4
  %532 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %529, i32 %530, i32 %531)
  %533 = icmp slt i64 %532, 0
  br i1 %533, label %534, label %535

534:                                              ; preds = %522
  br label %639

535:                                              ; preds = %522
  %536 = call i32 @msleep(i32 3)
  %537 = load i32, i32* %6, align 4
  %538 = load i32, i32* @RST_HWARE_FIELD, align 4
  %539 = call i32 @STV090x_SETFIELD_Px(i32 %537, i32 %538, i32 1)
  %540 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %541 = load i32, i32* @TSCFGH, align 4
  %542 = load i32, i32* %6, align 4
  %543 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %540, i32 %541, i32 %542)
  %544 = icmp slt i64 %543, 0
  br i1 %544, label %545, label %546

545:                                              ; preds = %535
  br label %639

546:                                              ; preds = %535
  %547 = load i32, i32* %6, align 4
  %548 = load i32, i32* @RST_HWARE_FIELD, align 4
  %549 = call i32 @STV090x_SETFIELD_Px(i32 %547, i32 %548, i32 0)
  %550 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %551 = load i32, i32* @TSCFGH, align 4
  %552 = load i32, i32* %6, align 4
  %553 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %550, i32 %551, i32 %552)
  %554 = icmp slt i64 %553, 0
  br i1 %554, label %555, label %556

555:                                              ; preds = %546
  br label %639

556:                                              ; preds = %546
  br label %557

557:                                              ; preds = %556, %513
  %558 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %559 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %560 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %559, i32 0, i32 5
  %561 = load i32, i32* %560, align 8
  %562 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %563 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %562, i32 0, i32 5
  %564 = load i32, i32* %563, align 8
  %565 = call i32 @stv090x_get_lock(%struct.stv090x_state* %558, i32 %561, i32 %564)
  store i32 %565, i32* %10, align 4
  %566 = load i32, i32* %10, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %629

568:                                              ; preds = %557
  %569 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %570 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %569, i32 0, i32 4
  %571 = load i64, i64* %570, align 8
  %572 = load i64, i64* @STV090x_DVBS2, align 8
  %573 = icmp eq i64 %571, %572
  br i1 %573, label %574, label %609

574:                                              ; preds = %568
  %575 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %576 = call i32 @stv090x_set_s2rolloff(%struct.stv090x_state* %575)
  %577 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %578 = load i32, i32* @PDELCTRL2, align 4
  %579 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %577, i32 %578)
  store i32 %579, i32* %6, align 4
  %580 = load i32, i32* %6, align 4
  %581 = load i32, i32* @RESET_UPKO_COUNT, align 4
  %582 = call i32 @STV090x_SETFIELD_Px(i32 %580, i32 %581, i32 1)
  %583 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %584 = load i32, i32* @PDELCTRL2, align 4
  %585 = load i32, i32* %6, align 4
  %586 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %583, i32 %584, i32 %585)
  %587 = icmp slt i64 %586, 0
  br i1 %587, label %588, label %589

588:                                              ; preds = %574
  br label %639

589:                                              ; preds = %574
  %590 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %591 = load i32, i32* @PDELCTRL2, align 4
  %592 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %590, i32 %591)
  store i32 %592, i32* %6, align 4
  %593 = load i32, i32* %6, align 4
  %594 = load i32, i32* @RESET_UPKO_COUNT, align 4
  %595 = call i32 @STV090x_SETFIELD_Px(i32 %593, i32 %594, i32 0)
  %596 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %597 = load i32, i32* @PDELCTRL2, align 4
  %598 = load i32, i32* %6, align 4
  %599 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %596, i32 %597, i32 %598)
  %600 = icmp slt i64 %599, 0
  br i1 %600, label %601, label %602

601:                                              ; preds = %589
  br label %639

602:                                              ; preds = %589
  %603 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %604 = load i32, i32* @ERRCTRL1, align 4
  %605 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %603, i32 %604, i32 103)
  %606 = icmp slt i64 %605, 0
  br i1 %606, label %607, label %608

607:                                              ; preds = %602
  br label %639

608:                                              ; preds = %602
  br label %616

609:                                              ; preds = %568
  %610 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %611 = load i32, i32* @ERRCTRL1, align 4
  %612 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %610, i32 %611, i32 117)
  %613 = icmp slt i64 %612, 0
  br i1 %613, label %614, label %615

614:                                              ; preds = %609
  br label %639

615:                                              ; preds = %609
  br label %616

616:                                              ; preds = %615, %608
  %617 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %618 = load i32, i32* @FBERCPT4, align 4
  %619 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %617, i32 %618, i32 0)
  %620 = icmp slt i64 %619, 0
  br i1 %620, label %621, label %622

621:                                              ; preds = %616
  br label %639

622:                                              ; preds = %616
  %623 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %624 = load i32, i32* @ERRCTRL2, align 4
  %625 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %623, i32 %624, i32 193)
  %626 = icmp slt i64 %625, 0
  br i1 %626, label %627, label %628

627:                                              ; preds = %622
  br label %639

628:                                              ; preds = %622
  br label %633

629:                                              ; preds = %557
  %630 = load i32, i32* @STV090x_NODATA, align 4
  store i32 %630, i32* %5, align 4
  %631 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %632 = call i32 @stv090x_chk_signal(%struct.stv090x_state* %631)
  store i32 %632, i32* %12, align 4
  br label %633

633:                                              ; preds = %629, %628
  br label %634

634:                                              ; preds = %633, %509, %506
  %635 = load i32, i32* %5, align 4
  store i32 %635, i32* %2, align 4
  br label %642

636:                                              ; preds = %327, %298, %277, %256
  %637 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %638 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %637, i32 0)
  br label %639

639:                                              ; preds = %636, %627, %621, %614, %607, %601, %588, %555, %545, %534, %435, %424, %419, %332, %317, %304, %229, %216, %203, %190, %182, %138, %125, %118, %111, %100, %94, %87, %82, %76, %58, %51, %33, %27
  %640 = load i32, i32* @FE_ERROR, align 4
  %641 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %640, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %642

642:                                              ; preds = %639, %634, %442, %339
  %643 = load i32, i32* %2, align 4
  ret i32 %643
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @stv090x_get_lock_tmg(%struct.stv090x_state*) #1

declare dso_local i64 @stv090x_set_srate(%struct.stv090x_state*, i32) #1

declare dso_local i32 @stv090x_car_width(i32, i32) #1

declare dso_local i64 @stv090x_set_max_srate(%struct.stv090x_state*, i32, i32) #1

declare dso_local i64 @stv090x_set_min_srate(%struct.stv090x_state*, i32, i32) #1

declare dso_local i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i64 @MAKEWORD16(i32, i32) #1

declare dso_local i64 @stv090x_delivery_search(%struct.stv090x_state*) #1

declare dso_local i64 @stv090x_start_search(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_blind_search(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_get_coldlock(%struct.stv090x_state*, i32) #1

declare dso_local i32 @stv090x_get_dmdlock(%struct.stv090x_state*, i32) #1

declare dso_local i64 @stv090x_chk_tmg(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_sw_algo(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_get_sig_params(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_optimize_track(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_get_lock(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @stv090x_set_s2rolloff(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_chk_signal(%struct.stv090x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
