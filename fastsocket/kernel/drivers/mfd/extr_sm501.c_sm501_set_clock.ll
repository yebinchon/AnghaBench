; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_set_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sm501_devdata = type { i32, i32, i32, i64 }
%struct.sm501_clock = type { i32, i32, i32, i32, i32, i32 }

@SM501_POWER_MODE_CONTROL = common dso_local global i64 0, align 8
@SM501_CURRENT_GATE = common dso_local global i64 0, align 8
@SM501_CURRENT_CLOCK = common dso_local global i64 0, align 8
@SM501_POWER_MODE_0_GATE = common dso_local global i64 0, align 8
@SM501_POWER_MODE_0_CLOCK = common dso_local global i64 0, align 8
@SM501_POWER_MODE_1_GATE = common dso_local global i64 0, align 8
@SM501_POWER_MODE_1_CLOCK = common dso_local global i64 0, align 8
@SM501_PROGRAMMABLE_PLL_CONTROL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"gate %08lx, clock %08lx, mode %08lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sm501_set_clock(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sm501_devdata*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.sm501_clock, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.sm501_devdata* @dev_get_drvdata(%struct.device* %16)
  store %struct.sm501_devdata* %17, %struct.sm501_devdata** %8, align 8
  %18 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %19 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SM501_POWER_MODE_CONTROL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @readl(i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %25 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SM501_CURRENT_GATE, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i64 @readl(i64 %28)
  store i64 %29, i64* %10, align 8
  %30 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %31 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SM501_CURRENT_CLOCK, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i64 @readl(i64 %34)
  store i64 %35, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %180 [
    i32 129, label %37
    i32 128, label %126
    i32 130, label %154
    i32 131, label %154
  ]

37:                                               ; preds = %3
  %38 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %39 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %40, 192
  br i1 %41, label %42, label %87

42:                                               ; preds = %37
  %43 = load i64, i64* %7, align 8
  %44 = mul i64 2, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @sm501_calc_pll(i32 %45, %struct.sm501_clock* %15, i32 5)
  %47 = sdiv i32 %46, 2
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %14, align 8
  %49 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 7
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %12, align 1
  %53 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %61

56:                                               ; preds = %42
  %57 = load i8, i8* %12, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %58, 8
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %12, align 1
  br label %71

61:                                               ; preds = %42
  %62 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 5
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i8, i8* %12, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %67, 16
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %12, align 1
  br label %70

70:                                               ; preds = %65, %61
  br label %71

71:                                               ; preds = %70, %56
  %72 = load i8, i8* %12, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %73, 64
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %12, align 1
  %76 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 15
  %79 = or i32 131072, %78
  %80 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 8
  %83 = or i32 %79, %82
  %84 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %83, %85
  store i32 %86, i32* %13, align 4
  br label %125

87:                                               ; preds = %37
  %88 = load i64, i64* %7, align 8
  %89 = mul i64 2, %88
  %90 = call i32 @sm501_select_clock(i64 %89, %struct.sm501_clock* %15, i32 5)
  %91 = sdiv i32 %90, 2
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %14, align 8
  %93 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 7
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %12, align 1
  %97 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %100, label %105

100:                                              ; preds = %87
  %101 = load i8, i8* %12, align 1
  %102 = zext i8 %101 to i32
  %103 = or i32 %102, 8
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %12, align 1
  br label %115

105:                                              ; preds = %87
  %106 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 5
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i8, i8* %12, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %111, 16
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %12, align 1
  br label %114

114:                                              ; preds = %109, %105
  br label %115

115:                                              ; preds = %114, %100
  %116 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 288000000
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load i8, i8* %12, align 1
  %121 = zext i8 %120 to i32
  %122 = or i32 %121, 32
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %12, align 1
  br label %124

124:                                              ; preds = %119, %115
  br label %125

125:                                              ; preds = %124, %71
  br label %181

126:                                              ; preds = %3
  %127 = load i64, i64* %7, align 8
  %128 = mul i64 2, %127
  %129 = call i32 @sm501_select_clock(i64 %128, %struct.sm501_clock* %15, i32 3)
  %130 = sdiv i32 %129, 2
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %14, align 8
  %132 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 7
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %12, align 1
  %136 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 3
  br i1 %138, label %139, label %144

139:                                              ; preds = %126
  %140 = load i8, i8* %12, align 1
  %141 = zext i8 %140 to i32
  %142 = or i32 %141, 8
  %143 = trunc i32 %142 to i8
  store i8 %143, i8* %12, align 1
  br label %144

144:                                              ; preds = %139, %126
  %145 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 288000000
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = load i8, i8* %12, align 1
  %150 = zext i8 %149 to i32
  %151 = or i32 %150, 16
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %12, align 1
  br label %153

153:                                              ; preds = %148, %144
  br label %181

154:                                              ; preds = %3, %3
  %155 = load i64, i64* %7, align 8
  %156 = call i32 @sm501_select_clock(i64 %155, %struct.sm501_clock* %15, i32 3)
  %157 = sext i32 %156 to i64
  store i64 %157, i64* %14, align 8
  %158 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 7
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %12, align 1
  %162 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 3
  br i1 %164, label %165, label %170

165:                                              ; preds = %154
  %166 = load i8, i8* %12, align 1
  %167 = zext i8 %166 to i32
  %168 = or i32 %167, 8
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %12, align 1
  br label %170

170:                                              ; preds = %165, %154
  %171 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 288000000
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load i8, i8* %12, align 1
  %176 = zext i8 %175 to i32
  %177 = or i32 %176, 16
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %12, align 1
  br label %179

179:                                              ; preds = %174, %170
  br label %181

180:                                              ; preds = %3
  store i64 0, i64* %4, align 8
  br label %294

181:                                              ; preds = %179, %153, %125
  %182 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %183 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %182, i32 0, i32 1
  %184 = call i32 @mutex_lock(i32* %183)
  %185 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %186 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @SM501_POWER_MODE_CONTROL, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i64 @readl(i64 %189)
  store i64 %190, i64* %9, align 8
  %191 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %192 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @SM501_CURRENT_GATE, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i64 @readl(i64 %195)
  store i64 %196, i64* %10, align 8
  %197 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %198 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @SM501_CURRENT_CLOCK, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i64 @readl(i64 %201)
  store i64 %202, i64* %11, align 8
  %203 = load i64, i64* %11, align 8
  %204 = load i32, i32* %6, align 4
  %205 = shl i32 255, %204
  %206 = xor i32 %205, -1
  %207 = sext i32 %206 to i64
  %208 = and i64 %203, %207
  store i64 %208, i64* %11, align 8
  %209 = load i8, i8* %12, align 1
  %210 = zext i8 %209 to i32
  %211 = load i32, i32* %6, align 4
  %212 = shl i32 %210, %211
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* %11, align 8
  %215 = or i64 %214, %213
  store i64 %215, i64* %11, align 8
  %216 = load i64, i64* %9, align 8
  %217 = and i64 %216, 3
  store i64 %217, i64* %9, align 8
  %218 = load i64, i64* %9, align 8
  switch i64 %218, label %253 [
    i64 1, label %219
    i64 2, label %236
    i64 0, label %236
  ]

219:                                              ; preds = %181
  %220 = load i64, i64* %10, align 8
  %221 = trunc i64 %220 to i32
  %222 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %223 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @SM501_POWER_MODE_0_GATE, align 8
  %226 = add nsw i64 %224, %225
  %227 = call i32 @writel(i32 %221, i64 %226)
  %228 = load i64, i64* %11, align 8
  %229 = trunc i64 %228 to i32
  %230 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %231 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @SM501_POWER_MODE_0_CLOCK, align 8
  %234 = add nsw i64 %232, %233
  %235 = call i32 @writel(i32 %229, i64 %234)
  store i64 0, i64* %9, align 8
  br label %257

236:                                              ; preds = %181, %181
  %237 = load i64, i64* %10, align 8
  %238 = trunc i64 %237 to i32
  %239 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %240 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @SM501_POWER_MODE_1_GATE, align 8
  %243 = add nsw i64 %241, %242
  %244 = call i32 @writel(i32 %238, i64 %243)
  %245 = load i64, i64* %11, align 8
  %246 = trunc i64 %245 to i32
  %247 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %248 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @SM501_POWER_MODE_1_CLOCK, align 8
  %251 = add nsw i64 %249, %250
  %252 = call i32 @writel(i32 %246, i64 %251)
  store i64 1, i64* %9, align 8
  br label %257

253:                                              ; preds = %181
  %254 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %255 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %254, i32 0, i32 1
  %256 = call i32 @mutex_unlock(i32* %255)
  store i64 -1, i64* %4, align 8
  br label %294

257:                                              ; preds = %236, %219
  %258 = load i64, i64* %9, align 8
  %259 = trunc i64 %258 to i32
  %260 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %261 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %260, i32 0, i32 3
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @SM501_POWER_MODE_CONTROL, align 8
  %264 = add nsw i64 %262, %263
  %265 = call i32 @writel(i32 %259, i64 %264)
  %266 = load i32, i32* %13, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %276

268:                                              ; preds = %257
  %269 = load i32, i32* %13, align 4
  %270 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %271 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @SM501_PROGRAMMABLE_PLL_CONTROL, align 8
  %274 = add nsw i64 %272, %273
  %275 = call i32 @writel(i32 %269, i64 %274)
  br label %276

276:                                              ; preds = %268, %257
  %277 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %278 = call i32 @sm501_sync_regs(%struct.sm501_devdata* %277)
  %279 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %280 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load i64, i64* %10, align 8
  %283 = load i64, i64* %11, align 8
  %284 = load i64, i64* %9, align 8
  %285 = call i32 @dev_dbg(i32 %281, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %282, i64 %283, i64 %284)
  %286 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %287 = call i32 @sm501_mdelay(%struct.sm501_devdata* %286, i32 16)
  %288 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %289 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %288, i32 0, i32 1
  %290 = call i32 @mutex_unlock(i32* %289)
  %291 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %292 = call i32 @sm501_dump_clk(%struct.sm501_devdata* %291)
  %293 = load i64, i64* %14, align 8
  store i64 %293, i64* %4, align 8
  br label %294

294:                                              ; preds = %276, %253, %180
  %295 = load i64, i64* %4, align 8
  ret i64 %295
}

declare dso_local %struct.sm501_devdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @sm501_calc_pll(i32, %struct.sm501_clock*, i32) #1

declare dso_local i32 @sm501_select_clock(i64, %struct.sm501_clock*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sm501_sync_regs(%struct.sm501_devdata*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @sm501_mdelay(%struct.sm501_devdata*, i32) #1

declare dso_local i32 @sm501_dump_clk(%struct.sm501_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
