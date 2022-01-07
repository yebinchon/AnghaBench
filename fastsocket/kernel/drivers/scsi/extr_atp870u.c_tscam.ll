; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atp870u.c_tscam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atp870u.c_tscam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.atp_unit = type { i32*, i32, i16*, i32 }

@tscam.g2q_tab = internal global [8 x i8] c"812+4-.'", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @tscam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tscam(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca [33 x i8], align 16
  %12 = alloca [2 x i8], align 1
  %13 = alloca %struct.atp_unit*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %15 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.atp_unit*
  store %struct.atp_unit* %16, %struct.atp_unit** %13, align 8
  %17 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %18 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %3, align 4
  %25 = call i32 @outb(i32 8, i32 %23)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @outb(i32 127, i32 %26)
  %28 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %29 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 17
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @outb(i32 32, i32 %34)
  %36 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %37 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 64
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  br label %576

42:                                               ; preds = %1
  store i16 1, i16* %8, align 2
  %43 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %44 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %43, i32 0, i32 2
  %45 = load i16*, i16** %44, align 8
  %46 = getelementptr inbounds i16, i16* %45, i64 0
  %47 = load i16, i16* %46, align 2
  %48 = zext i16 %47 to i32
  %49 = load i16, i16* %8, align 2
  %50 = zext i16 %49 to i32
  %51 = shl i32 %50, %48
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %8, align 2
  store i8 16, i8* %5, align 1
  %53 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %54 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %62

57:                                               ; preds = %42
  %58 = load i16, i16* %8, align 2
  %59 = zext i16 %58 to i32
  %60 = or i32 %59, 65280
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %8, align 2
  store i8 8, i8* %5, align 1
  br label %62

62:                                               ; preds = %57, %42
  %63 = load i16, i16* %8, align 2
  store i16 %63, i16* %9, align 2
  %64 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %65 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 2
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %3, align 4
  %72 = call i32 @outb(i32 2, i32 %70)
  %73 = load i32, i32* %3, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %3, align 4
  %75 = call i32 @outb(i32 0, i32 %73)
  %76 = load i32, i32* %3, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %3, align 4
  %78 = call i32 @outb(i32 0, i32 %76)
  %79 = load i32, i32* %3, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %3, align 4
  %81 = call i32 @outb(i32 0, i32 %79)
  %82 = load i32, i32* %3, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %3, align 4
  %84 = call i32 @outb(i32 0, i32 %82)
  %85 = load i32, i32* %3, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %3, align 4
  %87 = call i32 @outb(i32 0, i32 %85)
  %88 = load i32, i32* %3, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %3, align 4
  %90 = call i32 @outb(i32 0, i32 %88)
  store i8 0, i8* %4, align 1
  br label %91

91:                                               ; preds = %218, %62
  %92 = load i8, i8* %4, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* %5, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %221

97:                                               ; preds = %91
  store i16 1, i16* %8, align 2
  %98 = load i16, i16* %8, align 2
  %99 = zext i16 %98 to i32
  %100 = load i8, i8* %4, align 1
  %101 = zext i8 %100 to i32
  %102 = shl i32 %99, %101
  %103 = trunc i32 %102 to i16
  store i16 %103, i16* %8, align 2
  %104 = load i16, i16* %8, align 2
  %105 = zext i16 %104 to i32
  %106 = load i16, i16* %9, align 2
  %107 = zext i16 %106 to i32
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %97
  br label %218

111:                                              ; preds = %97
  %112 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %113 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 15
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* %3, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %3, align 4
  %120 = call i32 @outb(i32 0, i32 %118)
  %121 = load i32, i32* %3, align 4
  %122 = add i32 %121, 2
  store i32 %122, i32* %3, align 4
  %123 = load i32, i32* %3, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %3, align 4
  %125 = call i32 @outb(i32 0, i32 %123)
  %126 = load i32, i32* %3, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %3, align 4
  %128 = call i32 @outb(i32 0, i32 %126)
  %129 = load i32, i32* %3, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %3, align 4
  %131 = call i32 @outb(i32 0, i32 %129)
  %132 = load i8, i8* %4, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp sgt i32 %133, 7
  br i1 %134, label %135, label %141

135:                                              ; preds = %111
  %136 = load i8, i8* %4, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %137, 7
  %139 = or i32 %138, 64
  %140 = trunc i32 %139 to i8
  store i8 %140, i8* %6, align 1
  br label %143

141:                                              ; preds = %111
  %142 = load i8, i8* %4, align 1
  store i8 %142, i8* %6, align 1
  br label %143

143:                                              ; preds = %141, %135
  %144 = load i8, i8* %6, align 1
  %145 = zext i8 %144 to i32
  %146 = load i32, i32* %3, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %3, align 4
  %148 = call i32 @outb(i32 %145, i32 %146)
  %149 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %150 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 27
  store i32 %154, i32* %3, align 4
  %155 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %156 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 4
  br i1 %158, label %159, label %162

159:                                              ; preds = %143
  %160 = load i32, i32* %3, align 4
  %161 = call i32 @outb(i32 1, i32 %160)
  br label %165

162:                                              ; preds = %143
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @outb(i32 0, i32 %163)
  br label %165

165:                                              ; preds = %162, %159
  br label %166

166:                                              ; preds = %202, %165
  %167 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %168 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 24
  store i32 %172, i32* %3, align 4
  %173 = load i32, i32* %3, align 4
  %174 = call i32 @outb(i32 9, i32 %173)
  %175 = load i32, i32* %3, align 4
  %176 = add i32 %175, 7
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %182, %166
  %178 = load i32, i32* %3, align 4
  %179 = call i32 @inb(i32 %178)
  %180 = and i32 %179, 128
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = call i32 (...) @cpu_relax()
  br label %177

184:                                              ; preds = %177
  %185 = load i32, i32* %3, align 4
  %186 = sub i32 %185, 8
  store i32 %186, i32* %3, align 4
  %187 = load i32, i32* %3, align 4
  %188 = call i32 @inb(i32 %187)
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %6, align 1
  %190 = load i8, i8* %6, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp ne i32 %191, 22
  br i1 %192, label %193, label %211

193:                                              ; preds = %184
  %194 = load i8, i8* %6, align 1
  %195 = zext i8 %194 to i32
  %196 = icmp eq i32 %195, 133
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = load i8, i8* %6, align 1
  %199 = zext i8 %198 to i32
  %200 = icmp eq i32 %199, 66
  br i1 %200, label %201, label %202

201:                                              ; preds = %197, %193
  br label %218

202:                                              ; preds = %197
  %203 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %204 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 16
  store i32 %208, i32* %3, align 4
  %209 = load i32, i32* %3, align 4
  %210 = call i32 @outb(i32 65, i32 %209)
  br label %166

211:                                              ; preds = %184
  %212 = load i16, i16* %8, align 2
  %213 = zext i16 %212 to i32
  %214 = load i16, i16* %9, align 2
  %215 = zext i16 %214 to i32
  %216 = or i32 %215, %213
  %217 = trunc i32 %216 to i16
  store i16 %217, i16* %9, align 2
  br label %218

218:                                              ; preds = %211, %201, %110
  %219 = load i8, i8* %4, align 1
  %220 = add i8 %219, 1
  store i8 %220, i8* %4, align 1
  br label %91

221:                                              ; preds = %91
  %222 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %223 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, 2
  store i32 %227, i32* %3, align 4
  %228 = load i32, i32* %3, align 4
  %229 = call i32 @outb(i32 127, i32 %228)
  %230 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %231 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, 27
  store i32 %235, i32* %3, align 4
  %236 = load i32, i32* %3, align 4
  %237 = call i32 @outb(i32 2, i32 %236)
  %238 = call i32 @outb(i32 0, i32 128)
  store i16 128, i16* %10, align 2
  %239 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %240 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 28
  store i32 %244, i32* %3, align 4
  %245 = load i16, i16* %10, align 2
  %246 = load i32, i32* %3, align 4
  %247 = call i32 @outw(i16 zeroext %245, i32 %246)
  %248 = load i16, i16* %10, align 2
  %249 = zext i16 %248 to i32
  %250 = or i32 %249, 64
  %251 = trunc i32 %250 to i16
  store i16 %251, i16* %10, align 2
  %252 = load i16, i16* %10, align 2
  %253 = load i32, i32* %3, align 4
  %254 = call i32 @outw(i16 zeroext %252, i32 %253)
  %255 = load i16, i16* %10, align 2
  %256 = zext i16 %255 to i32
  %257 = or i32 %256, 4
  %258 = trunc i32 %257 to i16
  store i16 %258, i16* %10, align 2
  %259 = load i16, i16* %10, align 2
  %260 = load i32, i32* %3, align 4
  %261 = call i32 @outw(i16 zeroext %259, i32 %260)
  %262 = call i32 @inb(i32 128)
  %263 = load i16, i16* %10, align 2
  %264 = zext i16 %263 to i32
  %265 = and i32 %264, 127
  %266 = trunc i32 %265 to i16
  store i16 %266, i16* %10, align 2
  %267 = load i16, i16* %10, align 2
  %268 = load i32, i32* %3, align 4
  %269 = call i32 @outw(i16 zeroext %267, i32 %268)
  %270 = call i32 @mdelay(i32 128)
  %271 = load i16, i16* %10, align 2
  %272 = zext i16 %271 to i32
  %273 = and i32 %272, 251
  %274 = trunc i32 %273 to i16
  store i16 %274, i16* %10, align 2
  %275 = load i16, i16* %10, align 2
  %276 = load i32, i32* %3, align 4
  %277 = call i32 @outw(i16 zeroext %275, i32 %276)
  br label %278

278:                                              ; preds = %283, %221
  %279 = load i32, i32* %3, align 4
  %280 = call i32 @inb(i32 %279)
  %281 = and i32 %280, 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %278
  br label %278

284:                                              ; preds = %278
  %285 = call i32 @outb(i32 1, i32 128)
  %286 = call i32 @udelay(i32 100)
  store i64 0, i64* %7, align 8
  br label %287

287:                                              ; preds = %297, %284
  %288 = load i64, i64* %7, align 8
  %289 = icmp ult i64 %288, 196608
  br i1 %289, label %290, label %300

290:                                              ; preds = %287
  %291 = load i32, i32* %3, align 4
  %292 = call i32 @inb(i32 %291)
  %293 = and i32 %292, 128
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %290
  br label %301

296:                                              ; preds = %290
  br label %297

297:                                              ; preds = %296
  %298 = load i64, i64* %7, align 8
  %299 = add i64 %298, 1
  store i64 %299, i64* %7, align 8
  br label %287

300:                                              ; preds = %287
  br label %334

301:                                              ; preds = %295
  store i64 0, i64* %7, align 8
  br label %302

302:                                              ; preds = %312, %301
  %303 = load i64, i64* %7, align 8
  %304 = icmp ult i64 %303, 196608
  br i1 %304, label %305, label %315

305:                                              ; preds = %302
  %306 = load i32, i32* %3, align 4
  %307 = call i32 @inb(i32 %306)
  %308 = and i32 %307, 129
  %309 = icmp eq i32 %308, 129
  br i1 %309, label %310, label %311

310:                                              ; preds = %305
  br label %316

311:                                              ; preds = %305
  br label %312

312:                                              ; preds = %311
  %313 = load i64, i64* %7, align 8
  %314 = add i64 %313, 1
  store i64 %314, i64* %7, align 8
  br label %302

315:                                              ; preds = %302
  br label %334

316:                                              ; preds = %310
  %317 = call i32 @inb(i32 128)
  %318 = load i16, i16* %10, align 2
  %319 = zext i16 %318 to i32
  %320 = or i32 %319, 32771
  %321 = trunc i32 %320 to i16
  store i16 %321, i16* %10, align 2
  %322 = load i16, i16* %10, align 2
  %323 = load i32, i32* %3, align 4
  %324 = call i32 @outw(i16 zeroext %322, i32 %323)
  %325 = call i32 @inb(i32 128)
  %326 = load i16, i16* %10, align 2
  %327 = zext i16 %326 to i32
  %328 = and i32 %327, 191
  %329 = trunc i32 %328 to i16
  store i16 %329, i16* %10, align 2
  %330 = load i16, i16* %10, align 2
  %331 = load i32, i32* %3, align 4
  %332 = call i32 @outw(i16 zeroext %330, i32 %331)
  %333 = call i32 @outb(i32 2, i32 128)
  br label %334

334:                                              ; preds = %532, %316, %315, %300
  %335 = call i32 @udelay(i32 2048)
  %336 = load i32, i32* %3, align 4
  %337 = call i32 @inb(i32 %336)
  %338 = and i32 %337, 128
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %372

340:                                              ; preds = %334
  %341 = load i32, i32* %3, align 4
  %342 = add i32 %341, -1
  store i32 %342, i32* %3, align 4
  %343 = call i32 @outw(i16 zeroext 0, i32 %341)
  %344 = load i32, i32* %3, align 4
  %345 = call i32 @outb(i32 0, i32 %344)
  %346 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %347 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %346, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 0
  %350 = load i32, i32* %349, align 4
  %351 = add nsw i32 %350, 21
  store i32 %351, i32* %3, align 4
  %352 = load i32, i32* %3, align 4
  %353 = call i32 @outb(i32 0, i32 %352)
  %354 = load i32, i32* %3, align 4
  %355 = add i32 %354, 3
  store i32 %355, i32* %3, align 4
  %356 = load i32, i32* %3, align 4
  %357 = call i32 @outb(i32 9, i32 %356)
  %358 = load i32, i32* %3, align 4
  %359 = add i32 %358, 7
  store i32 %359, i32* %3, align 4
  br label %360

360:                                              ; preds = %365, %340
  %361 = load i32, i32* %3, align 4
  %362 = call i32 @inb(i32 %361)
  %363 = and i32 %362, 128
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %360
  %366 = call i32 (...) @cpu_relax()
  br label %360

367:                                              ; preds = %360
  %368 = load i32, i32* %3, align 4
  %369 = sub i32 %368, 8
  store i32 %369, i32* %3, align 4
  %370 = load i32, i32* %3, align 4
  %371 = call i32 @inb(i32 %370)
  br label %576

372:                                              ; preds = %334
  %373 = load i16, i16* %10, align 2
  %374 = zext i16 %373 to i32
  %375 = and i32 %374, 255
  %376 = trunc i32 %375 to i16
  store i16 %376, i16* %10, align 2
  %377 = load i16, i16* %10, align 2
  %378 = zext i16 %377 to i32
  %379 = or i32 %378, 16128
  %380 = trunc i32 %379 to i16
  store i16 %380, i16* %10, align 2
  %381 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %382 = call zeroext i8 @fun_scam(%struct.atp_unit* %381, i16* %10)
  %383 = call i32 @outb(i32 3, i32 128)
  %384 = load i16, i16* %10, align 2
  %385 = zext i16 %384 to i32
  %386 = and i32 %385, 255
  %387 = trunc i32 %386 to i16
  store i16 %387, i16* %10, align 2
  %388 = load i16, i16* %10, align 2
  %389 = zext i16 %388 to i32
  %390 = or i32 %389, 8192
  %391 = trunc i32 %390 to i16
  store i16 %391, i16* %10, align 2
  %392 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %393 = call zeroext i8 @fun_scam(%struct.atp_unit* %392, i16* %10)
  %394 = call i32 @outb(i32 4, i32 128)
  store i8 8, i8* %4, align 1
  store i8 0, i8* %5, align 1
  br label %395

395:                                              ; preds = %452, %451, %400, %372
  %396 = load i32, i32* %3, align 4
  %397 = call i32 @inw(i32 %396)
  %398 = and i32 %397, 8192
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %395
  br label %395

401:                                              ; preds = %395
  %402 = call i32 @outb(i32 5, i32 128)
  %403 = load i16, i16* %10, align 2
  %404 = zext i16 %403 to i32
  %405 = and i32 %404, 255
  %406 = trunc i32 %405 to i16
  store i16 %406, i16* %10, align 2
  %407 = load i16, i16* %10, align 2
  %408 = zext i16 %407 to i32
  %409 = or i32 %408, 8192
  %410 = trunc i32 %409 to i16
  store i16 %410, i16* %10, align 2
  %411 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %412 = call zeroext i8 @fun_scam(%struct.atp_unit* %411, i16* %10)
  store i8 %412, i8* %6, align 1
  %413 = load i8, i8* %6, align 1
  %414 = zext i8 %413 to i32
  %415 = and i32 %414, 3
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %401
  br label %455

418:                                              ; preds = %401
  %419 = load i8, i8* %5, align 1
  %420 = zext i8 %419 to i64
  %421 = getelementptr inbounds [33 x i8], [33 x i8]* %11, i64 0, i64 %420
  %422 = load i8, i8* %421, align 1
  %423 = zext i8 %422 to i32
  %424 = shl i32 %423, 1
  %425 = trunc i32 %424 to i8
  store i8 %425, i8* %421, align 1
  %426 = load i8, i8* %5, align 1
  %427 = zext i8 %426 to i64
  %428 = getelementptr inbounds [33 x i8], [33 x i8]* %11, i64 0, i64 %427
  %429 = load i8, i8* %428, align 1
  %430 = zext i8 %429 to i32
  %431 = and i32 %430, 254
  %432 = trunc i32 %431 to i8
  store i8 %432, i8* %428, align 1
  %433 = load i8, i8* %6, align 1
  %434 = zext i8 %433 to i32
  %435 = and i32 %434, 2
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %445

437:                                              ; preds = %418
  %438 = load i8, i8* %5, align 1
  %439 = zext i8 %438 to i64
  %440 = getelementptr inbounds [33 x i8], [33 x i8]* %11, i64 0, i64 %439
  %441 = load i8, i8* %440, align 1
  %442 = zext i8 %441 to i32
  %443 = or i32 %442, 1
  %444 = trunc i32 %443 to i8
  store i8 %444, i8* %440, align 1
  br label %445

445:                                              ; preds = %437, %418
  %446 = load i8, i8* %4, align 1
  %447 = add i8 %446, -1
  store i8 %447, i8* %4, align 1
  %448 = load i8, i8* %4, align 1
  %449 = zext i8 %448 to i32
  %450 = icmp sgt i32 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %445
  br label %395

452:                                              ; preds = %445
  %453 = load i8, i8* %5, align 1
  %454 = add i8 %453, 1
  store i8 %454, i8* %5, align 1
  store i8 8, i8* %4, align 1
  br label %395

455:                                              ; preds = %417
  store i8 15, i8* %4, align 1
  %456 = getelementptr inbounds [33 x i8], [33 x i8]* %11, i64 0, i64 0
  %457 = load i8, i8* %456, align 16
  store i8 %457, i8* %5, align 1
  %458 = load i8, i8* %5, align 1
  %459 = zext i8 %458 to i32
  %460 = and i32 %459, 32
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %455
  store i8 7, i8* %4, align 1
  br label %463

463:                                              ; preds = %462, %455
  %464 = load i8, i8* %5, align 1
  %465 = zext i8 %464 to i32
  %466 = and i32 %465, 6
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %469

468:                                              ; preds = %463
  br label %494

469:                                              ; preds = %463
  %470 = getelementptr inbounds [33 x i8], [33 x i8]* %11, i64 0, i64 1
  %471 = load i8, i8* %470, align 1
  store i8 %471, i8* %6, align 1
  br label %472

472:                                              ; preds = %490, %469
  store i16 1, i16* %8, align 2
  %473 = load i8, i8* %6, align 1
  %474 = zext i8 %473 to i32
  %475 = load i16, i16* %8, align 2
  %476 = zext i16 %475 to i32
  %477 = shl i32 %476, %474
  %478 = trunc i32 %477 to i16
  store i16 %478, i16* %8, align 2
  %479 = load i16, i16* %8, align 2
  %480 = zext i16 %479 to i32
  %481 = load i16, i16* %9, align 2
  %482 = zext i16 %481 to i32
  %483 = and i32 %480, %482
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %485, label %486

485:                                              ; preds = %472
  br label %518

486:                                              ; preds = %472
  %487 = load i8, i8* %6, align 1
  %488 = zext i8 %487 to i32
  %489 = icmp sgt i32 %488, 0
  br i1 %489, label %490, label %493

490:                                              ; preds = %486
  %491 = load i8, i8* %6, align 1
  %492 = add i8 %491, -1
  store i8 %492, i8* %6, align 1
  br label %472

493:                                              ; preds = %486
  br label %494

494:                                              ; preds = %493, %468
  %495 = load i8, i8* %4, align 1
  store i8 %495, i8* %6, align 1
  br label %496

496:                                              ; preds = %514, %494
  store i16 1, i16* %8, align 2
  %497 = load i8, i8* %6, align 1
  %498 = zext i8 %497 to i32
  %499 = load i16, i16* %8, align 2
  %500 = zext i16 %499 to i32
  %501 = shl i32 %500, %498
  %502 = trunc i32 %501 to i16
  store i16 %502, i16* %8, align 2
  %503 = load i16, i16* %8, align 2
  %504 = zext i16 %503 to i32
  %505 = load i16, i16* %9, align 2
  %506 = zext i16 %505 to i32
  %507 = and i32 %504, %506
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %510

509:                                              ; preds = %496
  br label %518

510:                                              ; preds = %496
  %511 = load i8, i8* %6, align 1
  %512 = zext i8 %511 to i32
  %513 = icmp sgt i32 %512, 0
  br i1 %513, label %514, label %517

514:                                              ; preds = %510
  %515 = load i8, i8* %6, align 1
  %516 = add i8 %515, -1
  store i8 %516, i8* %6, align 1
  br label %496

517:                                              ; preds = %510
  br label %518

518:                                              ; preds = %517, %509, %485
  %519 = load i16, i16* %8, align 2
  %520 = zext i16 %519 to i32
  %521 = load i16, i16* %9, align 2
  %522 = zext i16 %521 to i32
  %523 = or i32 %522, %520
  %524 = trunc i32 %523 to i16
  store i16 %524, i16* %9, align 2
  %525 = load i8, i8* %6, align 1
  %526 = zext i8 %525 to i32
  %527 = icmp slt i32 %526, 8
  br i1 %527, label %528, label %530

528:                                              ; preds = %518
  %529 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 56, i8* %529, align 1
  br label %532

530:                                              ; preds = %518
  %531 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 49, i8* %531, align 1
  br label %532

532:                                              ; preds = %530, %528
  %533 = load i8, i8* %6, align 1
  %534 = zext i8 %533 to i32
  %535 = and i32 %534, 7
  %536 = trunc i32 %535 to i8
  store i8 %536, i8* %6, align 1
  %537 = load i8, i8* %6, align 1
  %538 = zext i8 %537 to i64
  %539 = getelementptr inbounds [8 x i8], [8 x i8]* @tscam.g2q_tab, i64 0, i64 %538
  %540 = load i8, i8* %539, align 1
  %541 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  store i8 %540, i8* %541, align 1
  %542 = load i16, i16* %10, align 2
  %543 = zext i16 %542 to i32
  %544 = and i32 %543, 255
  %545 = trunc i32 %544 to i16
  store i16 %545, i16* %10, align 2
  %546 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %547 = load i8, i8* %546, align 1
  %548 = zext i8 %547 to i32
  %549 = shl i32 %548, 8
  %550 = trunc i32 %549 to i16
  store i16 %550, i16* %8, align 2
  %551 = load i16, i16* %8, align 2
  %552 = zext i16 %551 to i32
  %553 = load i16, i16* %10, align 2
  %554 = zext i16 %553 to i32
  %555 = or i32 %554, %552
  %556 = trunc i32 %555 to i16
  store i16 %556, i16* %10, align 2
  %557 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %558 = call zeroext i8 @fun_scam(%struct.atp_unit* %557, i16* %10)
  %559 = load i16, i16* %10, align 2
  %560 = zext i16 %559 to i32
  %561 = and i32 %560, 255
  %562 = trunc i32 %561 to i16
  store i16 %562, i16* %10, align 2
  %563 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %564 = load i8, i8* %563, align 1
  %565 = zext i8 %564 to i32
  %566 = shl i32 %565, 8
  %567 = trunc i32 %566 to i16
  store i16 %567, i16* %8, align 2
  %568 = load i16, i16* %8, align 2
  %569 = zext i16 %568 to i32
  %570 = load i16, i16* %10, align 2
  %571 = zext i16 %570 to i32
  %572 = or i32 %571, %569
  %573 = trunc i32 %572 to i16
  store i16 %573, i16* %10, align 2
  %574 = load %struct.atp_unit*, %struct.atp_unit** %13, align 8
  %575 = call zeroext i8 @fun_scam(%struct.atp_unit* %574, i16* %10)
  br label %334

576:                                              ; preds = %367, %41
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @outw(i16 zeroext, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local zeroext i8 @fun_scam(%struct.atp_unit*, i16*) #1

declare dso_local i32 @inw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
