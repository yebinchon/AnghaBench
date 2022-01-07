; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_em28xx_isoc_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_em28xx_isoc_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, i32, i64, %struct.TYPE_3__, %struct.em28xx_dmaqueue }
%struct.TYPE_3__ = type { %struct.em28xx_buffer* }
%struct.em28xx_buffer = type { i32, i32 }
%struct.em28xx_dmaqueue = type { i64 }
%struct.urb = type { i32, i32, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@DEV_MISCONFIGURED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"packet bigger than packet size\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"VBI HEADER!!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Video frame %d, length=%i, %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"odd\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"even\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"frame is not complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, %struct.urb*)* @em28xx_isoc_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_isoc_copy(%struct.em28xx* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.em28xx*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.em28xx_buffer*, align 8
  %7 = alloca %struct.em28xx_dmaqueue*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %14 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %15 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %14, i32 0, i32 4
  store %struct.em28xx_dmaqueue* %15, %struct.em28xx_dmaqueue** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %16 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %17 = icmp ne %struct.em28xx* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %281

19:                                               ; preds = %2
  %20 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %21 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DEV_DISCONNECTED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %28 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DEV_MISCONFIGURED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %19
  store i32 0, i32* %3, align 4
  br label %281

34:                                               ; preds = %26
  %35 = load %struct.urb*, %struct.urb** %5, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %41 = load %struct.urb*, %struct.urb** %5, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @print_err_status(%struct.em28xx* %40, i32 -1, i32 %43)
  %45 = load %struct.urb*, %struct.urb** %5, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %281

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %55 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %56, align 8
  store %struct.em28xx_buffer* %57, %struct.em28xx_buffer** %6, align 8
  %58 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %59 = icmp ne %struct.em28xx_buffer* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %62 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %61, i32 0, i32 1
  %63 = call i8* @videobuf_to_vmalloc(i32* %62)
  store i8* %63, i8** %8, align 8
  br label %64

64:                                               ; preds = %60, %53
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %276, %64
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.urb*, %struct.urb** %5, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %279

71:                                               ; preds = %65
  %72 = load %struct.urb*, %struct.urb** %5, align 8
  %73 = getelementptr inbounds %struct.urb, %struct.urb* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %71
  %83 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @print_err_status(%struct.em28xx* %83, i32 %84, i32 %85)
  %87 = load %struct.urb*, %struct.urb** %5, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 3
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @EPROTO, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %82
  br label %276

99:                                               ; preds = %82
  br label %100

100:                                              ; preds = %99, %71
  %101 = load %struct.urb*, %struct.urb** %5, align 8
  %102 = getelementptr inbounds %struct.urb, %struct.urb* %101, i32 0, i32 3
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %108, 4
  store i32 %109, i32* %10, align 4
  %110 = load %struct.urb*, %struct.urb** %5, align 8
  %111 = getelementptr inbounds %struct.urb, %struct.urb* %110, i32 0, i32 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp sle i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %100
  br label %276

120:                                              ; preds = %100
  %121 = load %struct.urb*, %struct.urb** %5, align 8
  %122 = getelementptr inbounds %struct.urb, %struct.urb* %121, i32 0, i32 3
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %130 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %128, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %120
  %134 = call i32 (i8*, ...) @em28xx_isocdbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %276

135:                                              ; preds = %120
  %136 = load %struct.urb*, %struct.urb** %5, align 8
  %137 = getelementptr inbounds %struct.urb, %struct.urb* %136, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.urb*, %struct.urb** %5, align 8
  %140 = getelementptr inbounds %struct.urb, %struct.urb* %139, i32 0, i32 3
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %138, i64 %147
  store i8* %148, i8** %12, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 51
  br i1 %153, label %154, label %168

154:                                              ; preds = %135
  %155 = load i8*, i8** %12, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp eq i32 %158, 149
  br i1 %159, label %160, label %168

160:                                              ; preds = %154
  %161 = load i8*, i8** %12, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 2
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = call i32 (i8*, ...) @em28xx_isocdbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %276

168:                                              ; preds = %160, %154, %135
  %169 = load i8*, i8** %12, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 0
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp eq i32 %172, 34
  br i1 %173, label %174, label %245

174:                                              ; preds = %168
  %175 = load i8*, i8** %12, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = icmp eq i32 %178, 90
  br i1 %179, label %180, label %245

180:                                              ; preds = %174
  %181 = load i8*, i8** %12, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 2
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = load i32, i32* %10, align 4
  %186 = load i8*, i8** %12, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 2
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = and i32 %189, 1
  %191 = icmp ne i32 %190, 0
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %194 = call i32 (i8*, ...) @em28xx_isocdbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %184, i32 %185, i8* %193)
  %195 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %196 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %206, label %199

