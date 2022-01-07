; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_parse_picture.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_parse_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_data = type { i32*, i32, %struct.TYPE_9__, i32, i32, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_11__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@CPIA_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@MAGIC_0 = common dso_local global i32 0, align 4
@MAGIC_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"header not found\0A\00", align 1
@VIDEOSIZE_QCIF = common dso_local global i32 0, align 4
@VIDEOSIZE_CIF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"wrong video size\0A\00", align 1
@SUBSAMPLE_420 = common dso_local global i32 0, align 4
@SUBSAMPLE_422 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"illegal subtype %d\0A\00", align 1
@YUVORDER_YUYV = common dso_local global i32 0, align 4
@YUVORDER_UYVY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"illegal yuvorder %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ROI mismatch\0A\00", align 1
@NOT_COMPRESSED = common dso_local global i32 0, align 4
@COMPRESSED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"illegal compression %d\0A\00", align 1
@NO_DECIMATION = common dso_local global i32 0, align 4
@DECIMATION_ENAB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"illegal decimation %d\0A\00", align 1
@FRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"Insufficient data in buffer\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Insufficient buffer size\0A\00", align 1
@EOL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [43 x i8] c"EOL not found giving up after %d/%d bytes\0A\00", align 1
@EOI = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [48 x i8] c"line length was not 1 but %d after %d/%d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_data*, i32)* @parse_picture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_picture(%struct.cam_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.cam_data* %0, %struct.cam_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %24 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %25 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %24, i32 0, i32 4
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %28 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @CPIA_MAX_FRAME_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %8, align 8
  %35 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %36 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %7, align 8
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %14, align 4
  %39 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %40 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %15, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MAGIC_0, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %2
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MAGIC_1, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48, %2
  %55 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %57 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %56, i32 0, i32 4
  %58 = call i32 @mutex_unlock(i32* %57)
  store i32 -1, i32* %3, align 4
  br label %591

59:                                               ; preds = %48
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 16
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @VIDEOSIZE_QCIF, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 16
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @VIDEOSIZE_CIF, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %74 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %73, i32 0, i32 4
  %75 = call i32 @mutex_unlock(i32* %74)
  store i32 -1, i32* %3, align 4
  br label %591

76:                                               ; preds = %65, %59
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 17
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SUBSAMPLE_420, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 17
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SUBSAMPLE_422, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 17
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %94 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %93, i32 0, i32 4
  %95 = call i32 @mutex_unlock(i32* %94)
  store i32 -1, i32* %3, align 4
  br label %591

96:                                               ; preds = %82, %76
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 17
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SUBSAMPLE_422, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %19, align 4
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 18
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @YUVORDER_YUYV, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %96
  %109 = load i32*, i32** %7, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 18
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @YUVORDER_UYVY, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %108
  %115 = load i32*, i32** %7, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 18
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  %119 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %120 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %119, i32 0, i32 4
  %121 = call i32 @mutex_unlock(i32* %120)
  store i32 -1, i32* %3, align 4
  br label %591

122:                                              ; preds = %108, %96
  %123 = load i32*, i32** %7, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 18
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @YUVORDER_UYVY, align 4
  %127 = icmp eq i32 %125, %126
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %10, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 24
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %133 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %131, %136
  br i1 %137, label %168, label %138

138:                                              ; preds = %122
  %139 = load i32*, i32** %7, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 25
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %143 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %141, %146
  br i1 %147, label %168, label %148

148:                                              ; preds = %138
  %149 = load i32*, i32** %7, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 26
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %153 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %151, %156
  br i1 %157, label %168, label %158

158:                                              ; preds = %148
  %159 = load i32*, i32** %7, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 27
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %163 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %161, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %158, %148, %138, %122
  %169 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %170 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %171 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %170, i32 0, i32 4
  %172 = call i32 @mutex_unlock(i32* %171)
  store i32 -1, i32* %3, align 4
  br label %591

173:                                              ; preds = %158
  %174 = load i32*, i32** %7, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 25
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %7, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 24
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %176, %179
  %181 = mul nsw i32 8, %180
  store i32 %181, i32* %17, align 4
  %182 = load i32*, i32** %7, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 27
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %7, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 26
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %184, %187
  %189 = mul nsw i32 4, %188
  store i32 %189, i32* %16, align 4
  %190 = load i32*, i32** %7, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 28
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @NOT_COMPRESSED, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %209

195:                                              ; preds = %173
  %196 = load i32*, i32** %7, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 28
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @COMPRESSED, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %209

201:                                              ; preds = %195
  %202 = load i32*, i32** %7, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 28
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %204)
  %206 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %207 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %206, i32 0, i32 4
  %208 = call i32 @mutex_unlock(i32* %207)
  store i32 -1, i32* %3, align 4
  br label %591

