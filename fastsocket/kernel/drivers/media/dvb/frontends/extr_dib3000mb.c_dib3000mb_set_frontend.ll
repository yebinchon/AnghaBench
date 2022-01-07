; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mb.c_dib3000mb_set_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mb.c_dib3000mb_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.dib3000_state* }
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_5__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* }
%struct.dvb_frontend.1 = type opaque
%struct.dib3000_state = type { i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dvb_ofdm_parameters }
%struct.dvb_ofdm_parameters = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"bandwidth: \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"8 MHz\0A\00", align 1
@dib3000mb_reg_timing_freq = common dso_local global i32 0, align 4
@dib3000mb_timing_freq = common dso_local global i32* null, align 8
@dib3000mb_reg_bandwidth = common dso_local global i32 0, align 4
@dib3000mb_bandwidth_8mhz = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"7 MHz\0A\00", align 1
@dib3000mb_bandwidth_7mhz = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"6 MHz\0A\00", align 1
@dib3000mb_bandwidth_6mhz = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"unknown bandwidth value.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DIB3000MB_REG_LOCK1_MASK = common dso_local global i32 0, align 4
@DIB3000MB_LOCK1_SEARCH_4 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"transmission mode: \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"2k\0A\00", align 1
@DIB3000MB_REG_FFT = common dso_local global i32 0, align 4
@DIB3000_TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"8k\0A\00", align 1
@DIB3000_TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"auto\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"guard: \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"1_32\0A\00", align 1
@DIB3000MB_REG_GUARD_TIME = common dso_local global i32 0, align 4
@DIB3000_GUARD_TIME_1_32 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"1_16\0A\00", align 1
@DIB3000_GUARD_TIME_1_16 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"1_8\0A\00", align 1
@DIB3000_GUARD_TIME_1_8 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"1_4\0A\00", align 1
@DIB3000_GUARD_TIME_1_4 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"inversion: \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"off\0A\00", align 1
@DIB3000MB_REG_DDS_INV = common dso_local global i32 0, align 4
@DIB3000_DDS_INVERSION_OFF = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"auto \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"on\0A\00", align 1
@DIB3000_DDS_INVERSION_ON = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"constellation: \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"qpsk\0A\00", align 1
@DIB3000MB_REG_QAM = common dso_local global i32 0, align 4
@DIB3000_CONSTELLATION_QPSK = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"qam16\0A\00", align 1
@DIB3000_CONSTELLATION_16QAM = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [7 x i8] c"qam64\0A\00", align 1
@DIB3000_CONSTELLATION_64QAM = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [12 x i8] c"hierarchy: \00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"none \00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"alpha=1\0A\00", align 1
@DIB3000MB_REG_VIT_ALPHA = common dso_local global i32 0, align 4
@DIB3000_ALPHA_1 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"alpha=2\0A\00", align 1
@DIB3000_ALPHA_2 = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [9 x i8] c"alpha=4\0A\00", align 1
@DIB3000_ALPHA_4 = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [12 x i8] c"alpha=auto\0A\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@DIB3000MB_REG_VIT_HRCH = common dso_local global i32 0, align 4
@DIB3000_HRCH_OFF = common dso_local global i32 0, align 4
@DIB3000MB_REG_VIT_HP = common dso_local global i32 0, align 4
@DIB3000_SELECT_HP = common dso_local global i32 0, align 4
@DIB3000_HRCH_ON = common dso_local global i32 0, align 4
@DIB3000_SELECT_LP = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"fec: \00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"1_2\0A\00", align 1
@DIB3000MB_REG_VIT_CODE_RATE = common dso_local global i32 0, align 4
@DIB3000_FEC_1_2 = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [5 x i8] c"2_3\0A\00", align 1
@DIB3000_FEC_2_3 = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [5 x i8] c"3_4\0A\00", align 1
@DIB3000_FEC_3_4 = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [5 x i8] c"5_6\0A\00", align 1
@DIB3000_FEC_5_6 = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [5 x i8] c"7_8\0A\00", align 1
@DIB3000_FEC_7_8 = common dso_local global i32 0, align 4
@dib3000_seq = common dso_local global i32*** null, align 8
@.str.35 = private unnamed_addr constant [9 x i8] c"seq? %d\0A\00", align 1
@DIB3000MB_REG_SEQ = common dso_local global i32 0, align 4
@DIB3000MB_REG_ISI = common dso_local global i32 0, align 4
@DIB3000MB_ISI_INHIBIT = common dso_local global i32 0, align 4
@DIB3000MB_ISI_ACTIVATE = common dso_local global i32 0, align 4
@DIB3000MB_REG_SYNC_IMPROVEMENT = common dso_local global i32 0, align 4
@DIB3000MB_SYNC_IMPROVE_2K_1_8 = common dso_local global i32 0, align 4
@DIB3000MB_SYNC_IMPROVE_DEFAULT = common dso_local global i32 0, align 4
@DIB3000MB_REG_UNK_121 = common dso_local global i32 0, align 4
@DIB3000MB_UNK_121_2K = common dso_local global i32 0, align 4
@DIB3000MB_UNK_121_DEFAULT = common dso_local global i32 0, align 4
@DIB3000MB_REG_MOBILE_ALGO = common dso_local global i32 0, align 4
@DIB3000MB_MOBILE_ALGO_OFF = common dso_local global i32 0, align 4
@DIB3000MB_REG_MOBILE_MODE_QAM = common dso_local global i32 0, align 4
@DIB3000MB_MOBILE_MODE_QAM_OFF = common dso_local global i32 0, align 4
@DIB3000MB_REG_MOBILE_MODE = common dso_local global i32 0, align 4
@DIB3000MB_MOBILE_MODE_OFF = common dso_local global i32 0, align 4
@dib3000mb_reg_agc_bandwidth = common dso_local global i32 0, align 4
@dib3000mb_agc_bandwidth_high = common dso_local global i32 0, align 4
@DIB3000MB_REG_RESTART = common dso_local global i32 0, align 4
@DIB3000MB_RESTART_AGC = common dso_local global i32 0, align 4
@DIB3000MB_RESTART_CTRL = common dso_local global i32 0, align 4
@DIB3000MB_RESTART_OFF = common dso_local global i32 0, align 4
@dib3000mb_agc_bandwidth_low = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [21 x i8] c"autosearch enabled.\0A\00", align 1
@DIB3000MB_RESTART_AUTO_SEARCH = common dso_local global i32 0, align 4
@DIB3000MB_REG_AS_IRQ_PENDING = common dso_local global i32 0, align 4
@DIB3000MB_REG_LOCK2_VALUE = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [50 x i8] c"search_state after autosearch %d after %d checks\0A\00", align 1
@.str.38 = private unnamed_addr constant [46 x i8] c"reading tuning data from frontend succeeded.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*, i32)* @dib3000mb_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mb_set_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.dvb_frontend_parameters*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dib3000_state*, align 8
  %9 = alloca %struct.dvb_ofdm_parameters*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dvb_frontend_parameters, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 1
  %17 = load %struct.dib3000_state*, %struct.dib3000_state** %16, align 8
  store %struct.dib3000_state* %17, %struct.dib3000_state** %8, align 8
  %18 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %6, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.dvb_ofdm_parameters* %20, %struct.dvb_ofdm_parameters** %9, align 8
  store i32 148, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %96