199:                                              ; preds = %180
  %200 = load i8*, i8** %12, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 2
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = and i32 %203, 1
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %225, label %206

206:                                              ; preds = %199, %180
  %207 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %208 = icmp ne %struct.em28xx_buffer* %207, null
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %211 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %7, align 8
  %212 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %213 = call i32 @buffer_filled(%struct.em28xx* %210, %struct.em28xx_dmaqueue* %211, %struct.em28xx_buffer* %212)
  br label %214

214:                                              ; preds = %209, %206
  %215 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %7, align 8
  %216 = call i32 @get_next_buf(%struct.em28xx_dmaqueue* %215, %struct.em28xx_buffer** %6)
  %217 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %218 = icmp eq %struct.em28xx_buffer* %217, null
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  store i8* null, i8** %8, align 8
  br label %224

220:                                              ; preds = %214
  %221 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %222 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %221, i32 0, i32 1
  %223 = call i8* @videobuf_to_vmalloc(i32* %222)
  store i8* %223, i8** %8, align 8
  br label %224

224:                                              ; preds = %220, %219
  br label %225

225:                                              ; preds = %224, %199
  %226 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %227 = icmp ne %struct.em28xx_buffer* %226, null
  br i1 %227, label %228, label %242

228:                                              ; preds = %225
  %229 = load i8*, i8** %12, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 2
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = and i32 %232, 1
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %228
  %236 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %237 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %236, i32 0, i32 0
  store i32 0, i32* %237, align 4
  br label %241

238:                                              ; preds = %228
  %239 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %240 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %239, i32 0, i32 0
  store i32 1, i32* %240, align 4
  br label %241

241:                                              ; preds = %238, %235
  br label %242

242:                                              ; preds = %241, %225
  %243 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %7, align 8
  %244 = getelementptr inbounds %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue* %243, i32 0, i32 0
  store i64 0, i64* %244, align 8
  br label %245

245:                                              ; preds = %242, %174, %168
  %246 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %247 = icmp ne %struct.em28xx_buffer* %246, null
  br i1 %247, label %248, label %275

248:                                              ; preds = %245
  %249 = load i8*, i8** %12, align 8
  %250 = getelementptr inbounds i8, i8* %249, i64 0
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = icmp ne i32 %252, 136
  br i1 %253, label %254, label %264

254:                                              ; preds = %248
  %255 = load i8*, i8** %12, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 0
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  %259 = icmp ne i32 %258, 34
  br i1 %259, label %260, label %264

260:                                              ; preds = %254
  %261 = call i32 (i8*, ...) @em28xx_isocdbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %262 = load i32, i32* %10, align 4
  %263 = add nsw i32 %262, 4
  store i32 %263, i32* %10, align 4
  br label %267

264:                                              ; preds = %254, %248
  %265 = load i8*, i8** %12, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 4
  store i8* %266, i8** %12, align 8
  br label %267

267:                                              ; preds = %264, %260
  %268 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %269 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %7, align 8
  %270 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %271 = load i8*, i8** %12, align 8
  %272 = load i8*, i8** %8, align 8
  %273 = load i32, i32* %10, align 4
  %274 = call i32 @em28xx_copy_video(%struct.em28xx* %268, %struct.em28xx_dmaqueue* %269, %struct.em28xx_buffer* %270, i8* %271, i8* %272, i32 %273)
  br label %275

275:                                              ; preds = %267, %245
  br label %276

276:                                              ; preds = %275, %166, %133, %119, %98
  %277 = load i32, i32* %9, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %9, align 4
  br label %65

279:                                              ; preds = %65
  %280 = load i32, i32* %11, align 4
  store i32 %280, i32* %3, align 4
  br label %281

281:                                              ; preds = %279, %51, %33, %18
  %282 = load i32, i32* %3, align 4
  ret i32 %282
}

declare dso_local i32 @print_err_status(%struct.em28xx*, i32, i32) #1

declare dso_local i8* @videobuf_to_vmalloc(i32*) #1

declare dso_local i32 @em28xx_isocdbg(i8*, ...) #1

declare dso_local i32 @buffer_filled(%struct.em28xx*, %struct.em28xx_dmaqueue*, %struct.em28xx_buffer*) #1

declare dso_local i32 @get_next_buf(%struct.em28xx_dmaqueue*, %struct.em28xx_buffer**) #1

declare dso_local i32 @em28xx_copy_video(%struct.em28xx*, %struct.em28xx_dmaqueue*, %struct.em28xx_buffer*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