209:                                              ; preds = %195, %173
  %210 = load i32*, i32** %7, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 28
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @COMPRESSED, align 4
  %214 = icmp eq i32 %212, %213
  %215 = zext i1 %214 to i32
  store i32 %215, i32* %11, align 4
  %216 = load i32*, i32** %7, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 29
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @NO_DECIMATION, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %221, label %235

221:                                              ; preds = %209
  %222 = load i32*, i32** %7, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 29
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @DECIMATION_ENAB, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %221
  %228 = load i32*, i32** %7, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 29
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %230)
  %232 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %233 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %232, i32 0, i32 4
  %234 = call i32 @mutex_unlock(i32* %233)
  store i32 -1, i32* %3, align 4
  br label %591

235:                                              ; preds = %221, %209
  %236 = load i32*, i32** %7, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 29
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @DECIMATION_ENAB, align 4
  %240 = icmp eq i32 %238, %239
  %241 = zext i1 %240 to i32
  store i32 %241, i32* %12, align 4
  %242 = load i32*, i32** %7, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 30
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %246 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 0
  store i32 %244, i32* %248, align 8
  %249 = load i32*, i32** %7, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 31
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %253 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %252, i32 0, i32 5
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 1
  store i32 %251, i32* %255, align 4
  %256 = load i32*, i32** %7, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 32
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %260 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %259, i32 0, i32 5
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 0
  store i32 %258, i32* %262, align 8
  %263 = load i32*, i32** %7, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 33
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %267 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 1
  store i32 %265, i32* %269, align 4
  %270 = load i32*, i32** %7, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 34
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %274 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %273, i32 0, i32 5
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 2
  store i32 %272, i32* %276, align 8
  %277 = load i32*, i32** %7, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 35
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %281 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %280, i32 0, i32 5
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 3
  store i32 %279, i32* %283, align 4
  %284 = load i32*, i32** %7, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 36
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %288 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %287, i32 0, i32 5
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 4
  store i32 %286, i32* %290, align 8
  %291 = load i32*, i32** %7, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 37
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %295 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %294, i32 0, i32 5
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 5
  store i32 %293, i32* %297, align 4
  %298 = load i32*, i32** %7, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 38
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %302 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %301, i32 0, i32 5
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 6
  store i32 %300, i32* %304, align 8
  %305 = load i32*, i32** %7, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 39
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %309 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %308, i32 0, i32 5
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 7
  store i32 %307, i32* %311, align 4
  %312 = load i32*, i32** %7, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 41
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %316 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %315, i32 0, i32 1
  store i32 %314, i32* %316, align 8
  %317 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %318 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %317, i32 0, i32 4
  %319 = call i32 @mutex_unlock(i32* %318)
  %320 = load i32, i32* %17, align 4
  %321 = load i32, i32* %15, align 4
  %322 = call i32 @skipcount(i32 %320, i32 %321)
  store i32 %322, i32* %18, align 4
  %323 = load i64, i64* @FRAME_HEADER_SIZE, align 8
  %324 = load i32*, i32** %7, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 %323
  store i32* %325, i32** %7, align 8
  %326 = load i64, i64* @FRAME_HEADER_SIZE, align 8
  %327 = load i32, i32* %5, align 4
  %328 = sext i32 %327 to i64
  %329 = sub nsw i64 %328, %326
  %330 = trunc i64 %329 to i32
  store i32 %330, i32* %5, align 4
  %331 = load i32*, i32** %7, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 0
  %333 = load i32, i32* %332, align 4
  %334 = load i32*, i32** %7, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 1
  %336 = load i32, i32* %335, align 4
  %337 = shl i32 %336, 8
  %338 = or i32 %333, %337
  store i32 %338, i32* %9, align 4
  %339 = load i32*, i32** %7, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 2
  store i32* %340, i32** %7, align 8
  store i32 1, i32* %13, align 4
  br label %341

341:                                              ; preds = %511, %235
  %342 = load i32, i32* %5, align 4
  %343 = icmp sgt i32 %342, 0
  br i1 %343, label %344, label %512

