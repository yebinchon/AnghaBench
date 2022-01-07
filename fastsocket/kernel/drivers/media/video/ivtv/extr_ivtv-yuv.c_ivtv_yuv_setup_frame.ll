; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-yuv.c_ivtv_yuv_setup_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-yuv.c_ivtv_yuv_setup_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.yuv_playback_info }
%struct.yuv_playback_info = type { i32, i32, i32, i32, i64, %struct.yuv_frame_info, %struct.yuv_frame_info* }
%struct.yuv_frame_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ivtv_dma_frame = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@IVTV_YUV_BUFFERS = common dso_local global i32 0, align 4
@IVTV_YUV_MODE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Requesting reg update for frame %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*, %struct.ivtv_dma_frame*)* @ivtv_yuv_setup_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_yuv_setup_frame(%struct.ivtv* %0, %struct.ivtv_dma_frame* %1) #0 {
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca %struct.ivtv_dma_frame*, align 8
  %5 = alloca %struct.yuv_playback_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.yuv_frame_info*, align 8
  %9 = alloca %struct.yuv_frame_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store %struct.ivtv_dma_frame* %1, %struct.ivtv_dma_frame** %4, align 8
  %12 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %13 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %12, i32 0, i32 0
  store %struct.yuv_playback_info* %13, %struct.yuv_playback_info** %5, align 8
  %14 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %15 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* @IVTV_YUV_BUFFERS, align 4
  %20 = srem i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %22 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %21, i32 0, i32 6
  %23 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %23, i64 %25
  store %struct.yuv_frame_info* %26, %struct.yuv_frame_info** %8, align 8
  %27 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %28 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %27, i32 0, i32 6
  %29 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %29, i64 %31
  store %struct.yuv_frame_info* %32, %struct.yuv_frame_info** %9, align 8
  %33 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %34 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %37 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %11, align 4
  %39 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %4, align 8
  %40 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %44 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %4, align 8
  %46 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %50 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %49, i32 0, i32 18
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %4, align 8
  %52 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %56 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %55, i32 0, i32 17
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %4, align 8
  %58 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %62 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %4, align 8
  %64 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %68 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %67, i32 0, i32 16
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %4, align 8
  %70 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %74 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %73, i32 0, i32 15
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %4, align 8
  %76 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %80 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %79, i32 0, i32 14
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %4, align 8
  %82 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %86 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %4, align 8
  %88 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %92 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %91, i32 0, i32 13
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %4, align 8
  %94 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %97 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %4, align 8
  %99 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %102 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %104 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %107 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %105, %108
  %110 = icmp slt i32 %109, 496
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 1, i32 0
  %113 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %114 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 8
  %115 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %116 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  %117 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %118 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %117, i32 0, i32 7
  store i32 0, i32* %118, align 4
  %119 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %120 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %119, i32 0, i32 8
  store i32 0, i32* %120, align 8
  %121 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %122 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %121, i32 0, i32 9
  store i32 0, i32* %122, align 4
  %123 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %124 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %123, i32 0, i32 10
  store i64 0, i64* %124, align 8
  %125 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %126 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @IVTV_YUV_MODE_MASK, align 4
  %129 = and i32 %127, %128
  %130 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %131 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %130, i32 0, i32 11
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %2
  %135 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %136 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %134, %2
  %140 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %141 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %140, i32 0, i32 11
  %142 = load i32, i32* %141, align 8
  switch i32 %142, label %266 [
    i32 128, label %143
    i32 130, label %187
    i32 129, label %265
  ]

143:                                              ; preds = %139
  %144 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %145 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %144, i32 0, i32 12
  store i32 0, i32* %145, align 4
  %146 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %147 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %148, 512
  br i1 %149, label %160, label %150

150:                                              ; preds = %143
  %151 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %152 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %153, 576
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %157 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = icmp slt i32 %158, 1021
  br i1 %159, label %160, label %163

160:                                              ; preds = %155, %143
  %161 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %162 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %161, i32 0, i32 7
  store i32 0, i32* %162, align 4
  br label %166

163:                                              ; preds = %155, %150
  %164 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %165 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %164, i32 0, i32 7
  store i32 1, i32* %165, align 4
  br label %166

166:                                              ; preds = %163, %160
  %167 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %168 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = icmp slt i32 %169, 1021
  br i1 %170, label %171, label %183

171:                                              ; preds = %166
  %172 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %173 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %176 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = sdiv i32 %177, 2
  %179 = icmp sge i32 %174, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %171
  %181 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %182 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %181, i32 0, i32 8
  store i32 0, i32* %182, align 8
  br label %186

