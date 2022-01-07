; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-driver.c_cx18_process_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-driver.c_cx18_process_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32*, i32*, i64, %struct.TYPE_7__*, i32, i64, i32, %struct.TYPE_6__*, %struct.TYPE_8__, i32 }
%struct.TYPE_7__ = type { i32, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i32 }
%struct.TYPE_8__ = type { i32*, i32, i32, i32 }

@enc_ts_buffers = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_TS = common dso_local global i64 0, align 8
@enc_mpg_buffers = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@enc_idx_buffers = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_IDX = common dso_local global i64 0, align 8
@enc_yuv_buffers = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@enc_vbi_buffers = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@enc_pcm_buffers = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_PCM = common dso_local global i64 0, align 8
@CX18_ENC_STREAM_TYPE_RAD = common dso_local global i64 0, align 8
@enc_ts_bufs = common dso_local global i32 0, align 4
@enc_mpg_bufs = common dso_local global i32 0, align 4
@enc_idx_bufs = common dso_local global i32 0, align 4
@enc_yuv_bufs = common dso_local global i32 0, align 4
@enc_vbi_bufs = common dso_local global i32 0, align 4
@enc_pcm_bufs = common dso_local global i32 0, align 4
@enc_ts_bufsize = common dso_local global i32 0, align 4
@enc_mpg_bufsize = common dso_local global i32 0, align 4
@enc_idx_bufsize = common dso_local global i32 0, align 4
@enc_yuv_bufsize = common dso_local global i32 0, align 4
@vbi_active_samples = common dso_local global i32 0, align 4
@enc_pcm_bufsize = common dso_local global i32 0, align 4
@CX18_MAX_STREAMS = common dso_local global i32 0, align 4
@CX18_UNIT_ENC_YUV_BUFSIZE = common dso_local global i32 0, align 4
@CX18_UNIT_ENC_IDX_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Stream type %d options: %d MB, %d buffers, %d bytes\0A\00", align 1
@cardtype = common dso_local global i32* null, align 8
@tuner = common dso_local global i32* null, align 8
@radio = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Ignore card\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"User specified %s card\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Unknown user specified type, trying to autodetect card\0A\00", align 1
@CX18_PCI_ID_HAUPPAUGE = common dso_local global i64 0, align 8
@CX18_CARD_HVR_1600_ESMT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Autodetected Hauppauge card\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Autodetected %s card\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Unknown card: vendor/device: [%04x:%04x]\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"              subsystem vendor/device: [%04x:%04x]\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Defaulting to %s card\0A\00", align 1
@.str.9 = private unnamed_addr constant [80 x i8] c"Please mail the vendor/device and subsystem vendor/device IDs and what kind of\0A\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"card you have to the ivtv-devel mailinglist (www.ivtvdriver.org)\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"Prefix your subject line with [UNKNOWN CX18 CARD].\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*)* @cx18_process_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_process_options(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  %5 = load i32, i32* @enc_ts_buffers, align 4
  %6 = load %struct.cx18*, %struct.cx18** %2, align 8
  %7 = getelementptr inbounds %struct.cx18, %struct.cx18* %6, i32 0, i32 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @CX18_ENC_STREAM_TYPE_TS, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  store i32 %5, i32* %11, align 4
  %12 = load i32, i32* @enc_mpg_buffers, align 4
  %13 = load %struct.cx18*, %struct.cx18** %2, align 8
  %14 = getelementptr inbounds %struct.cx18, %struct.cx18* %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @CX18_ENC_STREAM_TYPE_MPG, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 %12, i32* %18, align 4
  %19 = load i32, i32* @enc_idx_buffers, align 4
  %20 = load %struct.cx18*, %struct.cx18** %2, align 8
  %21 = getelementptr inbounds %struct.cx18, %struct.cx18* %20, i32 0, i32 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @CX18_ENC_STREAM_TYPE_IDX, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 %19, i32* %25, align 4
  %26 = load i32, i32* @enc_yuv_buffers, align 4
  %27 = load %struct.cx18*, %struct.cx18** %2, align 8
  %28 = getelementptr inbounds %struct.cx18, %struct.cx18* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @CX18_ENC_STREAM_TYPE_YUV, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %26, i32* %32, align 4
  %33 = load i32, i32* @enc_vbi_buffers, align 4
  %34 = load %struct.cx18*, %struct.cx18** %2, align 8
  %35 = getelementptr inbounds %struct.cx18, %struct.cx18* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @CX18_ENC_STREAM_TYPE_VBI, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %33, i32* %39, align 4
  %40 = load i32, i32* @enc_pcm_buffers, align 4
  %41 = load %struct.cx18*, %struct.cx18** %2, align 8
  %42 = getelementptr inbounds %struct.cx18, %struct.cx18* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @CX18_ENC_STREAM_TYPE_PCM, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %40, i32* %46, align 4
  %47 = load %struct.cx18*, %struct.cx18** %2, align 8
  %48 = getelementptr inbounds %struct.cx18, %struct.cx18* %47, i32 0, i32 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @CX18_ENC_STREAM_TYPE_RAD, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* @enc_ts_bufs, align 4
  %54 = load %struct.cx18*, %struct.cx18** %2, align 8
  %55 = getelementptr inbounds %struct.cx18, %struct.cx18* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @CX18_ENC_STREAM_TYPE_TS, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 %53, i32* %58, align 4
  %59 = load i32, i32* @enc_mpg_bufs, align 4
  %60 = load %struct.cx18*, %struct.cx18** %2, align 8
  %61 = getelementptr inbounds %struct.cx18, %struct.cx18* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @CX18_ENC_STREAM_TYPE_MPG, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = load i32, i32* @enc_idx_bufs, align 4
  %66 = load %struct.cx18*, %struct.cx18** %2, align 8
  %67 = getelementptr inbounds %struct.cx18, %struct.cx18* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @CX18_ENC_STREAM_TYPE_IDX, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 %65, i32* %70, align 4
  %71 = load i32, i32* @enc_yuv_bufs, align 4
  %72 = load %struct.cx18*, %struct.cx18** %2, align 8
  %73 = getelementptr inbounds %struct.cx18, %struct.cx18* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @CX18_ENC_STREAM_TYPE_YUV, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 %71, i32* %76, align 4
  %77 = load i32, i32* @enc_vbi_bufs, align 4
  %78 = load %struct.cx18*, %struct.cx18** %2, align 8
  %79 = getelementptr inbounds %struct.cx18, %struct.cx18* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @CX18_ENC_STREAM_TYPE_VBI, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32 %77, i32* %82, align 4
  %83 = load i32, i32* @enc_pcm_bufs, align 4
  %84 = load %struct.cx18*, %struct.cx18** %2, align 8
  %85 = getelementptr inbounds %struct.cx18, %struct.cx18* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @CX18_ENC_STREAM_TYPE_PCM, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load %struct.cx18*, %struct.cx18** %2, align 8
  %90 = getelementptr inbounds %struct.cx18, %struct.cx18* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @CX18_ENC_STREAM_TYPE_RAD, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32 0, i32* %93, align 4
  %94 = load i32, i32* @enc_ts_bufsize, align 4
  %95 = load %struct.cx18*, %struct.cx18** %2, align 8
  %96 = getelementptr inbounds %struct.cx18, %struct.cx18* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @CX18_ENC_STREAM_TYPE_TS, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 %94, i32* %99, align 4
  %100 = load i32, i32* @enc_mpg_bufsize, align 4
  %101 = load %struct.cx18*, %struct.cx18** %2, align 8
  %102 = getelementptr inbounds %struct.cx18, %struct.cx18* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @CX18_ENC_STREAM_TYPE_MPG, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32 %100, i32* %105, align 4
  %106 = load i32, i32* @enc_idx_bufsize, align 4
  %107 = load %struct.cx18*, %struct.cx18** %2, align 8
  %108 = getelementptr inbounds %struct.cx18, %struct.cx18* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @CX18_ENC_STREAM_TYPE_IDX, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 %106, i32* %111, align 4
  %112 = load i32, i32* @enc_yuv_bufsize, align 4
  %113 = load %struct.cx18*, %struct.cx18** %2, align 8
  %114 = getelementptr inbounds %struct.cx18, %struct.cx18* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @CX18_ENC_STREAM_TYPE_YUV, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 %112, i32* %117, align 4
  %118 = load i32, i32* @vbi_active_samples, align 4
  %119 = mul nsw i32 %118, 36
  %120 = load %struct.cx18*, %struct.cx18** %2, align 8
  %121 = getelementptr inbounds %struct.cx18, %struct.cx18* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @CX18_ENC_STREAM_TYPE_VBI, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32 %119, i32* %124, align 4
  %125 = load i32, i32* @enc_pcm_bufsize, align 4
  %126 = load %struct.cx18*, %struct.cx18** %2, align 8
  %127 = getelementptr inbounds %struct.cx18, %struct.cx18* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* @CX18_ENC_STREAM_TYPE_PCM, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32 %125, i32* %130, align 4
  %131 = load %struct.cx18*, %struct.cx18** %2, align 8
  %132 = getelementptr inbounds %struct.cx18, %struct.cx18* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @CX18_ENC_STREAM_TYPE_RAD, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32 0, i32* %135, align 4
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %452, %1
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* @CX18_MAX_STREAMS, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %455