23:                                               ; preds = %3
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %25 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %27, align 8
  %29 = icmp ne i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* %28, null
  br i1 %29, label %30, label %96

30:                                               ; preds = %23
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %32 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %34, align 8
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %37 = bitcast %struct.dvb_frontend* %36 to %struct.dvb_frontend.1*
  %38 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %6, align 8
  %39 = call i32 %35(%struct.dvb_frontend.1* %37, %struct.dvb_frontend_parameters* %38)
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %41 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %42, align 8
  %44 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %30
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %47 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %48, align 8
  %50 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %51 = bitcast %struct.dvb_frontend* %50 to %struct.dvb_frontend.0*
  %52 = call i32 %49(%struct.dvb_frontend.0* %51, i32 0)
  br label %53

53:                                               ; preds = %45, %30
  %54 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %56 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %91 [
    i32 156, label %58
    i32 157, label %68
    i32 158, label %78
    i32 155, label %88
  ]

58:                                               ; preds = %53
  %59 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @dib3000mb_reg_timing_freq, align 4
  %61 = load i32*, i32** @dib3000mb_timing_freq, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @wr_foreach(i32 %60, i32 %63)
  %65 = load i32, i32* @dib3000mb_reg_bandwidth, align 4
  %66 = load i32, i32* @dib3000mb_bandwidth_8mhz, align 4
  %67 = call i32 @wr_foreach(i32 %65, i32 %66)
  br label %95

