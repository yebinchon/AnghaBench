; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_decode_JangGu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_decode_JangGu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_se401 = type { i64, i32, i32, i32*, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64 }
%struct.se401_scratch = type { i8*, i32 }

@FRAME_READY = common dso_local global i64 0, align 8
@FRAME_GRABBING = common dso_local global i64 0, align 8
@FRAME_DONE = common dso_local global i64 0, align 8
@SE401_NUMFRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_se401*, %struct.se401_scratch*)* @decode_JangGu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_JangGu(%struct.usb_se401* %0, %struct.se401_scratch* %1) #0 {
  %3 = alloca %struct.usb_se401*, align 8
  %4 = alloca %struct.se401_scratch*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_se401* %0, %struct.usb_se401** %3, align 8
  store %struct.se401_scratch* %1, %struct.se401_scratch** %4, align 8
  %13 = load %struct.se401_scratch*, %struct.se401_scratch** %4, align 8
  %14 = getelementptr inbounds %struct.se401_scratch, %struct.se401_scratch* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %5, align 8
  %16 = load %struct.se401_scratch*, %struct.se401_scratch** %4, align 8
  %17 = getelementptr inbounds %struct.se401_scratch, %struct.se401_scratch* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %20 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %19, i32 0, i32 5
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %23 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %86, label %29

29:                                               ; preds = %2
  %30 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %31 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %30, i32 0, i32 5
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %34 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %39 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %38, i32 0, i32 5
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %42 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %48 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %49, 3
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %46, %51
  %53 = sub nsw i64 %52, 1
  %54 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %55 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %54, i32 0, i32 5
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %58 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  store i64 %53, i64* %61, align 8
  %62 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %63 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %62, i32 0, i32 5
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %66 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @FRAME_READY, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %29
  %74 = load i64, i64* @FRAME_GRABBING, align 8
  %75 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %76 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %75, i32 0, i32 5
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %79 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i64 %74, i64* %82, align 8
  br label %83

83:                                               ; preds = %73, %29
  %84 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %85 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %84, i32 0, i32 2
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %2
  br label %87

87:                                               ; preds = %340, %86
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %341

91:                                               ; preds = %87
  %92 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %93 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 1024, %94
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %6, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %91
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %12, align 4
  %104 = sub nsw i32 %102, %103
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %101, %91
  %106 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %107 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %110 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = load i8*, i8** %5, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @memcpy(i32* %113, i8* %117, i32 %118)
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %122 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, %120
  store i32 %124, i32* %122, align 4
  store i32 0, i32* %10, align 4
  %125 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %126 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = icmp sge i32 %127, 4
  br i1 %128, label %129, label %184

129:                                              ; preds = %105
  %130 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %131 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %136 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 8
  %141 = add nsw i32 %134, %140
  store i32 %141, i32* %7, align 4
  %142 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %143 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %148 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 63
  %153 = shl i32 %152, 8
  %154 = add nsw i32 %146, %153
  store i32 %154, i32* %8, align 4
  %155 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %156 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 192
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 47
  %163 = ashr i32 %162, 4
  %164 = shl i32 %163, 1
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp sgt i32 %165, 1024
  br i1 %166, label %167, label %183

167:                                              ; preds = %129
  %168 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %169 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %168, i32 0, i32 2
  store i32 0, i32* %169, align 4
  %170 = load i32, i32* %6, align 4
  store i32 %170, i32* %12, align 4
  store i32 0, i32* %10, align 4
  %171 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %172 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 8
  %175 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %176 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %175, i32 0, i32 5
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %179 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  store i32 0, i32* %182, align 8
  br label %183

183:                                              ; preds = %167, %129
  br label %184

184:                                              ; preds = %183, %105
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %336

187:                                              ; preds = %184
  %188 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %189 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %336