140:                                              ; preds = %136
  %141 = load %struct.cx18*, %struct.cx18** %2, align 8
  %142 = getelementptr inbounds %struct.cx18, %struct.cx18* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %168, label %149

149:                                              ; preds = %140
  %150 = load %struct.cx18*, %struct.cx18** %2, align 8
  %151 = getelementptr inbounds %struct.cx18, %struct.cx18* %150, i32 0, i32 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp sle i32 %157, 0
  br i1 %158, label %168, label %159

159:                                              ; preds = %149
  %160 = load %struct.cx18*, %struct.cx18** %2, align 8
  %161 = getelementptr inbounds %struct.cx18, %struct.cx18* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %3, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp sle i32 %166, 0
  br i1 %167, label %168, label %188

168:                                              ; preds = %159, %149, %140
  %169 = load %struct.cx18*, %struct.cx18** %2, align 8
  %170 = getelementptr inbounds %struct.cx18, %struct.cx18* %169, i32 0, i32 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %3, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 0, i32* %175, align 4
  %176 = load %struct.cx18*, %struct.cx18** %2, align 8
  %177 = getelementptr inbounds %struct.cx18, %struct.cx18* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %3, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 0, i32* %181, align 4
  %182 = load %struct.cx18*, %struct.cx18** %2, align 8
  %183 = getelementptr inbounds %struct.cx18, %struct.cx18* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %3, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 0, i32* %187, align 4
  br label %452

