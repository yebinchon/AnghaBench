; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_build_speed_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_build_speed_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32, i32*, %struct.TYPE_2__, i64*, i64* }
%struct.TYPE_2__ = type { i64 }
%struct.selfid = type { i64, i64, i64, i64, i64 }
%struct.ext_selfid = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@IEEE1394_SPEED_MAX = common dso_local global i64 0, align 8
@SELFID_PORT_CHILD = common dso_local global i64 0, align 8
@SELFID_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_host*, i32)* @build_speed_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_speed_map(%struct.hpsb_host* %0, i32 %1) #0 {
  %3 = alloca %struct.hpsb_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.selfid*, align 8
  %11 = alloca %struct.ext_selfid*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i64, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %20 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %19, i32 0, i32 4
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %7, align 8
  %22 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %23 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %22, i32 0, i32 3
  %24 = load i64*, i64** %23, align 8
  store i64* %24, i64** %8, align 8
  %25 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %26 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %51, %2
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %4, align 4
  %32 = mul nsw i32 %31, 64
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %47, %34
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i64, i64* @IEEE1394_SPEED_MAX, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %41, i64 %45
  store i64 %40, i64* %46, align 8
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %35

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 64
  store i32 %53, i32* %12, align 4
  br label %29

54:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %63, %54
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %18, i64 %61
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %55

66:                                               ; preds = %55
  %67 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %68 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %71 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  %76 = bitcast i32* %75 to %struct.selfid*
  store %struct.selfid* %76, %struct.selfid** %10, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %252, %66
  %80 = load %struct.selfid*, %struct.selfid** %10, align 8
  %81 = bitcast %struct.selfid* %80 to i8*
  %82 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %83 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = bitcast i32* %84 to i8*
  %86 = icmp uge i8* %81, %85
  br i1 %86, label %87, label %255

87:                                               ; preds = %79
  %88 = load %struct.selfid*, %struct.selfid** %10, align 8
  %89 = getelementptr inbounds %struct.selfid, %struct.selfid* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %191

92:                                               ; preds = %87
  %93 = load %struct.selfid*, %struct.selfid** %10, align 8
  %94 = bitcast %struct.selfid* %93 to %struct.ext_selfid*
  store %struct.ext_selfid* %94, %struct.ext_selfid** %11, align 8
  %95 = load %struct.ext_selfid*, %struct.ext_selfid** %11, align 8
  %96 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SELFID_PORT_CHILD, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %18, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %103, align 8
  br label %106

106:                                              ; preds = %100, %92
  %107 = load %struct.ext_selfid*, %struct.ext_selfid** %11, align 8
  %108 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SELFID_PORT_CHILD, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %18, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %115, align 8
  br label %118

118:                                              ; preds = %112, %106
  %119 = load %struct.ext_selfid*, %struct.ext_selfid** %11, align 8
  %120 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SELFID_PORT_CHILD, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %18, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %127, align 8
  br label %130

130:                                              ; preds = %124, %118
  %131 = load %struct.ext_selfid*, %struct.ext_selfid** %11, align 8
  %132 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @SELFID_PORT_CHILD, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %130
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %18, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %139, align 8
  br label %142

142:                                              ; preds = %136, %130
  %143 = load %struct.ext_selfid*, %struct.ext_selfid** %11, align 8
  %144 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @SELFID_PORT_CHILD, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %18, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %151, align 8
  br label %154

154:                                              ; preds = %148, %142
  %155 = load %struct.ext_selfid*, %struct.ext_selfid** %11, align 8
  %156 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @SELFID_PORT_CHILD, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %18, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %163, align 8
  br label %166

166:                                              ; preds = %160, %154
  %167 = load %struct.ext_selfid*, %struct.ext_selfid** %11, align 8
  %168 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %167, i32 0, i32 6
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @SELFID_PORT_CHILD, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %166
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %18, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, 1
  store i64 %177, i64* %175, align 8
  br label %178

