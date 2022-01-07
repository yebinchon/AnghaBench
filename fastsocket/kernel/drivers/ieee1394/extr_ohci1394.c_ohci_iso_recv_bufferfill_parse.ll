; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_bufferfill_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_bufferfill_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.ohci_iso_recv = type { i32, i32, i32, i32, %struct.ti_ohci* }
%struct.ti_ohci = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"IR DMA error - Runaway during buffer parsing!\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"IR DMA error - bogus 'len' value %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_iso*, %struct.ohci_iso_recv*)* @ohci_iso_recv_bufferfill_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_iso_recv_bufferfill_parse(%struct.hpsb_iso* %0, %struct.ohci_iso_recv* %1) #0 {
  %3 = alloca %struct.hpsb_iso*, align 8
  %4 = alloca %struct.ohci_iso_recv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ti_ohci*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %3, align 8
  store %struct.ohci_iso_recv* %1, %struct.ohci_iso_recv** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %19 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %20 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %19, i32 0, i32 4
  %21 = load %struct.ti_ohci*, %struct.ti_ohci** %20, align 8
  store %struct.ti_ohci* %21, %struct.ti_ohci** %7, align 8
  br label %22

22:                                               ; preds = %2, %290
  %23 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %24 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %15, align 8
  %27 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %28 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %31 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = udiv i32 %29, %32
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = icmp sgt i32 %34, 100000
  br i1 %36, label %37, label %43

