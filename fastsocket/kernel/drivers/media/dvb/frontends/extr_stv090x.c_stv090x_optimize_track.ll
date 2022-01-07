; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_optimize_track.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_optimize_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, i64, i32, i64, i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__*, i32, i32, i32, i32, %struct.dvb_frontend }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 (%struct.dvb_frontend*, i64)* }
%struct.dvb_frontend = type { i32 }

@STV090x_SEARCH_AUTO = common dso_local global i64 0, align 8
@DMDCFGMD = common dso_local global i32 0, align 4
@DVBS1_ENABLE_FIELD = common dso_local global i32 0, align 4
@DVBS2_ENABLE_FIELD = common dso_local global i32 0, align 4
@DEMOD = common dso_local global i32 0, align 4
@ROLLOFF_CONTROL_FIELD = common dso_local global i32 0, align 4
@MANUAL_SXROLLOFF_FIELD = common dso_local global i32 0, align 4
@STV090x_PR12 = common dso_local global i32 0, align 4
@GAUSSR0 = common dso_local global i32 0, align 4
@CCIR0 = common dso_local global i32 0, align 4
@ERRCTRL1 = common dso_local global i32 0, align 4
@ACLC = common dso_local global i32 0, align 4
@BCLC = common dso_local global i32 0, align 4
@STV090x_LONG_FRAME = common dso_local global i32 0, align 4
@DMDMODCOD = common dso_local global i32 0, align 4
@DEMOD_MODCOD_FIELD = common dso_local global i32 0, align 4
@DEMOD_TYPE_FIELD = common dso_local global i32 0, align 4
@STV090x_QPSK_910 = common dso_local global i32 0, align 4
@ACLC2S2Q = common dso_local global i32 0, align 4
@STV090x_8PSK_910 = common dso_local global i32 0, align 4
@ACLC2S28 = common dso_local global i32 0, align 4
@STV090x_SINGLE = common dso_local global i32 0, align 4
@STV090x_16APSK_910 = common dso_local global i32 0, align 4
@ACLC2S216A = common dso_local global i32 0, align 4
@ACLC2S232A = common dso_local global i32 0, align 4
@STV090x_QPSK = common dso_local global i32 0, align 4
@STV090x_8PSK = common dso_local global i32 0, align 4
@STV090x_16APSK = common dso_local global i32 0, align 4
@STV090x_32APSK = common dso_local global i32 0, align 4
@CFR2 = common dso_local global i32 0, align 4
@CFR1 = common dso_local global i32 0, align 4
@TMGOBS = common dso_local global i32 0, align 4
@ROLLOFF_STATUS_FIELD = common dso_local global i32 0, align 4
@STV090x_BLIND_SEARCH = common dso_local global i64 0, align 8
@SFRSTEP = common dso_local global i32 0, align 4
@SCAN_ENABLE_FIELD = common dso_local global i32 0, align 4
@CFR_AUTOSCAN_FIELD = common dso_local global i32 0, align 4
@TMGCFG2 = common dso_local global i32 0, align 4
@STV090x_SEARCH_DVBS1 = common dso_local global i64 0, align 8
@STV090x_SEARCH_DSS = common dso_local global i64 0, align 8
@VAVSRVIT = common dso_local global i32 0, align 4
@VITSCALE = common dso_local global i32 0, align 4
@AGC2REF = common dso_local global i32 0, align 4
@SFRUP1 = common dso_local global i32 0, align 4
@SFRLOW1 = common dso_local global i32 0, align 4
@CFRINIT1 = common dso_local global i32 0, align 4
@CFRINIT0 = common dso_local global i32 0, align 4
@STV090x_WARM_SEARCH = common dso_local global i64 0, align 8
@DMDISTATE = common dso_local global i32 0, align 4
@CARFREQ = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_optimize_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_optimize_track(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  %15 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %16 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %15, i32 0, i32 13
  store %struct.dvb_frontend* %16, %struct.dvb_frontend** %4, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %18 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %19 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %18, i32 0, i32 6
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @stv090x_get_srate(%struct.stv090x_state* %17, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @stv090x_get_tmgoffst(%struct.stv090x_state* %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %32 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %333 [
    i32 130, label %34
    i32 131, label %34
    i32 129, label %128
    i32 128, label %332
  ]

34:                                               ; preds = %1, %1
  %35 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %36 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @STV090x_SEARCH_AUTO, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %42 = load i32, i32* @DMDCFGMD, align 4
  %43 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @DVBS1_ENABLE_FIELD, align 4
  %46 = call i32 @STV090x_SETFIELD_Px(i32 %44, i32 %45, i32 1)
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @DVBS2_ENABLE_FIELD, align 4
  %49 = call i32 @STV090x_SETFIELD_Px(i32 %47, i32 %48, i32 0)
  %50 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %51 = load i32, i32* @DMDCFGMD, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %50, i32 %51, i32 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %675

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56, %34
  %58 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %59 = load i32, i32* @DEMOD, align 4
  %60 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %58, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @ROLLOFF_CONTROL_FIELD, align 4
  %63 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %64 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @STV090x_SETFIELD_Px(i32 %61, i32 %62, i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @MANUAL_SXROLLOFF_FIELD, align 4
  %69 = call i32 @STV090x_SETFIELD_Px(i32 %67, i32 %68, i32 1)
  %70 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %71 = load i32, i32* @DEMOD, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %70, i32 %71, i32 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %57
  br label %675

76:                                               ; preds = %57
  %77 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %78 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %77, i32 0, i32 6
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %81, 48
  br i1 %82, label %83, label %121

83:                                               ; preds = %76
  %84 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %85 = call i32 @stv090x_get_viterbi(%struct.stv090x_state* %84)
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %675

88:                                               ; preds = %83
  %89 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %90 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %89, i32 0, i32 12
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @STV090x_PR12, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %96 = load i32, i32* @GAUSSR0, align 4
  %97 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %95, i32 %96, i32 152)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %675

100:                                              ; preds = %94
  %101 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %102 = load i32, i32* @CCIR0, align 4
  %103 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %101, i32 %102, i32 24)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %675

106:                                              ; preds = %100
  br label %120

107:                                              ; preds = %88
  %108 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %109 = load i32, i32* @GAUSSR0, align 4
  %110 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %108, i32 %109, i32 24)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %675

113:                                              ; preds = %107
  %114 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %115 = load i32, i32* @CCIR0, align 4
  %116 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %114, i32 %115, i32 24)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %675

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %106
  br label %121

