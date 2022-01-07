; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_decode_bayer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_decode_bayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_se401 = type { i32, i32, i64, %struct.se401_frame*, i32, i32, i32 }
%struct.se401_frame = type { i8*, i32, i64, i8*, i32 }
%struct.se401_scratch = type { i8*, i32, i32 }

@FRAME_READY = common dso_local global i64 0, align 8
@FRAME_GRABBING = common dso_local global i64 0, align 8
@FRAME_DONE = common dso_local global i64 0, align 8
@SE401_NUMFRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_se401*, %struct.se401_scratch*)* @decode_bayer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_bayer(%struct.usb_se401* %0, %struct.se401_scratch* %1) #0 {
  %3 = alloca %struct.usb_se401*, align 8
  %4 = alloca %struct.se401_scratch*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.se401_frame*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.usb_se401* %0, %struct.usb_se401** %3, align 8
  store %struct.se401_scratch* %1, %struct.se401_scratch** %4, align 8
  %18 = load %struct.se401_scratch*, %struct.se401_scratch** %4, align 8
  %19 = getelementptr inbounds %struct.se401_scratch, %struct.se401_scratch* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %5, align 8
  %21 = load %struct.se401_scratch*, %struct.se401_scratch** %4, align 8
  %22 = getelementptr inbounds %struct.se401_scratch, %struct.se401_scratch* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.se401_scratch*, %struct.se401_scratch** %4, align 8
  %25 = getelementptr inbounds %struct.se401_scratch, %struct.se401_scratch* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %28 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %31 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %35 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %34, i32 0, i32 3
  %36 = load %struct.se401_frame*, %struct.se401_frame** %35, align 8
  %37 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %38 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %36, i64 %39
  store %struct.se401_frame* %40, %struct.se401_frame** %9, align 8
  %41 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %42 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %10, align 8
  %44 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %45 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %47 = load i32, i32* %13, align 4
  %48 = mul nsw i32 %47, 3
  store i32 %48, i32* %16, align 4
  %49 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %50 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %2
  %54 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %55 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FRAME_READY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i64, i64* @FRAME_GRABBING, align 8
  %61 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %62 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %53
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %69 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %71 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %70, i32 0, i32 4
  store i32 0, i32* %71, align 8
  br label %72

72:                                               ; preds = %63, %2
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %75 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %80 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %79, i32 0, i32 1
  store i32 0, i32* %80, align 8
  %81 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %82 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  br label %434

85:                                               ; preds = %72
  %86 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %87 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %8, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %96 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %94, %97
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %93, %85
  %100 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %101 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = srem i32 %102, 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i32 1, i32* %14, align 4
  br label %106

106:                                              ; preds = %105, %99
  %107 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %108 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %111 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sdiv i32 %109, %112
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %113, %114
  store i32 %115, i32* %15, align 4
  %116 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %117 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %11, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8* %122, i8** %12, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = load i32, i32* %8, align 4
  %126 = mul nsw i32 %125, 3
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  %129 = icmp uge i8* %123, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %106
  %131 = load i8*, i8** %11, align 8
  store i8* %131, i8** %12, align 8
  br label %132

132:                                              ; preds = %130, %106
  br label %133

133:                                              ; preds = %316, %132
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %333

136:                                              ; preds = %133
  %137 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %138 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %200

142:                                              ; preds = %136
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %145 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %149 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sdiv i32 %150, %151
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %152, %153
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %16, align 4
  %156 = mul nsw i32 %155, 2
  %157 = load i8*, i8** %11, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  store i8* %159, i8** %11, align 8
  %160 = load i32, i32* %16, align 4
  %161 = mul nsw i32 %160, 2
  %162 = load i8*, i8** %12, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8* %164, i8** %12, align 8
  %165 = load i8*, i8** %11, align 8
  %166 = load i8*, i8** %10, align 8
  %167 = load i32, i32* %8, align 4
  %168 = mul nsw i32 %167, 3
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %166, i64 %169
  %171 = icmp uge i8* %165, %170
  br i1 %171, label %172, label %189

172:                                              ; preds = %142
  %173 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %174 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  %177 = load i8*, i8** %11, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 -3
  store i8* %178, i8** %11, align 8
  %179 = load i8*, i8** %12, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 -3
  store i8* %180, i8** %12, align 8
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %6, align 4
  %183 = load i8*, i8** %5, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %5, align 8
  %185 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %186 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %172, %142
  %190 = load i8*, i8** %12, align 8
  %191 = load i8*, i8** %10, align 8
  %192 = load i32, i32* %8, align 4
  %193 = mul nsw i32 %192, 3
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  %196 = icmp uge i8* %190, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = load i8*, i8** %11, align 8
  store i8* %198, i8** %12, align 8
  br label %199

199:                                              ; preds = %197, %189
  br label %200

200:                                              ; preds = %199, %136
  %201 = load i32, i32* %15, align 4
  %202 = and i32 %201, 1
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %261