178:                                              ; preds = %172, %166
  %179 = load %struct.ext_selfid*, %struct.ext_selfid** %11, align 8
  %180 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %179, i32 0, i32 7
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @SELFID_PORT_CHILD, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %178
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %18, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, 1
  store i64 %189, i64* %187, align 8
  br label %190

190:                                              ; preds = %184, %178
  br label %251

191:                                              ; preds = %87
  %192 = load %struct.selfid*, %struct.selfid** %10, align 8
  %193 = getelementptr inbounds %struct.selfid, %struct.selfid* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @SELFID_PORT_CHILD, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %191
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %18, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, 1
  store i64 %202, i64* %200, align 8
  br label %203

203:                                              ; preds = %197, %191
  %204 = load %struct.selfid*, %struct.selfid** %10, align 8
  %205 = getelementptr inbounds %struct.selfid, %struct.selfid* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @SELFID_PORT_CHILD, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %203
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %18, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, 1
  store i64 %214, i64* %212, align 8
  br label %215

215:                                              ; preds = %209, %203
  %216 = load %struct.selfid*, %struct.selfid** %10, align 8
  %217 = getelementptr inbounds %struct.selfid, %struct.selfid* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @SELFID_PORT_CHILD, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %227

221:                                              ; preds = %215
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %18, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = add nsw i64 %225, 1
  store i64 %226, i64* %224, align 8
  br label %227

227:                                              ; preds = %221, %215
  %228 = load %struct.selfid*, %struct.selfid** %10, align 8
  %229 = getelementptr inbounds %struct.selfid, %struct.selfid* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = load i64*, i64** %8, align 8
  %232 = load i32, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  store i64 %230, i64* %234, align 8
  %235 = load i64*, i64** %8, align 8
  %236 = load i32, i32* %14, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i64, i64* %235, i64 %237
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* %9, align 8
  %241 = icmp sgt i64 %239, %240
  br i1 %241, label %242, label %248

242:                                              ; preds = %227
  %243 = load i64, i64* %9, align 8
  %244 = load i64*, i64** %8, align 8
  %245 = load i32, i32* %14, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64, i64* %244, i64 %246
  store i64 %243, i64* %247, align 8
  br label %248

248:                                              ; preds = %242, %227
  %249 = load i32, i32* %14, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %14, align 4
  br label %251

251:                                              ; preds = %248, %190
  br label %252

252:                                              ; preds = %251
  %253 = load %struct.selfid*, %struct.selfid** %10, align 8
  %254 = getelementptr inbounds %struct.selfid, %struct.selfid* %253, i32 -1
  store %struct.selfid* %254, %struct.selfid** %10, align 8
  br label %79

255:                                              ; preds = %79
  store i32 0, i32* %12, align 4
  br label %256

256:                                              ; preds = %273, %255
  %257 = load i32, i32* %12, align 4
  %258 = load i32, i32* %4, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %276

260:                                              ; preds = %256
  %261 = load i64*, i64** %8, align 8
  %262 = load i32, i32* %12, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i64, i64* %261, i64 %263
  %265 = load i64, i64* %264, align 8
  %266 = load i64*, i64** %7, align 8
  %267 = load i32, i32* %12, align 4
  %268 = mul nsw i32 64, %267
  %269 = load i32, i32* %12, align 4
  %270 = add nsw i32 %268, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i64, i64* %266, i64 %271
  store i64 %265, i64* %272, align 8
  br label %273

273:                                              ; preds = %260
  %274 = load i32, i32* %12, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %12, align 4
  br label %256

276:                                              ; preds = %256
  store i32 1, i32* %12, align 4
  br label %277

277:                                              ; preds = %330, %276
  %278 = load i32, i32* %12, align 4
  %279 = load i32, i32* %4, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %333

281:                                              ; preds = %277
  %282 = load i32, i32* %12, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i64, i64* %18, i64 %283
  %285 = load i64, i64* %284, align 8
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %13, align 4
  %287 = load i32, i32* %12, align 4
  %288 = sub nsw i32 %287, 1
  store i32 %288, i32* %14, align 4
  br label %289

