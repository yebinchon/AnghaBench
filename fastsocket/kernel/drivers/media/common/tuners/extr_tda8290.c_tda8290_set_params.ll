; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda8290.c_tda8290_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda8290.c_tda8290_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }
%struct.dvb_frontend = type { %struct.TYPE_7__, %struct.tda8290_priv* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend.0*, %struct.analog_parameters*)* }
%struct.dvb_frontend.0 = type opaque
%struct.analog_parameters = type opaque
%struct.tda8290_priv = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.dvb_frontend.1*)*, i64 }
%struct.dvb_frontend.1 = type opaque
%struct.analog_parameters.2 = type { i64 }

@__const.tda8290_set_params.expert_mode = private unnamed_addr constant [2 x i8] c"\01\80", align 1
@__const.tda8290_set_params.agc_out_on = private unnamed_addr constant [2 x i8] c"\02\00", align 1
@__const.tda8290_set_params.gainset_off = private unnamed_addr constant [2 x i8] c"(\14", align 1
@__const.tda8290_set_params.if_agc_spd = private unnamed_addr constant [2 x i8] c"\0F\88", align 1
@__const.tda8290_set_params.adc_head_6 = private unnamed_addr constant [2 x i8] c"\05\04", align 1
@__const.tda8290_set_params.adc_head_9 = private unnamed_addr constant [2 x i8] c"\05\02", align 1
@__const.tda8290_set_params.adc_head_12 = private unnamed_addr constant [2 x i8] c"\05\01", align 1
@__const.tda8290_set_params.pll_bw_nom = private unnamed_addr constant [2 x i8] c"\0DG", align 1
@__const.tda8290_set_params.pll_bw_low = private unnamed_addr constant [2 x i8] c"\0D'", align 1
@__const.tda8290_set_params.gainset_2 = private unnamed_addr constant [2 x i8] c"(d", align 1
@__const.tda8290_set_params.agc_rst_on = private unnamed_addr constant [2 x i8] c"\0E\0B", align 1
@__const.tda8290_set_params.agc_rst_off = private unnamed_addr constant [2 x i8] c"\0E\09", align 1
@__const.tda8290_set_params.if_agc_set = private unnamed_addr constant [2 x i8] c"\0F\81", align 1
@.str = private unnamed_addr constant [27 x i8] c"tda827xa config is 0x%02x\0A\00", align 1
@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@__const.tda8290_set_params.deemphasis = private unnamed_addr constant [2 x i8] c"\13\01", align 1
@deemphasis_50 = common dso_local global i64 0, align 8
@fm_mode = common dso_local global %struct.TYPE_9__* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"tda8290 is locked, AGC: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"tda8290 not locked, no signal?\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"adjust gain, step 1. Agc: %d, ADC stat: %d, lock: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"adjust gain, step 2. Agc: %d, lock: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"adjust gain, step 3. Agc: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"trying to resolve SECAM L deadlock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, %struct.analog_parameters.2*)* @tda8290_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda8290_set_params(%struct.dvb_frontend* %0, %struct.analog_parameters.2* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.analog_parameters.2*, align 8
  %5 = alloca %struct.tda8290_priv*, align 8
  %6 = alloca [2 x i8], align 1
  %7 = alloca [2 x i8], align 1
  %8 = alloca [2 x i8], align 1
  %9 = alloca [2 x i8], align 1
  %10 = alloca [2 x i8], align 1
  %11 = alloca [2 x i8], align 1
  %12 = alloca [2 x i8], align 1
  %13 = alloca [2 x i8], align 1
  %14 = alloca [2 x i8], align 1
  %15 = alloca [2 x i8], align 1
  %16 = alloca [2 x i8], align 1
  %17 = alloca [2 x i8], align 1
  %18 = alloca [2 x i8], align 1
  %19 = alloca [2 x i8], align 1
  %20 = alloca [2 x i8], align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i32, align 4
  %28 = alloca [2 x i8], align 1
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.analog_parameters.2* %1, %struct.analog_parameters.2** %4, align 8
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %30 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %29, i32 0, i32 1
  %31 = load %struct.tda8290_priv*, %struct.tda8290_priv** %30, align 8
  store %struct.tda8290_priv* %31, %struct.tda8290_priv** %5, align 8
  %32 = bitcast [2 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %32, i8 0, i64 2, i1 false)
  %33 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 1, i8* %33, align 1
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %36 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %34, align 1
  %39 = bitcast [2 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_set_params.expert_mode, i32 0, i32 0), i64 2, i1 false)
  %40 = bitcast [2 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %40, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_set_params.agc_out_on, i32 0, i32 0), i64 2, i1 false)
  %41 = bitcast [2 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %41, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_set_params.gainset_off, i32 0, i32 0), i64 2, i1 false)
  %42 = bitcast [2 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %42, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_set_params.if_agc_spd, i32 0, i32 0), i64 2, i1 false)
  %43 = bitcast [2 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %43, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_set_params.adc_head_6, i32 0, i32 0), i64 2, i1 false)
  %44 = bitcast [2 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %44, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_set_params.adc_head_9, i32 0, i32 0), i64 2, i1 false)
  %45 = bitcast [2 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %45, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_set_params.adc_head_12, i32 0, i32 0), i64 2, i1 false)
  %46 = bitcast [2 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %46, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_set_params.pll_bw_nom, i32 0, i32 0), i64 2, i1 false)
  %47 = bitcast [2 x i8]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_set_params.pll_bw_low, i32 0, i32 0), i64 2, i1 false)
  %48 = bitcast [2 x i8]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %48, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_set_params.gainset_2, i32 0, i32 0), i64 2, i1 false)
  %49 = bitcast [2 x i8]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %49, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_set_params.agc_rst_on, i32 0, i32 0), i64 2, i1 false)
  %50 = bitcast [2 x i8]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %50, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_set_params.agc_rst_off, i32 0, i32 0), i64 2, i1 false)
  %51 = bitcast [2 x i8]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %51, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_set_params.if_agc_set, i32 0, i32 0), i64 2, i1 false)
  store i8 26, i8* %21, align 1
  store i8 29, i8* %22, align 1
  store i8 27, i8* %23, align 1
  %52 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %53 = load %struct.analog_parameters.2*, %struct.analog_parameters.2** %4, align 8
  %54 = call i32 @set_audio(%struct.dvb_frontend* %52, %struct.analog_parameters.2* %53)
  %55 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %56 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %2
  %61 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %62 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %60, %2
  %67 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %68 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %67, i32 0, i32 1
  %69 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %70 = call i32 @tuner_i2c_xfer_send(i32* %68, i8* %69, i32 2)
  %71 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %72 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %71, i32 0, i32 1
  %73 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %74 = call i32 @tuner_i2c_xfer_send(i32* %72, i8* %73, i32 2)
  %75 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %76 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %75, i32 0, i32 1
  %77 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %78 = call i32 @tuner_i2c_xfer_send(i32* %76, i8* %77, i32 2)
  %79 = call i32 @msleep(i32 1)
  %80 = load %struct.analog_parameters.2*, %struct.analog_parameters.2** %4, align 8
  %81 = getelementptr inbounds %struct.analog_parameters.2, %struct.analog_parameters.2* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %115