121:                                              ; preds = %120, %76
  %122 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %123 = load i32, i32* @ERRCTRL1, align 4
  %124 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %122, i32 %123, i32 117)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %675

127:                                              ; preds = %121
  br label %350

128:                                              ; preds = %1
  %129 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %130 = load i32, i32* @DMDCFGMD, align 4
  %131 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %129, i32 %130)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* @DVBS1_ENABLE_FIELD, align 4
  %134 = call i32 @STV090x_SETFIELD_Px(i32 %132, i32 %133, i32 0)
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* @DVBS2_ENABLE_FIELD, align 4
  %137 = call i32 @STV090x_SETFIELD_Px(i32 %135, i32 %136, i32 1)
  %138 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %139 = load i32, i32* @DMDCFGMD, align 4
  %140 = load i32, i32* %14, align 4
  %141 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %138, i32 %139, i32 %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %128
  br label %675

144:                                              ; preds = %128
  %145 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %146 = load i32, i32* @ACLC, align 4
  %147 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %145, i32 %146, i32 0)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %675

150:                                              ; preds = %144
  %151 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %152 = load i32, i32* @BCLC, align 4
  %153 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %151, i32 %152, i32 0)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %675

156:                                              ; preds = %150
  %157 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %158 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %157, i32 0, i32 11
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @STV090x_LONG_FRAME, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %248

