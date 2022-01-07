; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw.c_dmacHw_setDataDescriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw.c_dmacHw_setDataDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__* }

@dmacHw_MAX_BLOCKSIZE = common dso_local global i32 0, align 4
@dmacHw_DESC_FREE = common dso_local global i32 0, align 4
@dmacHw_REG_CTL_SG_ENABLE = common dso_local global i32 0, align 4
@dmacHw_REG_CTL_DS_ENABLE = common dso_local global i32 0, align 4
@dmacHw_FREE_USER_MEMORY = common dso_local global i64 0, align 8
@dmacHw_REG_CTL_LLP_DST_EN = common dso_local global i32 0, align 4
@dmacHw_REG_CTL_LLP_SRC_EN = common dso_local global i32 0, align 4
@dmacHw_DST_TRANSACTION_WIDTH_8 = common dso_local global i32 0, align 4
@dmacHw_SRC_TRANSACTION_WIDTH_8 = common dso_local global i32 0, align 4
@dmacHw_FLOW_CONTROL_DMA = common dso_local global i64 0, align 8
@dmacHw_REG_CTL_INT_EN = common dso_local global i32 0, align 4
@dmacHw_REG_CTL_TTFC_PM_PERI = common dso_local global i32 0, align 4
@dmacHw_REG_CTL_TTFC_MP_PERI = common dso_local global i32 0, align 4
@dmacHw_REG_CTL_BLOCK_TS_MASK = common dso_local global i32 0, align 4
@dmacHw_DESC_INIT = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmacHw_setDataDescriptor(%struct.TYPE_11__* %0, i8* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call %struct.TYPE_10__* @dmacHw_GET_DESC_RING(i8* %26)
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %14, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %28 = load i32, i32* @dmacHw_MAX_BLOCKSIZE, align 4
  store i32 %28, i32* %24, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dmacHw_GetTrWidthInBytes(i32 %31)
  store i32 %32, i32* %22, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dmacHw_GetTrWidthInBytes(i32 %35)
  store i32 %36, i32* %23, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %5
  %40 = load i8*, i8** %10, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %11, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %39, %5
  store i32 -1, i32* %6, align 4
  br label %591

46:                                               ; preds = %42
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %23, align 4
  %51 = srem i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %22, align 4
  %58 = srem i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53, %46
  store i32 -2, i32* %6, align 4
  br label %591

61:                                               ; preds = %53
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %72, %61
  %66 = load i32, i32* %22, align 4
  %67 = call i32 @dmacHw_ADDRESS_MASK(i32 %66)
  %68 = load i8*, i8** %10, align 8
  %69 = ptrtoint i8* %68 to i32
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @dmacHw_GetNextTrWidth(i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @dmacHw_GetTrWidthInBytes(i32 %75)
  store i32 %76, i32* %22, align 4
  br label %65

77:                                               ; preds = %65
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %88, %77
  %82 = load i32, i32* %23, align 4
  %83 = call i32 @dmacHw_ADDRESS_MASK(i32 %82)
  %84 = load i8*, i8** %9, align 8
  %85 = ptrtoint i8* %84 to i32
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @dmacHw_GetNextTrWidth(i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @dmacHw_GetTrWidthInBytes(i32 %91)
  store i32 %92, i32* %23, align 4
  br label %81

93:                                               ; preds = %81
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %93
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %23, align 4
  %103 = sdiv i32 %101, %102
  %104 = load i32, i32* @dmacHw_MAX_BLOCKSIZE, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %98
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %23, align 4
  %111 = sdiv i32 %109, %110
  store i32 %111, i32* %24, align 4
  br label %112

112:                                              ; preds = %106, %98, %93
  %113 = load i64, i64* %11, align 8
  %114 = load i32, i32* %23, align 4
  %115 = sext i32 %114 to i64
  %116 = udiv i64 %113, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %112
  %121 = load i32, i32* %22, align 4
  %122 = load i32, i32* %23, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = load i64, i64* %11, align 8
  %126 = load i32, i32* %22, align 4
  %127 = sext i32 %126 to i64
  %128 = urem i64 %125, %127
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %19, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* %23, align 4
  %133 = sdiv i32 %131, %132
  %134 = sub nsw i32 %130, %133
  store i32 %134, i32* %17, align 4
  br label %141

135:                                              ; preds = %120, %112
  %136 = load i64, i64* %11, align 8
  %137 = load i32, i32* %23, align 4
  %138 = sext i32 %137 to i64
  %139 = urem i64 %136, %138
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %19, align 4
  br label %141

141:                                              ; preds = %135, %124
  %142 = load i32, i32* %19, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* %20, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %20, align 4
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* %17, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %147
  %151 = load i32, i32* %17, align 4
  %152 = sub nsw i32 %151, 1
  %153 = load i32, i32* %24, align 4
  %154 = sdiv i32 %152, %153
  %155 = add nsw i32 %154, 1
  %156 = load i32, i32* %20, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %20, align 4
  br label %158

158:                                              ; preds = %150, %147
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  store %struct.TYPE_9__* %161, %struct.TYPE_9__** %16, align 8
  store i32 0, i32* %21, align 4
  br label %162

162:                                              ; preds = %188, %158
  %163 = load i32, i32* %20, align 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp sle i32 %163, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  %169 = load i32, i32* %21, align 4
  %170 = load i32, i32* %20, align 4
  %171 = icmp slt i32 %169, %170
  br label %172

172:                                              ; preds = %168, %162
  %173 = phi i1 [ false, %162 ], [ %171, %168 ]
  br i1 %173, label %174, label %191

174:                                              ; preds = %172
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @dmacHw_DESC_FREE, align 4
  %180 = and i32 %178, %179
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  store i32 -3, i32* %6, align 4
  br label %591

183:                                              ; preds = %174
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %187, %struct.TYPE_9__** %16, align 8
  br label %188

188:                                              ; preds = %183
  %189 = load i32, i32* %21, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %21, align 4
  br label %162

191:                                              ; preds = %172
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  store %struct.TYPE_9__* %194, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %194, %struct.TYPE_9__** %15, align 8
  br label %195

195:                                              ; preds = %556, %191
  %196 = load i32, i32* %21, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %559

198:                                              ; preds = %195
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 1
  store i32 0, i32* %201, align 4
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %198
  %207 = load i32, i32* @dmacHw_REG_CTL_SG_ENABLE, align 4
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %207
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %206, %198
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %213
  %219 = load i32, i32* @dmacHw_REG_CTL_DS_ENABLE, align 4
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %219
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %218, %213
  %226 = load i8*, i8** %9, align 8
  %227 = ptrtoint i8* %226 to i32
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  %230 = load i8*, i8** %10, align 8
  %231 = ptrtoint i8* %230 to i32
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 4
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %236, align 8
  %238 = icmp eq %struct.TYPE_9__* %234, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %225
  %240 = load i64, i64* @dmacHw_FREE_USER_MEMORY, align 8
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 4
  store i64 %240, i64* %242, align 8
  br label %246

243:                                              ; preds = %225
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 4
  store i64 0, i64* %245, align 8
  br label %246

246:                                              ; preds = %243, %239
  %247 = load i32, i32* %17, align 4
  store i32 %247, i32* %18, align 4
  %248 = load i32, i32* %21, align 4
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %250, label %292

250:                                              ; preds = %246
  %251 = load i32, i32* @dmacHw_REG_CTL_LLP_DST_EN, align 4
  %252 = load i32, i32* @dmacHw_REG_CTL_LLP_SRC_EN, align 4
  %253 = or i32 %251, %252
  %254 = xor i32 %253, -1
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = and i32 %258, %254
  store i32 %259, i32* %257, align 4
  %260 = load i32, i32* %19, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %287

262:                                              ; preds = %250
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  switch i32 %265, label %286 [
    i32 129, label %266
    i32 130, label %278
    i32 131, label %281
    i32 128, label %285
  ]

266:                                              ; preds = %262
  %267 = load i32, i32* @dmacHw_DST_TRANSACTION_WIDTH_8, align 4
  store i32 %267, i32* %12, align 4
  %268 = load i32, i32* %19, align 4
  %269 = load i32, i32* %23, align 4
  %270 = sdiv i32 %268, %269
  %271 = load i32, i32* %19, align 4
  %272 = load i32, i32* %23, align 4
  %273 = srem i32 %271, %272
  %274 = icmp ne i32 %273, 0
  %275 = zext i1 %274 to i64
  %276 = select i1 %274, i32 1, i32 0
  %277 = add nsw i32 %270, %276
  store i32 %277, i32* %18, align 4
  br label %286

278:                                              ; preds = %262
  %279 = load i32, i32* @dmacHw_SRC_TRANSACTION_WIDTH_8, align 4
  store i32 %279, i32* %13, align 4
  %280 = load i32, i32* %19, align 4
  store i32 %280, i32* %18, align 4
  br label %286

281:                                              ; preds = %262
  %282 = load i32, i32* @dmacHw_SRC_TRANSACTION_WIDTH_8, align 4
  store i32 %282, i32* %13, align 4
  %283 = load i32, i32* @dmacHw_DST_TRANSACTION_WIDTH_8, align 4
  store i32 %283, i32* %12, align 4
  %284 = load i32, i32* %19, align 4
  store i32 %284, i32* %18, align 4
  br label %286

285:                                              ; preds = %262
  br label %286

286:                                              ; preds = %262, %285, %281, %278, %266
  br label %291

287:                                              ; preds = %250
  %288 = load i32, i32* %18, align 4
  %289 = load i32, i32* %17, align 4
  %290 = sub nsw i32 %289, %288
  store i32 %290, i32* %17, align 4
  br label %291

291:                                              ; preds = %287, %286
  br label %303

292:                                              ; preds = %246
  %293 = load i32, i32* %17, align 4
  %294 = load i32, i32* %24, align 4
  %295 = sdiv i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %292
  %298 = load i32, i32* %24, align 4
  store i32 %298, i32* %18, align 4
  br label %299

299:                                              ; preds = %297, %292
  %300 = load i32, i32* %18, align 4
  %301 = load i32, i32* %17, align 4
  %302 = sub nsw i32 %301, %300
  store i32 %302, i32* %17, align 4
  br label %303

303:                                              ; preds = %299, %291
  %304 = load i32, i32* %18, align 4
  %305 = icmp sgt i32 %304, 0
  %306 = zext i1 %305 to i32
  %307 = call i32 @dmacHw_ASSERT(i32 %306)
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 6
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @dmacHw_FLOW_CONTROL_DMA, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %352

313:                                              ; preds = %303
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 7
  %319 = load i32, i32* %318, align 8
  %320 = or i32 %316, %319
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 8
  %323 = load i32, i32* %322, align 4
  %324 = or i32 %320, %323
  %325 = load i32, i32* %13, align 4
  %326 = or i32 %324, %325
  %327 = load i32, i32* %12, align 4
  %328 = or i32 %326, %327
  %329 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 9
  %331 = load i32, i32* %330, align 8
  %332 = or i32 %328, %331
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 10
  %335 = load i32, i32* %334, align 4
  %336 = or i32 %332, %335
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 11
  %339 = load i32, i32* %338, align 8
  %340 = or i32 %336, %339
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 12
  %343 = load i32, i32* %342, align 4
  %344 = or i32 %340, %343
  %345 = load i32, i32* @dmacHw_REG_CTL_INT_EN, align 4
  %346 = or i32 %344, %345
  %347 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 3
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = or i32 %350, %346
  store i32 %351, i32* %349, align 4
  br label %399

352:                                              ; preds = %303
  store i32 0, i32* %25, align 4
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 5
  %355 = load i32, i32* %354, align 4
  switch i32 %355, label %360 [
    i32 129, label %356
    i32 130, label %358
  ]

356:                                              ; preds = %352
  %357 = load i32, i32* @dmacHw_REG_CTL_TTFC_PM_PERI, align 4
  store i32 %357, i32* %25, align 4
  br label %362

358:                                              ; preds = %352
  %359 = load i32, i32* @dmacHw_REG_CTL_TTFC_MP_PERI, align 4
  store i32 %359, i32* %25, align 4
  br label %362

360:                                              ; preds = %352
  %361 = call i32 @dmacHw_ASSERT(i32 0)
  br label %362

362:                                              ; preds = %360, %358, %356
  %363 = load i32, i32* %25, align 4
  %364 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 7
  %366 = load i32, i32* %365, align 8
  %367 = or i32 %363, %366
  %368 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 8
  %370 = load i32, i32* %369, align 4
  %371 = or i32 %367, %370
  %372 = load i32, i32* %13, align 4
  %373 = or i32 %371, %372
  %374 = load i32, i32* %12, align 4
  %375 = or i32 %373, %374
  %376 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 9
  %378 = load i32, i32* %377, align 8
  %379 = or i32 %375, %378
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 10
  %382 = load i32, i32* %381, align 4
  %383 = or i32 %379, %382
  %384 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 11
  %386 = load i32, i32* %385, align 8
  %387 = or i32 %383, %386
  %388 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %388, i32 0, i32 12
  %390 = load i32, i32* %389, align 4
  %391 = or i32 %387, %390
  %392 = load i32, i32* @dmacHw_REG_CTL_INT_EN, align 4
  %393 = or i32 %391, %392
  %394 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 3
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = or i32 %397, %393
  store i32 %398, i32* %396, align 4
  br label %399

399:                                              ; preds = %362, %313
  %400 = load i32, i32* %18, align 4
  %401 = load i32, i32* @dmacHw_REG_CTL_BLOCK_TS_MASK, align 4
  %402 = and i32 %400, %401
  %403 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 3
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 0
  store i32 %402, i32* %405, align 8
  %406 = load i32, i32* %21, align 4
  %407 = icmp sgt i32 %406, 1
  br i1 %407, label %408, label %551

408:                                              ; preds = %399
  %409 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %410 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %409, i32 0, i32 2
  %411 = load i64, i64* %410, align 8
  %412 = inttoptr i64 %411 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %412, %struct.TYPE_9__** %16, align 8
  %413 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %414 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %413, i32 0, i32 5
  %415 = load i32, i32* %414, align 4
  switch i32 %415, label %548 [
    i32 129, label %416
    i32 130, label %449
    i32 131, label %482
    i32 128, label %547
  ]

416:                                              ; preds = %408
  %417 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %418 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %417, i32 0, i32 3
  %419 = load i32, i32* %418, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %441

421:                                              ; preds = %416
  %422 = load i8*, i8** %10, align 8
  %423 = load i32, i32* %18, align 4
  %424 = load i32, i32* %23, align 4
  %425 = mul nsw i32 %423, %424
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i8, i8* %422, i64 %426
  %428 = load i32, i32* %18, align 4
  %429 = load i32, i32* %23, align 4
  %430 = mul nsw i32 %428, %429
  %431 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %432 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %431, i32 0, i32 3
  %433 = load i32, i32* %432, align 4
  %434 = sdiv i32 %430, %433
  %435 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %436 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %435, i32 0, i32 13
  %437 = load i32, i32* %436, align 8
  %438 = mul nsw i32 %434, %437
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i8, i8* %427, i64 %439
  store i8* %440, i8** %10, align 8
  br label %448

441:                                              ; preds = %416
  %442 = load i8*, i8** %10, align 8
  %443 = load i32, i32* %18, align 4
  %444 = load i32, i32* %23, align 4
  %445 = mul nsw i32 %443, %444
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i8, i8* %442, i64 %446
  store i8* %447, i8** %10, align 8
  br label %448

448:                                              ; preds = %441, %421
  br label %550

449:                                              ; preds = %408
  %450 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %451 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %450, i32 0, i32 2
  %452 = load i32, i32* %451, align 8
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %474

454:                                              ; preds = %449
  %455 = load i8*, i8** %10, align 8
  %456 = load i32, i32* %18, align 4
  %457 = load i32, i32* %23, align 4
  %458 = mul nsw i32 %456, %457
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i8, i8* %455, i64 %459
  %461 = load i32, i32* %18, align 4
  %462 = load i32, i32* %23, align 4
  %463 = mul nsw i32 %461, %462
  %464 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %465 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 8
  %467 = sdiv i32 %463, %466
  %468 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %469 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %468, i32 0, i32 14
  %470 = load i32, i32* %469, align 4
  %471 = mul nsw i32 %467, %470
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i8, i8* %460, i64 %472
  store i8* %473, i8** %9, align 8
  br label %481

474:                                              ; preds = %449
  %475 = load i8*, i8** %9, align 8
  %476 = load i32, i32* %18, align 4
  %477 = load i32, i32* %23, align 4
  %478 = mul nsw i32 %476, %477
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i8, i8* %475, i64 %479
  store i8* %480, i8** %9, align 8
  br label %481

481:                                              ; preds = %474, %454
  br label %550

482:                                              ; preds = %408
  %483 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %484 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %483, i32 0, i32 3
  %485 = load i32, i32* %484, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %507

487:                                              ; preds = %482
  %488 = load i8*, i8** %10, align 8
  %489 = load i32, i32* %18, align 4
  %490 = load i32, i32* %23, align 4
  %491 = mul nsw i32 %489, %490
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i8, i8* %488, i64 %492
  %494 = load i32, i32* %18, align 4
  %495 = load i32, i32* %23, align 4
  %496 = mul nsw i32 %494, %495
  %497 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %498 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %497, i32 0, i32 3
  %499 = load i32, i32* %498, align 4
  %500 = sdiv i32 %496, %499
  %501 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %502 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %501, i32 0, i32 13
  %503 = load i32, i32* %502, align 8
  %504 = mul nsw i32 %500, %503
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i8, i8* %493, i64 %505
  store i8* %506, i8** %10, align 8
  br label %514

507:                                              ; preds = %482
  %508 = load i8*, i8** %10, align 8
  %509 = load i32, i32* %18, align 4
  %510 = load i32, i32* %23, align 4
  %511 = mul nsw i32 %509, %510
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i8, i8* %508, i64 %512
  store i8* %513, i8** %10, align 8
  br label %514

514:                                              ; preds = %507, %487
  %515 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %516 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 8
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %539

519:                                              ; preds = %514
  %520 = load i8*, i8** %10, align 8
  %521 = load i32, i32* %18, align 4
  %522 = load i32, i32* %23, align 4
  %523 = mul nsw i32 %521, %522
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i8, i8* %520, i64 %524
  %526 = load i32, i32* %18, align 4
  %527 = load i32, i32* %23, align 4
  %528 = mul nsw i32 %526, %527
  %529 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %530 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %529, i32 0, i32 2
  %531 = load i32, i32* %530, align 8
  %532 = sdiv i32 %528, %531
  %533 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %534 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %533, i32 0, i32 14
  %535 = load i32, i32* %534, align 4
  %536 = mul nsw i32 %532, %535
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i8, i8* %525, i64 %537
  store i8* %538, i8** %9, align 8
  br label %546

539:                                              ; preds = %514
  %540 = load i8*, i8** %9, align 8
  %541 = load i32, i32* %18, align 4
  %542 = load i32, i32* %23, align 4
  %543 = mul nsw i32 %541, %542
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i8, i8* %540, i64 %544
  store i8* %545, i8** %9, align 8
  br label %546

546:                                              ; preds = %539, %519
  br label %550

547:                                              ; preds = %408
  br label %550

548:                                              ; preds = %408
  %549 = call i32 @dmacHw_ASSERT(i32 0)
  br label %550

550:                                              ; preds = %548, %547, %546, %481, %448
  br label %556

551:                                              ; preds = %399
  %552 = load i32, i32* %17, align 4
  %553 = icmp eq i32 %552, 0
  %554 = zext i1 %553 to i32
  %555 = call i32 @dmacHw_ASSERT(i32 %554)
  br label %556

556:                                              ; preds = %551, %550
  %557 = load i32, i32* %21, align 4
  %558 = add nsw i32 %557, -1
  store i32 %558, i32* %21, align 4
  br label %195

559:                                              ; preds = %195
  %560 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %561 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %560, i32 0, i32 4
  %562 = load %struct.TYPE_9__*, %struct.TYPE_9__** %561, align 8
  %563 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dmacHw_DESC_INIT, align 8
  %564 = icmp eq %struct.TYPE_9__* %562, %563
  br i1 %564, label %565, label %569

565:                                              ; preds = %559
  %566 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %567 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %568 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %567, i32 0, i32 4
  store %struct.TYPE_9__* %566, %struct.TYPE_9__** %568, align 8
  br label %569

569:                                              ; preds = %565, %559
  %570 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %571 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %572 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %571, i32 0, i32 3
  store %struct.TYPE_9__* %570, %struct.TYPE_9__** %572, align 8
  %573 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %574 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %573, i32 0, i32 2
  %575 = load i64, i64* %574, align 8
  %576 = inttoptr i64 %575 to %struct.TYPE_9__*
  %577 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %578 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %577, i32 0, i32 1
  store %struct.TYPE_9__* %576, %struct.TYPE_9__** %578, align 8
  %579 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %580 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %579, i32 0, i32 5
  %581 = load i32, i32* %580, align 4
  %582 = call i32 @dmacHw_DST_IS_MEMORY(i32 %581)
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %590, label %584

584:                                              ; preds = %569
  %585 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %586 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %585, i32 0, i32 1
  %587 = load %struct.TYPE_9__*, %struct.TYPE_9__** %586, align 8
  %588 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %589 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %588, i32 0, i32 2
  store %struct.TYPE_9__* %587, %struct.TYPE_9__** %589, align 8
  br label %590

590:                                              ; preds = %584, %569
  store i32 0, i32* %6, align 4
  br label %591

591:                                              ; preds = %590, %182, %60, %45
  %592 = load i32, i32* %6, align 4
  ret i32 %592
}

declare dso_local %struct.TYPE_10__* @dmacHw_GET_DESC_RING(i8*) #1

declare dso_local i32 @dmacHw_GetTrWidthInBytes(i32) #1

declare dso_local i32 @dmacHw_ADDRESS_MASK(i32) #1

declare dso_local i32 @dmacHw_GetNextTrWidth(i32) #1

declare dso_local i32 @dmacHw_ASSERT(i32) #1

declare dso_local i32 @dmacHw_DST_IS_MEMORY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