344:                                              ; preds = %341
  %345 = load i32, i32* %9, align 4
  %346 = add nsw i32 %345, 2
  %347 = load i32, i32* %5, align 4
  %348 = sub nsw i32 %347, %346
  store i32 %348, i32* %5, align 4
  %349 = load i32, i32* %5, align 4
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %353

351:                                              ; preds = %344
  %352 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %591

353:                                              ; preds = %344
  br label %354

354:                                              ; preds = %426, %353
  %355 = load i32, i32* %9, align 4
  %356 = icmp sgt i32 %355, 1
  br i1 %356, label %357, label %427

357:                                              ; preds = %354
  %358 = load i32, i32* %11, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %368

360:                                              ; preds = %357
  %361 = load i32, i32* %11, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %407

363:                                              ; preds = %360
  %364 = load i32*, i32** %7, align 8
  %365 = load i32, i32* %364, align 4
  %366 = and i32 %365, 1
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %407, label %368

368:                                              ; preds = %363, %357
  %369 = load i32, i32* %19, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %374, label %371

371:                                              ; preds = %368
  %372 = load i32, i32* %13, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %390

374:                                              ; preds = %371, %368
  %375 = load i32*, i32** %7, align 8
  %376 = load i32*, i32** %6, align 8
  %377 = load i32, i32* %15, align 4
  %378 = load i32, i32* %10, align 4
  %379 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %380 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %379, i32 0, i32 3
  %381 = load i32, i32* %380, align 8
  %382 = call i32 @yuvconvert(i32* %375, i32* %376, i32 %377, i32 %378, i32 %381)
  %383 = load i32*, i32** %6, align 8
  %384 = sext i32 %382 to i64
  %385 = getelementptr inbounds i32, i32* %383, i64 %384
  store i32* %385, i32** %6, align 8
  %386 = load i32*, i32** %7, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 4
  store i32* %387, i32** %7, align 8
  %388 = load i32, i32* %9, align 4
  %389 = sub nsw i32 %388, 4
  store i32 %389, i32* %9, align 4
  br label %406

390:                                              ; preds = %371
  %391 = load i32*, i32** %7, align 8
  %392 = load i32*, i32** %6, align 8
  %393 = load i32, i32* %15, align 4
  %394 = load i32, i32* %18, align 4
  %395 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %396 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 8
  %398 = call i32 @convert420(i32* %391, i32* %392, i32 %393, i32 %394, i32 %397)
  %399 = load i32*, i32** %6, align 8
  %400 = sext i32 %398 to i64
  %401 = getelementptr inbounds i32, i32* %399, i64 %400
  store i32* %401, i32** %6, align 8
  %402 = load i32*, i32** %7, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 2
  store i32* %403, i32** %7, align 8
  %404 = load i32, i32* %9, align 4
  %405 = sub nsw i32 %404, 2
  store i32 %405, i32* %9, align 4
  br label %406

406:                                              ; preds = %390, %374
  br label %426

407:                                              ; preds = %363, %360
  %408 = load i32*, i32** %7, align 8
  %409 = load i32, i32* %408, align 4
  %410 = ashr i32 %409, 1
  %411 = load i32, i32* %15, align 4
  %412 = call i32 @skipcount(i32 %410, i32 %411)
  %413 = load i32*, i32** %6, align 8
  %414 = sext i32 %412 to i64
  %415 = getelementptr inbounds i32, i32* %413, i64 %414
  store i32* %415, i32** %6, align 8
  %416 = load i32*, i32** %6, align 8
  %417 = load i32*, i32** %8, align 8
  %418 = icmp ugt i32* %416, %417
  br i1 %418, label %419, label %421

419:                                              ; preds = %407
  %420 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %591

421:                                              ; preds = %407
  %422 = load i32*, i32** %7, align 8
  %423 = getelementptr inbounds i32, i32* %422, i32 1
  store i32* %423, i32** %7, align 8
  %424 = load i32, i32* %9, align 4
  %425 = add nsw i32 %424, -1
  store i32 %425, i32* %9, align 4
  br label %426

426:                                              ; preds = %421, %406
  br label %354

427:                                              ; preds = %354
  %428 = load i32, i32* %9, align 4
  %429 = icmp eq i32 %428, 1
  br i1 %429, label %430, label %504

430:                                              ; preds = %427
  %431 = load i32*, i32** %7, align 8
  %432 = load i32, i32* %431, align 4
  %433 = load i32, i32* @EOL, align 4
  %434 = icmp ne i32 %432, %433
  br i1 %434, label %435, label %441

