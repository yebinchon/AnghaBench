; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_prepare_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_prepare_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.videobuf_queue = type { %struct.bttv_fh* }
%struct.bttv_fh = type { i32 }
%struct.bttv = type { i32, i64, i32, %struct.bttv_crop* }
%struct.bttv_crop = type { i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.bttv_buffer = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.bttv_format* }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i32, i32, i64 }
%struct.bttv_format = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BT848_COLOR_FMT_RAW = common dso_local global i64 0, align 8
@RAW_BPL = common dso_local global i32 0, align 4
@RAW_LINES = common dso_local global i32 0, align 4
@bttv_tvnorms = common dso_local global %struct.TYPE_8__* null, align 8
@VIDEOBUF_NEEDS_INIT = common dso_local global i64 0, align 8
@VIDEOBUF_PREPARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, %struct.bttv*, %struct.bttv_buffer*, %struct.bttv_format*, i32, i32, i32)* @bttv_prepare_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_prepare_buffer(%struct.videobuf_queue* %0, %struct.bttv* %1, %struct.bttv_buffer* %2, %struct.bttv_format* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.videobuf_queue*, align 8
  %10 = alloca %struct.bttv*, align 8
  %11 = alloca %struct.bttv_buffer*, align 8
  %12 = alloca %struct.bttv_format*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bttv_fh*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.bttv_crop, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %9, align 8
  store %struct.bttv* %1, %struct.bttv** %10, align 8
  store %struct.bttv_buffer* %2, %struct.bttv_buffer** %11, align 8
  store %struct.bttv_format* %3, %struct.bttv_format** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load %struct.videobuf_queue*, %struct.videobuf_queue** %9, align 8
  %22 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %21, i32 0, i32 0
  %23 = load %struct.bttv_fh*, %struct.bttv_fh** %22, align 8
  store %struct.bttv_fh* %23, %struct.bttv_fh** %16, align 8
  store i32 0, i32* %17, align 4
  %24 = load %struct.bttv_format*, %struct.bttv_format** %12, align 8
  %25 = icmp eq %struct.bttv_format* null, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %7
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %304

29:                                               ; preds = %7
  %30 = load %struct.bttv_format*, %struct.bttv_format** %12, align 8
  %31 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BT848_COLOR_FMT_RAW, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %86

35:                                               ; preds = %29
  %36 = load i32, i32* @RAW_BPL, align 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* @RAW_LINES, align 4
  %38 = mul nsw i32 %37, 2
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %14, align 4
  %41 = mul i32 %39, %40
  %42 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %43 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ugt i32 %41, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %304

50:                                               ; preds = %35
  %51 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %52 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %56 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.bttv*, %struct.bttv** %10, align 8
  %59 = getelementptr inbounds %struct.bttv, %struct.bttv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %19, align 4
  %61 = load %struct.bttv*, %struct.bttv** %10, align 8
  %62 = getelementptr inbounds %struct.bttv, %struct.bttv* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvnorms, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %63, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %50
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %8, align 4
  br label %304

76:                                               ; preds = %50
  %77 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %18, i32 0, i32 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvnorms, align 8
  %79 = load i32, i32* %19, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = bitcast %struct.TYPE_6__* %77 to i8*
  %85 = bitcast %struct.TYPE_6__* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 32, i1 false)
  br label %173

86:                                               ; preds = %29
  %87 = load %struct.bttv*, %struct.bttv** %10, align 8
  %88 = getelementptr inbounds %struct.bttv, %struct.bttv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %19, align 4
  %90 = load %struct.bttv*, %struct.bttv** %10, align 8
  %91 = getelementptr inbounds %struct.bttv, %struct.bttv* %90, i32 0, i32 3
  %92 = load %struct.bttv_crop*, %struct.bttv_crop** %91, align 8
  %93 = load %struct.bttv_fh*, %struct.bttv_fh** %16, align 8
  %94 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %92, i64 %100
  %102 = bitcast %struct.bttv_crop* %18 to i8*
  %103 = bitcast %struct.bttv_crop* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 48, i1 false)
  %104 = load i32, i32* %13, align 4
  %105 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %18, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ult i32 %104, %106
  br i1 %107, label %118, label %108

108:                                              ; preds = %86
  %109 = load i32, i32* %13, align 4
  %110 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %18, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ugt i32 %109, %111
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %14, align 4
  %115 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %18, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ult i32 %114, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %113, %108, %86
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %8, align 4
  br label %304

121:                                              ; preds = %113
  %122 = load i32, i32* %15, align 4
  switch i32 %122, label %133 [
    i32 128, label %123
    i32 129, label %123
    i32 130, label %123
  ]

123:                                              ; preds = %121, %121, %121
  %124 = load i32, i32* %14, align 4
  %125 = mul i32 %124, 2
  %126 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %18, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp ugt i32 %125, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %8, align 4
  br label %304

132:                                              ; preds = %123
  br label %142

133:                                              ; preds = %121
  %134 = load i32, i32* %14, align 4
  %135 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %18, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = icmp ugt i32 %134, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %8, align 4
  br label %304

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141, %132
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %14, align 4
  %145 = mul i32 %143, %144
  %146 = load %struct.bttv_format*, %struct.bttv_format** %12, align 8
  %147 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = mul i32 %145, %148
  %150 = lshr i32 %149, 3
  %151 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %152 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 4
  %154 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %155 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 0, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %142
  %160 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %161 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %165 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp ult i32 %163, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %159
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %8, align 4
  br label %304