68:                                               ; preds = %53
  %69 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @dib3000mb_reg_timing_freq, align 4
  %71 = load i32*, i32** @dib3000mb_timing_freq, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @wr_foreach(i32 %70, i32 %73)
  %75 = load i32, i32* @dib3000mb_reg_bandwidth, align 4
  %76 = load i32, i32* @dib3000mb_bandwidth_7mhz, align 4
  %77 = call i32 @wr_foreach(i32 %75, i32 %76)
  br label %95

78:                                               ; preds = %53
  %79 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @dib3000mb_reg_timing_freq, align 4
  %81 = load i32*, i32** @dib3000mb_timing_freq, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @wr_foreach(i32 %80, i32 %83)
  %85 = load i32, i32* @dib3000mb_reg_bandwidth, align 4
  %86 = load i32, i32* @dib3000mb_bandwidth_6mhz, align 4
  %87 = call i32 @wr_foreach(i32 %85, i32 %86)
  br label %95

88:                                               ; preds = %53
  %89 = load i32, i32* @EOPNOTSUPP, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %450

91:                                               ; preds = %53
  %92 = call i32 @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %450

95:                                               ; preds = %78, %68, %58
  br label %96

96:                                               ; preds = %95, %23, %3
  %97 = load i32, i32* @DIB3000MB_REG_LOCK1_MASK, align 4
  %98 = load i32, i32* @DIB3000MB_LOCK1_SEARCH_4, align 4
  %99 = call i32 @wr(i32 %97, i32 %98)
  %100 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %101 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %102 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %116 [
    i32 130, label %104
    i32 129, label %109
    i32 128, label %114
  ]

104:                                              ; preds = %96
  %105 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %106 = load i32, i32* @DIB3000MB_REG_FFT, align 4
  %107 = load i32, i32* @DIB3000_TRANSMISSION_MODE_2K, align 4
  %108 = call i32 @wr(i32 %106, i32 %107)
  br label %119

109:                                              ; preds = %96
  %110 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %111 = load i32, i32* @DIB3000MB_REG_FFT, align 4
  %112 = load i32, i32* @DIB3000_TRANSMISSION_MODE_8K, align 4
  %113 = call i32 @wr(i32 %111, i32 %112)
  br label %119

114:                                              ; preds = %96
  %115 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %119

116:                                              ; preds = %96
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %450

119:                                              ; preds = %114, %109, %104
  %120 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %121 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %122 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  switch i32 %123, label %146 [
    i32 146, label %124
    i32 147, label %129
    i32 144, label %134
    i32 145, label %139
    i32 143, label %144
  ]

124:                                              ; preds = %119
  %125 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %126 = load i32, i32* @DIB3000MB_REG_GUARD_TIME, align 4
  %127 = load i32, i32* @DIB3000_GUARD_TIME_1_32, align 4
  %128 = call i32 @wr(i32 %126, i32 %127)
  br label %149

129:                                              ; preds = %119
  %130 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %131 = load i32, i32* @DIB3000MB_REG_GUARD_TIME, align 4
  %132 = load i32, i32* @DIB3000_GUARD_TIME_1_16, align 4
  %133 = call i32 @wr(i32 %131, i32 %132)
  br label %149

134:                                              ; preds = %119
  %135 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %136 = load i32, i32* @DIB3000MB_REG_GUARD_TIME, align 4
  %137 = load i32, i32* @DIB3000_GUARD_TIME_1_8, align 4
  %138 = call i32 @wr(i32 %136, i32 %137)
  br label %149

139:                                              ; preds = %119
  %140 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %141 = load i32, i32* @DIB3000MB_REG_GUARD_TIME, align 4
  %142 = load i32, i32* @DIB3000_GUARD_TIME_1_4, align 4
  %143 = call i32 @wr(i32 %141, i32 %142)
  br label %149

144:                                              ; preds = %119
  %145 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %149

146:                                              ; preds = %119
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %450