193:                                              ; preds = %187
  %194 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %195 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %196 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %195, i32 0, i32 3
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @decode_JangGu_vlc(%struct.usb_se401* %194, i32* %197, i32 %198, i32 %199)
  %201 = load i32, i32* %8, align 4
  %202 = mul nsw i32 %201, 3
  %203 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %204 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %203, i32 0, i32 5
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %207 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, %202
  store i32 %212, i32* %210, align 8
  %213 = load i32, i32* %11, align 4
  %214 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %215 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %10, align 4
  %218 = sub nsw i32 %216, %217
  %219 = sub nsw i32 %213, %218
  %220 = load i32, i32* %12, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %12, align 4
  %222 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %223 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %222, i32 0, i32 2
  store i32 0, i32* %223, align 4
  %224 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %225 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %224, i32 0, i32 5
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %228 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %234 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %237 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = mul nsw i32 %235, %238
  %240 = mul nsw i32 %239, 3
  %241 = icmp sge i32 %232, %240
  br i1 %241, label %242, label %335

242:                                              ; preds = %193
  %243 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %244 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %243, i32 0, i32 5
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %244, align 8
  %246 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %247 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %253 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %256 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = mul nsw i32 %254, %257
  %259 = mul nsw i32 %258, 3
  %260 = icmp eq i32 %251, %259
  br i1 %260, label %261, label %320

261:                                              ; preds = %242
  %262 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %263 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %262, i32 0, i32 5
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** %263, align 8
  %265 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %266 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @FRAME_GRABBING, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %291

273:                                              ; preds = %261
  %274 = load i64, i64* @FRAME_DONE, align 8
  %275 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %276 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %275, i32 0, i32 5
  %277 = load %struct.TYPE_2__*, %struct.TYPE_2__** %276, align 8
  %278 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %279 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 1
  store i64 %274, i64* %282, align 8
  %283 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %284 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %283, i32 0, i32 8
  %285 = load i32, i32* %284, align 8
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %284, align 8
  %287 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %288 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %287, i32 0, i32 7
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %273, %261
  %292 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %293 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %292, i32 0, i32 5
  %294 = load %struct.TYPE_2__*, %struct.TYPE_2__** %293, align 8
  %295 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %296 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = add i64 %297, 1
  %299 = load i32, i32* @SE401_NUMFRAMES, align 4
  %300 = sub nsw i32 %299, 1
  %301 = sext i32 %300 to i64
  %302 = and i64 %298, %301
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @FRAME_READY, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %319

308:                                              ; preds = %291
  %309 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %310 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = add i64 %311, 1
  %313 = load i32, i32* @SE401_NUMFRAMES, align 4
  %314 = sub nsw i32 %313, 1
  %315 = sext i32 %314 to i64
  %316 = and i64 %312, %315
  %317 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %318 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %317, i32 0, i32 0
  store i64 %316, i64* %318, align 8
  br label %319

319:                                              ; preds = %308, %291
  br label %325

320:                                              ; preds = %242
  %321 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %322 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %321, i32 0, i32 6
  %323 = load i32, i32* %322, align 8
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %322, align 8
  br label %325

325:                                              ; preds = %320, %319
  %326 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %327 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %326, i32 0, i32 5
  %328 = load %struct.TYPE_2__*, %struct.TYPE_2__** %327, align 8
  %329 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %330 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %332, i32 0, i32 0
  store i32 0, i32* %333, align 8
  %334 = load i32, i32* %6, align 4
  store i32 %334, i32* %12, align 4
  br label %335

335:                                              ; preds = %325, %193
  br label %340

336:                                              ; preds = %187, %184
  %337 = load i32, i32* %11, align 4
  %338 = load i32, i32* %12, align 4
  %339 = add nsw i32 %338, %337
  store i32 %339, i32* %12, align 4
  br label %340

340:                                              ; preds = %336, %335
  br label %87

341:                                              ; preds = %87
  ret void
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @decode_JangGu_vlc(%struct.usb_se401*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