188:                                              ; preds = %159
  %189 = load i32, i32* %3, align 4
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* @CX18_ENC_STREAM_TYPE_YUV, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %237

193:                                              ; preds = %188
  %194 = load %struct.cx18*, %struct.cx18** %2, align 8
  %195 = getelementptr inbounds %struct.cx18, %struct.cx18* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %3, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %200, 1024
  store i32 %201, i32* %199, align 4
  %202 = load %struct.cx18*, %struct.cx18** %2, align 8
  %203 = getelementptr inbounds %struct.cx18, %struct.cx18* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %3, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @CX18_UNIT_ENC_YUV_BUFSIZE, align 4
  %210 = srem i32 %208, %209
  %211 = load %struct.cx18*, %struct.cx18** %2, align 8
  %212 = getelementptr inbounds %struct.cx18, %struct.cx18* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %3, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = sub nsw i32 %217, %210
  store i32 %218, i32* %216, align 4
  %219 = load %struct.cx18*, %struct.cx18** %2, align 8
  %220 = getelementptr inbounds %struct.cx18, %struct.cx18* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %3, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @CX18_UNIT_ENC_YUV_BUFSIZE, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %236

228:                                              ; preds = %193
  %229 = load i32, i32* @CX18_UNIT_ENC_YUV_BUFSIZE, align 4
  %230 = load %struct.cx18*, %struct.cx18** %2, align 8
  %231 = getelementptr inbounds %struct.cx18, %struct.cx18* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %3, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 %229, i32* %235, align 4
  br label %236

236:                                              ; preds = %228, %193
  br label %287

237:                                              ; preds = %188
  %238 = load i32, i32* %3, align 4
  %239 = sext i32 %238 to i64
  %240 = load i64, i64* @CX18_ENC_STREAM_TYPE_IDX, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %286

242:                                              ; preds = %237
  %243 = load %struct.cx18*, %struct.cx18** %2, align 8
  %244 = getelementptr inbounds %struct.cx18, %struct.cx18* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %3, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = mul nsw i32 %249, 1024
  store i32 %250, i32* %248, align 4
  %251 = load %struct.cx18*, %struct.cx18** %2, align 8
  %252 = getelementptr inbounds %struct.cx18, %struct.cx18* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %3, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @CX18_UNIT_ENC_IDX_BUFSIZE, align 4
  %259 = srem i32 %257, %258
  %260 = load %struct.cx18*, %struct.cx18** %2, align 8
  %261 = getelementptr inbounds %struct.cx18, %struct.cx18* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %3, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = sub nsw i32 %266, %259
  store i32 %267, i32* %265, align 4
  %268 = load %struct.cx18*, %struct.cx18** %2, align 8
  %269 = getelementptr inbounds %struct.cx18, %struct.cx18* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %3, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @CX18_UNIT_ENC_IDX_BUFSIZE, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %285

277:                                              ; preds = %242
  %278 = load i32, i32* @CX18_UNIT_ENC_IDX_BUFSIZE, align 4
  %279 = load %struct.cx18*, %struct.cx18** %2, align 8
  %280 = getelementptr inbounds %struct.cx18, %struct.cx18* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %3, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  store i32 %278, i32* %284, align 4
  br label %285

285:                                              ; preds = %277, %242
  br label %286

286:                                              ; preds = %285, %237
  br label %287

287:                                              ; preds = %286, %236
  %288 = load i32, i32* %3, align 4
  %289 = sext i32 %288 to i64
  %290 = load i64, i64* @CX18_ENC_STREAM_TYPE_VBI, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %302, label %292

292:                                              ; preds = %287
  %293 = load i32, i32* %3, align 4
  %294 = sext i32 %293 to i64
  %295 = load i64, i64* @CX18_ENC_STREAM_TYPE_YUV, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %302, label %297