149:                                              ; preds = %144, %139, %134, %129, %124
  %150 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %151 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %6, align 8
  %152 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  switch i32 %153, label %166 [
    i32 136, label %154
    i32 137, label %159
    i32 135, label %161
  ]

154:                                              ; preds = %149
  %155 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %156 = load i32, i32* @DIB3000MB_REG_DDS_INV, align 4
  %157 = load i32, i32* @DIB3000_DDS_INVERSION_OFF, align 4
  %158 = call i32 @wr(i32 %156, i32 %157)
  br label %169

159:                                              ; preds = %149
  %160 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %169

161:                                              ; preds = %149
  %162 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %163 = load i32, i32* @DIB3000MB_REG_DDS_INV, align 4
  %164 = load i32, i32* @DIB3000_DDS_INVERSION_ON, align 4
  %165 = call i32 @wr(i32 %163, i32 %164)
  br label %169

166:                                              ; preds = %149
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %4, align 4
  br label %450

169:                                              ; preds = %161, %159, %154
  %170 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  %171 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %172 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  switch i32 %173, label %190 [
    i32 131, label %174
    i32 134, label %179
    i32 133, label %184
    i32 132, label %189
  ]

174:                                              ; preds = %169
  %175 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %176 = load i32, i32* @DIB3000MB_REG_QAM, align 4
  %177 = load i32, i32* @DIB3000_CONSTELLATION_QPSK, align 4
  %178 = call i32 @wr(i32 %176, i32 %177)
  br label %193

179:                                              ; preds = %169
  %180 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %181 = load i32, i32* @DIB3000MB_REG_QAM, align 4
  %182 = load i32, i32* @DIB3000_CONSTELLATION_16QAM, align 4
  %183 = call i32 @wr(i32 %181, i32 %182)
  br label %193

184:                                              ; preds = %169
  %185 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %186 = load i32, i32* @DIB3000MB_REG_QAM, align 4
  %187 = load i32, i32* @DIB3000_CONSTELLATION_64QAM, align 4
  %188 = call i32 @wr(i32 %186, i32 %187)
  br label %193

189:                                              ; preds = %169
  br label %193

190:                                              ; preds = %169
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %4, align 4
  br label %450

193:                                              ; preds = %189, %184, %179, %174
  %194 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  %195 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %196 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  switch i32 %197, label %217 [
    i32 138, label %198
    i32 142, label %200
    i32 141, label %205
    i32 140, label %210
    i32 139, label %215
  ]

198:                                              ; preds = %193
  %199 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  br label %200

200:                                              ; preds = %193, %198
  %201 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  %202 = load i32, i32* @DIB3000MB_REG_VIT_ALPHA, align 4
  %203 = load i32, i32* @DIB3000_ALPHA_1, align 4
  %204 = call i32 @wr(i32 %202, i32 %203)
  br label %220

205:                                              ; preds = %193
  %206 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  %207 = load i32, i32* @DIB3000MB_REG_VIT_ALPHA, align 4
  %208 = load i32, i32* @DIB3000_ALPHA_2, align 4
  %209 = call i32 @wr(i32 %207, i32 %208)
  br label %220

210:                                              ; preds = %193
  %211 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0))
  %212 = load i32, i32* @DIB3000MB_REG_VIT_ALPHA, align 4
  %213 = load i32, i32* @DIB3000_ALPHA_4, align 4
  %214 = call i32 @wr(i32 %212, i32 %213)
  br label %220

215:                                              ; preds = %193
  %216 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  br label %220

217:                                              ; preds = %193
  %218 = load i32, i32* @EINVAL, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %4, align 4
  br label %450

220:                                              ; preds = %215, %210, %205, %200
  %221 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  %222 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %223 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 138
  br i1 %225, label %226, label %237

226:                                              ; preds = %220
  %227 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  %228 = load i32, i32* @DIB3000MB_REG_VIT_HRCH, align 4
  %229 = load i32, i32* @DIB3000_HRCH_OFF, align 4
  %230 = call i32 @wr(i32 %228, i32 %229)
  %231 = load i32, i32* @DIB3000MB_REG_VIT_HP, align 4
  %232 = load i32, i32* @DIB3000_SELECT_HP, align 4
  %233 = call i32 @wr(i32 %231, i32 %232)
  %234 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %235 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %10, align 4
  br label %254

