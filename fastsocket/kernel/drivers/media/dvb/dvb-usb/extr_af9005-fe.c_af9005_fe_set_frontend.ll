; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005-fe.c_af9005_fe_set_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005-fe.c_af9005_fe_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_8__, %struct.af9005_fe_state* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)*, i32* }
%struct.dvb_frontend.0 = type opaque
%struct.af9005_fe_state = type { i32, i32, i32, i64, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"af9005_fe_set_frontend freq %d bw %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Tuner not attached\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"turn off led\0A\00", align 1
@XD_MP2IF_MISC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"set FCW to default value\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"restore original TOPs\0A\00", align 1
@xd_p_reg_aagc_rf_top_numerator_9_8 = common dso_local global i32 0, align 4
@xd_p_reg_aagc_rf_top_numerator_7_0 = common dso_local global i32 0, align 4
@xd_p_reg_aagc_if_top_numerator_9_8 = common dso_local global i32 0, align 4
@xd_p_reg_aagc_if_top_numerator_7_0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"select bandwidth\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"clear easy mode flag\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"set unplug threshold to original value\0A\00", align 1
@xd_p_reg_unplug_th = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"set tuner\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"trigger ofsm\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"clear retrain and freeze flag\0A\00", align 1
@xd_p_reg_api_retrain_request = common dso_local global i32 0, align 4
@reg_api_retrain_request_pos = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @af9005_fe_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_fe_set_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.af9005_fe_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  %14 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %13, align 8
  store %struct.af9005_fe_state* %14, %struct.af9005_fe_state** %6, align 8
  %15 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %22)
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %25 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = call i32 @err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %265

34:                                               ; preds = %2
  %35 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %37 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @af9005_led_control(i32 %38, i32 0)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %265

44:                                               ; preds = %34
  %45 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %46 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @XD_MP2IF_MISC, align 4
  %49 = call i32 @af9005_write_register_bits(i32 %47, i32 %48, i32 2, i32 1, i32 0)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %265