297:                                              ; preds = %292
  %298 = load i32, i32* %3, align 4
  %299 = sext i32 %298 to i64
  %300 = load i64, i64* @CX18_ENC_STREAM_TYPE_IDX, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %361

302:                                              ; preds = %297, %292, %287
  %303 = load %struct.cx18*, %struct.cx18** %2, align 8
  %304 = getelementptr inbounds %struct.cx18, %struct.cx18* %303, i32 0, i32 0
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %3, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %336

311:                                              ; preds = %302
  %312 = load %struct.cx18*, %struct.cx18** %2, align 8
  %313 = getelementptr inbounds %struct.cx18, %struct.cx18* %312, i32 0, i32 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %3, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = mul nsw i32 %319, 1024
  %321 = mul nsw i32 %320, 1024
  %322 = load %struct.cx18*, %struct.cx18** %2, align 8
  %323 = getelementptr inbounds %struct.cx18, %struct.cx18* %322, i32 0, i32 1
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* %3, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = sdiv i32 %321, %328
  %330 = load %struct.cx18*, %struct.cx18** %2, align 8
  %331 = getelementptr inbounds %struct.cx18, %struct.cx18* %330, i32 0, i32 0
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %3, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  store i32 %329, i32* %335, align 4
  br label %360

336:                                              ; preds = %302
  %337 = load %struct.cx18*, %struct.cx18** %2, align 8
  %338 = getelementptr inbounds %struct.cx18, %struct.cx18* %337, i32 0, i32 0
  %339 = load i32*, i32** %338, align 8
  %340 = load i32, i32* %3, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.cx18*, %struct.cx18** %2, align 8
  %345 = getelementptr inbounds %struct.cx18, %struct.cx18* %344, i32 0, i32 1
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* %3, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = mul nsw i32 %343, %350
  %352 = sdiv i32 %351, 1048576
  %353 = load %struct.cx18*, %struct.cx18** %2, align 8
  %354 = getelementptr inbounds %struct.cx18, %struct.cx18* %353, i32 0, i32 8
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = load i32, i32* %3, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  store i32 %352, i32* %359, align 4
  br label %360

360:                                              ; preds = %336, %311
  br label %427

361:                                              ; preds = %297
  %362 = load %struct.cx18*, %struct.cx18** %2, align 8
  %363 = getelementptr inbounds %struct.cx18, %struct.cx18* %362, i32 0, i32 0
  %364 = load i32*, i32** %363, align 8
  %365 = load i32, i32* %3, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = icmp slt i32 %368, 0
  br i1 %369, label %370, label %394

370:                                              ; preds = %361
  %371 = load %struct.cx18*, %struct.cx18** %2, align 8
  %372 = getelementptr inbounds %struct.cx18, %struct.cx18* %371, i32 0, i32 8
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 0
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %3, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = mul nsw i32 %378, 1024
  %380 = load %struct.cx18*, %struct.cx18** %2, align 8
  %381 = getelementptr inbounds %struct.cx18, %struct.cx18* %380, i32 0, i32 1
  %382 = load i32*, i32** %381, align 8
  %383 = load i32, i32* %3, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = sdiv i32 %379, %386
  %388 = load %struct.cx18*, %struct.cx18** %2, align 8
  %389 = getelementptr inbounds %struct.cx18, %struct.cx18* %388, i32 0, i32 0
  %390 = load i32*, i32** %389, align 8
  %391 = load i32, i32* %3, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  store i32 %387, i32* %393, align 4
  br label %418

394:                                              ; preds = %361
  %395 = load %struct.cx18*, %struct.cx18** %2, align 8
  %396 = getelementptr inbounds %struct.cx18, %struct.cx18* %395, i32 0, i32 0
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %3, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.cx18*, %struct.cx18** %2, align 8
  %403 = getelementptr inbounds %struct.cx18, %struct.cx18* %402, i32 0, i32 1
  %404 = load i32*, i32** %403, align 8
  %405 = load i32, i32* %3, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %404, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = mul nsw i32 %401, %408
  %410 = sdiv i32 %409, 1024
  %411 = load %struct.cx18*, %struct.cx18** %2, align 8
  %412 = getelementptr inbounds %struct.cx18, %struct.cx18* %411, i32 0, i32 8
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 0
  %414 = load i32*, i32** %413, align 8
  %415 = load i32, i32* %3, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  store i32 %410, i32* %417, align 4
  br label %418

418:                                              ; preds = %394, %370
  %419 = load %struct.cx18*, %struct.cx18** %2, align 8
  %420 = getelementptr inbounds %struct.cx18, %struct.cx18* %419, i32 0, i32 1
  %421 = load i32*, i32** %420, align 8
  %422 = load i32, i32* %3, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = mul nsw i32 %425, 1024
  store i32 %426, i32* %424, align 4
  br label %427