289:                                              ; preds = %326, %281
  %290 = load i32, i32* %13, align 4
  %291 = icmp sgt i32 %290, 0
  br i1 %291, label %292, label %329

292:                                              ; preds = %289
  %293 = load i32, i32* %14, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i64, i64* %18, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = load i32, i32* %12, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i64, i64* %18, i64 %298
  %300 = load i64, i64* %299, align 8
  %301 = add nsw i64 %300, %296
  store i64 %301, i64* %299, align 8
  %302 = load i64*, i64** %8, align 8
  %303 = load i32, i32* %14, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i64, i64* %302, i64 %304
  %306 = load i64, i64* %305, align 8
  %307 = load i64*, i64** %8, align 8
  %308 = load i32, i32* %12, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i64, i64* %307, i64 %309
  %311 = load i64, i64* %310, align 8
  %312 = call i64 @min(i64 %306, i64 %311)
  %313 = load i64*, i64** %8, align 8
  %314 = load i32, i32* %14, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i64, i64* %313, i64 %315
  store i64 %312, i64* %316, align 8
  %317 = load i32, i32* %14, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i64, i64* %18, i64 %318
  %320 = load i64, i64* %319, align 8
  %321 = add nsw i64 %320, 1
  %322 = load i32, i32* %14, align 4
  %323 = sext i32 %322 to i64
  %324 = sub nsw i64 %323, %321
  %325 = trunc i64 %324 to i32
  store i32 %325, i32* %14, align 4
  br label %326

326:                                              ; preds = %292
  %327 = load i32, i32* %13, align 4
  %328 = add nsw i32 %327, -1
  store i32 %328, i32* %13, align 4
  br label %289

329:                                              ; preds = %289
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %12, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %12, align 4
  br label %277

333:                                              ; preds = %277
  store i32 0, i32* %14, align 4
  br label %334

334:                                              ; preds = %439, %333
  %335 = load i32, i32* %14, align 4
  %336 = load i32, i32* %4, align 4
  %337 = icmp slt i32 %335, %336
  br i1 %337, label %338, label %442

338:                                              ; preds = %334
  %339 = load i32, i32* %14, align 4
  %340 = sext i32 %339 to i64
  %341 = load i32, i32* %14, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i64, i64* %18, i64 %342
  %344 = load i64, i64* %343, align 8
  %345 = sub nsw i64 %340, %344
  %346 = trunc i64 %345 to i32
  store i32 %346, i32* %12, align 4
  br label %347

347:                                              ; preds = %435, %338
  %348 = load i32, i32* %12, align 4
  %349 = load i32, i32* %14, align 4
  %350 = icmp sle i32 %348, %349
  br i1 %350, label %351, label %438

351:                                              ; preds = %347
  store i32 0, i32* %13, align 4
  br label %352

352:                                              ; preds = %392, %351
  %353 = load i32, i32* %13, align 4
  %354 = sext i32 %353 to i64
  %355 = load i32, i32* %14, align 4
  %356 = sext i32 %355 to i64
  %357 = load i32, i32* %14, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i64, i64* %18, i64 %358
  %360 = load i64, i64* %359, align 8
  %361 = sub nsw i64 %356, %360
  %362 = icmp slt i64 %354, %361
  br i1 %362, label %363, label %395

363:                                              ; preds = %352
  %364 = load i64*, i64** %7, align 8
  %365 = load i32, i32* %12, align 4
  %366 = mul nsw i32 %365, 64
  %367 = load i32, i32* %13, align 4
  %368 = add nsw i32 %366, %367
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i64, i64* %364, i64 %369
  %371 = load i64, i64* %370, align 8
  %372 = load i64*, i64** %8, align 8
  %373 = load i32, i32* %14, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i64, i64* %372, i64 %374
  %376 = load i64, i64* %375, align 8
  %377 = call i64 @min(i64 %371, i64 %376)
  %378 = load i64*, i64** %7, align 8
  %379 = load i32, i32* %12, align 4
  %380 = mul nsw i32 %379, 64
  %381 = load i32, i32* %13, align 4
  %382 = add nsw i32 %380, %381
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i64, i64* %378, i64 %383
  store i64 %377, i64* %384, align 8
  %385 = load i64*, i64** %7, align 8
  %386 = load i32, i32* %13, align 4
  %387 = mul nsw i32 %386, 64
  %388 = load i32, i32* %12, align 4
  %389 = add nsw i32 %387, %388
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i64, i64* %385, i64 %390
  store i64 %377, i64* %391, align 8
  br label %392

