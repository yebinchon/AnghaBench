; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_hfcmulti_leds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_hfcmulti_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc_multi = type { i32, i32, i32, i64, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.dchannel* }
%struct.dchannel = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@poll = common dso_local global i64 0, align 8
@ISDN_P_NT_E1 = common dso_local global i32 0, align 4
@R_GPIO_OUT1 = common dso_local global i32 0, align 4
@ISDN_P_NT_S0 = common dso_local global i32 0, align 4
@ISDN_P_TE_S0 = common dso_local global i32 0, align 4
@HFC_CHIP_B410P = common dso_local global i32 0, align 4
@R_GPIO_EN1 = common dso_local global i32 0, align 4
@R_BRG_PCM_CFG = common dso_local global i32 0, align 4
@V_PCM_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfc_multi*)* @hfcmulti_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfcmulti_leds(%struct.hfc_multi* %0) #0 {
  %2 = alloca %struct.hfc_multi*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dchannel*, align 8
  %10 = alloca [4 x i32], align 16
  store %struct.hfc_multi* %0, %struct.hfc_multi** %2, align 8
  %11 = load i64, i64* @poll, align 8
  %12 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %13 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %11
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 8
  %18 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %19 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 4096
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %24 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 4096
  store i32 %26, i32* %24, align 8
  %27 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %28 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %27, i32 0, i32 1
  store i32 -1342263298, i32* %28, align 4
  br label %29

29:                                               ; preds = %22, %1
  %30 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %31 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %563 [
    i32 1, label %33
    i32 2, label %114
    i32 3, label %311
    i32 8, label %447
  ]

33:                                               ; preds = %29
  %34 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %35 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %34, i32 0, i32 5
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %38 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 2
  br i1 %43, label %44, label %79

44:                                               ; preds = %33
  %45 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %46 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %45, i32 0, i32 5
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %49 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load %struct.dchannel*, %struct.dchannel** %52, align 8
  %54 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ISDN_P_NT_E1, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 1, i32* %61, align 16
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 1, i32* %62, align 4
  br label %76

63:                                               ; preds = %44
  %64 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %65 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = ashr i32 %66, 11
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 1, i32* %70, align 16
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 1, i32* %71, align 4
  br label %75

72:                                               ; preds = %63
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %73, align 16
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %75, %60
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 0, i32* %77, align 8
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 0, i32* %78, align 4
  br label %84