427:                                              ; preds = %418, %360
  %428 = load i32, i32* %3, align 4
  %429 = load %struct.cx18*, %struct.cx18** %2, align 8
  %430 = getelementptr inbounds %struct.cx18, %struct.cx18* %429, i32 0, i32 8
  %431 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %430, i32 0, i32 0
  %432 = load i32*, i32** %431, align 8
  %433 = load i32, i32* %3, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.cx18*, %struct.cx18** %2, align 8
  %438 = getelementptr inbounds %struct.cx18, %struct.cx18* %437, i32 0, i32 0
  %439 = load i32*, i32** %438, align 8
  %440 = load i32, i32* %3, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %439, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = load %struct.cx18*, %struct.cx18** %2, align 8
  %445 = getelementptr inbounds %struct.cx18, %struct.cx18* %444, i32 0, i32 1
  %446 = load i32*, i32** %445, align 8
  %447 = load i32, i32* %3, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32, i32* %446, i64 %448
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %428, i32 %436, i32 %443, i32 %450)
  br label %452

452:                                              ; preds = %427, %168
  %453 = load i32, i32* %3, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %3, align 4
  br label %136

455:                                              ; preds = %136
  %456 = load i32*, i32** @cardtype, align 8
  %457 = load %struct.cx18*, %struct.cx18** %2, align 8
  %458 = getelementptr inbounds %struct.cx18, %struct.cx18* %457, i32 0, i32 2
  %459 = load i64, i64* %458, align 8
  %460 = getelementptr inbounds i32, i32* %456, i64 %459
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.cx18*, %struct.cx18** %2, align 8
  %463 = getelementptr inbounds %struct.cx18, %struct.cx18* %462, i32 0, i32 8
  %464 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %463, i32 0, i32 1
  store i32 %461, i32* %464, align 8
  %465 = load i32*, i32** @tuner, align 8
  %466 = load %struct.cx18*, %struct.cx18** %2, align 8
  %467 = getelementptr inbounds %struct.cx18, %struct.cx18* %466, i32 0, i32 2
  %468 = load i64, i64* %467, align 8
  %469 = getelementptr inbounds i32, i32* %465, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = load %struct.cx18*, %struct.cx18** %2, align 8
  %472 = getelementptr inbounds %struct.cx18, %struct.cx18* %471, i32 0, i32 8
  %473 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %472, i32 0, i32 3
  store i32 %470, i32* %473, align 8
  %474 = load i32*, i32** @radio, align 8
  %475 = load %struct.cx18*, %struct.cx18** %2, align 8
  %476 = getelementptr inbounds %struct.cx18, %struct.cx18* %475, i32 0, i32 2
  %477 = load i64, i64* %476, align 8
  %478 = getelementptr inbounds i32, i32* %474, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = load %struct.cx18*, %struct.cx18** %2, align 8
  %481 = getelementptr inbounds %struct.cx18, %struct.cx18* %480, i32 0, i32 8
  %482 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %481, i32 0, i32 2
  store i32 %479, i32* %482, align 4
  %483 = load %struct.cx18*, %struct.cx18** %2, align 8
  %484 = call i32 @cx18_parse_std(%struct.cx18* %483)
  %485 = load %struct.cx18*, %struct.cx18** %2, align 8
  %486 = getelementptr inbounds %struct.cx18, %struct.cx18* %485, i32 0, i32 9
  store i32 %484, i32* %486, align 8
  %487 = load %struct.cx18*, %struct.cx18** %2, align 8
  %488 = getelementptr inbounds %struct.cx18, %struct.cx18* %487, i32 0, i32 8
  %489 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 8
  %491 = icmp eq i32 %490, -1
  br i1 %491, label %492, label %494

492:                                              ; preds = %455
  %493 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %713

494:                                              ; preds = %455
  %495 = load %struct.cx18*, %struct.cx18** %2, align 8
  %496 = getelementptr inbounds %struct.cx18, %struct.cx18* %495, i32 0, i32 8
  %497 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %496, i32 0, i32 1
  %498 = load i32, i32* %497, align 8
  %499 = sub nsw i32 %498, 1
  %500 = call i8* @cx18_get_card(i32 %499)
  %501 = bitcast i8* %500 to %struct.TYPE_7__*
  %502 = load %struct.cx18*, %struct.cx18** %2, align 8
  %503 = getelementptr inbounds %struct.cx18, %struct.cx18* %502, i32 0, i32 3
  store %struct.TYPE_7__* %501, %struct.TYPE_7__** %503, align 8
  %504 = load %struct.cx18*, %struct.cx18** %2, align 8
  %505 = getelementptr inbounds %struct.cx18, %struct.cx18* %504, i32 0, i32 3
  %506 = load %struct.TYPE_7__*, %struct.TYPE_7__** %505, align 8
  %507 = icmp ne %struct.TYPE_7__* %506, null
  br i1 %507, label %508, label %515