37:                                               ; preds = %22
  %38 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %39 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %38, i32 0, i32 1
  %40 = call i32 @atomic_inc(i32* %39)
  %41 = load i32, i32* @KERN_ERR, align 4
  %42 = call i32 (i32, i8*, ...) @PRINT(i32 %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %300

43:                                               ; preds = %22
  %44 = load i32, i32* %16, align 4
  %45 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %46 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %300

50:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  %51 = load i8*, i8** %15, align 8
  %52 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %53 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add i32 %54, 2
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %51, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8*, i8** %15, align 8
  %61 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %62 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add i32 %63, 3
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %60, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl i32 %68, 8
  %70 = or i32 %59, %69
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %9, align 2
  %72 = load i16, i16* %9, align 2
  %73 = zext i16 %72 to i32
  %74 = icmp sgt i32 %73, 4096
  br i1 %74, label %75, label %80

75:                                               ; preds = %50
  %76 = load i32, i32* @KERN_ERR, align 4
  %77 = load i16, i16* %9, align 2
  %78 = zext i16 %77 to i32
  %79 = call i32 (i32, i8*, ...) @PRINT(i32 %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %75, %50
  %81 = load i8*, i8** %15, align 8
  %82 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %83 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add i32 %84, 1
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %81, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = and i32 %89, 63
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %12, align 1
  %92 = load i8*, i8** %15, align 8
  %93 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %94 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add i32 %95, 1
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %92, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = ashr i32 %100, 6
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %13, align 1
  %103 = load i8*, i8** %15, align 8
  %104 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %105 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add i32 %106, 0
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %103, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = and i32 %111, 15
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %14, align 1
  %114 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %115 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add i32 %116, 4
  store i32 %117, i32* %115, align 8
  %118 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %119 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %122 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %125 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = mul i32 %123, %126
  %128 = icmp uge i32 %120, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %80
  %130 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %131 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %134 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = mul i32 %132, %135
  %137 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %138 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %129, %80
  %142 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %143 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* %8, align 4
  %145 = load i16, i16* %9, align 2
  %146 = zext i16 %145 to i32
  %147 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %148 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = add i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load i16, i16* %9, align 2
  %152 = zext i16 %151 to i32
  %153 = add nsw i32 %152, 8
  %154 = trunc i32 %153 to i16
  store i16 %154, i16* %11, align 2
  %155 = load i16, i16* %9, align 2
  %156 = zext i16 %155 to i32
  %157 = srem i32 %156, 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %141
  %160 = load i16, i16* %9, align 2
  %161 = zext i16 %160 to i32
  %162 = srem i32 %161, 4
  %163 = sub nsw i32 4, %162
  %164 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %165 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = add i32 %166, %163
  store i32 %167, i32* %165, align 8
  %168 = load i16, i16* %9, align 2
  %169 = zext i16 %168 to i32
  %170 = srem i32 %169, 4
  %171 = sub nsw i32 4, %170
  %172 = load i16, i16* %11, align 2
  %173 = zext i16 %172 to i32
  %174 = add nsw i32 %173, %171
  %175 = trunc i32 %174 to i16
  store i16 %175, i16* %11, align 2
  br label %176

176:                                              ; preds = %159, %141
  %177 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %178 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %181 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %184 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = mul i32 %182, %185
  %187 = icmp uge i32 %179, %186
  br i1 %187, label %188, label %237

188:                                              ; preds = %176
  %189 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %190 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %193 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = mul i32 %191, %194
  store i32 %195, i32* %17, align 4
  %196 = load i16, i16* %9, align 2
  %197 = zext i16 %196 to i32
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* %8, align 4
  %200 = sub i32 %198, %199
  %201 = sub i32 %197, %200
  store i32 %201, i32* %18, align 4
  %202 = load i32, i32* %18, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %225

204:                                              ; preds = %188
  %205 = load i32, i32* %18, align 4
  %206 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %207 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp ult i32 %205, %208
  br i1 %209, label %210, label %225

210:                                              ; preds = %204
  %211 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %212 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = load i32, i32* %17, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  %218 = ptrtoint i8* %217 to i32
  %219 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %220 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = load i32, i32* %18, align 4
  %224 = call i32 @memcpy(i32 %218, i8* %222, i32 %223)
  br label %225

225:                                              ; preds = %210, %204, %188
  %226 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %227 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %230 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = mul i32 %228, %231
  %233 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %234 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = sub i32 %235, %232
  store i32 %236, i32* %234, align 8
  br label %237

237:                                              ; preds = %225, %176
  %238 = load i8*, i8** %15, align 8
  %239 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %240 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = add i32 %241, 0
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %238, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = load i8*, i8** %15, align 8
  %248 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %249 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = add i32 %250, 1
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %247, i64 %252
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = shl i32 %255, 8
  %257 = or i32 %246, %256
  %258 = trunc i32 %257 to i16
  store i16 %258, i16* %10, align 2
  %259 = load i16, i16* %10, align 2
  %260 = zext i16 %259 to i32
  %261 = and i32 %260, 8191
  %262 = trunc i32 %261 to i16
  store i16 %262, i16* %10, align 2
  %263 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %264 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = add i32 %265, 4
  store i32 %266, i32* %264, align 8
  %267 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %268 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %271 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %274 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = mul i32 %272, %275
  %277 = icmp uge i32 %269, %276
  br i1 %277, label %278, label %290

278:                                              ; preds = %237
  %279 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %280 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %283 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = mul i32 %281, %284
  %286 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %4, align 8
  %287 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = sub i32 %288, %285
  store i32 %289, i32* %287, align 8
  br label %290

290:                                              ; preds = %278, %237
  %291 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %292 = load i32, i32* %8, align 4
  %293 = load i16, i16* %9, align 2
  %294 = load i16, i16* %11, align 2
  %295 = load i16, i16* %10, align 2
  %296 = load i8, i8* %12, align 1
  %297 = load i8, i8* %13, align 1
  %298 = load i8, i8* %14, align 1
  %299 = call i32 @hpsb_iso_packet_received(%struct.hpsb_iso* %291, i32 %292, i16 zeroext %293, i16 zeroext %294, i16 zeroext %295, i8 zeroext %296, i8 zeroext %297, i8 zeroext %298)
  br label %22

300:                                              ; preds = %49, %37
  %301 = load i32, i32* %5, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %300
  %304 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %305 = call i32 @hpsb_iso_wake(%struct.hpsb_iso* %304)
  br label %306

306:                                              ; preds = %303, %300
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @PRINT(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @hpsb_iso_packet_received(%struct.hpsb_iso*, i32, i16 zeroext, i16 zeroext, i16 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @hpsb_iso_wake(%struct.hpsb_iso*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