237:                                              ; preds = %220
  %238 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %239 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 139
  br i1 %241, label %242, label %253

242:                                              ; preds = %237
  %243 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %244 = load i32, i32* @DIB3000MB_REG_VIT_HRCH, align 4
  %245 = load i32, i32* @DIB3000_HRCH_ON, align 4
  %246 = call i32 @wr(i32 %244, i32 %245)
  %247 = load i32, i32* @DIB3000MB_REG_VIT_HP, align 4
  %248 = load i32, i32* @DIB3000_SELECT_LP, align 4
  %249 = call i32 @wr(i32 %247, i32 %248)
  %250 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %251 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %10, align 4
  br label %253

253:                                              ; preds = %242, %237
  br label %254

254:                                              ; preds = %253, %226
  %255 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0))
  %256 = load i32, i32* %10, align 4
  switch i32 %256, label %286 [
    i32 154, label %257
    i32 153, label %262
    i32 152, label %267
    i32 151, label %272
    i32 150, label %277
    i32 148, label %282
    i32 149, label %284
  ]

257:                                              ; preds = %254
  %258 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  %259 = load i32, i32* @DIB3000MB_REG_VIT_CODE_RATE, align 4
  %260 = load i32, i32* @DIB3000_FEC_1_2, align 4
  %261 = call i32 @wr(i32 %259, i32 %260)
  br label %289

262:                                              ; preds = %254
  %263 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %264 = load i32, i32* @DIB3000MB_REG_VIT_CODE_RATE, align 4
  %265 = load i32, i32* @DIB3000_FEC_2_3, align 4
  %266 = call i32 @wr(i32 %264, i32 %265)
  br label %289

267:                                              ; preds = %254
  %268 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %269 = load i32, i32* @DIB3000MB_REG_VIT_CODE_RATE, align 4
  %270 = load i32, i32* @DIB3000_FEC_3_4, align 4
  %271 = call i32 @wr(i32 %269, i32 %270)
  br label %289

272:                                              ; preds = %254
  %273 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %274 = load i32, i32* @DIB3000MB_REG_VIT_CODE_RATE, align 4
  %275 = load i32, i32* @DIB3000_FEC_5_6, align 4
  %276 = call i32 @wr(i32 %274, i32 %275)
  br label %289

277:                                              ; preds = %254
  %278 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  %279 = load i32, i32* @DIB3000MB_REG_VIT_CODE_RATE, align 4
  %280 = load i32, i32* @DIB3000_FEC_7_8, align 4
  %281 = call i32 @wr(i32 %279, i32 %280)
  br label %289

282:                                              ; preds = %254
  %283 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  br label %289

284:                                              ; preds = %254
  %285 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %289

286:                                              ; preds = %254
  %287 = load i32, i32* @EINVAL, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %4, align 4
  br label %450

289:                                              ; preds = %284, %282, %277, %272, %267, %262, %257
  %290 = load i32***, i32**** @dib3000_seq, align 8
  %291 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %292 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp eq i32 %293, 128
  %295 = zext i1 %294 to i32
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32**, i32*** %290, i64 %296
  %298 = load i32**, i32*** %297, align 8
  %299 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %300 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = icmp eq i32 %301, 143
  %303 = zext i1 %302 to i32
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32*, i32** %298, i64 %304
  %306 = load i32*, i32** %305, align 8
  %307 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %6, align 8
  %308 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = icmp eq i32 %309, 137
  %311 = zext i1 %310 to i32
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %306, i64 %312
  %314 = load i32, i32* %313, align 4
  store i32 %314, i32* %12, align 4
  %315 = load i32, i32* %12, align 4
  %316 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i32 %315)
  %317 = load i32, i32* @DIB3000MB_REG_SEQ, align 4
  %318 = load i32, i32* %12, align 4
  %319 = call i32 @wr(i32 %317, i32 %318)
  %320 = load i32, i32* @DIB3000MB_REG_ISI, align 4
  %321 = load i32, i32* %12, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %289
  %324 = load i32, i32* @DIB3000MB_ISI_INHIBIT, align 4
  br label %327

325:                                              ; preds = %289
  %326 = load i32, i32* @DIB3000MB_ISI_ACTIVATE, align 4
  br label %327