204:                                              ; preds = %200
  %205 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %206 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = and i32 %207, 1
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %227

210:                                              ; preds = %204
  %211 = load i8*, i8** %5, align 8
  %212 = load i8, i8* %211, align 1
  %213 = load i8*, i8** %11, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 2
  store i8 %212, i8* %214, align 1
  %215 = load i8*, i8** %5, align 8
  %216 = load i8, i8* %215, align 1
  %217 = load i8*, i8** %11, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 -1
  store i8 %216, i8* %218, align 1
  %219 = load i8*, i8** %5, align 8
  %220 = load i8, i8* %219, align 1
  %221 = load i8*, i8** %12, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 2
  store i8 %220, i8* %222, align 1
  %223 = load i8*, i8** %5, align 8
  %224 = load i8, i8* %223, align 1
  %225 = load i8*, i8** %12, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 -1
  store i8 %224, i8* %226, align 1
  br label %260

227:                                              ; preds = %204
  %228 = load i8*, i8** %11, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 1
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = load i8*, i8** %5, align 8
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = add nsw i32 %231, %234
  %236 = sdiv i32 %235, 2
  %237 = trunc i32 %236 to i8
  %238 = load i8*, i8** %11, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 1
  store i8 %237, i8* %239, align 1
  %240 = load i8*, i8** %11, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 -2
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  %244 = load i8*, i8** %5, align 8
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = add nsw i32 %243, %246
  %248 = sdiv i32 %247, 2
  %249 = trunc i32 %248 to i8
  %250 = load i8*, i8** %11, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 -2
  store i8 %249, i8* %251, align 1
  %252 = load i8*, i8** %5, align 8
  %253 = load i8, i8* %252, align 1
  %254 = load i8*, i8** %12, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 1
  store i8 %253, i8* %255, align 1
  %256 = load i8*, i8** %5, align 8
  %257 = load i8, i8* %256, align 1
  %258 = load i8*, i8** %12, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 -2
  store i8 %257, i8* %259, align 1
  br label %260

260:                                              ; preds = %227, %210
  br label %316

261:                                              ; preds = %200
  %262 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %263 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = and i32 %264, 1
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %300

267:                                              ; preds = %261
  %268 = load i8*, i8** %11, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 1
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = load i8*, i8** %5, align 8
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i32
  %275 = add nsw i32 %271, %274
  %276 = sdiv i32 %275, 2
  %277 = trunc i32 %276 to i8
  %278 = load i8*, i8** %11, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 1
  store i8 %277, i8* %279, align 1
  %280 = load i8*, i8** %11, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 -2
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  %284 = load i8*, i8** %5, align 8
  %285 = load i8, i8* %284, align 1
  %286 = zext i8 %285 to i32
  %287 = add nsw i32 %283, %286
  %288 = sdiv i32 %287, 2
  %289 = trunc i32 %288 to i8
  %290 = load i8*, i8** %11, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 -2
  store i8 %289, i8* %291, align 1
  %292 = load i8*, i8** %5, align 8
  %293 = load i8, i8* %292, align 1
  %294 = load i8*, i8** %12, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 1
  store i8 %293, i8* %295, align 1
  %296 = load i8*, i8** %5, align 8
  %297 = load i8, i8* %296, align 1
  %298 = load i8*, i8** %12, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 -2
  store i8 %297, i8* %299, align 1
  br label %315

300:                                              ; preds = %261
  %301 = load i8*, i8** %5, align 8
  %302 = load i8, i8* %301, align 1
  %303 = load i8*, i8** %11, align 8
  store i8 %302, i8* %303, align 1
  %304 = load i8*, i8** %5, align 8
  %305 = load i8, i8* %304, align 1
  %306 = load i8*, i8** %11, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 -3
  store i8 %305, i8* %307, align 1
  %308 = load i8*, i8** %5, align 8
  %309 = load i8, i8* %308, align 1
  %310 = load i8*, i8** %12, align 8
  store i8 %309, i8* %310, align 1
  %311 = load i8*, i8** %5, align 8
  %312 = load i8, i8* %311, align 1
  %313 = load i8*, i8** %12, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 -3
  store i8 %312, i8* %314, align 1
  br label %315

315:                                              ; preds = %300, %267
  br label %316

316:                                              ; preds = %315, %260
  %317 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %318 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 8
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %318, align 8
  %321 = load i8*, i8** %11, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 -3
  store i8* %322, i8** %11, align 8
  %323 = load i8*, i8** %12, align 8
  %324 = getelementptr inbounds i8, i8* %323, i64 -3
  store i8* %324, i8** %12, align 8
  %325 = load i32, i32* %6, align 4
  %326 = add nsw i32 %325, -1
  store i32 %326, i32* %6, align 4
  %327 = load i8*, i8** %5, align 8
  %328 = getelementptr inbounds i8, i8* %327, i32 1
  store i8* %328, i8** %5, align 8
  %329 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %330 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %330, align 8
  br label %133