54:                                               ; preds = %44
  %55 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %57 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 255
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %9, align 8
  %61 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %62 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, 65280
  %65 = ashr i32 %64, 8
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %10, align 8
  %67 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %68 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 16711680
  %71 = ashr i32 %70, 16
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %11, align 8
  %73 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %74 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @af9005_write_ofdm_register(i32 %75, i32 44570, i64 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %54
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %265

82:                                               ; preds = %54
  %83 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %84 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call i32 @af9005_write_ofdm_register(i32 %85, i32 44569, i64 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %3, align 4
  br label %265

92:                                               ; preds = %82
  %93 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %94 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @af9005_write_ofdm_register(i32 %95, i32 44568, i64 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %265

102:                                              ; preds = %92
  %103 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %104 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %105 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @xd_p_reg_aagc_rf_top_numerator_9_8, align 4
  %108 = load i32, i32* @xd_p_reg_aagc_rf_top_numerator_7_0, align 4
  %109 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %110 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %109, i32 0, i32 13
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @af9005_write_word_agc(i32 %106, i32 %107, i32 %108, i32 0, i32 2, i32 %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %102
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %3, align 4
  br label %265

117:                                              ; preds = %102
  %118 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %119 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @xd_p_reg_aagc_if_top_numerator_9_8, align 4
  %122 = load i32, i32* @xd_p_reg_aagc_if_top_numerator_7_0, align 4
  %123 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %124 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %123, i32 0, i32 12
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @af9005_write_word_agc(i32 %120, i32 %121, i32 %122, i32 0, i32 2, i32 %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %117
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %3, align 4
  br label %265

131:                                              ; preds = %117
  %132 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %133 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %136 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %135, i32 0, i32 11
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @af9005_write_word_agc(i32 %134, i32 42510, i32 42506, i32 4, i32 2, i32 %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %3, align 4
  br label %265

143:                                              ; preds = %131
  %144 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %145 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %148 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %147, i32 0, i32 10
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @af9005_write_word_agc(i32 %146, i32 42510, i32 42507, i32 6, i32 2, i32 %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %143
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %3, align 4
  br label %265

155:                                              ; preds = %143
  %156 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %157 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %158 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %157, i32 0, i32 8
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %161 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @af9005_fe_select_bw(i32 %159, i32 %164)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %155
  %169 = load i32, i32* %7, align 4
  store i32 %169, i32* %3, align 4
  br label %265

170:                                              ; preds = %155
  %171 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %172 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %175 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @af9005_fe_program_cfoe(i32 %173, i32 %178)
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %170
  %183 = load i32, i32* %7, align 4
  store i32 %183, i32* %3, align 4
  br label %265

184:                                              ; preds = %170
  %185 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %186 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %187 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %186, i32 0, i32 8
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @af9005_write_ofdm_register(i32 %188, i32 44797, i64 0)
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %184
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %3, align 4
  br label %265

194:                                              ; preds = %184
  %195 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %196 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %197 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @xd_p_reg_unplug_th, align 4
  %200 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %201 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %200, i32 0, i32 9
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @af9005_write_ofdm_register(i32 %198, i32 %199, i64 %202)
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %194
  %207 = load i32, i32* %7, align 4
  store i32 %207, i32* %3, align 4
  br label %265

208:                                              ; preds = %194
  %209 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %210 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %211 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = load i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)** %213, align 8
  %215 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %216 = bitcast %struct.dvb_frontend* %215 to %struct.dvb_frontend.0*
  %217 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %218 = call i32 %214(%struct.dvb_frontend.0* %216, %struct.dvb_frontend_parameters* %217)
  store i32 %218, i32* %7, align 4
  %219 = load i32, i32* %7, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %208
  %222 = load i32, i32* %7, align 4
  store i32 %222, i32* %3, align 4
  br label %265

223:                                              ; preds = %208
  %224 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  %225 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %226 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %225, i32 0, i32 8
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @af9005_write_tuner_registers(i32 %227, i32 65535, i64* %8, i32 1)
  store i32 %228, i32* %7, align 4
  %229 = load i32, i32* %7, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %223
  %232 = load i32, i32* %7, align 4
  store i32 %232, i32* %3, align 4
  br label %265

233:                                              ; preds = %223
  %234 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %235 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %236 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %235, i32 0, i32 8
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @xd_p_reg_api_retrain_request, align 4
  %239 = load i32, i32* @reg_api_retrain_request_pos, align 4
  %240 = call i32 @af9005_write_register_bits(i32 %237, i32 %238, i32 %239, i32 2, i32 0)
  store i32 %240, i32* %7, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %233
  %244 = load i32, i32* %7, align 4
  store i32 %244, i32* %3, align 4
  br label %265

245:                                              ; preds = %233
  %246 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %247 = call i32 @af9005_reset_pre_viterbi(%struct.dvb_frontend* %246)
  %248 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %249 = call i32 @af9005_reset_post_viterbi(%struct.dvb_frontend* %248)
  %250 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %251 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %250, i32 0, i32 7
  store i64 0, i64* %251, align 8
  %252 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %253 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %252, i32 0, i32 6
  store i64 0, i64* %253, align 8
  %254 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %255 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %254, i32 0, i32 5
  store i64 0, i64* %255, align 8
  %256 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %257 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %256, i32 0, i32 4
  store i64 0, i64* %257, align 8
  %258 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %259 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %258, i32 0, i32 3
  store i64 0, i64* %259, align 8
  %260 = load i32, i32* @jiffies, align 4
  %261 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %262 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %261, i32 0, i32 2
  store i32 %260, i32* %262, align 8
  %263 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %264 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %263, i32 0, i32 1
  store i32 -1, i32* %264, align 4
  store i32 0, i32* %3, align 4
  br label %265

265:                                              ; preds = %245, %243, %231, %221, %206, %192, %182, %168, %153, %141, %129, %115, %100, %90, %80, %52, %42, %30
  %266 = load i32, i32* %3, align 4
  ret i32 %266
}

declare dso_local i32 @deb_info(i8*, ...) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @af9005_led_control(i32, i32) #1

declare dso_local i32 @af9005_write_register_bits(i32, i32, i32, i32, i32) #1

declare dso_local i32 @af9005_write_ofdm_register(i32, i32, i64) #1

declare dso_local i32 @af9005_write_word_agc(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @af9005_fe_select_bw(i32, i32) #1

declare dso_local i32 @af9005_fe_program_cfoe(i32, i32) #1

declare dso_local i32 @af9005_write_tuner_registers(i32, i32, i64*, i32) #1

declare dso_local i32 @af9005_reset_pre_viterbi(%struct.dvb_frontend*) #1

declare dso_local i32 @af9005_reset_post_viterbi(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