508:                                              ; preds = %494
  %509 = load %struct.cx18*, %struct.cx18** %2, align 8
  %510 = getelementptr inbounds %struct.cx18, %struct.cx18* %509, i32 0, i32 3
  %511 = load %struct.TYPE_7__*, %struct.TYPE_7__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %511, i32 0, i32 1
  %513 = load i64, i64* %512, align 8
  %514 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %513)
  br label %524

515:                                              ; preds = %494
  %516 = load %struct.cx18*, %struct.cx18** %2, align 8
  %517 = getelementptr inbounds %struct.cx18, %struct.cx18* %516, i32 0, i32 8
  %518 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %517, i32 0, i32 1
  %519 = load i32, i32* %518, align 8
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %523

521:                                              ; preds = %515
  %522 = call i32 (i8*, ...) @CX18_ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %523

523:                                              ; preds = %521, %515
  br label %524

524:                                              ; preds = %523, %508
  %525 = load %struct.cx18*, %struct.cx18** %2, align 8
  %526 = getelementptr inbounds %struct.cx18, %struct.cx18* %525, i32 0, i32 3
  %527 = load %struct.TYPE_7__*, %struct.TYPE_7__** %526, align 8
  %528 = icmp eq %struct.TYPE_7__* %527, null
  br i1 %528, label %529, label %545

529:                                              ; preds = %524
  %530 = load %struct.cx18*, %struct.cx18** %2, align 8
  %531 = getelementptr inbounds %struct.cx18, %struct.cx18* %530, i32 0, i32 7
  %532 = load %struct.TYPE_6__*, %struct.TYPE_6__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %532, i32 0, i32 0
  %534 = load i64, i64* %533, align 8
  %535 = load i64, i64* @CX18_PCI_ID_HAUPPAUGE, align 8
  %536 = icmp eq i64 %534, %535
  br i1 %536, label %537, label %544

537:                                              ; preds = %529
  %538 = load i32, i32* @CX18_CARD_HVR_1600_ESMT, align 4
  %539 = call i8* @cx18_get_card(i32 %538)
  %540 = bitcast i8* %539 to %struct.TYPE_7__*
  %541 = load %struct.cx18*, %struct.cx18** %2, align 8
  %542 = getelementptr inbounds %struct.cx18, %struct.cx18* %541, i32 0, i32 3
  store %struct.TYPE_7__* %540, %struct.TYPE_7__** %542, align 8
  %543 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %544

544:                                              ; preds = %537, %529
  br label %545

545:                                              ; preds = %544, %524
  %546 = load %struct.cx18*, %struct.cx18** %2, align 8
  %547 = getelementptr inbounds %struct.cx18, %struct.cx18* %546, i32 0, i32 3
  %548 = load %struct.TYPE_7__*, %struct.TYPE_7__** %547, align 8
  %549 = icmp eq %struct.TYPE_7__* %548, null
  br i1 %549, label %550, label %648

550:                                              ; preds = %545
  store i32 0, i32* %3, align 4
  br label %551

551:                                              ; preds = %644, %550
  %552 = load i32, i32* %3, align 4
  %553 = call i8* @cx18_get_card(i32 %552)
  %554 = bitcast i8* %553 to %struct.TYPE_7__*
  %555 = load %struct.cx18*, %struct.cx18** %2, align 8
  %556 = getelementptr inbounds %struct.cx18, %struct.cx18* %555, i32 0, i32 3
  store %struct.TYPE_7__* %554, %struct.TYPE_7__** %556, align 8
  %557 = icmp ne %struct.TYPE_7__* %554, null
  br i1 %557, label %558, label %647

558:                                              ; preds = %551
  %559 = load %struct.cx18*, %struct.cx18** %2, align 8
  %560 = getelementptr inbounds %struct.cx18, %struct.cx18* %559, i32 0, i32 3
  %561 = load %struct.TYPE_7__*, %struct.TYPE_7__** %560, align 8
  %562 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %561, i32 0, i32 3
  %563 = load %struct.TYPE_5__*, %struct.TYPE_5__** %562, align 8
  %564 = icmp eq %struct.TYPE_5__* %563, null
  br i1 %564, label %565, label %566

565:                                              ; preds = %558
  br label %644

566:                                              ; preds = %558
  store i32 0, i32* %4, align 4
  br label %567

567:                                              ; preds = %640, %566
  %568 = load %struct.cx18*, %struct.cx18** %2, align 8
  %569 = getelementptr inbounds %struct.cx18, %struct.cx18* %568, i32 0, i32 3
  %570 = load %struct.TYPE_7__*, %struct.TYPE_7__** %569, align 8
  %571 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %570, i32 0, i32 3
  %572 = load %struct.TYPE_5__*, %struct.TYPE_5__** %571, align 8
  %573 = load i32, i32* %4, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %572, i64 %574
  %576 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %575, i32 0, i32 0
  %577 = load i64, i64* %576, align 8
  %578 = icmp ne i64 %577, 0
  br i1 %578, label %579, label %643