327:                                              ; preds = %325, %323
  %328 = phi i32 [ %324, %323 ], [ %326, %325 ]
  %329 = call i32 @wr(i32 %320, i32 %328)
  %330 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %331 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = icmp eq i32 %332, 130
  br i1 %333, label %334, label %351

334:                                              ; preds = %327
  %335 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %336 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = icmp eq i32 %337, 144
  br i1 %338, label %339, label %343

339:                                              ; preds = %334
  %340 = load i32, i32* @DIB3000MB_REG_SYNC_IMPROVEMENT, align 4
  %341 = load i32, i32* @DIB3000MB_SYNC_IMPROVE_2K_1_8, align 4
  %342 = call i32 @wr(i32 %340, i32 %341)
  br label %347

343:                                              ; preds = %334
  %344 = load i32, i32* @DIB3000MB_REG_SYNC_IMPROVEMENT, align 4
  %345 = load i32, i32* @DIB3000MB_SYNC_IMPROVE_DEFAULT, align 4
  %346 = call i32 @wr(i32 %344, i32 %345)
  br label %347

347:                                              ; preds = %343, %339
  %348 = load i32, i32* @DIB3000MB_REG_UNK_121, align 4
  %349 = load i32, i32* @DIB3000MB_UNK_121_2K, align 4
  %350 = call i32 @wr(i32 %348, i32 %349)
  br label %355

351:                                              ; preds = %327
  %352 = load i32, i32* @DIB3000MB_REG_UNK_121, align 4
  %353 = load i32, i32* @DIB3000MB_UNK_121_DEFAULT, align 4
  %354 = call i32 @wr(i32 %352, i32 %353)
  br label %355

355:                                              ; preds = %351, %347
  %356 = load i32, i32* @DIB3000MB_REG_MOBILE_ALGO, align 4
  %357 = load i32, i32* @DIB3000MB_MOBILE_ALGO_OFF, align 4
  %358 = call i32 @wr(i32 %356, i32 %357)
  %359 = load i32, i32* @DIB3000MB_REG_MOBILE_MODE_QAM, align 4
  %360 = load i32, i32* @DIB3000MB_MOBILE_MODE_QAM_OFF, align 4
  %361 = call i32 @wr(i32 %359, i32 %360)
  %362 = load i32, i32* @DIB3000MB_REG_MOBILE_MODE, align 4
  %363 = load i32, i32* @DIB3000MB_MOBILE_MODE_OFF, align 4
  %364 = call i32 @wr(i32 %362, i32 %363)
  %365 = load i32, i32* @dib3000mb_reg_agc_bandwidth, align 4
  %366 = load i32, i32* @dib3000mb_agc_bandwidth_high, align 4
  %367 = call i32 @wr_foreach(i32 %365, i32 %366)
  %368 = load i32, i32* @DIB3000MB_REG_ISI, align 4
  %369 = load i32, i32* @DIB3000MB_ISI_ACTIVATE, align 4
  %370 = call i32 @wr(i32 %368, i32 %369)
  %371 = load i32, i32* @DIB3000MB_REG_RESTART, align 4
  %372 = load i32, i32* @DIB3000MB_RESTART_AGC, align 4
  %373 = load i32, i32* @DIB3000MB_RESTART_CTRL, align 4
  %374 = add nsw i32 %372, %373
  %375 = call i32 @wr(i32 %371, i32 %374)
  %376 = load i32, i32* @DIB3000MB_REG_RESTART, align 4
  %377 = load i32, i32* @DIB3000MB_RESTART_OFF, align 4
  %378 = call i32 @wr(i32 %376, i32 %377)
  %379 = call i32 @msleep(i32 70)
  %380 = load i32, i32* @dib3000mb_reg_agc_bandwidth, align 4
  %381 = load i32, i32* @dib3000mb_agc_bandwidth_low, align 4
  %382 = call i32 @wr_foreach(i32 %380, i32 %381)
  %383 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %384 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 4
  %386 = icmp eq i32 %385, 132
  br i1 %386, label %400, label %387

387:                                              ; preds = %355
  %388 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %389 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %388, i32 0, i32 4
  %390 = load i32, i32* %389, align 4
  %391 = icmp eq i32 %390, 139
  br i1 %391, label %400, label %392