85:                                               ; preds = %66
  %86 = bitcast [2 x i8]* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %86, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_set_params.deemphasis, i32 0, i32 0), i64 2, i1 false)
  %87 = load i64, i64* @deemphasis_50, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = getelementptr inbounds [2 x i8], [2 x i8]* %28, i64 0, i64 1
  store i8 2, i8* %90, align 1
  br label %91

91:                                               ; preds = %89, %85
  store i32 0, i32* %27, align 4
  br label %92

92:                                               ; preds = %107, %91
  %93 = load i32, i32* %27, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fm_mode, align 8
  %95 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %94)
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %99 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fm_mode, align 8
  %101 = load i32, i32* %27, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @tuner_i2c_xfer_send(i32* %99, i8* %105, i32 2)
  br label %107

107:                                              ; preds = %97
  %108 = load i32, i32* %27, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %27, align 4
  br label %92

110:                                              ; preds = %92
  %111 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %112 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %111, i32 0, i32 1
  %113 = getelementptr inbounds [2 x i8], [2 x i8]* %28, i64 0, i64 0
  %114 = call i32 @tuner_i2c_xfer_send(i32* %112, i8* %113, i32 2)
  br label %154

115:                                              ; preds = %66
  %116 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %117 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 128
  %120 = trunc i32 %119 to i8
  %121 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 %120, i8* %121, align 1
  %122 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %123 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %122, i32 0, i32 1
  %124 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %125 = call i32 @tuner_i2c_xfer_send(i32* %123, i8* %124, i32 2)
  %126 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %127 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %126, i32 0, i32 1
  %128 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %129 = call i32 @tuner_i2c_xfer_send(i32* %127, i8* %128, i32 2)
  %130 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %131 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %130, i32 0, i32 1
  %132 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %133 = call i32 @tuner_i2c_xfer_send(i32* %131, i8* %132, i32 2)
  %134 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %135 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, 96
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %115
  %140 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %141 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %140, i32 0, i32 1
  %142 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %143 = call i32 @tuner_i2c_xfer_send(i32* %141, i8* %142, i32 2)
  br label %149