162:                                              ; preds = %156
  %163 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %164 = load i32, i32* @DMDMODCOD, align 4
  %165 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %163, i32 %164)
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* @DEMOD_MODCOD_FIELD, align 4
  %168 = call i32 @STV090x_GETFIELD_Px(i32 %166, i32 %167)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* @DEMOD_TYPE_FIELD, align 4
  %171 = call i32 @STV090x_GETFIELD_Px(i32 %169, i32 %170)
  %172 = and i32 %171, 1
  store i32 %172, i32* %8, align 4
  %173 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @stv090x_optimize_carloop(%struct.stv090x_state* %173, i32 %174, i32 %175)
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @STV090x_QPSK_910, align 4
  %179 = icmp ule i32 %177, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %162
  %181 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %182 = load i32, i32* @ACLC2S2Q, align 4
  %183 = load i32, i32* %9, align 4
  %184 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %181, i32 %182, i32 %183)
  br label %204

185:                                              ; preds = %162
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @STV090x_8PSK_910, align 4
  %188 = icmp ule i32 %186, %187
  br i1 %188, label %189, label %203

189:                                              ; preds = %185
  %190 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %191 = load i32, i32* @ACLC2S2Q, align 4
  %192 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %190, i32 %191, i32 42)
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  br label %675

195:                                              ; preds = %189
  %196 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %197 = load i32, i32* @ACLC2S28, align 4
  %198 = load i32, i32* %9, align 4
  %199 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %196, i32 %197, i32 %198)
  %200 = icmp slt i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  br label %675

202:                                              ; preds = %195
  br label %203

203:                                              ; preds = %202, %185
  br label %204

204:                                              ; preds = %203, %180
  %205 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %206 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %205, i32 0, i32 10
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @STV090x_SINGLE, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %247

210:                                              ; preds = %204
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* @STV090x_8PSK_910, align 4
  %213 = icmp ugt i32 %211, %212
  br i1 %213, label %214, label %247

214:                                              ; preds = %210
  %215 = load i32, i32* %6, align 4
  %216 = load i32, i32* @STV090x_16APSK_910, align 4
  %217 = icmp ule i32 %215, %216
  br i1 %217, label %218, label %232

218:                                              ; preds = %214
  %219 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %220 = load i32, i32* @ACLC2S2Q, align 4
  %221 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %219, i32 %220, i32 42)
  %222 = icmp slt i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  br label %675

224:                                              ; preds = %218
  %225 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %226 = load i32, i32* @ACLC2S216A, align 4
  %227 = load i32, i32* %9, align 4
  %228 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %225, i32 %226, i32 %227)
  %229 = icmp slt i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  br label %675

231:                                              ; preds = %224
  br label %246

232:                                              ; preds = %214
  %233 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %234 = load i32, i32* @ACLC2S2Q, align 4
  %235 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %233, i32 %234, i32 42)
  %236 = icmp slt i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  br label %675

238:                                              ; preds = %232
  %239 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %240 = load i32, i32* @ACLC2S232A, align 4
  %241 = load i32, i32* %9, align 4
  %242 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %239, i32 %240, i32 %241)
  %243 = icmp slt i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %238
  br label %675

245:                                              ; preds = %238
  br label %246

246:                                              ; preds = %245, %231
  br label %247

247:                                              ; preds = %246, %210, %204
  br label %328

248:                                              ; preds = %156
  %249 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %250 = call i32 @stv090x_optimize_carloop_short(%struct.stv090x_state* %249)
  store i32 %250, i32* %9, align 4
  %251 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %252 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %251, i32 0, i32 9
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @STV090x_QPSK, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %264

256:                                              ; preds = %248
  %257 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %258 = load i32, i32* @ACLC2S2Q, align 4
  %259 = load i32, i32* %9, align 4
  %260 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %257, i32 %258, i32 %259)
  %261 = icmp slt i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %256
  br label %675

263:                                              ; preds = %256
  br label %327

264:                                              ; preds = %248
  %265 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %266 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %265, i32 0, i32 9
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @STV090x_8PSK, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %284

270:                                              ; preds = %264
  %271 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %272 = load i32, i32* @ACLC2S2Q, align 4
  %273 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %271, i32 %272, i32 42)
  %274 = icmp slt i64 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %270
  br label %675

