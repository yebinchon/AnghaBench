; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.stb0899_state* }
%struct.dtv_frontend_properties = type { i32 }
%struct.stb0899_state = type { i32, i32, i32, %struct.stb0899_config*, %struct.stb0899_internal, %struct.stb0899_params }
%struct.stb0899_config = type { i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.1*, i32)*, i32, i32, i32 (%struct.dvb_frontend.2*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.dvb_frontend.1 = type opaque
%struct.dvb_frontend.2 = type opaque
%struct.stb0899_internal = type { i32, i32, i32, i32, i32, i32 }
%struct.stb0899_params = type { i32, i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"delivery system=%d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Frequency=%d, Srate=%d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Parameters IN RANGE\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"DVB-S delivery system\00", align 1
@STB0899_AGCRFCFG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"running DVB-S search algo ..\00", align 1
@RANGEOK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"-------------------------------------> DVB-S LOCK !\00", align 1
@DVBFE_ALGO_SEARCH_SUCCESS = common dso_local global i32 0, align 4
@DVBFE_ALGO_SEARCH_FAILED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"running DVB-S2 search algo ..\00", align 1
@DVBS2_FEC_LOCK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"-------------------------------------> DVB-S2 LOCK !\00", align 1
@FE_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"Unsupported delivery system\00", align 1
@DVBFE_ALGO_SEARCH_INVALID = common dso_local global i32 0, align 4
@DVBFE_ALGO_SEARCH_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @stb0899_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_search(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.stb0899_state*, align 8
  %7 = alloca %struct.stb0899_params*, align 8
  %8 = alloca %struct.stb0899_internal*, align 8
  %9 = alloca %struct.stb0899_config*, align 8
  %10 = alloca %struct.dtv_frontend_properties*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = load %struct.stb0899_state*, %struct.stb0899_state** %14, align 8
  store %struct.stb0899_state* %15, %struct.stb0899_state** %6, align 8
  %16 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %17 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %16, i32 0, i32 5
  store %struct.stb0899_params* %17, %struct.stb0899_params** %7, align 8
  %18 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %19 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %18, i32 0, i32 4
  store %struct.stb0899_internal* %19, %struct.stb0899_internal** %8, align 8
  %20 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %21 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %20, i32 0, i32 3
  %22 = load %struct.stb0899_config*, %struct.stb0899_config** %21, align 8
  store %struct.stb0899_config* %22, %struct.stb0899_config** %9, align 8
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %24 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %23, i32 0, i32 0
  store %struct.dtv_frontend_properties* %24, %struct.dtv_frontend_properties** %10, align 8
  %25 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.stb0899_params*, %struct.stb0899_params** %7, align 8
  %29 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %31 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.stb0899_params*, %struct.stb0899_params** %7, align 8
  %36 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %10, align 8
  %38 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %41 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %43 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FE_DEBUG, align 4
  %46 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %47 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %44, i32 %45, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 10000000, i32* %11, align 4
  %50 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %51 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FE_DEBUG, align 4
  %54 = load %struct.stb0899_params*, %struct.stb0899_params** %7, align 8
  %55 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.stb0899_params*, %struct.stb0899_params** %7, align 8
  %58 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %52, i32 %53, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59)
  %61 = load %struct.stb0899_params*, %struct.stb0899_params** %7, align 8
  %62 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @INRANGE(i32 %63, i32 1000000, i32 45000000)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %315

66:                                               ; preds = %2
  %67 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %68 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @FE_DEBUG, align 4
  %71 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %69, i32 %70, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %73 = call i32 @stb0899_set_delivery(%struct.stb0899_state* %72)
  %74 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %75 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %74, i32 0, i32 3
  %76 = load %struct.stb0899_config*, %struct.stb0899_config** %75, align 8
  %77 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %76, i32 0, i32 4
  %78 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %77, align 8
  %79 = icmp ne i32 (%struct.dvb_frontend.2*, i32)* %78, null
  br i1 %79, label %80, label %104

80:                                               ; preds = %66
  %81 = load %struct.stb0899_internal*, %struct.stb0899_internal** %8, align 8
  %82 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 15000000
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 8, i32* %12, align 4
  br label %94

86:                                               ; preds = %80
  %87 = load %struct.stb0899_internal*, %struct.stb0899_internal** %8, align 8
  %88 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %89, 5000000
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 12, i32* %12, align 4
  br label %93

92:                                               ; preds = %86
  store i32 14, i32* %12, align 4
  br label %93

93:                                               ; preds = %92, %91
  br label %94

94:                                               ; preds = %93, %85
  %95 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %96 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %95, i32 0, i32 3
  %97 = load %struct.stb0899_config*, %struct.stb0899_config** %96, align 8
  %98 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %97, i32 0, i32 4
  %99 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %98, align 8
  %100 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %101 = bitcast %struct.dvb_frontend* %100 to %struct.dvb_frontend.2*
  %102 = load i32, i32* %12, align 4
  %103 = call i32 %99(%struct.dvb_frontend.2* %101, i32 %102)
  br label %104

104:                                              ; preds = %94, %66
  %105 = load %struct.stb0899_params*, %struct.stb0899_params** %7, align 8
  %106 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp sle i32 %107, 5000000
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %111 = load %struct.stb0899_config*, %struct.stb0899_config** %9, align 8
  %112 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @stb0899_set_mclk(%struct.stb0899_state* %110, i32 %113)
  br label %121

115:                                              ; preds = %104
  %116 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %117 = load %struct.stb0899_config*, %struct.stb0899_config** %9, align 8
  %118 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @stb0899_set_mclk(%struct.stb0899_state* %116, i32 %119)
  br label %121

121:                                              ; preds = %115, %109
  %122 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %123 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  switch i32 %124, label %308 [
    i32 129, label %125
    i32 130, label %125
    i32 128, label %223
  ]

125:                                              ; preds = %121, %121
  %126 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %127 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @FE_DEBUG, align 4
  %130 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %128, i32 %129, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %131 = load %struct.stb0899_params*, %struct.stb0899_params** %7, align 8
  %132 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.stb0899_internal*, %struct.stb0899_internal** %8, align 8
  %135 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 4
  %136 = load %struct.stb0899_params*, %struct.stb0899_params** %7, align 8
  %137 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.stb0899_internal*, %struct.stb0899_internal** %8, align 8
  %140 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1500000
  %143 = load %struct.stb0899_params*, %struct.stb0899_params** %7, align 8
  %144 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sdiv i32 %145, 5
  %147 = add nsw i32 %142, %146
  %148 = load %struct.stb0899_internal*, %struct.stb0899_internal** %8, align 8
  %149 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.stb0899_internal*, %struct.stb0899_internal** %8, align 8
  %151 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %150, i32 0, i32 2
  store i32 30, i32* %151, align 4
  %152 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %153 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %152, i32 0, i32 2
  %154 = call i32 @stb0899_i2c_gate_ctrl(i32* %153, i32 1)
  %155 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %156 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %155, i32 0, i32 3
  %157 = load %struct.stb0899_config*, %struct.stb0899_config** %156, align 8
  %158 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %157, i32 0, i32 1
  %159 = load i32 (%struct.dvb_frontend.1*, i32)*, i32 (%struct.dvb_frontend.1*, i32)** %158, align 8
  %160 = icmp ne i32 (%struct.dvb_frontend.1*, i32)* %159, null
  br i1 %160, label %161, label %176

161:                                              ; preds = %125
  %162 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %163 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %162, i32 0, i32 3
  %164 = load %struct.stb0899_config*, %struct.stb0899_config** %163, align 8
  %165 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %164, i32 0, i32 1
  %166 = load i32 (%struct.dvb_frontend.1*, i32)*, i32 (%struct.dvb_frontend.1*, i32)** %165, align 8
  %167 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %168 = bitcast %struct.dvb_frontend* %167 to %struct.dvb_frontend.1*
  %169 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %170 = call i32 @stb0899_carr_width(%struct.stb0899_state* %169)
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %170, %171
  %173 = mul nsw i32 13, %172
  %174 = sdiv i32 %173, 10
  %175 = call i32 %166(%struct.dvb_frontend.1* %168, i32 %174)
  br label %176

176:                                              ; preds = %161, %125
  %177 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %178 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %177, i32 0, i32 3
  %179 = load %struct.stb0899_config*, %struct.stb0899_config** %178, align 8
  %180 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %179, i32 0, i32 0
  %181 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %180, align 8
  %182 = icmp ne i32 (%struct.dvb_frontend.0*, i32*)* %181, null
  br i1 %182, label %183, label %194

183:                                              ; preds = %176
  %184 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %185 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %184, i32 0, i32 3
  %186 = load %struct.stb0899_config*, %struct.stb0899_config** %185, align 8
  %187 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %186, i32 0, i32 0
  %188 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %187, align 8
  %189 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %190 = bitcast %struct.dvb_frontend* %189 to %struct.dvb_frontend.0*
  %191 = load %struct.stb0899_internal*, %struct.stb0899_internal** %8, align 8
  %192 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %191, i32 0, i32 4
  %193 = call i32 %188(%struct.dvb_frontend.0* %190, i32* %192)
  br label %194

194:                                              ; preds = %183, %176
  %195 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %196 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %195, i32 0, i32 2
  %197 = call i32 @stb0899_i2c_gate_ctrl(i32* %196, i32 0)
  %198 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %199 = load i32, i32* @STB0899_AGCRFCFG, align 4
  %200 = call i32 @stb0899_write_reg(%struct.stb0899_state* %198, i32 %199, i32 17)
  %201 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %202 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @FE_DEBUG, align 4
  %205 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %203, i32 %204, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %206 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %207 = call i32 @stb0899_dvbs_algo(%struct.stb0899_state* %206)
  %208 = load i32, i32* @RANGEOK, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %219

210:                                              ; preds = %194
  %211 = load %struct.stb0899_internal*, %struct.stb0899_internal** %8, align 8
  %212 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %211, i32 0, i32 3
  store i32 1, i32* %212, align 4
  %213 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %214 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @FE_DEBUG, align 4
  %217 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %215, i32 %216, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %218 = load i32, i32* @DVBFE_ALGO_SEARCH_SUCCESS, align 4
  store i32 %218, i32* %3, align 4
  br label %317

219:                                              ; preds = %194
  %220 = load %struct.stb0899_internal*, %struct.stb0899_internal** %8, align 8
  %221 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %220, i32 0, i32 3
  store i32 0, i32* %221, align 4
  %222 = load i32, i32* @DVBFE_ALGO_SEARCH_FAILED, align 4
  store i32 %222, i32* %3, align 4
  br label %317

223:                                              ; preds = %121
  %224 = load %struct.stb0899_params*, %struct.stb0899_params** %7, align 8
  %225 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.stb0899_internal*, %struct.stb0899_internal** %8, align 8
  %228 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %227, i32 0, i32 5
  store i32 %226, i32* %228, align 4
  %229 = load %struct.stb0899_params*, %struct.stb0899_params** %7, align 8
  %230 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.stb0899_internal*, %struct.stb0899_internal** %8, align 8
  %233 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* %11, align 4
  %235 = load %struct.stb0899_internal*, %struct.stb0899_internal** %8, align 8
  %236 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %238 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %237, i32 0, i32 2
  %239 = call i32 @stb0899_i2c_gate_ctrl(i32* %238, i32 1)
  %240 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %241 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %240, i32 0, i32 3
  %242 = load %struct.stb0899_config*, %struct.stb0899_config** %241, align 8
  %243 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %242, i32 0, i32 1
  %244 = load i32 (%struct.dvb_frontend.1*, i32)*, i32 (%struct.dvb_frontend.1*, i32)** %243, align 8
  %245 = icmp ne i32 (%struct.dvb_frontend.1*, i32)* %244, null
  br i1 %245, label %246, label %259

246:                                              ; preds = %223
  %247 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %248 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %247, i32 0, i32 3
  %249 = load %struct.stb0899_config*, %struct.stb0899_config** %248, align 8
  %250 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %249, i32 0, i32 1
  %251 = load i32 (%struct.dvb_frontend.1*, i32)*, i32 (%struct.dvb_frontend.1*, i32)** %250, align 8
  %252 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %253 = bitcast %struct.dvb_frontend* %252 to %struct.dvb_frontend.1*
  %254 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %255 = call i32 @stb0899_carr_width(%struct.stb0899_state* %254)
  %256 = load i32, i32* %11, align 4
  %257 = add nsw i32 %255, %256
  %258 = call i32 %251(%struct.dvb_frontend.1* %253, i32 %257)
  br label %259

259:                                              ; preds = %246, %223
  %260 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %261 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %260, i32 0, i32 3
  %262 = load %struct.stb0899_config*, %struct.stb0899_config** %261, align 8
  %263 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %262, i32 0, i32 0
  %264 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %263, align 8
  %265 = icmp ne i32 (%struct.dvb_frontend.0*, i32*)* %264, null
  br i1 %265, label %266, label %277

266:                                              ; preds = %259
  %267 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %268 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %267, i32 0, i32 3
  %269 = load %struct.stb0899_config*, %struct.stb0899_config** %268, align 8
  %270 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %269, i32 0, i32 0
  %271 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %270, align 8
  %272 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %273 = bitcast %struct.dvb_frontend* %272 to %struct.dvb_frontend.0*
  %274 = load %struct.stb0899_internal*, %struct.stb0899_internal** %8, align 8
  %275 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %274, i32 0, i32 4
  %276 = call i32 %271(%struct.dvb_frontend.0* %273, i32* %275)
  br label %277

277:                                              ; preds = %266, %259
  %278 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %279 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %278, i32 0, i32 2
  %280 = call i32 @stb0899_i2c_gate_ctrl(i32* %279, i32 0)
  %281 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %282 = load i32, i32* @STB0899_AGCRFCFG, align 4
  %283 = call i32 @stb0899_write_reg(%struct.stb0899_state* %281, i32 %282, i32 28)
  %284 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %285 = call i32 @stb0899_set_iterations(%struct.stb0899_state* %284)
  %286 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %287 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @FE_DEBUG, align 4
  %290 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %288, i32 %289, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %291 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %292 = call i32 @stb0899_dvbs2_algo(%struct.stb0899_state* %291)
  %293 = load i32, i32* @DVBS2_FEC_LOCK, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %304

295:                                              ; preds = %277
  %296 = load %struct.stb0899_internal*, %struct.stb0899_internal** %8, align 8
  %297 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %296, i32 0, i32 3
  store i32 1, i32* %297, align 4
  %298 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %299 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @FE_DEBUG, align 4
  %302 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %300, i32 %301, i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %303 = load i32, i32* @DVBFE_ALGO_SEARCH_SUCCESS, align 4
  store i32 %303, i32* %3, align 4
  br label %317

304:                                              ; preds = %277
  %305 = load %struct.stb0899_internal*, %struct.stb0899_internal** %8, align 8
  %306 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %305, i32 0, i32 3
  store i32 0, i32* %306, align 4
  %307 = load i32, i32* @DVBFE_ALGO_SEARCH_FAILED, align 4
  store i32 %307, i32* %3, align 4
  br label %317

308:                                              ; preds = %121
  %309 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %310 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @FE_ERROR, align 4
  %313 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %311, i32 %312, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %314 = load i32, i32* @DVBFE_ALGO_SEARCH_INVALID, align 4
  store i32 %314, i32* %3, align 4
  br label %317

315:                                              ; preds = %2
  %316 = load i32, i32* @DVBFE_ALGO_SEARCH_ERROR, align 4
  store i32 %316, i32* %3, align 4
  br label %317

317:                                              ; preds = %315, %308, %304, %295, %219, %210
  %318 = load i32, i32* %3, align 4
  ret i32 %318
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

declare dso_local i64 @INRANGE(i32, i32, i32) #1

declare dso_local i32 @stb0899_set_delivery(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_set_mclk(%struct.stb0899_state*, i32) #1

declare dso_local i32 @stb0899_i2c_gate_ctrl(i32*, i32) #1

declare dso_local i32 @stb0899_carr_width(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #1

declare dso_local i32 @stb0899_dvbs_algo(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_set_iterations(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_dvbs2_algo(%struct.stb0899_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