333:                                              ; preds = %133
  %334 = load i8*, i8** %11, align 8
  %335 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %336 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %335, i32 0, i32 3
  store i8* %334, i8** %336, align 8
  %337 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %338 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* %8, align 4
  %341 = icmp sge i32 %339, %340
  br i1 %341, label %342, label %434

342:                                              ; preds = %333
  %343 = load i32, i32* %16, align 4
  %344 = load i8*, i8** %10, align 8
  %345 = sext i32 %343 to i64
  %346 = getelementptr inbounds i8, i8* %344, i64 %345
  store i8* %346, i8** %10, align 8
  store i32 0, i32* %17, align 4
  br label %347

347:                                              ; preds = %360, %342
  %348 = load i32, i32* %17, align 4
  %349 = load i32, i32* %16, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %363

351:                                              ; preds = %347
  %352 = load i8*, i8** %10, align 8
  %353 = getelementptr inbounds i8, i8* %352, i32 -1
  store i8* %353, i8** %10, align 8
  %354 = load i8*, i8** %10, align 8
  %355 = load i32, i32* %16, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %354, i64 %356
  %358 = load i8, i8* %357, align 1
  %359 = load i8*, i8** %10, align 8
  store i8 %358, i8* %359, align 1
  br label %360

360:                                              ; preds = %351
  %361 = load i32, i32* %17, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %17, align 4
  br label %347

363:                                              ; preds = %347
  store i32 0, i32* %17, align 4
  br label %364

364:                                              ; preds = %389, %363
  %365 = load i32, i32* %17, align 4
  %366 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %367 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = icmp slt i32 %365, %368
  br i1 %369, label %370, label %392

370:                                              ; preds = %364
  %371 = load i8*, i8** %10, align 8
  %372 = getelementptr inbounds i8, i8* %371, i64 3
  %373 = load i8, i8* %372, align 1
  %374 = load i8*, i8** %10, align 8
  store i8 %373, i8* %374, align 1
  %375 = load i8*, i8** %10, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 4
  %377 = load i8, i8* %376, align 1
  %378 = load i8*, i8** %10, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 1
  store i8 %377, i8* %379, align 1
  %380 = load i8*, i8** %10, align 8
  %381 = getelementptr inbounds i8, i8* %380, i64 5
  %382 = load i8, i8* %381, align 1
  %383 = load i8*, i8** %10, align 8
  %384 = getelementptr inbounds i8, i8* %383, i64 2
  store i8 %382, i8* %384, align 1
  %385 = load i32, i32* %16, align 4
  %386 = load i8*, i8** %10, align 8
  %387 = sext i32 %385 to i64
  %388 = getelementptr inbounds i8, i8* %386, i64 %387
  store i8* %388, i8** %10, align 8
  br label %389

389:                                              ; preds = %370
  %390 = load i32, i32* %17, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %17, align 4
  br label %364

392:                                              ; preds = %364
  %393 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %394 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %393, i32 0, i32 1
  store i32 0, i32* %394, align 8
  %395 = load i64, i64* @FRAME_DONE, align 8
  %396 = load %struct.se401_frame*, %struct.se401_frame** %9, align 8
  %397 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %396, i32 0, i32 2
  store i64 %395, i64* %397, align 8
  %398 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %399 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %398, i32 0, i32 5
  %400 = load i32, i32* %399, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %399, align 4
  %402 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %403 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %402, i32 0, i32 4
  %404 = load i32, i32* %403, align 8
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %403, align 8
  %406 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %407 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %406, i32 0, i32 3
  %408 = load %struct.se401_frame*, %struct.se401_frame** %407, align 8
  %409 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %410 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %409, i32 0, i32 2
  %411 = load i64, i64* %410, align 8
  %412 = add i64 %411, 1
  %413 = load i32, i32* @SE401_NUMFRAMES, align 4
  %414 = sub nsw i32 %413, 1
  %415 = sext i32 %414 to i64
  %416 = and i64 %412, %415
  %417 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %408, i64 %416
  %418 = getelementptr inbounds %struct.se401_frame, %struct.se401_frame* %417, i32 0, i32 2
  %419 = load i64, i64* %418, align 8
  %420 = load i64, i64* @FRAME_READY, align 8
  %421 = icmp eq i64 %419, %420
  br i1 %421, label %422, label %433

422:                                              ; preds = %392
  %423 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %424 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %423, i32 0, i32 2
  %425 = load i64, i64* %424, align 8
  %426 = add i64 %425, 1
  %427 = load i32, i32* @SE401_NUMFRAMES, align 4
  %428 = sub nsw i32 %427, 1
  %429 = sext i32 %428 to i64
  %430 = and i64 %426, %429
  %431 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %432 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %431, i32 0, i32 2
  store i64 %430, i64* %432, align 8
  br label %433

433:                                              ; preds = %422, %392
  br label %434

434:                                              ; preds = %78, %433, %333
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