276:                                              ; preds = %270
  %277 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %278 = load i32, i32* @ACLC2S28, align 4
  %279 = load i32, i32* %9, align 4
  %280 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %277, i32 %278, i32 %279)
  %281 = icmp slt i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %276
  br label %675

283:                                              ; preds = %276
  br label %326

284:                                              ; preds = %264
  %285 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %286 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %285, i32 0, i32 9
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @STV090x_16APSK, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %304

290:                                              ; preds = %284
  %291 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %292 = load i32, i32* @ACLC2S2Q, align 4
  %293 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %291, i32 %292, i32 42)
  %294 = icmp slt i64 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %290
  br label %675

296:                                              ; preds = %290
  %297 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %298 = load i32, i32* @ACLC2S216A, align 4
  %299 = load i32, i32* %9, align 4
  %300 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %297, i32 %298, i32 %299)
  %301 = icmp slt i64 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %296
  br label %675

303:                                              ; preds = %296
  br label %325

304:                                              ; preds = %284
  %305 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %306 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %305, i32 0, i32 9
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @STV090x_32APSK, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %324

310:                                              ; preds = %304
  %311 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %312 = load i32, i32* @ACLC2S2Q, align 4
  %313 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %311, i32 %312, i32 42)
  %314 = icmp slt i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %310
  br label %675

316:                                              ; preds = %310
  %317 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %318 = load i32, i32* @ACLC2S232A, align 4
  %319 = load i32, i32* %9, align 4
  %320 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %317, i32 %318, i32 %319)
  %321 = icmp slt i64 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %316
  br label %675

323:                                              ; preds = %316
  br label %324

324:                                              ; preds = %323, %304
  br label %325

325:                                              ; preds = %324, %303
  br label %326

326:                                              ; preds = %325, %283
  br label %327

327:                                              ; preds = %326, %263
  br label %328

328:                                              ; preds = %327, %247
  %329 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %330 = load i32, i32* @ERRCTRL1, align 4
  %331 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %329, i32 %330, i32 103)
  br label %350

332:                                              ; preds = %1
  br label %333

333:                                              ; preds = %1, %332
  %334 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %335 = load i32, i32* @DMDCFGMD, align 4
  %336 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %334, i32 %335)
  store i32 %336, i32* %14, align 4
  %337 = load i32, i32* %14, align 4
  %338 = load i32, i32* @DVBS1_ENABLE_FIELD, align 4
  %339 = call i32 @STV090x_SETFIELD_Px(i32 %337, i32 %338, i32 1)
  %340 = load i32, i32* %14, align 4
  %341 = load i32, i32* @DVBS2_ENABLE_FIELD, align 4
  %342 = call i32 @STV090x_SETFIELD_Px(i32 %340, i32 %341, i32 1)
  %343 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %344 = load i32, i32* @DMDCFGMD, align 4
  %345 = load i32, i32* %14, align 4
  %346 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %343, i32 %344, i32 %345)
  %347 = icmp slt i64 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %333
  br label %675

349:                                              ; preds = %333
  br label %350

350:                                              ; preds = %349, %328, %127
  %351 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %352 = load i32, i32* @CFR2, align 4
  %353 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %351, i32 %352)
  store i32 %353, i32* %10, align 4
  %354 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %355 = load i32, i32* @CFR1, align 4
  %356 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %354, i32 %355)
  store i32 %356, i32* %11, align 4
  %357 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %358 = load i32, i32* @TMGOBS, align 4
  %359 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %357, i32 %358)
  store i32 %359, i32* %14, align 4
  %360 = load i32, i32* %14, align 4
  %361 = load i32, i32* @ROLLOFF_STATUS_FIELD, align 4
  %362 = call i32 @STV090x_GETFIELD_Px(i32 %360, i32 %361)
  store i32 %362, i32* %5, align 4
  %363 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %364 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %363, i32 0, i32 3
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @STV090x_BLIND_SEARCH, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %405