183:                                              ; preds = %171, %166
  %184 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %185 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %184, i32 0, i32 8
  store i32 1, i32* %185, align 8
  br label %186

186:                                              ; preds = %183, %180
  br label %273

187:                                              ; preds = %139
  %188 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %189 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp sle i32 %190, %191
  br i1 %192, label %203, label %193

193:                                              ; preds = %187
  %194 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %195 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = icmp sgt i32 %196, 576
  br i1 %197, label %203, label %198

198:                                              ; preds = %193
  %199 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %200 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = icmp sgt i32 %201, 720
  br i1 %202, label %203, label %257

203:                                              ; preds = %198, %193, %187
  %204 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %205 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %204, i32 0, i32 12
  store i32 0, i32* %205, align 4
  %206 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %207 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = icmp slt i32 %208, 512
  br i1 %209, label %230, label %210

210:                                              ; preds = %203
  %211 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %212 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = icmp sgt i32 %213, 576
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %217 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = icmp slt i32 %218, 1021
  br i1 %219, label %230, label %220

220:                                              ; preds = %215, %210
  %221 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %222 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = icmp sgt i32 %223, 720
  br i1 %224, label %225, label %233

225:                                              ; preds = %220
  %226 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %227 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = icmp slt i32 %228, 1021
  br i1 %229, label %230, label %233

230:                                              ; preds = %225, %215, %203
  %231 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %232 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %231, i32 0, i32 7
  store i32 0, i32* %232, align 4
  br label %236

233:                                              ; preds = %225, %220
  %234 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %235 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %234, i32 0, i32 7
  store i32 1, i32* %235, align 4
  br label %236

236:                                              ; preds = %233, %230
  %237 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %238 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 4
  %240 = icmp slt i32 %239, 1021
  br i1 %240, label %241, label %253

241:                                              ; preds = %236
  %242 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %243 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %246 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = sdiv i32 %247, 2
  %249 = icmp sge i32 %244, %248
  br i1 %249, label %250, label %253

250:                                              ; preds = %241
  %251 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %252 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %251, i32 0, i32 8
  store i32 0, i32* %252, align 8
  br label %256

253:                                              ; preds = %241, %236
  %254 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %255 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %254, i32 0, i32 8
  store i32 1, i32* %255, align 8
  br label %256

256:                                              ; preds = %253, %250
  br label %264

257:                                              ; preds = %198
  %258 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %259 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %258, i32 0, i32 12
  store i32 1, i32* %259, align 4
  %260 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %261 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %260, i32 0, i32 7
  store i32 1, i32* %261, align 4
  %262 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %263 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %262, i32 0, i32 8
  store i32 1, i32* %263, align 8
  br label %264

264:                                              ; preds = %257, %256
  br label %273

265:                                              ; preds = %139
  br label %266

266:                                              ; preds = %139, %265
  %267 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %268 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %267, i32 0, i32 12
  store i32 1, i32* %268, align 4
  %269 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %270 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %269, i32 0, i32 7
  store i32 1, i32* %270, align 4
  %271 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %272 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %271, i32 0, i32 8
  store i32 1, i32* %272, align 8
  br label %273

273:                                              ; preds = %266, %264, %186
  %274 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %275 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %274, i32 0, i32 5
  %276 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %277 = call i64 @memcmp(%struct.yuv_frame_info* %275, %struct.yuv_frame_info* %276, i32 80)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %289

279:                                              ; preds = %273
  %280 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %281 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %280, i32 0, i32 5
  %282 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %283 = bitcast %struct.yuv_frame_info* %281 to i8*
  %284 = bitcast %struct.yuv_frame_info* %282 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %283, i8* align 8 %284, i64 80, i1 false)
  %285 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %286 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %285, i32 0, i32 0
  store i32 1, i32* %286, align 8
  %287 = load i32, i32* %6, align 4
  %288 = call i32 @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %287)
  br label %289

289:                                              ; preds = %279, %273
  %290 = load i32, i32* %11, align 4
  %291 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %292 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 8
  %295 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %296 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %295, i32 0, i32 4
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %299 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %298, i32 0, i32 10
  store i64 %297, i64* %299, align 8
  %300 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %301 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %300, i32 0, i32 10
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %9, align 8
  %304 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %303, i32 0, i32 10
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %302, %305
  %307 = zext i1 %306 to i32
  %308 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %8, align 8
  %309 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %308, i32 0, i32 9
  store i32 %307, i32* %309, align 4
  ret void
}

declare dso_local i64 @memcmp(%struct.yuv_frame_info*, %struct.yuv_frame_info*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IVTV_DEBUG_YUV(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
