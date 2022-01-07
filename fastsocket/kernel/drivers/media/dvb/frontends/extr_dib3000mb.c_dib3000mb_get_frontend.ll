; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mb.c_dib3000mb_get_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mb.c_dib3000mb_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib3000_state* }
%struct.dib3000_state = type { i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dvb_ofdm_parameters }
%struct.dvb_ofdm_parameters = type { i32, i32, i8*, i8*, i8*, i32 }

@DIB3000MB_REG_TPS_LOCK = common dso_local global i32 0, align 4
@DIB3000MB_REG_DDS_VALUE_MSB = common dso_local global i32 0, align 4
@DIB3000MB_REG_DDS_VALUE_LSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"DDS_VAL: %x %x %x\00", align 1
@DIB3000MB_REG_DDS_FREQ_MSB = common dso_local global i32 0, align 4
@DIB3000MB_REG_DDS_FREQ_LSB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"DDS_FREQ: %x %x %x\00", align 1
@INVERSION_ON = common dso_local global i32 0, align 4
@INVERSION_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"inversion %d %d, %d\0A\00", align 1
@DIB3000MB_REG_TPS_QAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"QPSK \00", align 1
@QPSK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"QAM16 \00", align 1
@QAM_16 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"QAM64 \00", align 1
@QAM_64 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"Unexpected constellation returned by TPS (%d)\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"TPS: %d\0A\00", align 1
@DIB3000MB_REG_TPS_HRCH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"HRCH ON\0A\00", align 1
@FEC_NONE = common dso_local global i8* null, align 8
@DIB3000MB_REG_TPS_VIT_ALPHA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"HIERARCHY_NONE \00", align 1
@HIERARCHY_NONE = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"HIERARCHY_1 \00", align 1
@HIERARCHY_1 = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"HIERARCHY_2 \00", align 1
@HIERARCHY_2 = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"HIERARCHY_4 \00", align 1
@HIERARCHY_4 = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [44 x i8] c"Unexpected ALPHA value returned by TPS (%d)\00", align 1
@DIB3000MB_REG_TPS_CODE_RATE_LP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"HRCH OFF\0A\00", align 1
@DIB3000MB_REG_TPS_CODE_RATE_HP = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"FEC_1_2 \00", align 1
@FEC_1_2 = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"FEC_2_3 \00", align 1
@FEC_2_3 = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"FEC_3_4 \00", align 1
@FEC_3_4 = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [9 x i8] c"FEC_5_6 \00", align 1
@FEC_4_5 = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c"FEC_7_8 \00", align 1
@FEC_7_8 = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [36 x i8] c"Unexpected FEC returned by TPS (%d)\00", align 1
@DIB3000MB_REG_TPS_GUARD_TIME = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [21 x i8] c"GUARD_INTERVAL_1_32 \00", align 1
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [21 x i8] c"GUARD_INTERVAL_1_16 \00", align 1
@GUARD_INTERVAL_1_16 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [20 x i8] c"GUARD_INTERVAL_1_8 \00", align 1
@GUARD_INTERVAL_1_8 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [20 x i8] c"GUARD_INTERVAL_1_4 \00", align 1
@GUARD_INTERVAL_1_4 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [43 x i8] c"Unexpected Guard Time returned by TPS (%d)\00", align 1
@DIB3000MB_REG_TPS_FFT = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [22 x i8] c"TRANSMISSION_MODE_2K \00", align 1
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [22 x i8] c"TRANSMISSION_MODE_8K \00", align 1
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [48 x i8] c"unexpected transmission mode return by TPS (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib3000mb_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mb_get_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.dib3000_state*, align 8
  %7 = alloca %struct.dvb_ofdm_parameters*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 0
  %16 = load %struct.dib3000_state*, %struct.dib3000_state** %15, align 8
  store %struct.dib3000_state* %16, %struct.dib3000_state** %6, align 8
  %17 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.dvb_ofdm_parameters* %19, %struct.dvb_ofdm_parameters** %7, align 8
  store i32 8388608, i32* %13, align 4
  %20 = load i32, i32* @DIB3000MB_REG_TPS_LOCK, align 4
  %21 = call i32 @rd(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %255

24:                                               ; preds = %2
  %25 = load i32, i32* @DIB3000MB_REG_DDS_VALUE_MSB, align 4
  %26 = call i32 @rd(i32 %25)
  %27 = and i32 %26, 255
  %28 = shl i32 %27, 16
  %29 = load i32, i32* @DIB3000MB_REG_DDS_VALUE_LSB, align 4
  %30 = call i32 @rd(i32 %29)
  %31 = add nsw i32 %28, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @DIB3000MB_REG_DDS_VALUE_MSB, align 4
  %34 = call i32 @rd(i32 %33)
  %35 = load i32, i32* @DIB3000MB_REG_DDS_VALUE_LSB, align 4
  %36 = call i32 @rd(i32 %35)
  %37 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %34, i32 %36)
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %49