579:                                              ; preds = %567
  %580 = load %struct.cx18*, %struct.cx18** %2, align 8
  %581 = getelementptr inbounds %struct.cx18, %struct.cx18* %580, i32 0, i32 7
  %582 = load %struct.TYPE_6__*, %struct.TYPE_6__** %581, align 8
  %583 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %582, i32 0, i32 1
  %584 = load i64, i64* %583, align 8
  %585 = load %struct.cx18*, %struct.cx18** %2, align 8
  %586 = getelementptr inbounds %struct.cx18, %struct.cx18* %585, i32 0, i32 3
  %587 = load %struct.TYPE_7__*, %struct.TYPE_7__** %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %587, i32 0, i32 3
  %589 = load %struct.TYPE_5__*, %struct.TYPE_5__** %588, align 8
  %590 = load i32, i32* %4, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %589, i64 %591
  %593 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %592, i32 0, i32 0
  %594 = load i64, i64* %593, align 8
  %595 = icmp ne i64 %584, %594
  br i1 %595, label %596, label %597

596:                                              ; preds = %579
  br label %640

597:                                              ; preds = %579
  %598 = load %struct.cx18*, %struct.cx18** %2, align 8
  %599 = getelementptr inbounds %struct.cx18, %struct.cx18* %598, i32 0, i32 7
  %600 = load %struct.TYPE_6__*, %struct.TYPE_6__** %599, align 8
  %601 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %600, i32 0, i32 0
  %602 = load i64, i64* %601, align 8
  %603 = load %struct.cx18*, %struct.cx18** %2, align 8
  %604 = getelementptr inbounds %struct.cx18, %struct.cx18* %603, i32 0, i32 3
  %605 = load %struct.TYPE_7__*, %struct.TYPE_7__** %604, align 8
  %606 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %605, i32 0, i32 3
  %607 = load %struct.TYPE_5__*, %struct.TYPE_5__** %606, align 8
  %608 = load i32, i32* %4, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %607, i64 %609
  %611 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %610, i32 0, i32 1
  %612 = load i64, i64* %611, align 8
  %613 = icmp ne i64 %602, %612
  br i1 %613, label %614, label %615

614:                                              ; preds = %597
  br label %640

615:                                              ; preds = %597
  %616 = load %struct.cx18*, %struct.cx18** %2, align 8
  %617 = getelementptr inbounds %struct.cx18, %struct.cx18* %616, i32 0, i32 7
  %618 = load %struct.TYPE_6__*, %struct.TYPE_6__** %617, align 8
  %619 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %618, i32 0, i32 2
  %620 = load i64, i64* %619, align 8
  %621 = load %struct.cx18*, %struct.cx18** %2, align 8
  %622 = getelementptr inbounds %struct.cx18, %struct.cx18* %621, i32 0, i32 3
  %623 = load %struct.TYPE_7__*, %struct.TYPE_7__** %622, align 8
  %624 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %623, i32 0, i32 3
  %625 = load %struct.TYPE_5__*, %struct.TYPE_5__** %624, align 8
  %626 = load i32, i32* %4, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %625, i64 %627
  %629 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %628, i32 0, i32 2
  %630 = load i64, i64* %629, align 8
  %631 = icmp ne i64 %620, %630
  br i1 %631, label %632, label %633

632:                                              ; preds = %615
  br label %640

633:                                              ; preds = %615
  %634 = load %struct.cx18*, %struct.cx18** %2, align 8
  %635 = getelementptr inbounds %struct.cx18, %struct.cx18* %634, i32 0, i32 3
  %636 = load %struct.TYPE_7__*, %struct.TYPE_7__** %635, align 8
  %637 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %636, i32 0, i32 1
  %638 = load i64, i64* %637, align 8
  %639 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %638)
  br label %649

640:                                              ; preds = %632, %614, %596
  %641 = load i32, i32* %4, align 4
  %642 = add nsw i32 %641, 1
  store i32 %642, i32* %4, align 4
  br label %567

643:                                              ; preds = %567
  br label %644

644:                                              ; preds = %643, %565
  %645 = load i32, i32* %3, align 4
  %646 = add nsw i32 %645, 1
  store i32 %646, i32* %3, align 4
  br label %551

647:                                              ; preds = %551
  br label %648

648:                                              ; preds = %647, %545
  br label %649

649:                                              ; preds = %648, %633
  %650 = load %struct.cx18*, %struct.cx18** %2, align 8
  %651 = getelementptr inbounds %struct.cx18, %struct.cx18* %650, i32 0, i32 3
  %652 = load %struct.TYPE_7__*, %struct.TYPE_7__** %651, align 8
  %653 = icmp eq %struct.TYPE_7__* %652, null
  br i1 %653, label %654, label %691