368:                                              ; preds = %350
  %369 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %370 = load i32, i32* @SFRSTEP, align 4
  %371 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %369, i32 %370, i32 0)
  %372 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %373 = load i32, i32* @DMDCFGMD, align 4
  %374 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %372, i32 %373)
  store i32 %374, i32* %14, align 4
  %375 = load i32, i32* %14, align 4
  %376 = load i32, i32* @SCAN_ENABLE_FIELD, align 4
  %377 = call i32 @STV090x_SETFIELD_Px(i32 %375, i32 %376, i32 0)
  %378 = load i32, i32* %14, align 4
  %379 = load i32, i32* @CFR_AUTOSCAN_FIELD, align 4
  %380 = call i32 @STV090x_SETFIELD_Px(i32 %378, i32 %379, i32 0)
  %381 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %382 = load i32, i32* @DMDCFGMD, align 4
  %383 = load i32, i32* %14, align 4
  %384 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %381, i32 %382, i32 %383)
  %385 = icmp slt i64 %384, 0
  br i1 %385, label %386, label %387

386:                                              ; preds = %368
  br label %675

387:                                              ; preds = %368
  %388 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %389 = load i32, i32* @TMGCFG2, align 4
  %390 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %388, i32 %389, i32 193)
  %391 = icmp slt i64 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %387
  br label %675

393:                                              ; preds = %387
  %394 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %395 = load i32, i32* %7, align 4
  %396 = call i64 @stv090x_set_srate(%struct.stv090x_state* %394, i32 %395)
  %397 = icmp slt i64 %396, 0
  br i1 %397, label %398, label %399

398:                                              ; preds = %393
  br label %675

399:                                              ; preds = %393
  store i32 1, i32* %13, align 4
  %400 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %401 = call i64 @stv090x_dvbs_track_crl(%struct.stv090x_state* %400)
  %402 = icmp slt i64 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %399
  br label %675

404:                                              ; preds = %399
  br label %405

405:                                              ; preds = %404, %350
  %406 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %407 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %406, i32 0, i32 6
  %408 = load %struct.TYPE_4__*, %struct.TYPE_4__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = icmp sge i32 %410, 32
  br i1 %411, label %412, label %444

412:                                              ; preds = %405
  %413 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %414 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = load i64, i64* @STV090x_SEARCH_DVBS1, align 8
  %417 = icmp eq i64 %415, %416
  br i1 %417, label %430, label %418

418:                                              ; preds = %412
  %419 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %420 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %419, i32 0, i32 1
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* @STV090x_SEARCH_DSS, align 8
  %423 = icmp eq i64 %421, %422
  br i1 %423, label %430, label %424

424:                                              ; preds = %418
  %425 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %426 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* @STV090x_SEARCH_AUTO, align 8
  %429 = icmp eq i64 %427, %428
  br i1 %429, label %430, label %443

430:                                              ; preds = %424, %418, %412
  %431 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %432 = load i32, i32* @VAVSRVIT, align 4
  %433 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %431, i32 %432, i32 10)
  %434 = icmp slt i64 %433, 0
  br i1 %434, label %435, label %436

435:                                              ; preds = %430
  br label %675

436:                                              ; preds = %430
  %437 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %438 = load i32, i32* @VITSCALE, align 4
  %439 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %437, i32 %438, i32 0)
  %440 = icmp slt i64 %439, 0
  br i1 %440, label %441, label %442

441:                                              ; preds = %436
  br label %675

442:                                              ; preds = %436
  br label %443

443:                                              ; preds = %442, %424
  br label %444

444:                                              ; preds = %443, %405
  %445 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %446 = load i32, i32* @AGC2REF, align 4
  %447 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %445, i32 %446, i32 56)
  %448 = icmp slt i64 %447, 0
  br i1 %448, label %449, label %450

449:                                              ; preds = %444
  br label %675

450:                                              ; preds = %444
  %451 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %452 = load i32, i32* @SFRUP1, align 4
  %453 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %451, i32 %452, i32 128)
  %454 = icmp slt i64 %453, 0
  br i1 %454, label %455, label %456

455:                                              ; preds = %450
  br label %675