42:                                               ; preds = %24
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 1, i32* %10, align 4
  br label %48

47:                                               ; preds = %42
  store i32 2, i32* %10, align 4
  br label %48

48:                                               ; preds = %47, %46
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32, i32* @DIB3000MB_REG_DDS_FREQ_MSB, align 4
  %51 = call i32 @rd(i32 %50)
  %52 = and i32 %51, 255
  %53 = shl i32 %52, 16
  %54 = load i32, i32* @DIB3000MB_REG_DDS_FREQ_LSB, align 4
  %55 = call i32 @rd(i32 %54)
  %56 = add nsw i32 %53, %55
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @DIB3000MB_REG_DDS_FREQ_MSB, align 4
  %59 = call i32 @rd(i32 %58)
  %60 = load i32, i32* @DIB3000MB_REG_DDS_FREQ_LSB, align 4
  %61 = call i32 @rd(i32 %60)
  %62 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %59, i32 %61)
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %74

67:                                               ; preds = %49
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 1, i32* %11, align 4
  br label %73

72:                                               ; preds = %67
  store i32 2, i32* %11, align 4
  br label %73

73:                                               ; preds = %72, %71
  br label %74

74:                                               ; preds = %73, %66
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %92, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %80, %74
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %94

92:                                               ; preds = %89, %86, %80, %77
  %93 = load i32, i32* @INVERSION_ON, align 4
  br label %96

94:                                               ; preds = %89, %83
  %95 = load i32, i32* @INVERSION_OFF, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %99 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %103 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %101, i32 %104)
  %106 = load i32, i32* @DIB3000MB_REG_TPS_QAM, align 4
  %107 = call i32 @rd(i32 %106)
  store i32 %107, i32* %9, align 4
  switch i32 %107, label %123 [
    i32 139, label %108
    i32 141, label %113
    i32 140, label %118
  ]

108:                                              ; preds = %96
  %109 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %110 = load i32, i32* @QPSK, align 4
  %111 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %112 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 8
  br label %126

113:                                              ; preds = %96
  %114 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i32, i32* @QAM_16, align 4
  %116 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %117 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 8
  br label %126

118:                                              ; preds = %96
  %119 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %120 = load i32, i32* @QAM_64, align 4
  %121 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %122 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 8
  br label %126

