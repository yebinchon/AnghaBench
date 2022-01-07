; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_srate_srch_fine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_srate_srch_fine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@CFR2 = common dso_local global i32 0, align 4
@CFR1 = common dso_local global i32 0, align 4
@DMDISTATE = common dso_local global i32 0, align 4
@TMGCFG2 = common dso_local global i32 0, align 4
@TMGTHRISE = common dso_local global i32 0, align 4
@TMGTHFALL = common dso_local global i32 0, align 4
@TMGCFG = common dso_local global i32 0, align 4
@DMDCFGMD = common dso_local global i32 0, align 4
@CFR_AUTOSCAN_FIELD = common dso_local global i32 0, align 4
@AGC2REF = common dso_local global i32 0, align 4
@CARFREQ = common dso_local global i32 0, align 4
@SFRUP1 = common dso_local global i32 0, align 4
@SFRUP0 = common dso_local global i32 0, align 4
@SFRLOW1 = common dso_local global i32 0, align 4
@SFRLOW0 = common dso_local global i32 0, align 4
@SFRINIT1 = common dso_local global i32 0, align 4
@SFRINIT0 = common dso_local global i32 0, align 4
@DMDTOM = common dso_local global i32 0, align 4
@CFRINIT1 = common dso_local global i32 0, align 4
@CFRINIT0 = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_srate_srch_fine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_srate_srch_fine(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  %8 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %9 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %10 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @stv090x_get_srate(%struct.stv090x_state* %8, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %16 = load i32, i32* @CFR2, align 4
  %17 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %15, i32 %16)
  %18 = shl i32 %17, 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %20 = load i32, i32* @CFR1, align 4
  %21 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sdiv i32 %24, 10
  %26 = mul nsw i32 13, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %29 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %326

33:                                               ; preds = %1
  %34 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %35 = load i32, i32* @DMDISTATE, align 4
  %36 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %34, i32 %35, i32 31)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %328

39:                                               ; preds = %33
  %40 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %41 = load i32, i32* @TMGCFG2, align 4
  %42 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %40, i32 %41, i32 193)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %328

45:                                               ; preds = %39
  %46 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %47 = load i32, i32* @TMGTHRISE, align 4
  %48 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %46, i32 %47, i32 32)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %328

51:                                               ; preds = %45
  %52 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %53 = load i32, i32* @TMGTHFALL, align 4
  %54 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %52, i32 %53, i32 0)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %328

57:                                               ; preds = %51
  %58 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %59 = load i32, i32* @TMGCFG, align 4
  %60 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %58, i32 %59, i32 210)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %328

63:                                               ; preds = %57
  %64 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %65 = load i32, i32* @DMDCFGMD, align 4
  %66 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @CFR_AUTOSCAN_FIELD, align 4
  %69 = call i32 @STV090x_SETFIELD_Px(i32 %67, i32 %68, i32 0)
  %70 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %71 = load i32, i32* @DMDCFGMD, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %70, i32 %71, i32 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %328

76:                                               ; preds = %63
  %77 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %78 = load i32, i32* @AGC2REF, align 4
  %79 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %77, i32 %78, i32 56)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %328

82:                                               ; preds = %76
  %83 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %84 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp sge i32 %87, 48
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %91 = load i32, i32* @CARFREQ, align 4
  %92 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %90, i32 %91, i32 121)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %328

95:                                               ; preds = %89
  br label %111

96:                                               ; preds = %82
  %97 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %98 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp sge i32 %101, 32
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %105 = load i32, i32* @CARFREQ, align 4
  %106 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %104, i32 %105, i32 73)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %328

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109, %96
  br label %111

111:                                              ; preds = %110, %95
  %112 = load i32, i32* %4, align 4
  %113 = icmp sgt i32 %112, 3000000
  br i1 %113, label %114, label %205