392:                                              ; preds = %387
  %393 = load i32, i32* %10, align 4
  %394 = icmp eq i32 %393, 149
  br i1 %394, label %400, label %395

395:                                              ; preds = %392
  %396 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %6, align 8
  %397 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = icmp eq i32 %398, 137
  br i1 %399, label %400, label %442

400:                                              ; preds = %395, %392, %387, %355
  store i32 0, i32* %13, align 4
  %401 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0))
  %402 = load i32, i32* @DIB3000MB_REG_ISI, align 4
  %403 = load i32, i32* @DIB3000MB_ISI_INHIBIT, align 4
  %404 = call i32 @wr(i32 %402, i32 %403)
  %405 = load i32, i32* @DIB3000MB_REG_RESTART, align 4
  %406 = load i32, i32* @DIB3000MB_RESTART_AUTO_SEARCH, align 4
  %407 = call i32 @wr(i32 %405, i32 %406)
  %408 = load i32, i32* @DIB3000MB_REG_RESTART, align 4
  %409 = load i32, i32* @DIB3000MB_RESTART_OFF, align 4
  %410 = call i32 @wr(i32 %408, i32 %409)
  br label %411

411:                                              ; preds = %424, %400
  %412 = load i32, i32* @DIB3000MB_REG_AS_IRQ_PENDING, align 4
  %413 = call i32 @rd(i32 %412)
  %414 = load i32, i32* @DIB3000MB_REG_LOCK2_VALUE, align 4
  %415 = call i32 @rd(i32 %414)
  %416 = call i32 @dib3000_search_status(i32 %413, i32 %415)
  store i32 %416, i32* %11, align 4
  %417 = icmp slt i32 %416, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %411
  %419 = load i32, i32* %13, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %13, align 4
  %421 = icmp slt i32 %419, 100
  br label %422

422:                                              ; preds = %418, %411
  %423 = phi i1 [ false, %411 ], [ %421, %418 ]
  br i1 %423, label %424, label %426

424:                                              ; preds = %422
  %425 = call i32 @msleep(i32 1)
  br label %411

426:                                              ; preds = %422
  %427 = load i32, i32* %11, align 4
  %428 = load i32, i32* %13, align 4
  %429 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.37, i64 0, i64 0), i32 %427, i32 %428)
  %430 = load i32, i32* %11, align 4
  %431 = icmp eq i32 %430, 1
  br i1 %431, label %432, label %441

432:                                              ; preds = %426
  %433 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %434 = call i64 @dib3000mb_get_frontend(%struct.dvb_frontend* %433, %struct.dvb_frontend_parameters* %14)
  %435 = icmp eq i64 %434, 0
  br i1 %435, label %436, label %440

436:                                              ; preds = %432
  %437 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.38, i64 0, i64 0))
  %438 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %439 = call i32 @dib3000mb_set_frontend(%struct.dvb_frontend* %438, %struct.dvb_frontend_parameters* %14, i32 0)
  store i32 %439, i32* %4, align 4
  br label %450

440:                                              ; preds = %432
  br label %441

441:                                              ; preds = %440, %426
  br label %449

442:                                              ; preds = %395
  %443 = load i32, i32* @DIB3000MB_REG_RESTART, align 4
  %444 = load i32, i32* @DIB3000MB_RESTART_CTRL, align 4
  %445 = call i32 @wr(i32 %443, i32 %444)
  %446 = load i32, i32* @DIB3000MB_REG_RESTART, align 4
  %447 = load i32, i32* @DIB3000MB_RESTART_OFF, align 4
  %448 = call i32 @wr(i32 %446, i32 %447)
  br label %449

449:                                              ; preds = %442, %441
  store i32 0, i32* %4, align 4
  br label %450

450:                                              ; preds = %449, %436, %286, %217, %190, %166, %146, %116, %91, %88
  %451 = load i32, i32* %4, align 4
  ret i32 %451
}

declare dso_local i32 @deb_setf(i8*, ...) #1

declare dso_local i32 @wr_foreach(i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @wr(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib3000_search_status(i32, i32) #1

declare dso_local i32 @rd(i32) #1

declare dso_local i64 @dib3000mb_get_frontend(%struct.dvb_frontend*, %struct.dvb_frontend_parameters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