123:                                              ; preds = %96
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %123, %118, %113, %108
  %127 = load i32, i32* %9, align 4
  %128 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @DIB3000MB_REG_TPS_HRCH, align 4
  %130 = call i32 @rd(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %169

132:                                              ; preds = %126
  %133 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %134 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %135 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %134, i32 0, i32 3
  store i8** %135, i8*** %8, align 8
  %136 = load i8*, i8** @FEC_NONE, align 8
  %137 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %138 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  %139 = load i32, i32* @DIB3000MB_REG_TPS_VIT_ALPHA, align 4
  %140 = call i32 @rd(i32 %139)
  store i32 %140, i32* %9, align 4
  switch i32 %140, label %161 [
    i32 145, label %141
    i32 144, label %146
    i32 143, label %151
    i32 142, label %156
  ]

141:                                              ; preds = %132
  %142 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %143 = load i8*, i8** @HIERARCHY_NONE, align 8
  %144 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %145 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  br label %164

146:                                              ; preds = %132
  %147 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %148 = load i8*, i8** @HIERARCHY_1, align 8
  %149 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %150 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %149, i32 0, i32 2
  store i8* %148, i8** %150, align 8
  br label %164

151:                                              ; preds = %132
  %152 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %153 = load i8*, i8** @HIERARCHY_2, align 8
  %154 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %155 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  br label %164

156:                                              ; preds = %132
  %157 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %158 = load i8*, i8** @HIERARCHY_4, align 8
  %159 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %160 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %159, i32 0, i32 2
  store i8* %158, i8** %160, align 8
  br label %164

161:                                              ; preds = %132
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %161, %156, %151, %146, %141
  %165 = load i32, i32* %9, align 4
  %166 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* @DIB3000MB_REG_TPS_CODE_RATE_LP, align 4
  %168 = call i32 @rd(i32 %167)
  store i32 %168, i32* %9, align 4
  br label %181

169:                                              ; preds = %126
  %170 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %171 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %172 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %171, i32 0, i32 4
  store i8** %172, i8*** %8, align 8
  %173 = load i8*, i8** @FEC_NONE, align 8
  %174 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %175 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %174, i32 0, i32 3
  store i8* %173, i8** %175, align 8
  %176 = load i8*, i8** @HIERARCHY_NONE, align 8
  %177 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %178 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %177, i32 0, i32 2
  store i8* %176, i8** %178, align 8
  %179 = load i32, i32* @DIB3000MB_REG_TPS_CODE_RATE_HP, align 4
  %180 = call i32 @rd(i32 %179)
  store i32 %180, i32* %9, align 4
  br label %181

181:                                              ; preds = %169, %164
  %182 = load i32, i32* %9, align 4
  switch i32 %182, label %203 [
    i32 138, label %183
    i32 137, label %187
    i32 136, label %191
    i32 135, label %195
    i32 134, label %199
  ]

183:                                              ; preds = %181
  %184 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %185 = load i8*, i8** @FEC_1_2, align 8
  %186 = load i8**, i8*** %8, align 8
  store i8* %185, i8** %186, align 8
  br label %206

187:                                              ; preds = %181
  %188 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %189 = load i8*, i8** @FEC_2_3, align 8
  %190 = load i8**, i8*** %8, align 8
  store i8* %189, i8** %190, align 8
  br label %206

191:                                              ; preds = %181
  %192 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %193 = load i8*, i8** @FEC_3_4, align 8
  %194 = load i8**, i8*** %8, align 8
  store i8* %193, i8** %194, align 8
  br label %206

195:                                              ; preds = %181
  %196 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %197 = load i8*, i8** @FEC_4_5, align 8
  %198 = load i8**, i8*** %8, align 8
  store i8* %197, i8** %198, align 8
  br label %206

199:                                              ; preds = %181
  %200 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %201 = load i8*, i8** @FEC_7_8, align 8
  %202 = load i8**, i8*** %8, align 8
  store i8* %201, i8** %202, align 8
  br label %206

203:                                              ; preds = %181
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %203, %199, %195, %191, %187, %183
  %207 = load i32, i32* %9, align 4
  %208 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* @DIB3000MB_REG_TPS_GUARD_TIME, align 4
  %210 = call i32 @rd(i32 %209)
  store i32 %210, i32* %9, align 4
  switch i32 %210, label %231 [
    i32 132, label %211
    i32 133, label %216
    i32 130, label %221
    i32 131, label %226
  ]

211:                                              ; preds = %206
  %212 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  %213 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %214 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %215 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  br label %234

216:                                              ; preds = %206
  %217 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  %218 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %219 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %220 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  br label %234

221:                                              ; preds = %206
  %222 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0))
  %223 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %224 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %225 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  br label %234

226:                                              ; preds = %206
  %227 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0))
  %228 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %229 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %230 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  br label %234

231:                                              ; preds = %206
  %232 = load i32, i32* %9, align 4
  %233 = call i32 @err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i64 0, i64 0), i32 %232)
  br label %234

234:                                              ; preds = %231, %226, %221, %216, %211
  %235 = load i32, i32* %9, align 4
  %236 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %235)
  %237 = load i32, i32* @DIB3000MB_REG_TPS_FFT, align 4
  %238 = call i32 @rd(i32 %237)
  store i32 %238, i32* %9, align 4
  switch i32 %238, label %249 [
    i32 129, label %239
    i32 128, label %244
  ]

239:                                              ; preds = %234
  %240 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0))
  %241 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %242 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %243 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  br label %252

244:                                              ; preds = %234
  %245 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0))
  %246 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %247 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %248 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  br label %252

249:                                              ; preds = %234
  %250 = load i32, i32* %9, align 4
  %251 = call i32 @err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i64 0, i64 0), i32 %250)
  br label %252

252:                                              ; preds = %249, %244, %239
  %253 = load i32, i32* %9, align 4
  %254 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %253)
  store i32 0, i32* %3, align 4
  br label %255

255:                                              ; preds = %252, %23
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local i32 @rd(i32) #1

declare dso_local i32 @deb_getf(i8*, ...) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