456:                                              ; preds = %450
  %457 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %458 = load i32, i32* @SFRLOW1, align 4
  %459 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %457, i32 %458, i32 128)
  %460 = icmp slt i64 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %456
  br label %675

462:                                              ; preds = %456
  %463 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %464 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %463, i32 0, i32 6
  %465 = load %struct.TYPE_4__*, %struct.TYPE_4__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 4
  %468 = icmp sge i32 %467, 32
  br i1 %468, label %477, label %469

469:                                              ; preds = %462
  %470 = load i32, i32* %13, align 4
  %471 = icmp eq i32 %470, 1
  br i1 %471, label %477, label %472

472:                                              ; preds = %469
  %473 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %474 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %473, i32 0, i32 4
  %475 = load i32, i32* %474, align 8
  %476 = icmp slt i32 %475, 10000000
  br i1 %476, label %477, label %644

477:                                              ; preds = %472, %469, %462
  %478 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %479 = load i32, i32* @CFRINIT1, align 4
  %480 = load i32, i32* %10, align 4
  %481 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %478, i32 %479, i32 %480)
  %482 = icmp slt i64 %481, 0
  br i1 %482, label %483, label %484

483:                                              ; preds = %477
  br label %675

484:                                              ; preds = %477
  %485 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %486 = load i32, i32* @CFRINIT0, align 4
  %487 = load i32, i32* %11, align 4
  %488 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %485, i32 %486, i32 %487)
  %489 = icmp slt i64 %488, 0
  br i1 %489, label %490, label %491

490:                                              ; preds = %484
  br label %675

491:                                              ; preds = %484
  %492 = load i32, i32* %7, align 4
  %493 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %494 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %493, i32 0, i32 2
  %495 = load i32, i32* %494, align 8
  %496 = call i64 @stv090x_car_width(i32 %492, i32 %495)
  %497 = add nsw i64 %496, 10000000
  %498 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %499 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %498, i32 0, i32 7
  store i64 %497, i64* %499, align 8
  %500 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %501 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %500, i32 0, i32 6
  %502 = load %struct.TYPE_4__*, %struct.TYPE_4__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 4
  %505 = icmp sge i32 %504, 32
  br i1 %505, label %509, label %506

506:                                              ; preds = %491
  %507 = load i32, i32* %13, align 4
  %508 = icmp eq i32 %507, 1
  br i1 %508, label %509, label %548

509:                                              ; preds = %506, %491
  %510 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %511 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %510, i32 0, i32 3
  %512 = load i64, i64* %511, align 8
  %513 = load i64, i64* @STV090x_WARM_SEARCH, align 8
  %514 = icmp ne i64 %512, %513
  br i1 %514, label %515, label %547

515:                                              ; preds = %509
  %516 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %517 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %516, i32 1)
  %518 = icmp slt i64 %517, 0
  br i1 %518, label %519, label %520

519:                                              ; preds = %515
  br label %675

520:                                              ; preds = %515
  %521 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %522 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %521, i32 0, i32 8
  %523 = load %struct.TYPE_3__*, %struct.TYPE_3__** %522, align 8
  %524 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %523, i32 0, i32 0
  %525 = load i64 (%struct.dvb_frontend*, i64)*, i64 (%struct.dvb_frontend*, i64)** %524, align 8
  %526 = icmp ne i64 (%struct.dvb_frontend*, i64)* %525, null
  br i1 %526, label %527, label %541

527:                                              ; preds = %520
  %528 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %529 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %528, i32 0, i32 8
  %530 = load %struct.TYPE_3__*, %struct.TYPE_3__** %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %530, i32 0, i32 0
  %532 = load i64 (%struct.dvb_frontend*, i64)*, i64 (%struct.dvb_frontend*, i64)** %531, align 8
  %533 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %534 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %535 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %534, i32 0, i32 7
  %536 = load i64, i64* %535, align 8
  %537 = call i64 %532(%struct.dvb_frontend* %533, i64 %536)
  %538 = icmp slt i64 %537, 0
  br i1 %538, label %539, label %540

539:                                              ; preds = %527
  br label %672

540:                                              ; preds = %527
  br label %541