144:                                              ; preds = %115
  %145 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %146 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %145, i32 0, i32 1
  %147 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %148 = call i32 @tuner_i2c_xfer_send(i32* %146, i8* %147, i32 2)
  br label %149

149:                                              ; preds = %144, %139
  %150 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %151 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %150, i32 0, i32 1
  %152 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  %153 = call i32 @tuner_i2c_xfer_send(i32* %151, i8* %152, i32 2)
  br label %154

154:                                              ; preds = %149, %110
  %155 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %156 = call i32 @tda8290_i2c_bridge(%struct.dvb_frontend* %155, i32 1)
  %157 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %158 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32 (%struct.dvb_frontend.0*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend.0*, %struct.analog_parameters*)** %160, align 8
  %162 = icmp ne i32 (%struct.dvb_frontend.0*, %struct.analog_parameters*)* %161, null
  br i1 %162, label %163, label %174

163:                                              ; preds = %154
  %164 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %165 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32 (%struct.dvb_frontend.0*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend.0*, %struct.analog_parameters*)** %167, align 8
  %169 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %170 = bitcast %struct.dvb_frontend* %169 to %struct.dvb_frontend.0*
  %171 = load %struct.analog_parameters.2*, %struct.analog_parameters.2** %4, align 8
  %172 = bitcast %struct.analog_parameters.2* %171 to %struct.analog_parameters*
  %173 = call i32 %168(%struct.dvb_frontend.0* %170, %struct.analog_parameters* %172)
  br label %174

174:                                              ; preds = %163, %154
  store i32 0, i32* %27, align 4
  br label %175

175:                                              ; preds = %200, %174
  %176 = load i32, i32* %27, align 4
  %177 = icmp slt i32 %176, 3
  br i1 %177, label %178, label %203

178:                                              ; preds = %175
  %179 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %180 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %179, i32 0, i32 1
  %181 = call i32 @tuner_i2c_xfer_send_recv(i32* %180, i8* %23, i32 1, i8* %26, i32 1)
  %182 = load i8, i8* %26, align 1
  %183 = zext i8 %182 to i32
  %184 = and i32 %183, 128
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %178
  %187 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %188 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %187, i32 0, i32 1
  %189 = call i32 @tuner_i2c_xfer_send_recv(i32* %188, i8* %21, i32 1, i8* %24, i32 1)
  %190 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %191 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %190, i32 0, i32 1
  %192 = call i32 @tuner_i2c_xfer_send_recv(i32* %191, i8* %22, i32 1, i8* %25, i32 1)
  %193 = load i8, i8* %25, align 1
  %194 = zext i8 %193 to i32
  %195 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %194)
  br label %203

196:                                              ; preds = %178
  %197 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %198 = call i32 @msleep(i32 100)
  br label %199

199:                                              ; preds = %196
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %27, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %27, align 4
  br label %175

203:                                              ; preds = %186, %175
  %204 = load i8, i8* %25, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp sgt i32 %205, 115
  br i1 %206, label %216, label %207

207:                                              ; preds = %203
  %208 = load i8, i8* %26, align 1
  %209 = zext i8 %208 to i32
  %210 = and i32 %209, 128
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %295, label %212

212:                                              ; preds = %207
  %213 = load i8, i8* %24, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp slt i32 %214, 20
  br i1 %215, label %216, label %295

216:                                              ; preds = %212, %203
  %217 = load i8, i8* %25, align 1
  %218 = zext i8 %217 to i32
  %219 = load i8, i8* %24, align 1
  %220 = zext i8 %219 to i32
  %221 = load i8, i8* %26, align 1
  %222 = zext i8 %221 to i32
  %223 = and i32 %222, 128
  %224 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %218, i32 %220, i32 %223)
  %225 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %226 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %225, i32 0, i32 1
  %227 = getelementptr inbounds [2 x i8], [2 x i8]* %17, i64 0, i64 0
  %228 = call i32 @tuner_i2c_xfer_send(i32* %226, i8* %227, i32 2)
  %229 = call i32 @msleep(i32 100)
  %230 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %231 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %230, i32 0, i32 1
  %232 = call i32 @tuner_i2c_xfer_send_recv(i32* %231, i8* %22, i32 1, i8* %25, i32 1)
  %233 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %234 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %233, i32 0, i32 1
  %235 = call i32 @tuner_i2c_xfer_send_recv(i32* %234, i8* %23, i32 1, i8* %26, i32 1)
  %236 = load i8, i8* %25, align 1
  %237 = zext i8 %236 to i32
  %238 = icmp sgt i32 %237, 115
  br i1 %238, label %244, label %239

