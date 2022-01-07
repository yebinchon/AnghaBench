; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_calculate_video_dma_grab_packed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_calculate_video_dma_grab_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.saa7146_buf = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.saa7146_video_dma = type { i32, i32, i64, i64, i64, i64 }
%struct.saa7146_format = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"[size=%dx%d,fields=%s]\0A\00", align 1
@v4l2_field_names = common dso_local global i32* null, align 8
@ME1 = common dso_local global i32 0, align 4
@V4L2_FIELD_ALTERNATE = common dso_local global i32 0, align 4
@V4L2_FIELD_TOP = common dso_local global i32 0, align 4
@V4L2_FIELD_BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.saa7146_buf*)* @calculate_video_dma_grab_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_video_dma_grab_packed(%struct.saa7146_dev* %0, %struct.saa7146_buf* %1) #0 {
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca %struct.saa7146_buf*, align 8
  %5 = alloca %struct.saa7146_vv*, align 8
  %6 = alloca %struct.saa7146_video_dma, align 8
  %7 = alloca %struct.saa7146_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store %struct.saa7146_buf* %1, %struct.saa7146_buf** %4, align 8
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %14 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %13, i32 0, i32 0
  %15 = load %struct.saa7146_vv*, %struct.saa7146_vv** %14, align 8
  store %struct.saa7146_vv* %15, %struct.saa7146_vv** %5, align 8
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %17 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %18 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev* %16, i32 %21)
  store %struct.saa7146_format* %22, %struct.saa7146_format** %7, align 8
  %23 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %24 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %29 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %34 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %39 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load %struct.saa7146_format*, %struct.saa7146_format** %7, align 8
  %44 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32*, i32** @v4l2_field_names, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @DEB_CAP(i8* %54)
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %2
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 %59, 2
  %61 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  br label %69

62:                                               ; preds = %2
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %12, align 4
  %65 = mul nsw i32 %63, %64
  %66 = mul nsw i32 %65, 2
  %67 = sdiv i32 %66, 8
  %68 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  store i32 %67, i32* %68, align 8
  br label %69

69:                                               ; preds = %62, %58
  %70 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %71 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %70, i32 0, i32 2
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = shl i32 %74, 16
  %76 = sext i32 %75 to i64
  %77 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %78 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %77, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %76, %81
  %83 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 5
  store i64 %82, i64* %83, align 8
  %84 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %85 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @ME1, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.saa7146_format*, %struct.saa7146_format** %7, align 8
  %93 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %91, %94
  %96 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %98 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 0, %99
  br i1 %100, label %101, label %131

101:                                              ; preds = %69
  %102 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %103 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 2
  store i64 %107, i64* %108, align 8
  %109 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %110 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sdiv i32 %116, 2
  %118 = load i32, i32* %9, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %114, %120
  %122 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 3
  store i64 %121, i64* %122, align 8
  %123 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sdiv i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = sub nsw i64 %124, %128
  %130 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 4
  store i64 %129, i64* %130, align 8
  br label %161

131:                                              ; preds = %69
  %132 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %133 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %132, i32 0, i32 0
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 3
  store i64 %137, i64* %138, align 8
  %139 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sdiv i32 %142, 2
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %140, %144
  %146 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 4
  store i64 %145, i64* %146, align 8
  %147 = load %struct.saa7146_buf*, %struct.saa7146_buf** %4, align 8
  %148 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %147, i32 0, i32 0
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sdiv i32 %154, 2
  %156 = load i32, i32* %9, align 4
  %157 = mul nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %152, %158
  %160 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 2
  store i64 %159, i64* %160, align 8
  br label %161

161:                                              ; preds = %131, %101
  %162 = load i32, i32* %11, align 4
  %163 = call i64 @V4L2_FIELD_HAS_BOTH(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %229

166:                                              ; preds = %161
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* @V4L2_FIELD_ALTERNATE, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %201

170:                                              ; preds = %166
  %171 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %172 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @V4L2_FIELD_TOP, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 4
  store i64 %178, i64* %179, align 8
  %180 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sdiv i32 %181, 2
  store i32 %182, i32* %180, align 8
  br label %200

183:                                              ; preds = %170
  %184 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %185 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @V4L2_FIELD_BOTTOM, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %199

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 4
  store i64 %191, i64* %192, align 8
  %193 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 3
  store i64 %194, i64* %195, align 8
  %196 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sdiv i32 %197, 2
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %189, %183
  br label %200

200:                                              ; preds = %199, %176
  br label %228

201:                                              ; preds = %166
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* @V4L2_FIELD_TOP, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 4
  store i64 %207, i64* %208, align 8
  %209 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sdiv i32 %210, 2
  store i32 %211, i32* %209, align 8
  br label %227

212:                                              ; preds = %201
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* @V4L2_FIELD_BOTTOM, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %226

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 4
  store i64 %218, i64* %219, align 8
  %220 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 3
  store i64 %221, i64* %222, align 8
  %223 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sdiv i32 %224, 2
  store i32 %225, i32* %223, align 8
  br label %226

226:                                              ; preds = %216, %212
  br label %227

227:                                              ; preds = %226, %205
  br label %228

228:                                              ; preds = %227, %200
  br label %229

229:                                              ; preds = %228, %165
  %230 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %231 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 0, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = mul nsw i32 %236, -1
  store i32 %237, i32* %235, align 8
  br label %238

238:                                              ; preds = %234, %229
  %239 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %240 = call i32 @saa7146_write_out_dma(%struct.saa7146_dev* %239, i32 1, %struct.saa7146_video_dma* %6)
  ret i32 0
}

declare dso_local %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @DEB_CAP(i8*) #1

declare dso_local i64 @V4L2_FIELD_HAS_BOTH(i32) #1

declare dso_local i32 @saa7146_write_out_dma(%struct.saa7146_dev*, i32, %struct.saa7146_video_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