392:                                              ; preds = %363
  %393 = load i32, i32* %13, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %13, align 4
  br label %352

395:                                              ; preds = %352
  %396 = load i32, i32* %14, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %13, align 4
  br label %398

398:                                              ; preds = %431, %395
  %399 = load i32, i32* %13, align 4
  %400 = load i32, i32* %4, align 4
  %401 = icmp slt i32 %399, %400
  br i1 %401, label %402, label %434

402:                                              ; preds = %398
  %403 = load i64*, i64** %7, align 8
  %404 = load i32, i32* %12, align 4
  %405 = mul nsw i32 %404, 64
  %406 = load i32, i32* %13, align 4
  %407 = add nsw i32 %405, %406
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i64, i64* %403, i64 %408
  %410 = load i64, i64* %409, align 8
  %411 = load i64*, i64** %8, align 8
  %412 = load i32, i32* %14, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i64, i64* %411, i64 %413
  %415 = load i64, i64* %414, align 8
  %416 = call i64 @min(i64 %410, i64 %415)
  %417 = load i64*, i64** %7, align 8
  %418 = load i32, i32* %12, align 4
  %419 = mul nsw i32 %418, 64
  %420 = load i32, i32* %13, align 4
  %421 = add nsw i32 %419, %420
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i64, i64* %417, i64 %422
  store i64 %416, i64* %423, align 8
  %424 = load i64*, i64** %7, align 8
  %425 = load i32, i32* %13, align 4
  %426 = mul nsw i32 %425, 64
  %427 = load i32, i32* %12, align 4
  %428 = add nsw i32 %426, %427
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i64, i64* %424, i64 %429
  store i64 %416, i64* %430, align 8
  br label %431

431:                                              ; preds = %402
  %432 = load i32, i32* %13, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %13, align 4
  br label %398

434:                                              ; preds = %398
  br label %435

435:                                              ; preds = %434
  %436 = load i32, i32* %12, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %12, align 4
  br label %347

438:                                              ; preds = %347
  br label %439

439:                                              ; preds = %438
  %440 = load i32, i32* %14, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %14, align 4
  br label %334

442:                                              ; preds = %334
  %443 = load i64, i64* %9, align 8
  %444 = load i64, i64* @SELFID_SPEED_UNKNOWN, align 8
  %445 = icmp sgt i64 %443, %444
  br i1 %445, label %446, label %470

446:                                              ; preds = %442
  store i32 0, i32* %12, align 4
  br label %447

447:                                              ; preds = %466, %446
  %448 = load i32, i32* %12, align 4
  %449 = load i32, i32* %4, align 4
  %450 = icmp slt i32 %448, %449
  br i1 %450, label %451, label %469

451:                                              ; preds = %447
  %452 = load i64*, i64** %8, align 8
  %453 = load i32, i32* %12, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i64, i64* %452, i64 %454
  %456 = load i64, i64* %455, align 8
  %457 = load i64, i64* @SELFID_SPEED_UNKNOWN, align 8
  %458 = icmp eq i64 %456, %457
  br i1 %458, label %459, label %465

459:                                              ; preds = %451
  %460 = load i64, i64* %9, align 8
  %461 = load i64*, i64** %8, align 8
  %462 = load i32, i32* %12, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i64, i64* %461, i64 %463
  store i64 %460, i64* %464, align 8
  br label %465

465:                                              ; preds = %459, %451
  br label %466

466:                                              ; preds = %465
  %467 = load i32, i32* %12, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %12, align 4
  br label %447

469:                                              ; preds = %447
  br label %470

470:                                              ; preds = %469, %442
  %471 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %471)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @min(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