435:                                              ; preds = %430
  %436 = load i32, i32* %14, align 4
  %437 = load i32, i32* %5, align 4
  %438 = sub nsw i32 %436, %437
  %439 = load i32, i32* %14, align 4
  %440 = call i32 @DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %438, i32 %439)
  store i32 -1, i32* %3, align 4
  br label %591

441:                                              ; preds = %430
  %442 = load i32*, i32** %7, align 8
  %443 = getelementptr inbounds i32, i32* %442, i32 1
  store i32* %443, i32** %7, align 8
  %444 = load i32, i32* %5, align 4
  %445 = icmp sgt i32 %444, 3
  br i1 %445, label %446, label %473

446:                                              ; preds = %441
  %447 = load i32*, i32** %7, align 8
  %448 = getelementptr inbounds i32, i32* %447, i64 0
  %449 = load i32, i32* %448, align 4
  %450 = load i32, i32* @EOI, align 4
  %451 = icmp eq i32 %449, %450
  br i1 %451, label %452, label %473

452:                                              ; preds = %446
  %453 = load i32*, i32** %7, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 1
  %455 = load i32, i32* %454, align 4
  %456 = load i32, i32* @EOI, align 4
  %457 = icmp eq i32 %455, %456
  br i1 %457, label %458, label %473

458:                                              ; preds = %452
  %459 = load i32*, i32** %7, align 8
  %460 = getelementptr inbounds i32, i32* %459, i64 2
  %461 = load i32, i32* %460, align 4
  %462 = load i32, i32* @EOI, align 4
  %463 = icmp eq i32 %461, %462
  br i1 %463, label %464, label %473

464:                                              ; preds = %458
  %465 = load i32*, i32** %7, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 3
  %467 = load i32, i32* %466, align 4
  %468 = load i32, i32* @EOI, align 4
  %469 = icmp eq i32 %467, %468
  br i1 %469, label %470, label %473

470:                                              ; preds = %464
  %471 = load i32, i32* %5, align 4
  %472 = sub nsw i32 %471, 4
  store i32 %472, i32* %5, align 4
  br label %512

473:                                              ; preds = %464, %458, %452, %446, %441
  %474 = load i32, i32* %12, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %481

476:                                              ; preds = %473
  %477 = load i32, i32* %18, align 4
  %478 = load i32*, i32** %6, align 8
  %479 = sext i32 %477 to i64
  %480 = getelementptr inbounds i32, i32* %478, i64 %479
  store i32* %480, i32** %6, align 8
  br label %481

481:                                              ; preds = %476, %473
  %482 = load i32, i32* %5, align 4
  %483 = icmp sgt i32 %482, 1
  br i1 %483, label %484, label %495

484:                                              ; preds = %481
  %485 = load i32*, i32** %7, align 8
  %486 = getelementptr inbounds i32, i32* %485, i64 0
  %487 = load i32, i32* %486, align 4
  %488 = load i32*, i32** %7, align 8
  %489 = getelementptr inbounds i32, i32* %488, i64 1
  %490 = load i32, i32* %489, align 4
  %491 = shl i32 %490, 8
  %492 = or i32 %487, %491
  store i32 %492, i32* %9, align 4
  %493 = load i32*, i32** %7, align 8
  %494 = getelementptr inbounds i32, i32* %493, i64 2
  store i32* %494, i32** %7, align 8
  br label %495

495:                                              ; preds = %484, %481
  %496 = load i32, i32* %12, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %503, label %498

498:                                              ; preds = %495
  %499 = load i32, i32* %13, align 4
  %500 = icmp ne i32 %499, 0
  %501 = xor i1 %500, true
  %502 = zext i1 %501 to i32
  store i32 %502, i32* %13, align 4
  br label %503

503:                                              ; preds = %498, %495
  br label %511

504:                                              ; preds = %427
  %505 = load i32, i32* %9, align 4
  %506 = load i32, i32* %14, align 4
  %507 = load i32, i32* %5, align 4
  %508 = sub nsw i32 %506, %507
  %509 = load i32, i32* %14, align 4
  %510 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i32 %505, i32 %508, i32 %509)
  store i32 -1, i32* %3, align 4
  br label %591

511:                                              ; preds = %503
  br label %341

512:                                              ; preds = %470, %341
  %513 = load i32, i32* %12, align 4
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %573

