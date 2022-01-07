; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_read_subpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_read_subpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.nand_chip = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__, i32*, i32 (%struct.mtd_info.2*, i32*, i32)*, i32 (%struct.mtd_info.3*, i32, i32, i32)* }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32 (%struct.mtd_info.0*, i32*, i32*, i32*)*, i32 (%struct.mtd_info.1*, i32*, i32*)*, %struct.TYPE_5__* }
%struct.mtd_info.0 = type opaque
%struct.mtd_info.1 = type opaque
%struct.TYPE_5__ = type { i32* }
%struct.mtd_info.2 = type opaque
%struct.mtd_info.3 = type opaque

@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@NAND_CMD_RNDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32, i32, i32*)* @nand_read_subpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_read_subpage(%struct.mtd_info* %0, %struct.nand_chip* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %25 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %14, align 8
  store i32 0, i32* %18, align 4
  %31 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 2, i32 1
  store i32 %38, i32* %23, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %41 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sdiv i32 %39, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %45, %46
  %48 = sub nsw i32 %47, 1
  %49 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %50 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sdiv i32 %48, %52
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = sub nsw i32 %54, %55
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %60 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %58, %62
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %66 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %64, %68
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %72 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %70, %74
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %5
  %79 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %80 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %79, i32 0, i32 5
  %81 = load i32 (%struct.mtd_info.3*, i32, i32, i32)*, i32 (%struct.mtd_info.3*, i32, i32, i32)** %80, align 8
  %82 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %83 = bitcast %struct.mtd_info* %82 to %struct.mtd_info.3*
  %84 = load i32, i32* @NAND_CMD_RNDOUT, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i32 %81(%struct.mtd_info.3* %83, i32 %84, i32 %85, i32 -1)
  br label %87

87:                                               ; preds = %78, %5
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32* %91, i32** %15, align 8
  %92 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %93 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %92, i32 0, i32 4
  %94 = load i32 (%struct.mtd_info.2*, i32*, i32)*, i32 (%struct.mtd_info.2*, i32*, i32)** %93, align 8
  %95 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %96 = bitcast %struct.mtd_info* %95 to %struct.mtd_info.2*
  %97 = load i32*, i32** %15, align 8
  %98 = load i32, i32* %19, align 4
  %99 = call i32 %94(%struct.mtd_info.2* %96, i32* %97, i32 %98)
  store i32 0, i32* %17, align 4
  br label %100

100:                                              ; preds = %121, %87
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %20, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %135

104:                                              ; preds = %100
  %105 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %106 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = load i32 (%struct.mtd_info.1*, i32*, i32*)*, i32 (%struct.mtd_info.1*, i32*, i32*)** %107, align 8
  %109 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %110 = bitcast %struct.mtd_info* %109 to %struct.mtd_info.1*
  %111 = load i32*, i32** %15, align 8
  %112 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %113 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = call i32 %108(%struct.mtd_info.1* %110, i32* %111, i32* %119)
  br label %121

121:                                              ; preds = %104
  %122 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %123 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %17, align 4
  %128 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %129 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %15, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %15, align 8
  br label %100

135:                                              ; preds = %100
  store i32 0, i32* %17, align 4
  br label %136

136:                                              ; preds = %171, %135
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %20, align 4
  %139 = sub nsw i32 %138, 1
  %140 = icmp slt i32 %137, %139
  br i1 %140, label %141, label %174

141:                                              ; preds = %136
  %142 = load i32*, i32** %14, align 8
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %146 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %144, %148
  %150 = add nsw i32 %143, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %142, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  %155 = load i32*, i32** %14, align 8
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %159 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %157, %161
  %163 = add nsw i32 %156, %162
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %155, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %154, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %141
  store i32 1, i32* %18, align 4
  br label %174

170:                                              ; preds = %141
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %17, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %17, align 4
  br label %136

174:                                              ; preds = %169, %136
  %175 = load i32, i32* %18, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %200

177:                                              ; preds = %174
  %178 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %179 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %178, i32 0, i32 5
  %180 = load i32 (%struct.mtd_info.3*, i32, i32, i32)*, i32 (%struct.mtd_info.3*, i32, i32, i32)** %179, align 8
  %181 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %182 = bitcast %struct.mtd_info* %181 to %struct.mtd_info.3*
  %183 = load i32, i32* @NAND_CMD_RNDOUT, align 4
  %184 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %185 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 %180(%struct.mtd_info.3* %182, i32 %183, i32 %186, i32 -1)
  %188 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %189 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %188, i32 0, i32 4
  %190 = load i32 (%struct.mtd_info.2*, i32*, i32)*, i32 (%struct.mtd_info.2*, i32*, i32)** %189, align 8
  %191 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %192 = bitcast %struct.mtd_info* %191 to %struct.mtd_info.2*
  %193 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %194 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %197 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 %190(%struct.mtd_info.2* %192, i32* %195, i32 %198)
  br label %279

200:                                              ; preds = %174
  %201 = load i32*, i32** %14, align 8
  %202 = load i32, i32* %11, align 4
  %203 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %204 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %202, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %201, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %23, align 4
  %212 = sub nsw i32 %211, 1
  %213 = xor i32 %212, -1
  %214 = and i32 %210, %213
  store i32 %214, i32* %22, align 4
  %215 = load i32, i32* %20, align 4
  store i32 %215, i32* %21, align 4
  %216 = load i32*, i32** %14, align 8
  %217 = load i32, i32* %11, align 4
  %218 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %219 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = mul nsw i32 %217, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %216, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %23, align 4
  %227 = sub nsw i32 %226, 1
  %228 = and i32 %225, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %200
  %231 = load i32, i32* %21, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %21, align 4
  br label %233

233:                                              ; preds = %230, %200
  %234 = load i32*, i32** %14, align 8
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* %13, align 4
  %237 = add nsw i32 %235, %236
  %238 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %239 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = mul nsw i32 %237, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %234, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %23, align 4
  %247 = sub nsw i32 %246, 1
  %248 = and i32 %245, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %233
  %251 = load i32, i32* %21, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %21, align 4
  br label %253

253:                                              ; preds = %250, %233
  %254 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %255 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %254, i32 0, i32 5
  %256 = load i32 (%struct.mtd_info.3*, i32, i32, i32)*, i32 (%struct.mtd_info.3*, i32, i32, i32)** %255, align 8
  %257 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %258 = bitcast %struct.mtd_info* %257 to %struct.mtd_info.3*
  %259 = load i32, i32* @NAND_CMD_RNDOUT, align 4
  %260 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %261 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %22, align 4
  %264 = add nsw i32 %262, %263
  %265 = call i32 %256(%struct.mtd_info.3* %258, i32 %259, i32 %264, i32 -1)
  %266 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %267 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %266, i32 0, i32 4
  %268 = load i32 (%struct.mtd_info.2*, i32*, i32)*, i32 (%struct.mtd_info.2*, i32*, i32)** %267, align 8
  %269 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %270 = bitcast %struct.mtd_info* %269 to %struct.mtd_info.2*
  %271 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %272 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %271, i32 0, i32 3
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %22, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %21, align 4
  %278 = call i32 %268(%struct.mtd_info.2* %270, i32* %276, i32 %277)
  br label %279

279:                                              ; preds = %253, %177
  store i32 0, i32* %17, align 4
  br label %280

280:                                              ; preds = %311, %279
  %281 = load i32, i32* %17, align 4
  %282 = load i32, i32* %20, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %314

284:                                              ; preds = %280
  %285 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %286 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %285, i32 0, i32 3
  %287 = load i32*, i32** %286, align 8
  %288 = load i32*, i32** %14, align 8
  %289 = load i32, i32* %17, align 4
  %290 = load i32, i32* %11, align 4
  %291 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %292 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = mul nsw i32 %290, %294
  %296 = add nsw i32 %289, %295
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %288, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %287, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %304 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %303, i32 0, i32 1
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %17, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  store i32 %302, i32* %310, align 4
  br label %311

311:                                              ; preds = %284
  %312 = load i32, i32* %17, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %17, align 4
  br label %280

314:                                              ; preds = %280
  %315 = load i32*, i32** %10, align 8
  %316 = load i32, i32* %16, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  store i32* %318, i32** %15, align 8
  store i32 0, i32* %17, align 4
  br label %319

319:                                              ; preds = %364, %314
  %320 = load i32, i32* %17, align 4
  %321 = load i32, i32* %20, align 4
  %322 = icmp slt i32 %320, %321
  br i1 %322, label %323, label %378

323:                                              ; preds = %319
  %324 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %325 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %324, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 2
  %327 = load i32 (%struct.mtd_info.0*, i32*, i32*, i32*)*, i32 (%struct.mtd_info.0*, i32*, i32*, i32*)** %326, align 8
  %328 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %329 = bitcast %struct.mtd_info* %328 to %struct.mtd_info.0*
  %330 = load i32*, i32** %15, align 8
  %331 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %332 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %331, i32 0, i32 1
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 1
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %17, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %340 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %339, i32 0, i32 1
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %17, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = call i32 %327(%struct.mtd_info.0* %329, i32* %330, i32* %338, i32* %346)
  store i32 %347, i32* %24, align 4
  %348 = load i32, i32* %24, align 4
  %349 = icmp eq i32 %348, -1
  br i1 %349, label %350, label %356

350:                                              ; preds = %323
  %351 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %352 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %353, align 4
  br label %363

356:                                              ; preds = %323
  %357 = load i32, i32* %24, align 4
  %358 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %359 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %358, i32 0, i32 2
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = add nsw i32 %361, %357
  store i32 %362, i32* %360, align 4
  br label %363

363:                                              ; preds = %356, %350
  br label %364

364:                                              ; preds = %363
  %365 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %366 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %17, align 4
  %370 = add nsw i32 %369, %368
  store i32 %370, i32* %17, align 4
  %371 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %372 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %371, i32 0, i32 2
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load i32*, i32** %15, align 8
  %376 = sext i32 %374 to i64
  %377 = getelementptr inbounds i32, i32* %375, i64 %376
  store i32* %377, i32** %15, align 8
  br label %319

378:                                              ; preds = %319
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
