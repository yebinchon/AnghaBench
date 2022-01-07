; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_em28xx_isoc_copy_vbi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_em28xx_isoc_copy_vbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, i32, i32, i32, i8, i32, i32, i64, %struct.TYPE_3__, %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue }
%struct.TYPE_3__ = type { %struct.em28xx_buffer*, %struct.em28xx_buffer* }
%struct.em28xx_buffer = type { i32, i32 }
%struct.em28xx_dmaqueue = type { i64 }
%struct.urb = type { i32, i32, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@DEV_MISCONFIGURED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"packet bigger than packet size\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"VBI START HEADER!!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"dev->vbi_read > vbi_size\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Video frame %d, len=%i, %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"odd\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"even\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, %struct.urb*)* @em28xx_isoc_copy_vbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_isoc_copy_vbi(%struct.em28xx* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.em28xx*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.em28xx_buffer*, align 8
  %7 = alloca %struct.em28xx_buffer*, align 8
  %8 = alloca %struct.em28xx_dmaqueue*, align 8
  %9 = alloca %struct.em28xx_dmaqueue*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %19 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %20 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %19, i32 0, i32 10
  store %struct.em28xx_dmaqueue* %20, %struct.em28xx_dmaqueue** %8, align 8
  %21 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %22 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %21, i32 0, i32 9
  store %struct.em28xx_dmaqueue* %22, %struct.em28xx_dmaqueue** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %23 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %24 = icmp ne %struct.em28xx* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %516

26:                                               ; preds = %2
  %27 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %28 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DEV_DISCONNECTED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %35 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DEV_MISCONFIGURED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %26
  store i32 0, i32* %3, align 4
  br label %516

41:                                               ; preds = %33
  %42 = load %struct.urb*, %struct.urb** %5, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %48 = load %struct.urb*, %struct.urb** %5, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @print_err_status(%struct.em28xx* %47, i32 -1, i32 %50)
  %52 = load %struct.urb*, %struct.urb** %5, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %516

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %41
  %61 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %62 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %61, i32 0, i32 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %63, align 8
  store %struct.em28xx_buffer* %64, %struct.em28xx_buffer** %6, align 8
  %65 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %66 = icmp ne %struct.em28xx_buffer* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %69 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %68, i32 0, i32 1
  %70 = call i8* @videobuf_to_vmalloc(i32* %69)
  store i8* %70, i8** %10, align 8
  br label %71

71:                                               ; preds = %67, %60
  %72 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %73 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %72, i32 0, i32 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %74, align 8
  store %struct.em28xx_buffer* %75, %struct.em28xx_buffer** %7, align 8
  %76 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %7, align 8
  %77 = icmp ne %struct.em28xx_buffer* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %7, align 8
  %80 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %79, i32 0, i32 1
  %81 = call i8* @videobuf_to_vmalloc(i32* %80)
  store i8* %81, i8** %11, align 8
  br label %82

82:                                               ; preds = %78, %71
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %511, %82
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.urb*, %struct.urb** %5, align 8
  %86 = getelementptr inbounds %struct.urb, %struct.urb* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %514

89:                                               ; preds = %83
  %90 = load %struct.urb*, %struct.urb** %5, align 8
  %91 = getelementptr inbounds %struct.urb, %struct.urb* %90, i32 0, i32 3
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %89
  %101 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @print_err_status(%struct.em28xx* %101, i32 %102, i32 %103)
  %105 = load %struct.urb*, %struct.urb** %5, align 8
  %106 = getelementptr inbounds %struct.urb, %struct.urb* %105, i32 0, i32 3
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @EPROTO, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp ne i32 %112, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %100
  br label %511

117:                                              ; preds = %100
  br label %118

118:                                              ; preds = %117, %89
  %119 = load %struct.urb*, %struct.urb** %5, align 8
  %120 = getelementptr inbounds %struct.urb, %struct.urb* %119, i32 0, i32 3
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %13, align 4
  %127 = load %struct.urb*, %struct.urb** %5, align 8
  %128 = getelementptr inbounds %struct.urb, %struct.urb* %127, i32 0, i32 3
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp sle i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %118
  br label %511

137:                                              ; preds = %118
  %138 = load %struct.urb*, %struct.urb** %5, align 8
  %139 = getelementptr inbounds %struct.urb, %struct.urb* %138, i32 0, i32 3
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %147 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp sgt i32 %145, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %137
  %151 = call i32 (i8*, ...) @em28xx_isocdbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %511

152:                                              ; preds = %137
  %153 = load %struct.urb*, %struct.urb** %5, align 8
  %154 = getelementptr inbounds %struct.urb, %struct.urb* %153, i32 0, i32 2
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.urb*, %struct.urb** %5, align 8
  %157 = getelementptr inbounds %struct.urb, %struct.urb* %156, i32 0, i32 3
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %155, i64 %164
  store i8* %165, i8** %15, align 8
  %166 = load i8*, i8** %15, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp eq i32 %169, 51
  br i1 %170, label %171, label %192

171:                                              ; preds = %152
  %172 = load i8*, i8** %15, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp eq i32 %175, 149
  br i1 %176, label %177, label %192

177:                                              ; preds = %171
  %178 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %179 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %178, i32 0, i32 2
  store i32 0, i32* %179, align 8
  %180 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %181 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %180, i32 0, i32 3
  store i32 0, i32* %181, align 4
  %182 = call i32 (i8*, ...) @em28xx_isocdbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %183 = load i8*, i8** %15, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 2
  %185 = load i8, i8* %184, align 1
  %186 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %187 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %186, i32 0, i32 4
  store i8 %185, i8* %187, align 8
  %188 = load i8*, i8** %15, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 4
  store i8* %189, i8** %15, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sub nsw i32 %190, 4
  store i32 %191, i32* %13, align 4
  br label %240

192:                                              ; preds = %171, %152
  %193 = load i8*, i8** %15, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 0
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = icmp eq i32 %196, 136
  br i1 %197, label %198, label %221

198:                                              ; preds = %192
  %199 = load i8*, i8** %15, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp eq i32 %202, 136
  br i1 %203, label %204, label %221

204:                                              ; preds = %198
  %205 = load i8*, i8** %15, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 2
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = icmp eq i32 %208, 136
  br i1 %209, label %210, label %221

210:                                              ; preds = %204
  %211 = load i8*, i8** %15, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 3
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp eq i32 %214, 136
  br i1 %215, label %216, label %221

216:                                              ; preds = %210
  %217 = load i8*, i8** %15, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 4
  store i8* %218, i8** %15, align 8
  %219 = load i32, i32* %13, align 4
  %220 = sub nsw i32 %219, 4
  store i32 %220, i32* %13, align 4
  br label %239

221:                                              ; preds = %210, %204, %198, %192
  %222 = load i8*, i8** %15, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 0
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = icmp eq i32 %225, 34
  br i1 %226, label %227, label %238

227:                                              ; preds = %221
  %228 = load i8*, i8** %15, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 1
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = icmp eq i32 %231, 90
  br i1 %232, label %233, label %238

233:                                              ; preds = %227
  %234 = load i8*, i8** %15, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 4
  store i8* %235, i8** %15, align 8
  %236 = load i32, i32* %13, align 4
  %237 = sub nsw i32 %236, 4
  store i32 %237, i32* %13, align 4
  br label %238

238:                                              ; preds = %233, %227, %221
  br label %239

239:                                              ; preds = %238, %216
  br label %240

240:                                              ; preds = %239, %177
  %241 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %242 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %245 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %244, i32 0, i32 6
  %246 = load i32, i32* %245, align 8
  %247 = mul nsw i32 %243, %246
  store i32 %247, i32* %16, align 4
  %248 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %249 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %366

252:                                              ; preds = %240
  %253 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %254 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %16, align 4
  %257 = icmp sge i32 %255, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %252
  %259 = call i32 (i8*, ...) @em28xx_isocdbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %365

260:                                              ; preds = %252
  %261 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %262 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %13, align 4
  %265 = add nsw i32 %263, %264
  %266 = load i32, i32* %16, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %337

268:                                              ; preds = %260
  %269 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %270 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %299

273:                                              ; preds = %268
  %274 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %275 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %274, i32 0, i32 4
  %276 = load i8, i8* %275, align 8
  %277 = zext i8 %276 to i32
  %278 = and i32 %277, 1
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %299, label %280

280:                                              ; preds = %273
  %281 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %7, align 8
  %282 = icmp ne %struct.em28xx_buffer* %281, null
  br i1 %282, label %283, label %288

283:                                              ; preds = %280
  %284 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %285 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %9, align 8
  %286 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %7, align 8
  %287 = call i32 @vbi_buffer_filled(%struct.em28xx* %284, %struct.em28xx_dmaqueue* %285, %struct.em28xx_buffer* %286)
  br label %288

288:                                              ; preds = %283, %280
  %289 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %9, align 8
  %290 = call i32 @vbi_get_next_buf(%struct.em28xx_dmaqueue* %289, %struct.em28xx_buffer** %7)
  %291 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %7, align 8
  %292 = icmp eq %struct.em28xx_buffer* %291, null
  br i1 %292, label %293, label %294

293:                                              ; preds = %288
  store i8* null, i8** %11, align 8
  br label %298

294:                                              ; preds = %288
  %295 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %7, align 8
  %296 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %295, i32 0, i32 1
  %297 = call i8* @videobuf_to_vmalloc(i32* %296)
  store i8* %297, i8** %11, align 8
  br label %298

298:                                              ; preds = %294, %293
  br label %299

299:                                              ; preds = %298, %273, %268
  %300 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %301 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %324

304:                                              ; preds = %299
  %305 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %9, align 8
  %306 = getelementptr inbounds %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue* %305, i32 0, i32 0
  store i64 0, i64* %306, align 8
  %307 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %7, align 8
  %308 = icmp ne %struct.em28xx_buffer* %307, null
  br i1 %308, label %309, label %323

309:                                              ; preds = %304
  %310 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %311 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %310, i32 0, i32 4
  %312 = load i8, i8* %311, align 8
  %313 = zext i8 %312 to i32
  %314 = and i32 %313, 1
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %309
  %317 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %7, align 8
  %318 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %317, i32 0, i32 0
  store i32 0, i32* %318, align 4
  br label %322

319:                                              ; preds = %309
  %320 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %7, align 8
  %321 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %320, i32 0, i32 0
  store i32 1, i32* %321, align 4
  br label %322

322:                                              ; preds = %319, %316
  br label %323

323:                                              ; preds = %322, %304
  br label %324

324:                                              ; preds = %323, %299
  %325 = load i32, i32* %13, align 4
  %326 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %327 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = add nsw i32 %328, %325
  store i32 %329, i32* %327, align 4
  %330 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %331 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %9, align 8
  %332 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %7, align 8
  %333 = load i8*, i8** %15, align 8
  %334 = load i8*, i8** %11, align 8
  %335 = load i32, i32* %13, align 4
  %336 = call i32 @em28xx_copy_vbi(%struct.em28xx* %330, %struct.em28xx_dmaqueue* %331, %struct.em28xx_buffer* %332, i8* %333, i8* %334, i32 %335)
  br label %364

337:                                              ; preds = %260
  %338 = load i32, i32* %16, align 4
  %339 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %340 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 4
  %342 = sub nsw i32 %338, %341
  store i32 %342, i32* %18, align 4
  %343 = load i32, i32* %18, align 4
  %344 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %345 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 4
  %347 = add nsw i32 %346, %343
  store i32 %347, i32* %345, align 4
  %348 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %349 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %9, align 8
  %350 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %7, align 8
  %351 = load i8*, i8** %15, align 8
  %352 = load i8*, i8** %11, align 8
  %353 = load i32, i32* %18, align 4
  %354 = call i32 @em28xx_copy_vbi(%struct.em28xx* %348, %struct.em28xx_dmaqueue* %349, %struct.em28xx_buffer* %350, i8* %351, i8* %352, i32 %353)
  %355 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %356 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %355, i32 0, i32 2
  store i32 1, i32* %356, align 8
  %357 = load i32, i32* %18, align 4
  %358 = load i8*, i8** %15, align 8
  %359 = sext i32 %357 to i64
  %360 = getelementptr inbounds i8, i8* %358, i64 %359
  store i8* %360, i8** %15, align 8
  %361 = load i32, i32* %18, align 4
  %362 = load i32, i32* %13, align 4
  %363 = sub nsw i32 %362, %361
  store i32 %363, i32* %13, align 4
  br label %364

364:                                              ; preds = %337, %324
  br label %365

365:                                              ; preds = %364, %258
  br label %366

366:                                              ; preds = %365, %240
  %367 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %368 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = icmp eq i32 %369, 1
  br i1 %370, label %371, label %424

371:                                              ; preds = %366
  %372 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %373 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %372, i32 0, i32 2
  store i32 2, i32* %373, align 8
  %374 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %375 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %374, i32 0, i32 7
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %385, label %378

378:                                              ; preds = %371
  %379 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %380 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %379, i32 0, i32 4
  %381 = load i8, i8* %380, align 8
  %382 = zext i8 %381 to i32
  %383 = and i32 %382, 1
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %404, label %385

385:                                              ; preds = %378, %371
  %386 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %387 = icmp ne %struct.em28xx_buffer* %386, null
  br i1 %387, label %388, label %393

388:                                              ; preds = %385
  %389 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %390 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %8, align 8
  %391 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %392 = call i32 @buffer_filled(%struct.em28xx* %389, %struct.em28xx_dmaqueue* %390, %struct.em28xx_buffer* %391)
  br label %393

393:                                              ; preds = %388, %385
  %394 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %8, align 8
  %395 = call i32 @get_next_buf(%struct.em28xx_dmaqueue* %394, %struct.em28xx_buffer** %6)
  %396 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %397 = icmp eq %struct.em28xx_buffer* %396, null
  br i1 %397, label %398, label %399

398:                                              ; preds = %393
  store i8* null, i8** %10, align 8
  br label %403

399:                                              ; preds = %393
  %400 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %401 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %400, i32 0, i32 1
  %402 = call i8* @videobuf_to_vmalloc(i32* %401)
  store i8* %402, i8** %10, align 8
  br label %403

403:                                              ; preds = %399, %398
  br label %404

404:                                              ; preds = %403, %378
  %405 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %406 = icmp ne %struct.em28xx_buffer* %405, null
  br i1 %406, label %407, label %421

407:                                              ; preds = %404
  %408 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %409 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %408, i32 0, i32 4
  %410 = load i8, i8* %409, align 8
  %411 = zext i8 %410 to i32
  %412 = and i32 %411, 1
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %417

414:                                              ; preds = %407
  %415 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %416 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %415, i32 0, i32 0
  store i32 0, i32* %416, align 4
  br label %420

417:                                              ; preds = %407
  %418 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %419 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %418, i32 0, i32 0
  store i32 1, i32* %419, align 4
  br label %420

420:                                              ; preds = %417, %414
  br label %421

421:                                              ; preds = %420, %404
  %422 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %8, align 8
  %423 = getelementptr inbounds %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue* %422, i32 0, i32 0
  store i64 0, i64* %423, align 8
  br label %424

424:                                              ; preds = %421, %366
  %425 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %426 = icmp ne %struct.em28xx_buffer* %425, null
  br i1 %426, label %427, label %510

427:                                              ; preds = %424
  %428 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %429 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 8
  %431 = icmp eq i32 %430, 2
  br i1 %431, label %432, label %510

432:                                              ; preds = %427
  %433 = load i32, i32* %13, align 4
  %434 = icmp sge i32 %433, 4
  br i1 %434, label %435, label %464

435:                                              ; preds = %432
  %436 = load i8*, i8** %15, align 8
  %437 = getelementptr inbounds i8, i8* %436, i64 0
  %438 = load i8, i8* %437, align 1
  %439 = zext i8 %438 to i32
  %440 = icmp eq i32 %439, 136
  br i1 %440, label %441, label %464

441:                                              ; preds = %435
  %442 = load i8*, i8** %15, align 8
  %443 = getelementptr inbounds i8, i8* %442, i64 1
  %444 = load i8, i8* %443, align 1
  %445 = zext i8 %444 to i32
  %446 = icmp eq i32 %445, 136
  br i1 %446, label %447, label %464

447:                                              ; preds = %441
  %448 = load i8*, i8** %15, align 8
  %449 = getelementptr inbounds i8, i8* %448, i64 2
  %450 = load i8, i8* %449, align 1
  %451 = zext i8 %450 to i32
  %452 = icmp eq i32 %451, 136
  br i1 %452, label %453, label %464

453:                                              ; preds = %447
  %454 = load i8*, i8** %15, align 8
  %455 = getelementptr inbounds i8, i8* %454, i64 3
  %456 = load i8, i8* %455, align 1
  %457 = zext i8 %456 to i32
  %458 = icmp eq i32 %457, 136
  br i1 %458, label %459, label %464

459:                                              ; preds = %453
  %460 = load i8*, i8** %15, align 8
  %461 = getelementptr inbounds i8, i8* %460, i64 4
  store i8* %461, i8** %15, align 8
  %462 = load i32, i32* %13, align 4
  %463 = sub nsw i32 %462, 4
  store i32 %463, i32* %13, align 4
  br label %464

464:                                              ; preds = %459, %453, %447, %441, %435, %432
  %465 = load i32, i32* %13, align 4
  %466 = icmp sge i32 %465, 4
  br i1 %466, label %467, label %498

467:                                              ; preds = %464
  %468 = load i8*, i8** %15, align 8
  %469 = getelementptr inbounds i8, i8* %468, i64 0
  %470 = load i8, i8* %469, align 1
  %471 = zext i8 %470 to i32
  %472 = icmp eq i32 %471, 34
  br i1 %472, label %473, label %498

473:                                              ; preds = %467
  %474 = load i8*, i8** %15, align 8
  %475 = getelementptr inbounds i8, i8* %474, i64 1
  %476 = load i8, i8* %475, align 1
  %477 = zext i8 %476 to i32
  %478 = icmp eq i32 %477, 90
  br i1 %478, label %479, label %498

479:                                              ; preds = %473
  %480 = load i8*, i8** %15, align 8
  %481 = getelementptr inbounds i8, i8* %480, i64 2
  %482 = load i8, i8* %481, align 1
  %483 = zext i8 %482 to i32
  %484 = load i32, i32* %13, align 4
  %485 = load i8*, i8** %15, align 8
  %486 = getelementptr inbounds i8, i8* %485, i64 2
  %487 = load i8, i8* %486, align 1
  %488 = zext i8 %487 to i32
  %489 = and i32 %488, 1
  %490 = icmp ne i32 %489, 0
  %491 = zext i1 %490 to i64
  %492 = select i1 %490, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %493 = call i32 (i8*, ...) @em28xx_isocdbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %483, i32 %484, i8* %492)
  %494 = load i8*, i8** %15, align 8
  %495 = getelementptr inbounds i8, i8* %494, i64 4
  store i8* %495, i8** %15, align 8
  %496 = load i32, i32* %13, align 4
  %497 = sub nsw i32 %496, 4
  store i32 %497, i32* %13, align 4
  br label %498