515:                                              ; preds = %512
  %516 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %517 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %516, i32 0, i32 2
  %518 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %517, i32 0, i32 0
  %519 = load i32*, i32** %518, align 8
  store i32* %519, i32** %22, align 8
  %520 = load i32*, i32** %22, align 8
  %521 = load i32, i32* %18, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i32, i32* %520, i64 %522
  store i32* %523, i32** %6, align 8
  %524 = load i32*, i32** %6, align 8
  %525 = load i32, i32* %18, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i32, i32* %524, i64 %526
  store i32* %527, i32** %23, align 8
  store i32 1, i32* %20, align 4
  br label %528

528:                                              ; preds = %565, %515
  %529 = load i32, i32* %20, align 4
  %530 = load i32, i32* %16, align 4
  %531 = sub nsw i32 %530, 1
  %532 = icmp slt i32 %529, %531
  br i1 %532, label %533, label %568

533:                                              ; preds = %528
  store i32 0, i32* %21, align 4
  br label %534

534:                                              ; preds = %549, %533
  %535 = load i32, i32* %21, align 4
  %536 = load i32, i32* %18, align 4
  %537 = icmp slt i32 %535, %536
  br i1 %537, label %538, label %552

538:                                              ; preds = %534
  %539 = load i32*, i32** %22, align 8
  %540 = getelementptr inbounds i32, i32* %539, i32 1
  store i32* %540, i32** %22, align 8
  %541 = load i32, i32* %539, align 4
  %542 = load i32*, i32** %23, align 8
  %543 = getelementptr inbounds i32, i32* %542, i32 1
  store i32* %543, i32** %23, align 8
  %544 = load i32, i32* %542, align 4
  %545 = add nsw i32 %541, %544
  %546 = sdiv i32 %545, 2
  %547 = load i32*, i32** %6, align 8
  %548 = getelementptr inbounds i32, i32* %547, i32 1
  store i32* %548, i32** %6, align 8
  store i32 %546, i32* %547, align 4
  br label %549

549:                                              ; preds = %538
  %550 = load i32, i32* %21, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %21, align 4
  br label %534

552:                                              ; preds = %534
  %553 = load i32, i32* %18, align 4
  %554 = load i32*, i32** %22, align 8
  %555 = sext i32 %553 to i64
  %556 = getelementptr inbounds i32, i32* %554, i64 %555
  store i32* %556, i32** %22, align 8
  %557 = load i32, i32* %18, align 4
  %558 = load i32*, i32** %6, align 8
  %559 = sext i32 %557 to i64
  %560 = getelementptr inbounds i32, i32* %558, i64 %559
  store i32* %560, i32** %6, align 8
  %561 = load i32, i32* %18, align 4
  %562 = load i32*, i32** %23, align 8
  %563 = sext i32 %561 to i64
  %564 = getelementptr inbounds i32, i32* %562, i64 %563
  store i32* %564, i32** %23, align 8
  br label %565

565:                                              ; preds = %552
  %566 = load i32, i32* %20, align 4
  %567 = add nsw i32 %566, 2
  store i32 %567, i32* %20, align 4
  br label %528

568:                                              ; preds = %528
  %569 = load i32*, i32** %6, align 8
  %570 = load i32*, i32** %22, align 8
  %571 = load i32, i32* %18, align 4
  %572 = call i32 @memcpy(i32* %569, i32* %570, i32 %571)
  br label %573

573:                                              ; preds = %568, %512
  %574 = load i32*, i32** %6, align 8
  %575 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %576 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %575, i32 0, i32 2
  %577 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %576, i32 0, i32 0
  %578 = load i32*, i32** %577, align 8
  %579 = ptrtoint i32* %574 to i64
  %580 = ptrtoint i32* %578 to i64
  %581 = sub i64 %579, %580
  %582 = sdiv exact i64 %581, 4
  %583 = trunc i64 %582 to i32
  %584 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %585 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %584, i32 0, i32 2
  %586 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %585, i32 0, i32 1
  store i32 %583, i32* %586, align 8
  %587 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %588 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %587, i32 0, i32 2
  %589 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %588, i32 0, i32 1
  %590 = load i32, i32* %589, align 8
  store i32 %590, i32* %3, align 4
  br label %591

591:                                              ; preds = %573, %504, %435, %419, %351, %227, %201, %168, %114, %88, %71, %54
  %592 = load i32, i32* %3, align 4
  ret i32 %592
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @LOG(i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @skipcount(i32, i32) #1

declare dso_local i32 @yuvconvert(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @convert420(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