114:                                              ; preds = %111
  %115 = load i32, i32* %4, align 4
  %116 = sdiv i32 %115, 10
  %117 = mul nsw i32 13, %116
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = sdiv i32 %118, 1000
  %120 = mul nsw i32 %119, 65536
  store i32 %120, i32* %6, align 4
  %121 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %122 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sdiv i32 %125, 1000
  %127 = load i32, i32* %6, align 4
  %128 = sdiv i32 %127, %126
  store i32 %128, i32* %6, align 4
  %129 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %130 = load i32, i32* @SFRUP1, align 4
  %131 = load i32, i32* %6, align 4
  %132 = ashr i32 %131, 8
  %133 = and i32 %132, 127
  %134 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %129, i32 %130, i32 %133)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %114
  br label %328

137:                                              ; preds = %114
  %138 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %139 = load i32, i32* @SFRUP0, align 4
  %140 = load i32, i32* %6, align 4
  %141 = and i32 %140, 255
  %142 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %138, i32 %139, i32 %141)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %328

145:                                              ; preds = %137
  %146 = load i32, i32* %4, align 4
  %147 = sdiv i32 %146, 13
  %148 = mul nsw i32 10, %147
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = sdiv i32 %149, 1000
  %151 = mul nsw i32 %150, 65536
  store i32 %151, i32* %6, align 4
  %152 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %153 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %152, i32 0, i32 1
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sdiv i32 %156, 1000
  %158 = load i32, i32* %6, align 4
  %159 = sdiv i32 %158, %157
  store i32 %159, i32* %6, align 4
  %160 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %161 = load i32, i32* @SFRLOW1, align 4
  %162 = load i32, i32* %6, align 4
  %163 = ashr i32 %162, 8
  %164 = and i32 %163, 127
  %165 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %160, i32 %161, i32 %164)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %145
  br label %328

168:                                              ; preds = %145
  %169 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %170 = load i32, i32* @SFRLOW0, align 4
  %171 = load i32, i32* %6, align 4
  %172 = and i32 %171, 255
  %173 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %169, i32 %170, i32 %172)
  %174 = icmp slt i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  br label %328

176:                                              ; preds = %168
  %177 = load i32, i32* %4, align 4
  %178 = sdiv i32 %177, 1000
  %179 = mul nsw i32 %178, 65536
  store i32 %179, i32* %6, align 4
  %180 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %181 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %180, i32 0, i32 1
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = sdiv i32 %184, 1000
  %186 = load i32, i32* %6, align 4
  %187 = sdiv i32 %186, %185
  store i32 %187, i32* %6, align 4
  %188 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %189 = load i32, i32* @SFRINIT1, align 4
  %190 = load i32, i32* %6, align 4
  %191 = ashr i32 %190, 8
  %192 = and i32 %191, 255
  %193 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %188, i32 %189, i32 %192)
  %194 = icmp slt i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %176
  br label %328

196:                                              ; preds = %176
  %197 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %198 = load i32, i32* @SFRINIT0, align 4
  %199 = load i32, i32* %6, align 4
  %200 = and i32 %199, 255
  %201 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %197, i32 %198, i32 %200)
  %202 = icmp slt i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %196
  br label %328

204:                                              ; preds = %196
  br label %296

205:                                              ; preds = %111
  %206 = load i32, i32* %4, align 4
  %207 = sdiv i32 %206, 10
  %208 = mul nsw i32 13, %207
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %6, align 4
  %210 = sdiv i32 %209, 100
  %211 = mul nsw i32 %210, 65536
  store i32 %211, i32* %6, align 4
  %212 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %213 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %212, i32 0, i32 1
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = sdiv i32 %216, 100
  %218 = load i32, i32* %6, align 4
  %219 = sdiv i32 %218, %217
  store i32 %219, i32* %6, align 4
  %220 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %221 = load i32, i32* @SFRUP1, align 4
  %222 = load i32, i32* %6, align 4
  %223 = ashr i32 %222, 8
  %224 = and i32 %223, 127
  %225 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %220, i32 %221, i32 %224)
  %226 = icmp slt i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %205
  br label %328

228:                                              ; preds = %205
  %229 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %230 = load i32, i32* @SFRUP0, align 4
  %231 = load i32, i32* %6, align 4
  %232 = and i32 %231, 255
  %233 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %229, i32 %230, i32 %232)
  %234 = icmp slt i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %228
  br label %328