654:                                              ; preds = %649
  %655 = load i32, i32* @CX18_CARD_HVR_1600_ESMT, align 4
  %656 = call i8* @cx18_get_card(i32 %655)
  %657 = bitcast i8* %656 to %struct.TYPE_7__*
  %658 = load %struct.cx18*, %struct.cx18** %2, align 8
  %659 = getelementptr inbounds %struct.cx18, %struct.cx18* %658, i32 0, i32 3
  store %struct.TYPE_7__* %657, %struct.TYPE_7__** %659, align 8
  %660 = load %struct.cx18*, %struct.cx18** %2, align 8
  %661 = getelementptr inbounds %struct.cx18, %struct.cx18* %660, i32 0, i32 7
  %662 = load %struct.TYPE_6__*, %struct.TYPE_6__** %661, align 8
  %663 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %662, i32 0, i32 3
  %664 = load i32, i32* %663, align 8
  %665 = load %struct.cx18*, %struct.cx18** %2, align 8
  %666 = getelementptr inbounds %struct.cx18, %struct.cx18* %665, i32 0, i32 7
  %667 = load %struct.TYPE_6__*, %struct.TYPE_6__** %666, align 8
  %668 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %667, i32 0, i32 1
  %669 = load i64, i64* %668, align 8
  %670 = call i32 (i8*, ...) @CX18_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %664, i64 %669)
  %671 = load %struct.cx18*, %struct.cx18** %2, align 8
  %672 = getelementptr inbounds %struct.cx18, %struct.cx18* %671, i32 0, i32 7
  %673 = load %struct.TYPE_6__*, %struct.TYPE_6__** %672, align 8
  %674 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %673, i32 0, i32 0
  %675 = load i64, i64* %674, align 8
  %676 = load %struct.cx18*, %struct.cx18** %2, align 8
  %677 = getelementptr inbounds %struct.cx18, %struct.cx18* %676, i32 0, i32 7
  %678 = load %struct.TYPE_6__*, %struct.TYPE_6__** %677, align 8
  %679 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %678, i32 0, i32 2
  %680 = load i64, i64* %679, align 8
  %681 = call i32 (i8*, ...) @CX18_ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i64 %675, i64 %680)
  %682 = load %struct.cx18*, %struct.cx18** %2, align 8
  %683 = getelementptr inbounds %struct.cx18, %struct.cx18* %682, i32 0, i32 3
  %684 = load %struct.TYPE_7__*, %struct.TYPE_7__** %683, align 8
  %685 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %684, i32 0, i32 1
  %686 = load i64, i64* %685, align 8
  %687 = call i32 (i8*, ...) @CX18_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 %686)
  %688 = call i32 (i8*, ...) @CX18_ERR(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.9, i64 0, i64 0))
  %689 = call i32 (i8*, ...) @CX18_ERR(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i64 0, i64 0))
  %690 = call i32 (i8*, ...) @CX18_ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0))
  br label %691

691:                                              ; preds = %654, %649
  %692 = load %struct.cx18*, %struct.cx18** %2, align 8
  %693 = getelementptr inbounds %struct.cx18, %struct.cx18* %692, i32 0, i32 3
  %694 = load %struct.TYPE_7__*, %struct.TYPE_7__** %693, align 8
  %695 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %694, i32 0, i32 2
  %696 = load i32, i32* %695, align 8
  %697 = load %struct.cx18*, %struct.cx18** %2, align 8
  %698 = getelementptr inbounds %struct.cx18, %struct.cx18* %697, i32 0, i32 6
  store i32 %696, i32* %698, align 8
  %699 = load %struct.cx18*, %struct.cx18** %2, align 8
  %700 = getelementptr inbounds %struct.cx18, %struct.cx18* %699, i32 0, i32 3
  %701 = load %struct.TYPE_7__*, %struct.TYPE_7__** %700, align 8
  %702 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %701, i32 0, i32 1
  %703 = load i64, i64* %702, align 8
  %704 = load %struct.cx18*, %struct.cx18** %2, align 8
  %705 = getelementptr inbounds %struct.cx18, %struct.cx18* %704, i32 0, i32 5
  store i64 %703, i64* %705, align 8
  %706 = load %struct.cx18*, %struct.cx18** %2, align 8
  %707 = getelementptr inbounds %struct.cx18, %struct.cx18* %706, i32 0, i32 3
  %708 = load %struct.TYPE_7__*, %struct.TYPE_7__** %707, align 8
  %709 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %708, i32 0, i32 0
  %710 = load i32, i32* %709, align 8
  %711 = load %struct.cx18*, %struct.cx18** %2, align 8
  %712 = getelementptr inbounds %struct.cx18, %struct.cx18* %711, i32 0, i32 4
  store i32 %710, i32* %712, align 8
  br label %713

713:                                              ; preds = %691, %492
  ret void
}

declare dso_local i32 @CX18_DEBUG_INFO(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cx18_parse_std(%struct.cx18*) #1

declare dso_local i32 @CX18_INFO(i8*, ...) #1

declare dso_local i8* @cx18_get_card(i32) #1

declare dso_local i32 @CX18_ERR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
