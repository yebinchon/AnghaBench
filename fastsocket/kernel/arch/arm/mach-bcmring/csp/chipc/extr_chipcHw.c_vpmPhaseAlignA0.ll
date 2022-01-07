; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/chipc/extr_chipcHw.c_vpmPhaseAlignA0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/chipc/extr_chipcHw.c_vpmPhaseAlignA0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MAX_PHASE_ALIGN_ATTEMPTS = common dso_local global i32 0, align 4
@MAX_PHASE_ADJUST_COUNT = common dso_local global i32 0, align 4
@pChipcHw = common dso_local global %struct.TYPE_2__* null, align 8
@chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK = common dso_local global i32 0, align 4
@chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT = common dso_local global i32 0, align 4
@chipcHw_REG_PLL_CLOCK_PHASE_COMP = common dso_local global i32 0, align 4
@chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE = common dso_local global i32 0, align 4
@REG_LOCAL_IRQ_SAVE = common dso_local global i32 0, align 4
@REG_LOCAL_IRQ_RESTORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vpmPhaseAlignA0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpmPhaseAlignA0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %303, %0
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MAX_PHASE_ALIGN_ATTEMPTS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MAX_PHASE_ADJUST_COUNT, align 4
  %15 = icmp slt i32 %13, %14
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i1 [ false, %8 ], [ %15, %12 ]
  br i1 %17, label %18, label %306

18:                                               ; preds = %16
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %85, %18
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_COMP, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %4, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %40, %43
  %45 = call i32 @reg32_write(i32* %34, i32 %44)
  %46 = call i32 @udelay(i32 1)
  %47 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = xor i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_COMP, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %29
  %60 = load i32, i32* %2, align 4
  %61 = sub nsw i32 %60, 1
  %62 = and i32 63, %61
  store i32 %62, i32* %2, align 4
  br label %67

63:                                               ; preds = %29
  %64 = load i32, i32* %2, align 4
  %65 = add nsw i32 %64, 1
  %66 = and i32 63, %65
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_COMP, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_COMP, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76, %70
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @MAX_PHASE_ADJUST_COUNT, align 4
  %84 = icmp slt i32 %82, %83
  br label %85

85:                                               ; preds = %81, %76
  %86 = phi i1 [ false, %76 ], [ %84, %81 ]
  br i1 %86, label %29, label %87

87:                                               ; preds = %85
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @MAX_PHASE_ADJUST_COUNT, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 -1, i32* %1, align 4
  br label %334

92:                                               ; preds = %87
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %131, %92
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 5
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_COMP, align 4
  %99 = and i32 %97, %98
  %100 = icmp eq i32 %99, 0
  br label %101

101:                                              ; preds = %96, %93
  %102 = phi i1 [ false, %93 ], [ %100, %96 ]
  br i1 %102, label %103, label %134

103:                                              ; preds = %101
  %104 = load i32, i32* %2, align 4
  %105 = add nsw i32 %104, 1
  %106 = and i32 63, %105
  store i32 %106, i32* %2, align 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK, align 4
  %113 = xor i32 %112, -1
  %114 = and i32 %111, %113
  %115 = load i32, i32* %2, align 4
  %116 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT, align 4
  %117 = shl i32 %115, %116
  %118 = or i32 %114, %117
  %119 = call i32 @reg32_write(i32* %108, i32 %118)
  %120 = call i32 @udelay(i32 1)
  %121 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE, align 4
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = xor i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %103
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  br label %93

134:                                              ; preds = %101
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @MAX_PHASE_ADJUST_COUNT, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i32 -1, i32* %1, align 4
  br label %334

139:                                              ; preds = %134
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 5
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  br label %303

143:                                              ; preds = %139
  store i32 0, i32* %7, align 4
  br label %144

144:                                              ; preds = %182, %143
  %145 = load i32, i32* %7, align 4
  %146 = icmp slt i32 %145, 3
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_COMP, align 4
  %150 = and i32 %148, %149
  %151 = icmp eq i32 %150, 0
  br label %152

152:                                              ; preds = %147, %144
  %153 = phi i1 [ false, %144 ], [ %151, %147 ]
  br i1 %153, label %154, label %185

154:                                              ; preds = %152
  %155 = load i32, i32* %2, align 4
  %156 = sub nsw i32 %155, 1
  %157 = and i32 63, %156
  store i32 %157, i32* %2, align 4
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK, align 4
  %164 = xor i32 %163, -1
  %165 = and i32 %162, %164
  %166 = load i32, i32* %2, align 4
  %167 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT, align 4
  %168 = shl i32 %166, %167
  %169 = or i32 %165, %168
  %170 = call i32 @reg32_write(i32* %159, i32 %169)
  %171 = call i32 @udelay(i32 1)
  %172 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE, align 4
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = xor i32 %175, %172
  store i32 %176, i32* %174, align 4
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %3, align 4
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %154
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %144

185:                                              ; preds = %152
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @MAX_PHASE_ADJUST_COUNT, align 4
  %188 = icmp sge i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  store i32 -1, i32* %1, align 4
  br label %334

190:                                              ; preds = %185
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 3
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  br label %303

194:                                              ; preds = %190
  store i32 0, i32* %7, align 4
  br label %195