236:                                              ; preds = %228
  %237 = load i32, i32* %4, align 4
  %238 = sdiv i32 %237, 14
  %239 = mul nsw i32 10, %238
  store i32 %239, i32* %6, align 4
  %240 = load i32, i32* %6, align 4
  %241 = sdiv i32 %240, 100
  %242 = mul nsw i32 %241, 65536
  store i32 %242, i32* %6, align 4
  %243 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %244 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %243, i32 0, i32 1
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = sdiv i32 %247, 100
  %249 = load i32, i32* %6, align 4
  %250 = sdiv i32 %249, %248
  store i32 %250, i32* %6, align 4
  %251 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %252 = load i32, i32* @SFRLOW1, align 4
  %253 = load i32, i32* %6, align 4
  %254 = ashr i32 %253, 8
  %255 = and i32 %254, 127
  %256 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %251, i32 %252, i32 %255)
  %257 = icmp slt i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %236
  br label %328

259:                                              ; preds = %236
  %260 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %261 = load i32, i32* @SFRLOW0, align 4
  %262 = load i32, i32* %6, align 4
  %263 = and i32 %262, 255
  %264 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %260, i32 %261, i32 %263)
  %265 = icmp slt i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %259
  br label %328

267:                                              ; preds = %259
  %268 = load i32, i32* %4, align 4
  %269 = sdiv i32 %268, 100
  %270 = mul nsw i32 %269, 65536
  store i32 %270, i32* %6, align 4
  %271 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %272 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %271, i32 0, i32 1
  %273 = load %struct.TYPE_2__*, %struct.TYPE_2__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = sdiv i32 %275, 100
  %277 = load i32, i32* %6, align 4
  %278 = sdiv i32 %277, %276
  store i32 %278, i32* %6, align 4
  %279 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %280 = load i32, i32* @SFRINIT1, align 4
  %281 = load i32, i32* %6, align 4
  %282 = ashr i32 %281, 8
  %283 = and i32 %282, 255
  %284 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %279, i32 %280, i32 %283)
  %285 = icmp slt i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %267
  br label %328

287:                                              ; preds = %267
  %288 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %289 = load i32, i32* @SFRINIT0, align 4
  %290 = load i32, i32* %6, align 4
  %291 = and i32 %290, 255
  %292 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %288, i32 %289, i32 %291)
  %293 = icmp slt i64 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %287
  br label %328

295:                                              ; preds = %287
  br label %296

296:                                              ; preds = %295, %204
  %297 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %298 = load i32, i32* @DMDTOM, align 4
  %299 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %297, i32 %298, i32 32)
  %300 = icmp slt i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %296
  br label %328

302:                                              ; preds = %296
  %303 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %304 = load i32, i32* @CFRINIT1, align 4
  %305 = load i32, i32* %5, align 4
  %306 = ashr i32 %305, 8
  %307 = and i32 %306, 255
  %308 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %303, i32 %304, i32 %307)
  %309 = icmp slt i64 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %302
  br label %328

311:                                              ; preds = %302
  %312 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %313 = load i32, i32* @CFRINIT0, align 4
  %314 = load i32, i32* %5, align 4
  %315 = and i32 %314, 255
  %316 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %312, i32 %313, i32 %315)
  %317 = icmp slt i64 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %311
  br label %328

319:                                              ; preds = %311
  %320 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %321 = load i32, i32* @DMDISTATE, align 4
  %322 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %320, i32 %321, i32 21)
  %323 = icmp slt i64 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %319
  br label %328

325:                                              ; preds = %319
  br label %326

326:                                              ; preds = %325, %32
  %327 = load i32, i32* %4, align 4
  store i32 %327, i32* %2, align 4
  br label %331

328:                                              ; preds = %324, %318, %310, %301, %294, %286, %266, %258, %235, %227, %203, %195, %175, %167, %144, %136, %108, %94, %81, %75, %62, %56, %50, %44, %38
  %329 = load i32, i32* @FE_ERROR, align 4
  %330 = call i32 @dprintk(i32 %329, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %331

331:                                              ; preds = %328, %326
  %332 = load i32, i32* %2, align 4
  ret i32 %332
}

declare dso_local i32 @stv090x_get_srate(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