541:                                              ; preds = %540, %520
  %542 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %543 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %542, i32 0)
  %544 = icmp slt i64 %543, 0
  br i1 %544, label %545, label %546

545:                                              ; preds = %541
  br label %675

546:                                              ; preds = %541
  br label %547

547:                                              ; preds = %546, %509
  br label %548

548:                                              ; preds = %547, %506
  %549 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %550 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %549, i32 0, i32 3
  %551 = load i64, i64* %550, align 8
  %552 = load i64, i64* @STV090x_BLIND_SEARCH, align 8
  %553 = icmp eq i64 %551, %552
  br i1 %553, label %559, label %554

554:                                              ; preds = %548
  %555 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %556 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %555, i32 0, i32 4
  %557 = load i32, i32* %556, align 8
  %558 = icmp slt i32 %557, 10000000
  br i1 %558, label %559, label %561

559:                                              ; preds = %554, %548
  %560 = call i32 @msleep(i32 50)
  br label %563

561:                                              ; preds = %554
  %562 = call i32 @msleep(i32 5)
  br label %563

563:                                              ; preds = %561, %559
  %564 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %565 = call i32 @stv090x_get_lock_tmg(%struct.stv090x_state* %564)
  %566 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %567 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %568 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %567, i32 0, i32 5
  %569 = load i32, i32* %568, align 4
  %570 = sdiv i32 %569, 2
  %571 = call i32 @stv090x_get_dmdlock(%struct.stv090x_state* %566, i32 %570)
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %643, label %573

573:                                              ; preds = %563
  %574 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %575 = load i32, i32* @DMDISTATE, align 4
  %576 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %574, i32 %575, i32 31)
  %577 = icmp slt i64 %576, 0
  br i1 %577, label %578, label %579

578:                                              ; preds = %573
  br label %675

579:                                              ; preds = %573
  %580 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %581 = load i32, i32* @CFRINIT1, align 4
  %582 = load i32, i32* %10, align 4
  %583 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %580, i32 %581, i32 %582)
  %584 = icmp slt i64 %583, 0
  br i1 %584, label %585, label %586

585:                                              ; preds = %579
  br label %675

586:                                              ; preds = %579
  %587 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %588 = load i32, i32* @CFRINIT0, align 4
  %589 = load i32, i32* %11, align 4
  %590 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %587, i32 %588, i32 %589)
  %591 = icmp slt i64 %590, 0
  br i1 %591, label %592, label %593

592:                                              ; preds = %586
  br label %675

593:                                              ; preds = %586
  %594 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %595 = load i32, i32* @DMDISTATE, align 4
  %596 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %594, i32 %595, i32 24)
  %597 = icmp slt i64 %596, 0
  br i1 %597, label %598, label %599

598:                                              ; preds = %593
  br label %675

599:                                              ; preds = %593
  store i32 0, i32* %12, align 4
  br label %600

600:                                              ; preds = %639, %599
  %601 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %602 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %603 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %602, i32 0, i32 5
  %604 = load i32, i32* %603, align 4
  %605 = sdiv i32 %604, 2
  %606 = call i32 @stv090x_get_dmdlock(%struct.stv090x_state* %601, i32 %605)
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %611, label %608

608:                                              ; preds = %600
  %609 = load i32, i32* %12, align 4
  %610 = icmp sle i32 %609, 2
  br label %611

611:                                              ; preds = %608, %600
  %612 = phi i1 [ false, %600 ], [ %610, %608 ]
  br i1 %612, label %613, label %642

613:                                              ; preds = %611
  %614 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %615 = load i32, i32* @DMDISTATE, align 4
  %616 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %614, i32 %615, i32 31)
  %617 = icmp slt i64 %616, 0
  br i1 %617, label %618, label %619

618:                                              ; preds = %613
  br label %675

619:                                              ; preds = %613
  %620 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %621 = load i32, i32* @CFRINIT1, align 4
  %622 = load i32, i32* %10, align 4
  %623 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %620, i32 %621, i32 %622)
  %624 = icmp slt i64 %623, 0
  br i1 %624, label %625, label %626