172:                                              ; preds = %159, %142
  br label %173

173:                                              ; preds = %172, %76
  %174 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %175 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %242, label %180

180:                                              ; preds = %173
  %181 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %182 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %14, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %242, label %187

187:                                              ; preds = %180
  %188 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %189 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %15, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %242, label %194

194:                                              ; preds = %187
  %195 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %196 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %19, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %242, label %200

200:                                              ; preds = %194
  %201 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %202 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %201, i32 0, i32 3
  %203 = load %struct.bttv_format*, %struct.bttv_format** %202, align 8
  %204 = load %struct.bttv_format*, %struct.bttv_format** %12, align 8
  %205 = icmp ne %struct.bttv_format* %203, %204
  br i1 %205, label %242, label %206

206:                                              ; preds = %200
  %207 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %208 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %18, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %210, %213
  br i1 %214, label %242, label %215

215:                                              ; preds = %206
  %216 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %217 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %18, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %219, %222
  br i1 %223, label %242, label %224

224:                                              ; preds = %215
  %225 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %226 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %18, i32 0, i32 4
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %228, %231
  br i1 %232, label %242, label %233

233:                                              ; preds = %224
  %234 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %235 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %18, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 3
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %237, %240
  br i1 %241, label %242, label %266

242:                                              ; preds = %233, %224, %215, %206, %200, %194, %187, %180, %173
  %243 = load i32, i32* %13, align 4
  %244 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %245 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 3
  store i32 %243, i32* %246, align 8
  %247 = load i32, i32* %14, align 4
  %248 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %249 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 4
  store i32 %247, i32* %250, align 4
  %251 = load i32, i32* %15, align 4
  %252 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %253 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 5
  store i32 %251, i32* %254, align 8
  %255 = load i32, i32* %19, align 4
  %256 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %257 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %256, i32 0, i32 0
  store i32 %255, i32* %257, align 8
  %258 = load %struct.bttv_format*, %struct.bttv_format** %12, align 8
  %259 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %260 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %259, i32 0, i32 3
  store %struct.bttv_format* %258, %struct.bttv_format** %260, align 8
  %261 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %262 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %18, i32 0, i32 4
  %264 = bitcast %struct.TYPE_6__* %262 to i8*
  %265 = bitcast %struct.TYPE_6__* %263 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %264, i8* align 8 %265, i64 32, i1 false)
  store i32 1, i32* %17, align 4
  br label %266

266:                                              ; preds = %242, %233
  %267 = load i64, i64* @VIDEOBUF_NEEDS_INIT, align 8
  %268 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %269 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 6
  %271 = load i64, i64* %270, align 8
  %272 = icmp eq i64 %267, %271
  br i1 %272, label %273, label %283

273:                                              ; preds = %266
  store i32 1, i32* %17, align 4
  %274 = load %struct.videobuf_queue*, %struct.videobuf_queue** %9, align 8
  %275 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %276 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %275, i32 0, i32 1
  %277 = load %struct.bttv*, %struct.bttv** %10, align 8
  %278 = getelementptr inbounds %struct.bttv, %struct.bttv* %277, i32 0, i32 2
  %279 = call i32 @videobuf_iolock(%struct.videobuf_queue* %274, %struct.TYPE_7__* %276, i32* %278)
  store i32 %279, i32* %20, align 4
  %280 = icmp ne i32 0, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %273
  br label %298

282:                                              ; preds = %273
  br label %283

283:                                              ; preds = %282, %266
  %284 = load i32, i32* %17, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %293

286:                                              ; preds = %283
  %287 = load %struct.bttv*, %struct.bttv** %10, align 8
  %288 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %289 = call i32 @bttv_buffer_risc(%struct.bttv* %287, %struct.bttv_buffer* %288)
  store i32 %289, i32* %20, align 4
  %290 = icmp ne i32 0, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %286
  br label %298

292:                                              ; preds = %286
  br label %293

293:                                              ; preds = %292, %283
  %294 = load i64, i64* @VIDEOBUF_PREPARED, align 8
  %295 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %296 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 6
  store i64 %294, i64* %297, align 8
  store i32 0, i32* %8, align 4
  br label %304

298:                                              ; preds = %291, %281
  %299 = load %struct.videobuf_queue*, %struct.videobuf_queue** %9, align 8
  %300 = load %struct.bttv*, %struct.bttv** %10, align 8
  %301 = load %struct.bttv_buffer*, %struct.bttv_buffer** %11, align 8
  %302 = call i32 @bttv_dma_free(%struct.videobuf_queue* %299, %struct.bttv* %300, %struct.bttv_buffer* %301)
  %303 = load i32, i32* %20, align 4
  store i32 %303, i32* %8, align 4
  br label %304

304:                                              ; preds = %298, %293, %169, %138, %129, %118, %73, %47, %26
  %305 = load i32, i32* %8, align 4
  ret i32 %305
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @videobuf_iolock(%struct.videobuf_queue*, %struct.TYPE_7__*, i32*) #2

declare dso_local i32 @bttv_buffer_risc(%struct.bttv*, %struct.bttv_buffer*) #2

declare dso_local i32 @bttv_dma_free(%struct.videobuf_queue*, %struct.bttv*, %struct.bttv_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