79:                                               ; preds = %33
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %80, align 16
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %81, align 4
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 0, i32* %82, align 8
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %79, %76
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %86 = load i32, i32* %85, align 16
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 2
  %90 = or i32 %86, %89
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %92 = load i32, i32* %91, align 8
  %93 = shl i32 %92, 1
  %94 = or i32 %90, %93
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 3
  %98 = or i32 %94, %97
  %99 = xor i32 %98, 15
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %102 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %100, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %84
  %106 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %107 = load i32, i32* @R_GPIO_OUT1, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @HFC_outb_nodebug(%struct.hfc_multi* %106, i32 %107, i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %112 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %105, %84
  br label %563

114:                                              ; preds = %29
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %190, %114
  %116 = load i32, i32* %5, align 4
  %117 = icmp slt i32 %116, 4
  br i1 %117, label %118, label %193

118:                                              ; preds = %115
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %119 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %120 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %119, i32 0, i32 5
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = shl i32 %122, 2
  %124 = or i32 %123, 2
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load %struct.dchannel*, %struct.dchannel** %127, align 8
  store %struct.dchannel* %128, %struct.dchannel** %9, align 8
  %129 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %130 = icmp ne %struct.dchannel* %129, null
  br i1 %130, label %131, label %145

131:                                              ; preds = %118
  %132 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %133 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %6, align 4
  %135 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %136 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ISDN_P_NT_S0, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %131
  store i32 3, i32* %7, align 4
  br label %144

143:                                              ; preds = %131
  store i32 7, i32* %7, align 4
  br label %144

144:                                              ; preds = %143, %142
  br label %145

145:                                              ; preds = %144, %118
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %185

148:                                              ; preds = %145
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %154
  store i32 1, i32* %155, align 4
  br label %184

156:                                              ; preds = %148
  %157 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %158 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @ISDN_P_TE_S0, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %166
  store i32 2, i32* %167, align 4
  br label %183

168:                                              ; preds = %156
  %169 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %170 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = ashr i32 %171, 11
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %176
  store i32 2, i32* %177, align 4
  br label %182

178:                                              ; preds = %168
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %180
  store i32 0, i32* %181, align 4
  br label %182

182:                                              ; preds = %178, %174
  br label %183

183:                                              ; preds = %182, %164
  br label %184

184:                                              ; preds = %183, %152
  br label %189

185:                                              ; preds = %145
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %187
  store i32 0, i32* %188, align 4
  br label %189

189:                                              ; preds = %185, %184
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %5, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %5, align 4
  br label %115

193:                                              ; preds = %115
  %194 = load i32, i32* @HFC_CHIP_B410P, align 4
  %195 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %196 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %195, i32 0, i32 6
  %197 = call i32 @test_bit(i32 %194, i32* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %246

199:                                              ; preds = %193
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %200

200:                                              ; preds = %229, %199
  %201 = load i32, i32* %5, align 4
  %202 = icmp slt i32 %201, 4
  br i1 %202, label %203, label %232

203:                                              ; preds = %200
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %215

209:                                              ; preds = %203
  %210 = load i32, i32* %5, align 4
  %211 = mul nsw i32 %210, 2
  %212 = shl i32 2, %211
  %213 = load i32, i32* %8, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %8, align 4
  br label %228

215:                                              ; preds = %203
  %216 = load i32, i32* %5, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 2
  br i1 %220, label %221, label %227

221:                                              ; preds = %215
  %222 = load i32, i32* %5, align 4
  %223 = mul nsw i32 %222, 2
  %224 = shl i32 1, %223
  %225 = load i32, i32* %8, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %8, align 4
  br label %227

227:                                              ; preds = %221, %215
  br label %228

228:                                              ; preds = %227, %209
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %5, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %5, align 4
  br label %200

232:                                              ; preds = %200
  %233 = load i32, i32* %8, align 4
  %234 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %235 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %233, %236
  br i1 %237, label %238, label %245

238:                                              ; preds = %232
  %239 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %240 = load i32, i32* %8, align 4
  %241 = call i32 @vpm_out(%struct.hfc_multi* %239, i32 0, i32 427, i32 %240)
  %242 = load i32, i32* %8, align 4
  %243 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %244 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %243, i32 0, i32 1
  store i32 %242, i32* %244, align 4
  br label %245

245:                                              ; preds = %238, %232
  br label %310

246:                                              ; preds = %193
  %247 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %248 = load i32, i32* %247, align 4
  %249 = icmp sgt i32 %248, 0
  %250 = zext i1 %249 to i32
  %251 = shl i32 %250, 0
  %252 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %253 = load i32, i32* %252, align 4
  %254 = icmp sgt i32 %253, 0
  %255 = zext i1 %254 to i32
  %256 = shl i32 %255, 1
  %257 = or i32 %251, %256
  %258 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %259 = load i32, i32* %258, align 16
  %260 = icmp sgt i32 %259, 0
  %261 = zext i1 %260 to i32
  %262 = shl i32 %261, 2
  %263 = or i32 %257, %262
  %264 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %265 = load i32, i32* %264, align 8
  %266 = icmp sgt i32 %265, 0
  %267 = zext i1 %266 to i32
  %268 = shl i32 %267, 3
  %269 = or i32 %263, %268
  %270 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %271 = load i32, i32* %270, align 4
  %272 = and i32 %271, 1
  %273 = shl i32 %272, 4
  %274 = or i32 %269, %273
  %275 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %276 = load i32, i32* %275, align 4
  %277 = and i32 %276, 1
  %278 = shl i32 %277, 5
  %279 = or i32 %274, %278
  %280 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %281 = load i32, i32* %280, align 16
  %282 = and i32 %281, 1
  %283 = shl i32 %282, 6
  %284 = or i32 %279, %283
  %285 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %286 = load i32, i32* %285, align 8
  %287 = and i32 %286, 1
  %288 = shl i32 %287, 7
  %289 = or i32 %284, %288
  store i32 %289, i32* %8, align 4
  %290 = load i32, i32* %8, align 4
  %291 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %292 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %290, %293
  br i1 %294, label %295, label %309

295:                                              ; preds = %246
  %296 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %297 = load i32, i32* @R_GPIO_EN1, align 4
  %298 = load i32, i32* %8, align 4
  %299 = and i32 %298, 15
  %300 = call i32 @HFC_outb_nodebug(%struct.hfc_multi* %296, i32 %297, i32 %299)
  %301 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %302 = load i32, i32* @R_GPIO_OUT1, align 4
  %303 = load i32, i32* %8, align 4
  %304 = ashr i32 %303, 4
  %305 = call i32 @HFC_outb_nodebug(%struct.hfc_multi* %301, i32 %302, i32 %304)
  %306 = load i32, i32* %8, align 4
  %307 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %308 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %307, i32 0, i32 1
  store i32 %306, i32* %308, align 4
  br label %309

309:                                              ; preds = %295, %246
  br label %310

310:                                              ; preds = %309, %245
  br label %563

311:                                              ; preds = %29
  store i32 0, i32* %5, align 4
  br label %312

312:                                              ; preds = %387, %311
  %313 = load i32, i32* %5, align 4
  %314 = icmp slt i32 %313, 2
  br i1 %314, label %315, label %390

315:                                              ; preds = %312
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %316 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %317 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %316, i32 0, i32 5
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %317, align 8
  %319 = load i32, i32* %5, align 4
  %320 = shl i32 %319, 2
  %321 = or i32 %320, 2
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 1
  %325 = load %struct.dchannel*, %struct.dchannel** %324, align 8
  store %struct.dchannel* %325, %struct.dchannel** %9, align 8
  %326 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %327 = icmp ne %struct.dchannel* %326, null
  br i1 %327, label %328, label %342

328:                                              ; preds = %315
  %329 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %330 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  store i32 %331, i32* %6, align 4
  %332 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %333 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @ISDN_P_NT_S0, align 4
  %338 = icmp eq i32 %336, %337
  br i1 %338, label %339, label %340

339:                                              ; preds = %328
  store i32 3, i32* %7, align 4
  br label %341

340:                                              ; preds = %328
  store i32 7, i32* %7, align 4
  br label %341

341:                                              ; preds = %340, %339
  br label %342

342:                                              ; preds = %341, %315
  %343 = load i32, i32* %6, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %382

345:                                              ; preds = %342
  %346 = load i32, i32* %6, align 4
  %347 = load i32, i32* %7, align 4
  %348 = icmp eq i32 %346, %347
  br i1 %348, label %349, label %353

349:                                              ; preds = %345
  %350 = load i32, i32* %5, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %351
  store i32 1, i32* %352, align 4
  br label %381

353:                                              ; preds = %345
  %354 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %355 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @ISDN_P_TE_S0, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %365

361:                                              ; preds = %353
  %362 = load i32, i32* %5, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %363
  store i32 2, i32* %364, align 4
  br label %380

365:                                              ; preds = %353
  %366 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %367 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = ashr i32 %368, 11
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %375

371:                                              ; preds = %365
  %372 = load i32, i32* %5, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %373
  store i32 2, i32* %374, align 4
  br label %379

375:                                              ; preds = %365
  %376 = load i32, i32* %5, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %377
  store i32 0, i32* %378, align 4
  br label %379

379:                                              ; preds = %375, %371
  br label %380

380:                                              ; preds = %379, %361
  br label %381

381:                                              ; preds = %380, %349
  br label %386

382:                                              ; preds = %342
  %383 = load i32, i32* %5, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %384
  store i32 0, i32* %385, align 4
  br label %386

386:                                              ; preds = %382, %381
  br label %387

387:                                              ; preds = %386
  %388 = load i32, i32* %5, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %5, align 4
  br label %312

390:                                              ; preds = %312
  %391 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %392 = load i32, i32* %391, align 16
  %393 = icmp sgt i32 %392, 0
  %394 = zext i1 %393 to i32
  %395 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %396 = load i32, i32* %395, align 4
  %397 = icmp sgt i32 %396, 0
  %398 = zext i1 %397 to i32
  %399 = shl i32 %398, 1
  %400 = or i32 %394, %399
  %401 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %402 = load i32, i32* %401, align 16
  %403 = and i32 %402, 1
  %404 = shl i32 %403, 2
  %405 = or i32 %400, %404
  %406 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %407 = load i32, i32* %406, align 4
  %408 = and i32 %407, 1
  %409 = shl i32 %408, 3
  %410 = or i32 %405, %409
  store i32 %410, i32* %8, align 4
  %411 = load i32, i32* %8, align 4
  %412 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %413 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = icmp ne i32 %411, %414
  br i1 %415, label %416, label %446

416:                                              ; preds = %390
  %417 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %418 = load i32, i32* @R_GPIO_EN1, align 4
  %419 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %420 = load i32, i32* %419, align 16
  %421 = icmp sgt i32 %420, 0
  %422 = zext i1 %421 to i32
  %423 = shl i32 %422, 2
  %424 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %425 = load i32, i32* %424, align 4
  %426 = icmp sgt i32 %425, 0
  %427 = zext i1 %426 to i32
  %428 = shl i32 %427, 3
  %429 = or i32 %423, %428
  %430 = call i32 @HFC_outb_nodebug(%struct.hfc_multi* %417, i32 %418, i32 %429)
  %431 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %432 = load i32, i32* @R_GPIO_OUT1, align 4
  %433 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %434 = load i32, i32* %433, align 16
  %435 = and i32 %434, 1
  %436 = shl i32 %435, 2
  %437 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %438 = load i32, i32* %437, align 4
  %439 = and i32 %438, 1
  %440 = shl i32 %439, 3
  %441 = or i32 %436, %440
  %442 = call i32 @HFC_outb_nodebug(%struct.hfc_multi* %431, i32 %432, i32 %441)
  %443 = load i32, i32* %8, align 4
  %444 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %445 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %444, i32 0, i32 1
  store i32 %443, i32* %445, align 4
  br label %446

446:                                              ; preds = %416, %390
  br label %563

447:                                              ; preds = %29
  store i64 0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  br label %448

448:                                              ; preds = %518, %447
  %449 = load i32, i32* %5, align 4
  %450 = icmp slt i32 %449, 8
  br i1 %450, label %451, label %521

451:                                              ; preds = %448
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %452 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %453 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %452, i32 0, i32 5
  %454 = load %struct.TYPE_6__*, %struct.TYPE_6__** %453, align 8
  %455 = load i32, i32* %5, align 4
  %456 = shl i32 %455, 2
  %457 = or i32 %456, 2
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %454, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %459, i32 0, i32 1
  %461 = load %struct.dchannel*, %struct.dchannel** %460, align 8
  store %struct.dchannel* %461, %struct.dchannel** %9, align 8
  %462 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %463 = icmp ne %struct.dchannel* %462, null
  br i1 %463, label %464, label %478

464:                                              ; preds = %451
  %465 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %466 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 4
  store i32 %467, i32* %6, align 4
  %468 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %469 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  %473 = load i32, i32* @ISDN_P_NT_S0, align 4
  %474 = icmp eq i32 %472, %473
  br i1 %474, label %475, label %476

475:                                              ; preds = %464
  store i32 3, i32* %7, align 4
  br label %477

476:                                              ; preds = %464
  store i32 7, i32* %7, align 4
  br label %477

477:                                              ; preds = %476, %475
  br label %478

478:                                              ; preds = %477, %451
  %479 = load i32, i32* %6, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %511

481:                                              ; preds = %478
  %482 = load i32, i32* %6, align 4
  %483 = load i32, i32* %7, align 4
  %484 = icmp eq i32 %482, %483
  br i1 %484, label %485, label %491

485:                                              ; preds = %481
  %486 = load i32, i32* %5, align 4
  %487 = shl i32 0, %486
  %488 = sext i32 %487 to i64
  %489 = load i64, i64* %3, align 8
  %490 = or i64 %489, %488
  store i64 %490, i64* %3, align 8
  br label %510

491:                                              ; preds = %481
  %492 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %493 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = ashr i32 %494, 11
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %503

497:                                              ; preds = %491
  %498 = load i32, i32* %5, align 4
  %499 = shl i32 0, %498
  %500 = sext i32 %499 to i64
  %501 = load i64, i64* %3, align 8
  %502 = or i64 %501, %500
  store i64 %502, i64* %3, align 8
  br label %509

503:                                              ; preds = %491
  %504 = load i32, i32* %5, align 4
  %505 = shl i32 1, %504
  %506 = sext i32 %505 to i64
  %507 = load i64, i64* %3, align 8
  %508 = or i64 %507, %506
  store i64 %508, i64* %3, align 8
  br label %509

509:                                              ; preds = %503, %497
  br label %510

510:                                              ; preds = %509, %485
  br label %517

511:                                              ; preds = %478
  %512 = load i32, i32* %5, align 4
  %513 = shl i32 1, %512
  %514 = sext i32 %513 to i64
  %515 = load i64, i64* %3, align 8
  %516 = or i64 %515, %514
  store i64 %516, i64* %3, align 8
  br label %517

517:                                              ; preds = %511, %510
  br label %518

518:                                              ; preds = %517
  %519 = load i32, i32* %5, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %5, align 4
  br label %448

521:                                              ; preds = %448
  %522 = load i64, i64* %3, align 8
  %523 = shl i64 %522, 24
  %524 = load i64, i64* %3, align 8
  %525 = shl i64 %524, 16
  %526 = or i64 %523, %525
  %527 = load i64, i64* %3, align 8
  %528 = shl i64 %527, 8
  %529 = or i64 %526, %528
  %530 = load i64, i64* %3, align 8
  %531 = or i64 %529, %530
  store i64 %531, i64* %4, align 8
  %532 = load i64, i64* %4, align 8
  %533 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %534 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %533, i32 0, i32 1
  %535 = load i32, i32* %534, align 4
  %536 = sext i32 %535 to i64
  %537 = icmp ne i64 %532, %536
  br i1 %537, label %538, label %562

538:                                              ; preds = %521
  %539 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %540 = load i32, i32* @R_BRG_PCM_CFG, align 4
  %541 = load i32, i32* @V_PCM_CLK, align 4
  %542 = or i32 1, %541
  %543 = call i32 @HFC_outb_nodebug(%struct.hfc_multi* %539, i32 %540, i32 %542)
  %544 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %545 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %544, i32 0, i32 4
  %546 = load i32, i32* %545, align 8
  %547 = add nsw i32 %546, 4
  %548 = call i32 @outw(i32 16384, i32 %547)
  %549 = load i64, i64* %4, align 8
  %550 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %551 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %550, i32 0, i32 4
  %552 = load i32, i32* %551, align 8
  %553 = call i32 @outl(i64 %549, i32 %552)
  %554 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %555 = load i32, i32* @R_BRG_PCM_CFG, align 4
  %556 = load i32, i32* @V_PCM_CLK, align 4
  %557 = call i32 @HFC_outb_nodebug(%struct.hfc_multi* %554, i32 %555, i32 %556)
  %558 = load i64, i64* %4, align 8
  %559 = trunc i64 %558 to i32
  %560 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %561 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %560, i32 0, i32 1
  store i32 %559, i32* %561, align 4
  br label %562

562:                                              ; preds = %538, %521
  br label %563

563:                                              ; preds = %29, %562, %446, %310, %113
  ret void
}

declare dso_local i32 @HFC_outb_nodebug(%struct.hfc_multi*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @vpm_out(%struct.hfc_multi*, i32, i32, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @outl(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
