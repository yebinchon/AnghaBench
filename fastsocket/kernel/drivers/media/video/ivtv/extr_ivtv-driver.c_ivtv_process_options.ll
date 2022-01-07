; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-driver.c_ivtv_process_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-driver.c_ivtv_process_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i64, i64, i32, %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i32*, i32, i32, i32, i32, i32 }

@enc_mpg_buffers = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@enc_yuv_buffers = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@enc_vbi_buffers = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@enc_pcm_buffers = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_PCM = common dso_local global i64 0, align 8
@dec_mpg_buffers = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@dec_yuv_buffers = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@dec_vbi_buffers = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@cardtype = common dso_local global i32* null, align 8
@tuner = common dso_local global i32* null, align 8
@radio = common dso_local global i32* null, align 8
@i2c_clock_period = common dso_local global i32* null, align 8
@IVTV_DEFAULT_I2C_CLOCK_PERIOD = common dso_local global i32 0, align 4
@newi2c = common dso_local global i32 0, align 4
@tunertype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Invalid tunertype argument, will autodetect instead\0A\00", align 1
@V4L2_STD_MN = common dso_local global i32 0, align 4
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_IVTV15 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"cx23415\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cx23416\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Ignore card (detected %s based chip)\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"User specified %s card (detected %s based chip)\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"Unknown user specified type, trying to autodetect card\0A\00", align 1
@IVTV_PCI_ID_HAUPPAUGE = common dso_local global i64 0, align 8
@IVTV_PCI_ID_HAUPPAUGE_ALT1 = common dso_local global i64 0, align 8
@IVTV_PCI_ID_HAUPPAUGE_ALT2 = common dso_local global i64 0, align 8
@IVTV_CARD_PVR_350 = common dso_local global i32 0, align 4
@IVTV_CARD_PVR_150 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Autodetected Hauppauge card (%s based)\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Autodetected %s card (%s based)\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Unknown card: vendor/device: [%04x:%04x]\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"              subsystem vendor/device: [%04x:%04x]\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"              %s based\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Defaulting to %s card\0A\00", align 1
@.str.12 = private unnamed_addr constant [80 x i8] c"Please mail the vendor/device and subsystem vendor/device IDs and what kind of\0A\00", align 1
@.str.13 = private unnamed_addr constant [66 x i8] c"card you have to the ivtv-devel mailinglist (www.ivtvdriver.org)\0A\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"Prefix your subject line with [UNKNOWN IVTV CARD].\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*)* @ivtv_process_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_process_options(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %6 = load i32, i32* @enc_mpg_buffers, align 4
  %7 = mul nsw i32 %6, 1024
  %8 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %9 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %8, i32 0, i32 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @IVTV_ENC_STREAM_TYPE_MPG, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32 %7, i32* %13, align 4
  %14 = load i32, i32* @enc_yuv_buffers, align 4
  %15 = mul nsw i32 %14, 1024
  %16 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @IVTV_ENC_STREAM_TYPE_YUV, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 %15, i32* %21, align 4
  %22 = load i32, i32* @enc_vbi_buffers, align 4
  %23 = mul nsw i32 %22, 1024
  %24 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %25 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %24, i32 0, i32 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @IVTV_ENC_STREAM_TYPE_VBI, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 %23, i32* %29, align 4
  %30 = load i32, i32* @enc_pcm_buffers, align 4
  %31 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %32 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %31, i32 0, i32 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @IVTV_ENC_STREAM_TYPE_PCM, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %30, i32* %36, align 4
  %37 = load i32, i32* @dec_mpg_buffers, align 4
  %38 = mul nsw i32 %37, 1024
  %39 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %40 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @IVTV_DEC_STREAM_TYPE_MPG, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %38, i32* %44, align 4
  %45 = load i32, i32* @dec_yuv_buffers, align 4
  %46 = mul nsw i32 %45, 1024
  %47 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %48 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %47, i32 0, i32 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @IVTV_DEC_STREAM_TYPE_YUV, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %46, i32* %52, align 4
  %53 = load i32, i32* @dec_vbi_buffers, align 4
  %54 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %55 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %54, i32 0, i32 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @IVTV_DEC_STREAM_TYPE_VBI, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %53, i32* %59, align 4
  %60 = load i32*, i32** @cardtype, align 8
  %61 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %62 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %67 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 8
  %69 = load i32*, i32** @tuner, align 8
  %70 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %71 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %76 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %75, i32 0, i32 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 5
  store i32 %74, i32* %77, align 8
  %78 = load i32*, i32** @radio, align 8
  %79 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %80 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %85 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %84, i32 0, i32 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 4
  store i32 %83, i32* %86, align 4
  %87 = load i32*, i32** @i2c_clock_period, align 8
  %88 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %89 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %94 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %93, i32 0, i32 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  store i32 %92, i32* %95, align 4
  %96 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %97 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %96, i32 0, i32 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %106

101:                                              ; preds = %1
  %102 = load i32, i32* @IVTV_DEFAULT_I2C_CLOCK_PERIOD, align 4
  %103 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %104 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %103, i32 0, i32 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 4
  br label %128

106:                                              ; preds = %1
  %107 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %108 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %107, i32 0, i32 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %110, 10
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %114 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %113, i32 0, i32 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  store i32 10, i32* %115, align 4
  br label %127

116:                                              ; preds = %106
  %117 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %118 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %117, i32 0, i32 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %120, 4500
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %124 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %123, i32 0, i32 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  store i32 4500, i32* %125, align 4
  br label %126

126:                                              ; preds = %122, %116
  br label %127

127:                                              ; preds = %126, %112
  br label %128

128:                                              ; preds = %127, %101
  %129 = load i32, i32* @newi2c, align 4
  %130 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %131 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %130, i32 0, i32 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 3
  store i32 %129, i32* %132, align 8
  %133 = load i32, i32* @tunertype, align 4
  %134 = icmp slt i32 %133, -1
  br i1 %134, label %138, label %135

135:                                              ; preds = %128
  %136 = load i32, i32* @tunertype, align 4
  %137 = icmp sgt i32 %136, 1
  br i1 %137, label %138, label %140

138:                                              ; preds = %135, %128
  %139 = call i32 @IVTV_WARN(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* @tunertype, align 4
  br label %140

140:                                              ; preds = %138, %135
  %141 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %142 = call i64 @ivtv_parse_std(%struct.ivtv* %141)
  %143 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %144 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  %145 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %146 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %140
  %150 = load i32, i32* @tunertype, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %149
  %153 = load i32, i32* @tunertype, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i32, i32* @V4L2_STD_MN, align 4
  br label %162

157:                                              ; preds = %152
  %158 = load i32, i32* @V4L2_STD_ALL, align 4
  %159 = load i32, i32* @V4L2_STD_MN, align 4
  %160 = xor i32 %159, -1
  %161 = and i32 %158, %160
  br label %162

162:                                              ; preds = %157, %155
  %163 = phi i32 [ %156, %155 ], [ %161, %157 ]
  %164 = sext i32 %163 to i64
  %165 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %166 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %162, %149, %140
  %168 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %169 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %168, i32 0, i32 7
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @PCI_DEVICE_ID_IVTV15, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %177 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 8
  %178 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %179 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  store i8* %183, i8** %3, align 8
  %184 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %185 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %184, i32 0, i32 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %192

189:                                              ; preds = %167
  %190 = load i8*, i8** %3, align 8
  %191 = call i32 (i8*, i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %190)
  br label %442

192:                                              ; preds = %167
  %193 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %194 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %193, i32 0, i32 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 %196, 1
  %198 = call i8* @ivtv_get_card(i32 %197)
  %199 = bitcast i8* %198 to %struct.TYPE_6__*
  %200 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %201 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %200, i32 0, i32 3
  store %struct.TYPE_6__* %199, %struct.TYPE_6__** %201, align 8
  %202 = icmp ne %struct.TYPE_6__* %199, null
  br i1 %202, label %203, label %213

203:                                              ; preds = %192
  %204 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %205 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %204, i32 0, i32 3
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = inttoptr i64 %209 to i8*
  %211 = load i8*, i8** %3, align 8
  %212 = call i32 (i8*, i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %210, i8* %211)
  br label %222

213:                                              ; preds = %192
  %214 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %215 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %214, i32 0, i32 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %213
  %220 = call i32 (i8*, ...) @IVTV_ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  br label %221

221:                                              ; preds = %219, %213
  br label %222

222:                                              ; preds = %221, %203
  %223 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %224 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %223, i32 0, i32 3
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %224, align 8
  %226 = icmp eq %struct.TYPE_6__* %225, null
  br i1 %226, label %227, label %269

227:                                              ; preds = %222
  %228 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %229 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %228, i32 0, i32 7
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @IVTV_PCI_ID_HAUPPAUGE, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %251, label %235

235:                                              ; preds = %227
  %236 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %237 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %236, i32 0, i32 7
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @IVTV_PCI_ID_HAUPPAUGE_ALT1, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %251, label %243

243:                                              ; preds = %235
  %244 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %245 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %244, i32 0, i32 7
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @IVTV_PCI_ID_HAUPPAUGE_ALT2, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %268

251:                                              ; preds = %243, %235, %227
  %252 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %253 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %251
  %257 = load i32, i32* @IVTV_CARD_PVR_350, align 4
  br label %260

258:                                              ; preds = %251
  %259 = load i32, i32* @IVTV_CARD_PVR_150, align 4
  br label %260

260:                                              ; preds = %258, %256
  %261 = phi i32 [ %257, %256 ], [ %259, %258 ]
  %262 = call i8* @ivtv_get_card(i32 %261)
  %263 = bitcast i8* %262 to %struct.TYPE_6__*
  %264 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %265 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %264, i32 0, i32 3
  store %struct.TYPE_6__* %263, %struct.TYPE_6__** %265, align 8
  %266 = load i8*, i8** %3, align 8
  %267 = call i32 (i8*, i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %266)
  br label %268

268:                                              ; preds = %260, %243
  br label %269

269:                                              ; preds = %268, %222
  %270 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %271 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %270, i32 0, i32 3
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %271, align 8
  %273 = icmp eq %struct.TYPE_6__* %272, null
  br i1 %273, label %274, label %375

274:                                              ; preds = %269
  store i32 0, i32* %4, align 4
  br label %275

275:                                              ; preds = %371, %274
  %276 = load i32, i32* %4, align 4
  %277 = call i8* @ivtv_get_card(i32 %276)
  %278 = bitcast i8* %277 to %struct.TYPE_6__*
  %279 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %280 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %279, i32 0, i32 3
  store %struct.TYPE_6__* %278, %struct.TYPE_6__** %280, align 8
  %281 = icmp ne %struct.TYPE_6__* %278, null
  br i1 %281, label %282, label %374

282:                                              ; preds = %275
  %283 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %284 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %283, i32 0, i32 3
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 3
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %286, align 8
  %288 = icmp eq %struct.TYPE_8__* %287, null
  br i1 %288, label %289, label %290

289:                                              ; preds = %282
  br label %371

290:                                              ; preds = %282
  store i32 0, i32* %5, align 4
  br label %291

291:                                              ; preds = %367, %290
  %292 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %293 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %292, i32 0, i32 3
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 3
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %295, align 8
  %297 = load i32, i32* %5, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %370

303:                                              ; preds = %291
  %304 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %305 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %304, i32 0, i32 7
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %310 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %309, i32 0, i32 3
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 3
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %312, align 8
  %314 = load i32, i32* %5, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %308, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %303
  br label %367

321:                                              ; preds = %303
  %322 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %323 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %322, i32 0, i32 7
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %328 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %327, i32 0, i32 3
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 3
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %330, align 8
  %332 = load i32, i32* %5, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %326, %336
  br i1 %337, label %338, label %339

338:                                              ; preds = %321
  br label %367

339:                                              ; preds = %321
  %340 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %341 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %340, i32 0, i32 7
  %342 = load %struct.TYPE_7__*, %struct.TYPE_7__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 2
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %346 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %345, i32 0, i32 3
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 3
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %348, align 8
  %350 = load i32, i32* %5, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 2
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %344, %354
  br i1 %355, label %356, label %357

356:                                              ; preds = %339
  br label %367

357:                                              ; preds = %339
  %358 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %359 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %358, i32 0, i32 3
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = sext i32 %362 to i64
  %364 = inttoptr i64 %363 to i8*
  %365 = load i8*, i8** %3, align 8
  %366 = call i32 (i8*, i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %364, i8* %365)
  br label %376

367:                                              ; preds = %356, %338, %320
  %368 = load i32, i32* %5, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %5, align 4
  br label %291

370:                                              ; preds = %291
  br label %371

371:                                              ; preds = %370, %289
  %372 = load i32, i32* %4, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %4, align 4
  br label %275

374:                                              ; preds = %275
  br label %375

375:                                              ; preds = %374, %269
  br label %376

376:                                              ; preds = %375, %357
  %377 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %378 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %377, i32 0, i32 3
  %379 = load %struct.TYPE_6__*, %struct.TYPE_6__** %378, align 8
  %380 = icmp eq %struct.TYPE_6__* %379, null
  br i1 %380, label %381, label %420

381:                                              ; preds = %376
  %382 = load i32, i32* @IVTV_CARD_PVR_150, align 4
  %383 = call i8* @ivtv_get_card(i32 %382)
  %384 = bitcast i8* %383 to %struct.TYPE_6__*
  %385 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %386 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %385, i32 0, i32 3
  store %struct.TYPE_6__* %384, %struct.TYPE_6__** %386, align 8
  %387 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %388 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %387, i32 0, i32 7
  %389 = load %struct.TYPE_7__*, %struct.TYPE_7__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %389, i32 0, i32 3
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %393 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %392, i32 0, i32 7
  %394 = load %struct.TYPE_7__*, %struct.TYPE_7__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = call i32 (i8*, ...) @IVTV_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %391, i64 %396)
  %398 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %399 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %398, i32 0, i32 7
  %400 = load %struct.TYPE_7__*, %struct.TYPE_7__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %404 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %403, i32 0, i32 7
  %405 = load %struct.TYPE_7__*, %struct.TYPE_7__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %405, i32 0, i32 2
  %407 = load i64, i64* %406, align 8
  %408 = call i32 (i8*, ...) @IVTV_ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i64 %402, i64 %407)
  %409 = load i8*, i8** %3, align 8
  %410 = call i32 (i8*, ...) @IVTV_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %409)
  %411 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %412 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %411, i32 0, i32 3
  %413 = load %struct.TYPE_6__*, %struct.TYPE_6__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = call i32 (i8*, ...) @IVTV_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %415)
  %417 = call i32 (i8*, ...) @IVTV_ERR(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.12, i64 0, i64 0))
  %418 = call i32 (i8*, ...) @IVTV_ERR(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.13, i64 0, i64 0))
  %419 = call i32 (i8*, ...) @IVTV_ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0))
  br label %420

420:                                              ; preds = %381, %376
  %421 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %422 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %421, i32 0, i32 3
  %423 = load %struct.TYPE_6__*, %struct.TYPE_6__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %427 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %426, i32 0, i32 6
  store i32 %425, i32* %427, align 8
  %428 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %429 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %428, i32 0, i32 3
  %430 = load %struct.TYPE_6__*, %struct.TYPE_6__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %434 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %433, i32 0, i32 5
  store i32 %432, i32* %434, align 4
  %435 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %436 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %435, i32 0, i32 3
  %437 = load %struct.TYPE_6__*, %struct.TYPE_6__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %441 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %440, i32 0, i32 4
  store i32 %439, i32* %441, align 8
  br label %442

442:                                              ; preds = %420, %189
  ret void
}

declare dso_local i32 @IVTV_WARN(i8*) #1

declare dso_local i64 @ivtv_parse_std(%struct.ivtv*) #1

declare dso_local i32 @IVTV_INFO(i8*, i8*, ...) #1

declare dso_local i8* @ivtv_get_card(i32) #1

declare dso_local i32 @IVTV_ERR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