625:                                              ; preds = %619
  br label %675

626:                                              ; preds = %619
  %627 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %628 = load i32, i32* @CFRINIT0, align 4
  %629 = load i32, i32* %11, align 4
  %630 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %627, i32 %628, i32 %629)
  %631 = icmp slt i64 %630, 0
  br i1 %631, label %632, label %633

632:                                              ; preds = %626
  br label %675

633:                                              ; preds = %626
  %634 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %635 = load i32, i32* @DMDISTATE, align 4
  %636 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %634, i32 %635, i32 24)
  %637 = icmp slt i64 %636, 0
  br i1 %637, label %638, label %639

638:                                              ; preds = %633
  br label %675

639:                                              ; preds = %633
  %640 = load i32, i32* %12, align 4
  %641 = add nsw i32 %640, 1
  store i32 %641, i32* %12, align 4
  br label %600

642:                                              ; preds = %611
  br label %643

643:                                              ; preds = %642, %563
  br label %644

644:                                              ; preds = %643, %472
  %645 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %646 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %645, i32 0, i32 6
  %647 = load %struct.TYPE_4__*, %struct.TYPE_4__** %646, align 8
  %648 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %647, i32 0, i32 0
  %649 = load i32, i32* %648, align 4
  %650 = icmp sge i32 %649, 32
  br i1 %650, label %651, label %658

651:                                              ; preds = %644
  %652 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %653 = load i32, i32* @CARFREQ, align 4
  %654 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %652, i32 %653, i32 73)
  %655 = icmp slt i64 %654, 0
  br i1 %655, label %656, label %657

656:                                              ; preds = %651
  br label %675

657:                                              ; preds = %651
  br label %658

658:                                              ; preds = %657, %644
  %659 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %660 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %659, i32 0, i32 0
  %661 = load i32, i32* %660, align 8
  %662 = icmp eq i32 %661, 130
  br i1 %662, label %668, label %663

663:                                              ; preds = %658
  %664 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %665 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %664, i32 0, i32 0
  %666 = load i32, i32* %665, align 8
  %667 = icmp eq i32 %666, 131
  br i1 %667, label %668, label %671

668:                                              ; preds = %663, %658
  %669 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %670 = call i32 @stv090x_set_vit_thtracq(%struct.stv090x_state* %669)
  br label %671

671:                                              ; preds = %668, %663
  store i32 0, i32* %2, align 4
  br label %678

672:                                              ; preds = %539
  %673 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %674 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %673, i32 0)
  br label %675

675:                                              ; preds = %672, %656, %638, %632, %625, %618, %598, %592, %585, %578, %545, %519, %490, %483, %461, %455, %449, %441, %435, %403, %398, %392, %386, %348, %322, %315, %302, %295, %282, %275, %262, %244, %237, %230, %223, %201, %194, %155, %149, %143, %126, %118, %112, %105, %99, %87, %75, %55
  %676 = load i32, i32* @FE_ERROR, align 4
  %677 = call i32 @dprintk(i32 %676, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %678

678:                                              ; preds = %675, %671
  %679 = load i32, i32* %2, align 4
  ret i32 %679
}

declare dso_local i32 @stv090x_get_srate(%struct.stv090x_state*, i32) #1

declare dso_local i64 @stv090x_get_tmgoffst(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @stv090x_get_viterbi(%struct.stv090x_state*) #1

declare dso_local i32 @STV090x_GETFIELD_Px(i32, i32) #1

declare dso_local i32 @stv090x_optimize_carloop(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @stv090x_optimize_carloop_short(%struct.stv090x_state*) #1

declare dso_local i64 @stv090x_set_srate(%struct.stv090x_state*, i32) #1

declare dso_local i64 @stv090x_dvbs_track_crl(%struct.stv090x_state*) #1

declare dso_local i64 @stv090x_car_width(i32, i32) #1

declare dso_local i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @stv090x_get_lock_tmg(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_get_dmdlock(%struct.stv090x_state*, i32) #1

declare dso_local i32 @stv090x_set_vit_thtracq(%struct.stv090x_state*) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