239:                                              ; preds = %216
  %240 = load i8, i8* %26, align 1
  %241 = zext i8 %240 to i32
  %242 = and i32 %241, 128
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %294, label %244

244:                                              ; preds = %239, %216
  %245 = load i8, i8* %25, align 1
  %246 = zext i8 %245 to i32
  %247 = load i8, i8* %26, align 1
  %248 = zext i8 %247 to i32
  %249 = and i32 %248, 128
  %250 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %246, i32 %249)
  %251 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %252 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %253, align 8
  %255 = icmp ne i32 (%struct.dvb_frontend.1*)* %254, null
  br i1 %255, label %256, label %264

256:                                              ; preds = %244
  %257 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %258 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  %260 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %259, align 8
  %261 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %262 = bitcast %struct.dvb_frontend* %261 to %struct.dvb_frontend.1*
  %263 = call i32 %260(%struct.dvb_frontend.1* %262)
  br label %264

264:                                              ; preds = %256, %244
  %265 = call i32 @msleep(i32 100)
  %266 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %267 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %266, i32 0, i32 1
  %268 = call i32 @tuner_i2c_xfer_send_recv(i32* %267, i8* %22, i32 1, i8* %25, i32 1)
  %269 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %270 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %269, i32 0, i32 1
  %271 = call i32 @tuner_i2c_xfer_send_recv(i32* %270, i8* %23, i32 1, i8* %26, i32 1)
  %272 = load i8, i8* %25, align 1
  %273 = zext i8 %272 to i32
  %274 = icmp sgt i32 %273, 115
  br i1 %274, label %280, label %275

275:                                              ; preds = %264
  %276 = load i8, i8* %26, align 1
  %277 = zext i8 %276 to i32
  %278 = and i32 %277, 128
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %293, label %280

280:                                              ; preds = %275, %264
  %281 = load i8, i8* %25, align 1
  %282 = zext i8 %281 to i32
  %283 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %282)
  %284 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %285 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %284, i32 0, i32 1
  %286 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  %287 = call i32 @tuner_i2c_xfer_send(i32* %285, i8* %286, i32 2)
  %288 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %289 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %288, i32 0, i32 1
  %290 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 0
  %291 = call i32 @tuner_i2c_xfer_send(i32* %289, i8* %290, i32 2)
  %292 = call i32 @msleep(i32 100)
  br label %293

293:                                              ; preds = %280, %275
  br label %294

294:                                              ; preds = %293, %239
  br label %295

295:                                              ; preds = %294, %212, %207
  %296 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %297 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = and i32 %298, 96
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %328

301:                                              ; preds = %295
  %302 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %303 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %302, i32 0, i32 1
  %304 = call i32 @tuner_i2c_xfer_send_recv(i32* %303, i8* %21, i32 1, i8* %24, i32 1)
  %305 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %306 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %305, i32 0, i32 1
  %307 = call i32 @tuner_i2c_xfer_send_recv(i32* %306, i8* %23, i32 1, i8* %26, i32 1)
  %308 = load i8, i8* %24, align 1
  %309 = zext i8 %308 to i32
  %310 = icmp sgt i32 %309, 20
  br i1 %310, label %316, label %311

311:                                              ; preds = %301
  %312 = load i8, i8* %26, align 1
  %313 = zext i8 %312 to i32
  %314 = and i32 %313, 128
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %327, label %316

316:                                              ; preds = %311, %301
  %317 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %318 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %319 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %318, i32 0, i32 1
  %320 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 0
  %321 = call i32 @tuner_i2c_xfer_send(i32* %319, i8* %320, i32 2)
  %322 = call i32 @msleep(i32 40)
  %323 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %324 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %323, i32 0, i32 1
  %325 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  %326 = call i32 @tuner_i2c_xfer_send(i32* %324, i8* %325, i32 2)
  br label %327

327:                                              ; preds = %316, %311
  br label %328

328:                                              ; preds = %327, %295
  %329 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %330 = call i32 @tda8290_i2c_bridge(%struct.dvb_frontend* %329, i32 0)
  %331 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %332 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %331, i32 0, i32 1
  %333 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %334 = call i32 @tuner_i2c_xfer_send(i32* %332, i8* %333, i32 2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @set_audio(%struct.dvb_frontend*, %struct.analog_parameters.2*) #2

declare dso_local i32 @tuner_dbg(i8*, ...) #2

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i8*, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #2

declare dso_local i32 @tda8290_i2c_bridge(%struct.dvb_frontend*, i32) #2

declare dso_local i32 @tuner_i2c_xfer_send_recv(i32*, i8*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
