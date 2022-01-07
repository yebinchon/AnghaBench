; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_buffer_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_buffer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.file* }
%struct.file = type { %struct.saa7146_fh* }
%struct.saa7146_fh = type { %struct.TYPE_5__, %struct.saa7146_dev* }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i64, i32 }
%struct.saa7146_dev = type { i32, %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.videobuf_buffer = type { i32 }
%struct.saa7146_buf = type { i32, %struct.TYPE_6__, i32*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32, i32, i64, i32, i32, i32, i64 }
%struct.saa7146_format = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"vbuf:%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"w (%d) / h (%d) out of bounds.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"size mismatch.\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"buffer_prepare [size=%dx%d,bytes=%d,fields=%s]\0A\00", align 1
@v4l2_field_names = common dso_local global i32* null, align 8
@VIDEOBUF_NEEDS_INIT = common dso_local global i64 0, align 8
@VIDEOBUF_PREPARED = common dso_local global i64 0, align 8
@buffer_activate = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"error out.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, i32)* @buffer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_prepare(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.videobuf_queue*, align 8
  %6 = alloca %struct.videobuf_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.saa7146_fh*, align 8
  %10 = alloca %struct.saa7146_dev*, align 8
  %11 = alloca %struct.saa7146_vv*, align 8
  %12 = alloca %struct.saa7146_buf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.saa7146_format*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %5, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %17 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %16, i32 0, i32 0
  %18 = load %struct.file*, %struct.file** %17, align 8
  store %struct.file* %18, %struct.file** %8, align 8
  %19 = load %struct.file*, %struct.file** %8, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load %struct.saa7146_fh*, %struct.saa7146_fh** %20, align 8
  store %struct.saa7146_fh* %21, %struct.saa7146_fh** %9, align 8
  %22 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %23 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %22, i32 0, i32 1
  %24 = load %struct.saa7146_dev*, %struct.saa7146_dev** %23, align 8
  store %struct.saa7146_dev* %24, %struct.saa7146_dev** %10, align 8
  %25 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %26 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %25, i32 0, i32 1
  %27 = load %struct.saa7146_vv*, %struct.saa7146_vv** %26, align 8
  store %struct.saa7146_vv* %27, %struct.saa7146_vv** %11, align 8
  %28 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %29 = bitcast %struct.videobuf_buffer* %28 to %struct.saa7146_buf*
  store %struct.saa7146_buf* %29, %struct.saa7146_buf** %12, align 8
  store i32 0, i32* %14, align 4
  %30 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %31 = bitcast %struct.videobuf_buffer* %30 to i8*
  %32 = call i32 @DEB_CAP(i8* %31)
  %33 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %34 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, 48
  br i1 %37, label %66, label %38

38:                                               ; preds = %3
  %39 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %40 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 32
  br i1 %43, label %66, label %44

44:                                               ; preds = %38
  %45 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %46 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %50 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %48, %53
  br i1 %54, label %66, label %55

55:                                               ; preds = %44
  %56 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %57 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %61 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %59, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %55, %44, %38, %3
  %67 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %68 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %72 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 @DEB_D(i8* %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %318

80:                                               ; preds = %55
  %81 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %82 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %13, align 4
  %85 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %86 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 0, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %80
  %91 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %92 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = call i32 @DEB_D(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %318

101:                                              ; preds = %90, %80
  %102 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %103 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %107 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32*, i32** @v4l2_field_names, align 8
  %112 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %113 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  %120 = call i32 @DEB_CAP(i8* %119)
  %121 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %122 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %126 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %124, %128
  br i1 %129, label %182, label %130

130:                                              ; preds = %101
  %131 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %132 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %136 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %134, %138
  br i1 %139, label %182, label %140

140:                                              ; preds = %130
  %141 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %142 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %146 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %144, %148
  br i1 %149, label %182, label %150

150:                                              ; preds = %140
  %151 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %152 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %182, label %157

157:                                              ; preds = %150
  %158 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %159 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %182, label %164

164:                                              ; preds = %157
  %165 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %166 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %171 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %169, %173
  br i1 %174, label %182, label %175

175:                                              ; preds = %164
  %176 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %177 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %176, i32 0, i32 3
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %177, align 8
  %179 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %180 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %179, i32 0, i32 0
  %181 = icmp ne %struct.TYPE_5__* %178, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %175, %164, %157, %150, %140, %130, %101
  %183 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %184 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %185 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %186 = call i32 @saa7146_dma_free(%struct.saa7146_dev* %183, %struct.videobuf_queue* %184, %struct.saa7146_buf* %185)
  br label %187

187:                                              ; preds = %182, %175
  %188 = load i64, i64* @VIDEOBUF_NEEDS_INIT, align 8
  %189 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %190 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 7
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %188, %192
  br i1 %193, label %194, label %303

194:                                              ; preds = %187
  %195 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %196 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %200 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 3
  store i64 %198, i64* %201, align 8
  %202 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %203 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %207 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  store i32 %205, i32* %208, align 4
  %209 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %210 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %214 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 4
  store i32 %212, i32* %215, align 8
  %216 = load i32, i32* %13, align 4
  %217 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %218 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 5
  store i32 %216, i32* %219, align 4
  %220 = load i32, i32* %7, align 4
  %221 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %222 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 6
  store i32 %220, i32* %223, align 8
  %224 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %225 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %224, i32 0, i32 0
  %226 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %227 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %226, i32 0, i32 3
  store %struct.TYPE_5__* %225, %struct.TYPE_5__** %227, align 8
  %228 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %229 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = trunc i64 %231 to i32
  %233 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %234 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 6
  store i32 %232, i32* %235, align 8
  %236 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %237 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %238 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %237, i32 0, i32 3
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = call %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev* %236, i32 %241)
  store %struct.saa7146_format* %242, %struct.saa7146_format** %15, align 8
  %243 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %244 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %245 = call i32 @release_all_pagetables(%struct.saa7146_dev* %243, %struct.saa7146_buf* %244)
  %246 = load %struct.saa7146_format*, %struct.saa7146_format** %15, align 8
  %247 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i64 @IS_PLANAR(i32 %248)
  %250 = icmp ne i64 0, %249
  br i1 %250, label %251, label %276

251:                                              ; preds = %194
  %252 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %253 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %256 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  %259 = call i32 @saa7146_pgtable_alloc(i32 %254, i32* %258)
  %260 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %261 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %264 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %263, i32 0, i32 2
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  %267 = call i32 @saa7146_pgtable_alloc(i32 %262, i32* %266)
  %268 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %269 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %272 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %271, i32 0, i32 2
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 2
  %275 = call i32 @saa7146_pgtable_alloc(i32 %270, i32* %274)
  br label %285

276:                                              ; preds = %194
  %277 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %278 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %281 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %280, i32 0, i32 2
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 0
  %284 = call i32 @saa7146_pgtable_alloc(i32 %279, i32* %283)
  br label %285

285:                                              ; preds = %276, %251
  %286 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %287 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %288 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %287, i32 0, i32 1
  %289 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %290 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %289, i32 0, i32 0
  %291 = call i32 @videobuf_iolock(%struct.videobuf_queue* %286, %struct.TYPE_6__* %288, i32* %290)
  store i32 %291, i32* %14, align 4
  %292 = load i32, i32* %14, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %285
  br label %311

295:                                              ; preds = %285
  %296 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %297 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %298 = call i32 @saa7146_pgtable_build(%struct.saa7146_dev* %296, %struct.saa7146_buf* %297)
  store i32 %298, i32* %14, align 4
  %299 = load i32, i32* %14, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %295
  br label %311

302:                                              ; preds = %295
  br label %303

303:                                              ; preds = %302, %187
  %304 = load i64, i64* @VIDEOBUF_PREPARED, align 8
  %305 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %306 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 7
  store i64 %304, i64* %307, align 8
  %308 = load i32, i32* @buffer_activate, align 4
  %309 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %310 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %309, i32 0, i32 0
  store i32 %308, i32* %310, align 8
  store i32 0, i32* %4, align 4
  br label %318

311:                                              ; preds = %301, %294
  %312 = call i32 @DEB_D(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %313 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %314 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %315 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %316 = call i32 @saa7146_dma_free(%struct.saa7146_dev* %313, %struct.videobuf_queue* %314, %struct.saa7146_buf* %315)
  %317 = load i32, i32* %14, align 4
  store i32 %317, i32* %4, align 4
  br label %318

318:                                              ; preds = %311, %303, %97, %66
  %319 = load i32, i32* %4, align 4
  ret i32 %319
}

declare dso_local i32 @DEB_CAP(i8*) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @saa7146_dma_free(%struct.saa7146_dev*, %struct.videobuf_queue*, %struct.saa7146_buf*) #1

declare dso_local %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @release_all_pagetables(%struct.saa7146_dev*, %struct.saa7146_buf*) #1

declare dso_local i64 @IS_PLANAR(i32) #1

declare dso_local i32 @saa7146_pgtable_alloc(i32, i32*) #1

declare dso_local i32 @videobuf_iolock(%struct.videobuf_queue*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @saa7146_pgtable_build(%struct.saa7146_dev*, %struct.saa7146_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