195:                                              ; preds = %226, %194
  %196 = load i32, i32* %7, align 4
  %197 = icmp slt i32 %196, 5
  br i1 %197, label %198, label %229

198:                                              ; preds = %195
  %199 = load i32, i32* %2, align 4
  %200 = sub nsw i32 %199, 1
  %201 = and i32 63, %200
  store i32 %201, i32* %2, align 4
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK, align 4
  %208 = xor i32 %207, -1
  %209 = and i32 %206, %208
  %210 = load i32, i32* %2, align 4
  %211 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT, align 4
  %212 = shl i32 %210, %211
  %213 = or i32 %209, %212
  %214 = call i32 @reg32_write(i32* %203, i32 %213)
  %215 = call i32 @udelay(i32 1)
  %216 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE, align 4
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = xor i32 %219, %216
  store i32 %220, i32* %218, align 4
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %3, align 4
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %6, align 4
  br label %226

226:                                              ; preds = %198
  %227 = load i32, i32* %7, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %7, align 4
  br label %195

229:                                              ; preds = %195
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* @MAX_PHASE_ADJUST_COUNT, align 4
  %232 = icmp sge i32 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %229
  store i32 -1, i32* %1, align 4
  br label %334

234:                                              ; preds = %229
  %235 = load i32, i32* %3, align 4
  %236 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_COMP, align 4
  %237 = and i32 %235, %236
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  br label %303

240:                                              ; preds = %234
  br label %241

241:                                              ; preds = %295, %240
  %242 = load i32, i32* %3, align 4
  store i32 %242, i32* %4, align 4
  %243 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK, align 4
  %249 = xor i32 %248, -1
  %250 = and i32 %247, %249
  %251 = load i32, i32* %2, align 4
  %252 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT, align 4
  %253 = shl i32 %251, %252
  %254 = or i32 %250, %253
  %255 = call i32 @reg32_write(i32* %244, i32 %254)
  %256 = call i32 @udelay(i32 1)
  %257 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE, align 4
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = xor i32 %260, %257
  store i32 %261, i32* %259, align 4
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  store i32 %264, i32* %3, align 4
  %265 = load i32, i32* %3, align 4
  %266 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_COMP, align 4
  %267 = and i32 %265, %266
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %241
  %270 = load i32, i32* %2, align 4
  %271 = sub nsw i32 %270, 1
  %272 = and i32 63, %271
  store i32 %272, i32* %2, align 4
  br label %277

273:                                              ; preds = %241
  %274 = load i32, i32* %2, align 4
  %275 = add nsw i32 %274, 1
  %276 = and i32 63, %275
  store i32 %276, i32* %2, align 4
  br label %277

277:                                              ; preds = %273, %269
  %278 = load i32, i32* %6, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %6, align 4
  br label %280

280:                                              ; preds = %277
  %281 = load i32, i32* %4, align 4
  %282 = load i32, i32* %3, align 4
  %283 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_COMP, align 4
  %284 = and i32 %282, %283
  %285 = icmp eq i32 %281, %284
  br i1 %285, label %291, label %286

286:                                              ; preds = %280
  %287 = load i32, i32* %3, align 4
  %288 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_COMP, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %286, %280
  %292 = load i32, i32* %6, align 4
  %293 = load i32, i32* @MAX_PHASE_ADJUST_COUNT, align 4
  %294 = icmp slt i32 %292, %293
  br label %295

295:                                              ; preds = %291, %286
  %296 = phi i1 [ false, %286 ], [ %294, %291 ]
  br i1 %296, label %241, label %297

297:                                              ; preds = %295
  %298 = load i32, i32* %6, align 4
  %299 = load i32, i32* @MAX_PHASE_ADJUST_COUNT, align 4
  %300 = icmp sge i32 %298, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %297
  store i32 -1, i32* %1, align 4
  br label %334

302:                                              ; preds = %297
  br label %306

303:                                              ; preds = %239, %193, %142
  %304 = load i32, i32* %5, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %5, align 4
  br label %8

306:                                              ; preds = %302, %16
  %307 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT, align 4
  %311 = ashr i32 %309, %310
  %312 = sub nsw i32 %311, 1
  %313 = and i32 %312, 63
  store i32 %313, i32* %2, align 4
  %314 = load i32, i32* @REG_LOCAL_IRQ_SAVE, align 4
  %315 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK, align 4
  %319 = xor i32 %318, -1
  %320 = and i32 %317, %319
  %321 = load i32, i32* %2, align 4
  %322 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT, align 4
  %323 = shl i32 %321, %322
  %324 = or i32 %320, %323
  %325 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %326 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i32 0, i32 0
  store i32 %324, i32* %326, align 4
  %327 = load i32, i32* @chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE, align 4
  %328 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pChipcHw, align 8
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = xor i32 %330, %327
  store i32 %331, i32* %329, align 4
  %332 = load i32, i32* @REG_LOCAL_IRQ_RESTORE, align 4
  %333 = load i32, i32* %6, align 4
  store i32 %333, i32* %1, align 4
  br label %334

334:                                              ; preds = %306, %301, %233, %189, %138, %91
  %335 = load i32, i32* %1, align 4
  ret i32 %335
}

declare dso_local i32 @reg32_write(i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
