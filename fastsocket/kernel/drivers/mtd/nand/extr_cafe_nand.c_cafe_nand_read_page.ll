; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_cafe_nand.c_cafe_nand_read_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_cafe_nand.c_cafe_nand_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.TYPE_5__, i32, i32, %struct.cafe_priv* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.cafe_priv = type { %struct.TYPE_4__*, i64, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i16* }
%struct.nand_chip = type { i16*, i32 (%struct.mtd_info.0*, i16*, i32)* }
%struct.mtd_info.0 = type opaque

@.str = private unnamed_addr constant [29 x i8] c"ECC result %08x SYN1,2 %08x\0A\00", align 1
@NAND_ECC_RESULT = common dso_local global i64 0, align 8
@NAND_ECC_SYN01 = common dso_local global i64 0, align 8
@checkecc = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to correct ECC at %08x\0A\00", align 1
@NAND_ADDR2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Register %x: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Corrected %d symbol errors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i16*, i32)* @cafe_nand_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_nand_read_page(%struct.mtd_info* %0, %struct.nand_chip* %1, i16* %2, i32 %3) #0 {
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cafe_priv*, align 8
  %10 = alloca [8 x i16], align 16
  %11 = alloca [4 x i16], align 2
  %12 = alloca [4 x i32], align 16
  %13 = alloca i16*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %6, align 8
  store i16* %2, i16** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %19 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %18, i32 0, i32 3
  %20 = load %struct.cafe_priv*, %struct.cafe_priv** %19, align 8
  store %struct.cafe_priv* %20, %struct.cafe_priv** %9, align 8
  %21 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %22 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %26 = load i64, i64* @NAND_ECC_RESULT, align 8
  %27 = call i32 @cafe_readl(%struct.cafe_priv* %25, i64 %26)
  %28 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %29 = load i64, i64* @NAND_ECC_SYN01, align 8
  %30 = call i32 @cafe_readl(%struct.cafe_priv* %28, i64 %29)
  %31 = call i32 @cafe_dev_dbg(i32* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %33 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 1
  %34 = load i32 (%struct.mtd_info.0*, i16*, i32)*, i32 (%struct.mtd_info.0*, i16*, i32)** %33, align 8
  %35 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %36 = bitcast %struct.mtd_info* %35 to %struct.mtd_info.0*
  %37 = load i16*, i16** %7, align 8
  %38 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 %34(%struct.mtd_info.0* %36, i16* %37, i32 %40)
  %42 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %43 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %42, i32 0, i32 1
  %44 = load i32 (%struct.mtd_info.0*, i16*, i32)*, i32 (%struct.mtd_info.0*, i16*, i32)** %43, align 8
  %45 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %46 = bitcast %struct.mtd_info* %45 to %struct.mtd_info.0*
  %47 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %48 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %47, i32 0, i32 0
  %49 = load i16*, i16** %48, align 8
  %50 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %51 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %44(%struct.mtd_info.0* %46, i16* %49, i32 %52)
  %54 = load i64, i64* @checkecc, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %385

56:                                               ; preds = %4
  %57 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %58 = load i64, i64* @NAND_ECC_RESULT, align 8
  %59 = call i32 @cafe_readl(%struct.cafe_priv* %57, i64 %58)
  %60 = and i32 %59, 262144
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %385

62:                                               ; preds = %56
  %63 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %64 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %63, i32 0, i32 0
  %65 = load i16*, i16** %64, align 8
  store i16* %65, i16** %13, align 8
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %105, %62
  %67 = load i32, i32* %14, align 4
  %68 = icmp slt i32 %67, 8
  br i1 %68, label %69, label %108

69:                                               ; preds = %66
  %70 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %71 = load i64, i64* @NAND_ECC_SYN01, align 8
  %72 = load i32, i32* %14, align 4
  %73 = mul nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %71, %74
  %76 = call i32 @cafe_readl(%struct.cafe_priv* %70, i64 %75)
  store i32 %76, i32* %16, align 4
  %77 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %78 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i16*, i16** %80, align 8
  %82 = load i32, i32* %16, align 4
  %83 = and i32 %82, 4095
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i16, i16* %81, i64 %84
  %86 = load i16, i16* %85, align 2
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [8 x i16], [8 x i16]* %10, i64 0, i64 %88
  store i16 %86, i16* %89, align 2
  %90 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %91 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %90, i32 0, i32 2
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i16*, i16** %93, align 8
  %95 = load i32, i32* %16, align 4
  %96 = ashr i32 %95, 16
  %97 = and i32 %96, 4095
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i16, i16* %94, i64 %98
  %100 = load i16, i16* %99, align 2
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [8 x i16], [8 x i16]* %10, i64 0, i64 %103
  store i16 %100, i16* %104, align 2
  br label %105

105:                                              ; preds = %69
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 2
  store i32 %107, i32* %14, align 4
  br label %66

108:                                              ; preds = %66
  %109 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %110 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %109, i32 0, i32 2
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds [8 x i16], [8 x i16]* %10, i64 0, i64 0
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %114 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 0
  %115 = call i32 @decode_rs16(%struct.TYPE_6__* %111, i32* null, i32* null, i32 1367, i16* %112, i32 0, i32* %113, i32 0, i16* %114)
  store i32 %115, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %116

116:                                              ; preds = %333, %108
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %15, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %336

120:                                              ; preds = %116
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = icmp sgt i32 %125, 1374
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  store i32 -1374, i32* %15, align 4
  br label %332

128:                                              ; preds = %120
  %129 = load i32, i32* %17, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %152

131:                                              ; preds = %128
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 %133
  %135 = load i16, i16* %134, align 2
  %136 = zext i16 %135 to i32
  %137 = icmp sgt i32 %136, 255
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  store i32 -2048, i32* %15, align 4
  br label %151

139:                                              ; preds = %131
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 %141
  %143 = load i16, i16* %142, align 2
  %144 = zext i16 %143 to i32
  %145 = load i16*, i16** %7, align 8
  %146 = getelementptr inbounds i16, i16* %145, i64 0
  %147 = load i16, i16* %146, align 2
  %148 = zext i16 %147 to i32
  %149 = xor i32 %148, %144
  %150 = trunc i32 %149 to i16
  store i16 %150, i16* %146, align 2
  br label %151

151:                                              ; preds = %139, %138
  br label %331

152:                                              ; preds = %128
  %153 = load i32, i32* %17, align 4
  %154 = icmp eq i32 %153, 1365
  br i1 %154, label %155, label %180

155:                                              ; preds = %152
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 %157
  %159 = load i16, i16* %158, align 2
  %160 = zext i16 %159 to i32
  %161 = ashr i32 %160, 4
  %162 = load i16*, i16** %7, align 8
  %163 = getelementptr inbounds i16, i16* %162, i64 2047
  %164 = load i16, i16* %163, align 2
  %165 = zext i16 %164 to i32
  %166 = xor i32 %165, %161
  %167 = trunc i32 %166 to i16
  store i16 %167, i16* %163, align 2
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 %169
  %171 = load i16, i16* %170, align 2
  %172 = zext i16 %171 to i32
  %173 = shl i32 %172, 4
  %174 = load i16*, i16** %13, align 8
  %175 = getelementptr inbounds i16, i16* %174, i64 0
  %176 = load i16, i16* %175, align 2
  %177 = zext i16 %176 to i32
  %178 = xor i32 %177, %173
  %179 = trunc i32 %178 to i16
  store i16 %179, i16* %175, align 2
  br label %330

180:                                              ; preds = %152
  %181 = load i32, i32* %17, align 4
  %182 = icmp sgt i32 %181, 1365
  br i1 %182, label %183, label %257

183:                                              ; preds = %180
  %184 = load i32, i32* %17, align 4
  %185 = and i32 %184, 1
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %222

187:                                              ; preds = %183
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 %189
  %191 = load i16, i16* %190, align 2
  %192 = zext i16 %191 to i32
  %193 = ashr i32 %192, 4
  %194 = load i16*, i16** %13, align 8
  %195 = load i32, i32* %17, align 4
  %196 = mul nsw i32 3, %195
  %197 = sdiv i32 %196, 2
  %198 = sub nsw i32 %197, 2048
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i16, i16* %194, i64 %199
  %201 = load i16, i16* %200, align 2
  %202 = zext i16 %201 to i32
  %203 = xor i32 %202, %193
  %204 = trunc i32 %203 to i16
  store i16 %204, i16* %200, align 2
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 %206
  %208 = load i16, i16* %207, align 2
  %209 = zext i16 %208 to i32
  %210 = shl i32 %209, 4
  %211 = load i16*, i16** %13, align 8
  %212 = load i32, i32* %17, align 4
  %213 = mul nsw i32 3, %212
  %214 = sdiv i32 %213, 2
  %215 = sub nsw i32 %214, 2047
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i16, i16* %211, i64 %216
  %218 = load i16, i16* %217, align 2
  %219 = zext i16 %218 to i32
  %220 = xor i32 %219, %210
  %221 = trunc i32 %220 to i16
  store i16 %221, i16* %217, align 2
  br label %256

222:                                              ; preds = %183
  %223 = load i32, i32* %14, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 %224
  %226 = load i16, i16* %225, align 2
  %227 = zext i16 %226 to i32
  %228 = ashr i32 %227, 8
  %229 = load i16*, i16** %13, align 8
  %230 = load i32, i32* %17, align 4
  %231 = mul nsw i32 3, %230
  %232 = sdiv i32 %231, 2
  %233 = sub nsw i32 %232, 2049
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i16, i16* %229, i64 %234
  %236 = load i16, i16* %235, align 2
  %237 = zext i16 %236 to i32
  %238 = xor i32 %237, %228
  %239 = trunc i32 %238 to i16
  store i16 %239, i16* %235, align 2
  %240 = load i32, i32* %14, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 %241
  %243 = load i16, i16* %242, align 2
  %244 = zext i16 %243 to i32
  %245 = load i16*, i16** %13, align 8
  %246 = load i32, i32* %17, align 4
  %247 = mul nsw i32 3, %246
  %248 = sdiv i32 %247, 2
  %249 = sub nsw i32 %248, 2048
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i16, i16* %245, i64 %250
  %252 = load i16, i16* %251, align 2
  %253 = zext i16 %252 to i32
  %254 = xor i32 %253, %244
  %255 = trunc i32 %254 to i16
  store i16 %255, i16* %251, align 2
  br label %256

256:                                              ; preds = %222, %187
  br label %329

257:                                              ; preds = %180
  %258 = load i32, i32* %17, align 4
  %259 = and i32 %258, 1
  %260 = icmp eq i32 %259, 1
  br i1 %260, label %261, label %295

261:                                              ; preds = %257
  %262 = load i32, i32* %14, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 %263
  %265 = load i16, i16* %264, align 2
  %266 = zext i16 %265 to i32
  %267 = ashr i32 %266, 4
  %268 = load i16*, i16** %7, align 8
  %269 = load i32, i32* %17, align 4
  %270 = mul nsw i32 3, %269
  %271 = sdiv i32 %270, 2
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i16, i16* %268, i64 %272
  %274 = load i16, i16* %273, align 2
  %275 = zext i16 %274 to i32
  %276 = xor i32 %275, %267
  %277 = trunc i32 %276 to i16
  store i16 %277, i16* %273, align 2
  %278 = load i32, i32* %14, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 %279
  %281 = load i16, i16* %280, align 2
  %282 = zext i16 %281 to i32
  %283 = shl i32 %282, 4
  %284 = load i16*, i16** %7, align 8
  %285 = load i32, i32* %17, align 4
  %286 = mul nsw i32 3, %285
  %287 = sdiv i32 %286, 2
  %288 = add nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i16, i16* %284, i64 %289
  %291 = load i16, i16* %290, align 2
  %292 = zext i16 %291 to i32
  %293 = xor i32 %292, %283
  %294 = trunc i32 %293 to i16
  store i16 %294, i16* %290, align 2
  br label %328

295:                                              ; preds = %257
  %296 = load i32, i32* %14, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 %297
  %299 = load i16, i16* %298, align 2
  %300 = zext i16 %299 to i32
  %301 = ashr i32 %300, 8
  %302 = load i16*, i16** %7, align 8
  %303 = load i32, i32* %17, align 4
  %304 = mul nsw i32 3, %303
  %305 = sdiv i32 %304, 2
  %306 = sub nsw i32 %305, 1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i16, i16* %302, i64 %307
  %309 = load i16, i16* %308, align 2
  %310 = zext i16 %309 to i32
  %311 = xor i32 %310, %301
  %312 = trunc i32 %311 to i16
  store i16 %312, i16* %308, align 2
  %313 = load i32, i32* %14, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 %314
  %316 = load i16, i16* %315, align 2
  %317 = zext i16 %316 to i32
  %318 = load i16*, i16** %7, align 8
  %319 = load i32, i32* %17, align 4
  %320 = mul nsw i32 3, %319
  %321 = sdiv i32 %320, 2
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i16, i16* %318, i64 %322
  %324 = load i16, i16* %323, align 2
  %325 = zext i16 %324 to i32
  %326 = xor i32 %325, %317
  %327 = trunc i32 %326 to i16
  store i16 %327, i16* %323, align 2
  br label %328

328:                                              ; preds = %295, %261
  br label %329

329:                                              ; preds = %328, %256
  br label %330

330:                                              ; preds = %329, %155
  br label %331

331:                                              ; preds = %330, %151
  br label %332

332:                                              ; preds = %331, %127
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %14, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %14, align 4
  br label %116

336:                                              ; preds = %116
  %337 = load i32, i32* %15, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %371

339:                                              ; preds = %336
  %340 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %341 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %340, i32 0, i32 0
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 0
  %344 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %345 = load i64, i64* @NAND_ADDR2, align 8
  %346 = call i32 @cafe_readl(%struct.cafe_priv* %344, i64 %345)
  %347 = mul nsw i32 %346, 2048
  %348 = call i32 @dev_dbg(i32* %343, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %347)
  store i32 0, i32* %14, align 4
  br label %349

349:                                              ; preds = %362, %339
  %350 = load i32, i32* %14, align 4
  %351 = icmp slt i32 %350, 92
  br i1 %351, label %352, label %365

352:                                              ; preds = %349
  %353 = load i32, i32* %14, align 4
  %354 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %355 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = load i32, i32* %14, align 4
  %358 = sext i32 %357 to i64
  %359 = add nsw i64 %356, %358
  %360 = call i32 @readl(i64 %359)
  %361 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %353, i32 %360)
  br label %362

362:                                              ; preds = %352
  %363 = load i32, i32* %14, align 4
  %364 = add nsw i32 %363, 4
  store i32 %364, i32* %14, align 4
  br label %349

365:                                              ; preds = %349
  %366 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %367 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %368, align 4
  br label %384

371:                                              ; preds = %336
  %372 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %373 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %372, i32 0, i32 0
  %374 = load %struct.TYPE_4__*, %struct.TYPE_4__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 0
  %376 = load i32, i32* %15, align 4
  %377 = call i32 @dev_dbg(i32* %375, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %376)
  %378 = load i32, i32* %15, align 4
  %379 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %380 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = add nsw i32 %382, %378
  store i32 %383, i32* %381, align 8
  br label %384

384:                                              ; preds = %371, %365
  br label %385

385:                                              ; preds = %384, %56, %4
  ret i32 0
}

declare dso_local i32 @cafe_dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @cafe_readl(%struct.cafe_priv*, i64) #1

declare dso_local i32 @decode_rs16(%struct.TYPE_6__*, i32*, i32*, i32, i16*, i32, i32*, i32, i16*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