498:                                              ; preds = %479, %473, %467, %464
  %499 = load i32, i32* %13, align 4
  %500 = icmp sgt i32 %499, 0
  br i1 %500, label %501, label %509

501:                                              ; preds = %498
  %502 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %503 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %8, align 8
  %504 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %505 = load i8*, i8** %15, align 8
  %506 = load i8*, i8** %10, align 8
  %507 = load i32, i32* %13, align 4
  %508 = call i32 @em28xx_copy_video(%struct.em28xx* %502, %struct.em28xx_dmaqueue* %503, %struct.em28xx_buffer* %504, i8* %505, i8* %506, i32 %507)
  br label %509

509:                                              ; preds = %501, %498
  br label %510

510:                                              ; preds = %509, %427, %424
  br label %511

511:                                              ; preds = %510, %150, %136, %116
  %512 = load i32, i32* %12, align 4
  %513 = add nsw i32 %512, 1
  store i32 %513, i32* %12, align 4
  br label %83

514:                                              ; preds = %83
  %515 = load i32, i32* %14, align 4
  store i32 %515, i32* %3, align 4
  br label %516

516:                                              ; preds = %514, %58, %40, %25
  %517 = load i32, i32* %3, align 4
  ret i32 %517
}

declare dso_local i32 @print_err_status(%struct.em28xx*, i32, i32) #1

declare dso_local i8* @videobuf_to_vmalloc(i32*) #1

declare dso_local i32 @em28xx_isocdbg(i8*, ...) #1

declare dso_local i32 @vbi_buffer_filled(%struct.em28xx*, %struct.em28xx_dmaqueue*, %struct.em28xx_buffer*) #1

declare dso_local i32 @vbi_get_next_buf(%struct.em28xx_dmaqueue*, %struct.em28xx_buffer**) #1

declare dso_local i32 @em28xx_copy_vbi(%struct.em28xx*, %struct.em28xx_dmaqueue*, %struct.em28xx_buffer*, i8*, i8*, i32) #1

declare dso_local i32 @buffer_filled(%struct.em28xx*, %struct.em28xx_dmaqueue*, %struct.em28xx_buffer*) #1

declare dso_local i32 @get_next_buf(%struct.em28xx_dmaqueue*, %struct.em28xx_buffer**) #1

declare dso_local i32 @em28xx_copy_video(%struct.em28xx*, %struct.em28xx_dmaqueue*, %struct.em28xx_buffer*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
