; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0070.c_dib0070_tune_digital.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0070.c_dib0070_tune_digital.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib0070_tuning = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dib0070_lna_match = type { i32, i32 }
%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.dib0070_state* }
%struct.TYPE_5__ = type { i32 }
%struct.dib0070_state = type { i32, i32, i32, i32, i32, %struct.dib0070_lna_match*, %struct.dib0070_tuning*, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.dib0070_wbd_gain_cfg*, i32 }
%struct.dib0070_wbd_gain_cfg = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }
%struct.dvb_frontend_parameters = type { i32 }

@dib0070s_tuning_table = common dso_local global %struct.dib0070_tuning* null, align 8
@dib0070_lna = common dso_local global %struct.dib0070_lna_match* null, align 8
@dib0070_tuning_table = common dso_local global %struct.dib0070_tuning* null, align 8
@dib0070_lna_flip_chip = common dso_local global %struct.dib0070_lna_match* null, align 8
@CT_TUNER_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Tuning for Band: %hd (%d kHz)\00", align 1
@LPF = common dso_local global i32 0, align 4
@BAND_SBAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"REFDIV: %hd, FREF: %d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"FBDIV: %d, Rest: %d\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Num: %hd, Den: %hd, SD: %hd\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"HFDIV code: %hd\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"VCO = %hd\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"VCOF: ((%hd*%d) << 1))\00", align 1
@CT_TUNER_STEP_0 = common dso_local global i32 0, align 4
@CT_TUNER_STEP_5 = common dso_local global i32 0, align 4
@CT_TUNER_STEP_4 = common dso_local global i32 0, align 4
@CT_TUNER_STOP = common dso_local global i32 0, align 4
@FE_CALLBACK_TIME_NEVER = common dso_local global i32 0, align 4
@SYS_ISDBT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib0070_tune_digital to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0070_tune_digital(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.dib0070_state*, align 8
  %6 = alloca %struct.dib0070_tuning*, align 8
  %7 = alloca %struct.dib0070_lna_match*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.dib0070_wbd_gain_cfg*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 1
  %21 = load %struct.dib0070_state*, %struct.dib0070_state** %20, align 8
  store %struct.dib0070_state* %21, %struct.dib0070_state** %5, align 8
  %22 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %23 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %22, i32 0, i32 0
  store i32* %23, i32** %8, align 8
  store i32 10, i32* %9, align 4
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %25 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sdiv i32 %27, 1000
  %29 = call i32 @BAND_OF_FREQUENCY(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %31 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %33, 1000
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 131
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %39 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %38, i32 0, i32 7
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  br label %49

43:                                               ; preds = %2
  %44 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %45 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %44, i32 0, i32 7
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i32 [ %42, %37 ], [ %48, %43 ]
  %51 = add nsw i32 %34, %50
  store i32 %51, i32* %11, align 4
  %52 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %53 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %104

57:                                               ; preds = %49
  %58 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %59 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %64 [
    i32 130, label %61
  ]

61:                                               ; preds = %57
  %62 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** @dib0070s_tuning_table, align 8
  store %struct.dib0070_tuning* %62, %struct.dib0070_tuning** %6, align 8
  %63 = load %struct.dib0070_lna_match*, %struct.dib0070_lna_match** @dib0070_lna, align 8
  store %struct.dib0070_lna_match* %63, %struct.dib0070_lna_match** %7, align 8
  br label %77

64:                                               ; preds = %57
  %65 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** @dib0070_tuning_table, align 8
  store %struct.dib0070_tuning* %65, %struct.dib0070_tuning** %6, align 8
  %66 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %67 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %66, i32 0, i32 7
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load %struct.dib0070_lna_match*, %struct.dib0070_lna_match** @dib0070_lna_flip_chip, align 8
  store %struct.dib0070_lna_match* %73, %struct.dib0070_lna_match** %7, align 8
  br label %76

74:                                               ; preds = %64
  %75 = load %struct.dib0070_lna_match*, %struct.dib0070_lna_match** @dib0070_lna, align 8
  store %struct.dib0070_lna_match* %75, %struct.dib0070_lna_match** %7, align 8
  br label %76

76:                                               ; preds = %74, %72
  br label %77

77:                                               ; preds = %76, %61
  br label %78

78:                                               ; preds = %84, %77
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %6, align 8
  %81 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %79, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %6, align 8
  %86 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %85, i32 1
  store %struct.dib0070_tuning* %86, %struct.dib0070_tuning** %6, align 8
  br label %78

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %94, %87
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.dib0070_lna_match*, %struct.dib0070_lna_match** %7, align 8
  %91 = getelementptr inbounds %struct.dib0070_lna_match, %struct.dib0070_lna_match* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load %struct.dib0070_lna_match*, %struct.dib0070_lna_match** %7, align 8
  %96 = getelementptr inbounds %struct.dib0070_lna_match, %struct.dib0070_lna_match* %95, i32 1
  store %struct.dib0070_lna_match* %96, %struct.dib0070_lna_match** %7, align 8
  br label %88

97:                                               ; preds = %88
  %98 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %6, align 8
  %99 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %100 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %99, i32 0, i32 6
  store %struct.dib0070_tuning* %98, %struct.dib0070_tuning** %100, align 8
  %101 = load %struct.dib0070_lna_match*, %struct.dib0070_lna_match** %7, align 8
  %102 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %103 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %102, i32 0, i32 5
  store %struct.dib0070_lna_match* %101, %struct.dib0070_lna_match** %103, align 8
  br label %104

104:                                              ; preds = %97, %49
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CT_TUNER_START, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %342

109:                                              ; preds = %104
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %114 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %338

118:                                              ; preds = %109
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %121 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %123 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %122, i32 0, i32 6
  %124 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %123, align 8
  %125 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 11
  %128 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %129 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %128, i32 0, i32 6
  %130 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %129, align 8
  %131 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 7
  %134 = or i32 %127, %133
  %135 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %136 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %138 = call i32 @dib0070_write_reg(%struct.dib0070_state* %137, i32 23, i32 48)
  %139 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %140 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %139, i32 0, i32 6
  %141 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %140, align 8
  %142 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %11, align 4
  %145 = mul nsw i32 %143, %144
  %146 = mul nsw i32 %145, 2
  store i32 %146, i32* %16, align 4
  %147 = load i32, i32* %10, align 4
  switch i32 %147, label %163 [
    i32 131, label %148
    i32 132, label %156
  ]

148:                                              ; preds = %118
  %149 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %150 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %149, i32 0, i32 7
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 9999
  %155 = sdiv i32 %154, 10000
  store i32 %155, i32* %12, align 4
  br label %170

156:                                              ; preds = %118
  %157 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %158 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %157, i32 0, i32 7
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = sdiv i32 %161, 1000
  store i32 %162, i32* %12, align 4
  br label %170

163:                                              ; preds = %118
  %164 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %165 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %164, i32 0, i32 7
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = sdiv i32 %168, 10000
  store i32 %169, i32* %12, align 4
  br label %170

170:                                              ; preds = %163, %156, %148
  %171 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %172 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %171, i32 0, i32 7
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sdiv i32 %175, %176
  store i32 %177, i32* %15, align 4
  %178 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %179 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  switch i32 %180, label %203 [
    i32 130, label %181
    i32 128, label %202
    i32 129, label %202
  ]

181:                                              ; preds = %170
  %182 = load i32, i32* %16, align 4
  %183 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %184 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %183, i32 0, i32 6
  %185 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %184, align 8
  %186 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = sdiv i32 %182, %187
  %189 = load i32, i32* %15, align 4
  %190 = sdiv i32 %188, %189
  store i32 %190, i32* %13, align 4
  %191 = load i32, i32* %16, align 4
  %192 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %193 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %192, i32 0, i32 6
  %194 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %193, align 8
  %195 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = sdiv i32 %191, %196
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %15, align 4
  %200 = mul nsw i32 %198, %199
  %201 = sub nsw i32 %197, %200
  store i32 %201, i32* %14, align 4
  br label %214

202:                                              ; preds = %170, %170
  br label %203

203:                                              ; preds = %170, %202
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %15, align 4
  %206 = sdiv i32 %205, 2
  %207 = sdiv i32 %204, %206
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* %11, align 4
  %209 = mul nsw i32 2, %208
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* %15, align 4
  %212 = mul nsw i32 %210, %211
  %213 = sub nsw i32 %209, %212
  store i32 %213, i32* %14, align 4
  br label %214

214:                                              ; preds = %203, %181
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* @LPF, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  store i32 0, i32* %14, align 4
  br label %251

219:                                              ; preds = %214
  %220 = load i32, i32* %14, align 4
  %221 = load i32, i32* @LPF, align 4
  %222 = mul nsw i32 2, %221
  %223 = icmp slt i32 %220, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = load i32, i32* @LPF, align 4
  %226 = mul nsw i32 2, %225
  store i32 %226, i32* %14, align 4
  br label %250

227:                                              ; preds = %219
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* %15, align 4
  %230 = load i32, i32* @LPF, align 4
  %231 = sub nsw i32 %229, %230
  %232 = icmp sgt i32 %228, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %227
  store i32 0, i32* %14, align 4
  %234 = load i32, i32* %13, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %13, align 4
  br label %249

236:                                              ; preds = %227
  %237 = load i32, i32* %14, align 4
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* @LPF, align 4
  %240 = mul nsw i32 2, %239
  %241 = sub nsw i32 %238, %240
  %242 = icmp sgt i32 %237, %241
  br i1 %242, label %243, label %248

243:                                              ; preds = %236
  %244 = load i32, i32* %15, align 4
  %245 = load i32, i32* @LPF, align 4
  %246 = mul nsw i32 2, %245
  %247 = sub nsw i32 %244, %246
  store i32 %247, i32* %14, align 4
  br label %248

248:                                              ; preds = %243, %236
  br label %249

249:                                              ; preds = %248, %233
  br label %250

250:                                              ; preds = %249, %224
  br label %251

251:                                              ; preds = %250, %218
  %252 = load i32, i32* %14, align 4
  %253 = mul nsw i32 %252, 6528
  %254 = load i32, i32* %15, align 4
  %255 = sdiv i32 %254, 10
  %256 = sdiv i32 %253, %255
  store i32 %256, i32* %14, align 4
  store i32 1, i32* %17, align 4
  %257 = load i32, i32* %14, align 4
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %251
  %260 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %261 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = or i32 %262, 20480
  store i32 %263, i32* %261, align 4
  store i32 255, i32* %17, align 4
  br label %264

264:                                              ; preds = %259, %251
  %265 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %266 = load i32, i32* %13, align 4
  %267 = call i32 @dib0070_write_reg(%struct.dib0070_state* %265, i32 17, i32 %266)
  %268 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %269 = load i32, i32* %17, align 4
  %270 = shl i32 %269, 8
  %271 = load i32, i32* %12, align 4
  %272 = or i32 %270, %271
  %273 = call i32 @dib0070_write_reg(%struct.dib0070_state* %268, i32 18, i32 %272)
  %274 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %275 = load i32, i32* %14, align 4
  %276 = call i32 @dib0070_write_reg(%struct.dib0070_state* %274, i32 19, i32 %275)
  %277 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %278 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = icmp eq i32 %279, 130
  br i1 %280, label %281, label %294

281:                                              ; preds = %264
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* @BAND_SBAND, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %290

285:                                              ; preds = %281
  %286 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %287 = call i32 @dib0070_set_ctrl_lo5(%struct.dvb_frontend* %286, i32 2, i32 4, i32 3, i32 0)
  %288 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %289 = call i32 @dib0070_write_reg(%struct.dib0070_state* %288, i32 29, i32 65535)
  br label %293

290:                                              ; preds = %281
  %291 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %292 = call i32 @dib0070_set_ctrl_lo5(%struct.dvb_frontend* %291, i32 5, i32 4, i32 3, i32 1)
  br label %293

293:                                              ; preds = %290, %285
  br label %294

294:                                              ; preds = %293, %264
  %295 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %296 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %297 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %296, i32 0, i32 6
  %298 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %297, align 8
  %299 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %298, i32 0, i32 5
  %300 = load i32, i32* %299, align 4
  %301 = or i32 123, %300
  %302 = call i32 @dib0070_write_reg(%struct.dib0070_state* %295, i32 32, i32 %301)
  %303 = load i32, i32* %12, align 4
  %304 = load i32, i32* %15, align 4
  %305 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %303, i32 %304)
  %306 = load i32, i32* %13, align 4
  %307 = load i32, i32* %14, align 4
  %308 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %306, i32 %307)
  %309 = load i32, i32* %14, align 4
  %310 = load i32, i32* %17, align 4
  %311 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %312 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = ashr i32 %313, 12
  %315 = and i32 %314, 1
  %316 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %309, i32 %310, i32 %315)
  %317 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %318 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %317, i32 0, i32 6
  %319 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %318, align 8
  %320 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %321)
  %323 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %324 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %323, i32 0, i32 6
  %325 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %324, align 8
  %326 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %327)
  %329 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %330 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %329, i32 0, i32 6
  %331 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %330, align 8
  %332 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* %11, align 4
  %335 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %333, i32 %334)
  %336 = load i32, i32* @CT_TUNER_STEP_0, align 4
  %337 = load i32*, i32** %8, align 8
  store i32 %336, i32* %337, align 4
  br label %341

338:                                              ; preds = %109
  store i32 50, i32* %9, align 4
  %339 = load i32, i32* @CT_TUNER_STEP_5, align 4
  %340 = load i32*, i32** %8, align 8
  store i32 %339, i32* %340, align 4
  br label %341

341:                                              ; preds = %338, %294
  br label %467

342:                                              ; preds = %104
  %343 = load i32*, i32** %8, align 8
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @CT_TUNER_START, align 4
  %346 = icmp ugt i32 %344, %345
  br i1 %346, label %347, label %356

347:                                              ; preds = %342
  %348 = load i32*, i32** %8, align 8
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* @CT_TUNER_STEP_4, align 4
  %351 = icmp ult i32 %349, %350
  br i1 %351, label %352, label %356

352:                                              ; preds = %347
  %353 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %354 = load i32*, i32** %8, align 8
  %355 = call i32 @dib0070_captrim(%struct.dib0070_state* %353, i32* %354)
  store i32 %355, i32* %9, align 4
  br label %466

356:                                              ; preds = %347, %342
  %357 = load i32*, i32** %8, align 8
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @CT_TUNER_STEP_4, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %451

361:                                              ; preds = %356
  %362 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %363 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %362, i32 0, i32 7
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 3
  %366 = load %struct.dib0070_wbd_gain_cfg*, %struct.dib0070_wbd_gain_cfg** %365, align 8
  store %struct.dib0070_wbd_gain_cfg* %366, %struct.dib0070_wbd_gain_cfg** %18, align 8
  %367 = load %struct.dib0070_wbd_gain_cfg*, %struct.dib0070_wbd_gain_cfg** %18, align 8
  %368 = icmp ne %struct.dib0070_wbd_gain_cfg* %367, null
  br i1 %368, label %369, label %401

369:                                              ; preds = %361
  br label %370

370:                                              ; preds = %377, %369
  %371 = load i32, i32* %11, align 4
  %372 = sdiv i32 %371, 1000
  %373 = load %struct.dib0070_wbd_gain_cfg*, %struct.dib0070_wbd_gain_cfg** %18, align 8
  %374 = getelementptr inbounds %struct.dib0070_wbd_gain_cfg, %struct.dib0070_wbd_gain_cfg* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = icmp sgt i32 %372, %375
  br i1 %376, label %377, label %380

377:                                              ; preds = %370
  %378 = load %struct.dib0070_wbd_gain_cfg*, %struct.dib0070_wbd_gain_cfg** %18, align 8
  %379 = getelementptr inbounds %struct.dib0070_wbd_gain_cfg, %struct.dib0070_wbd_gain_cfg* %378, i32 1
  store %struct.dib0070_wbd_gain_cfg* %379, %struct.dib0070_wbd_gain_cfg** %18, align 8
  br label %370

380:                                              ; preds = %370
  %381 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %382 = load %struct.dib0070_wbd_gain_cfg*, %struct.dib0070_wbd_gain_cfg** %18, align 8
  %383 = getelementptr inbounds %struct.dib0070_wbd_gain_cfg, %struct.dib0070_wbd_gain_cfg* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = shl i32 %384, 9
  %386 = or i32 28672, %385
  %387 = or i32 %386, 128
  %388 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %389 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %388, i32 0, i32 6
  %390 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %389, align 8
  %391 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %390, i32 0, i32 6
  %392 = load i32, i32* %391, align 4
  %393 = shl i32 %392, 0
  %394 = or i32 %387, %393
  %395 = call i32 @dib0070_write_reg(%struct.dib0070_state* %381, i32 15, i32 %394)
  %396 = load %struct.dib0070_wbd_gain_cfg*, %struct.dib0070_wbd_gain_cfg** %18, align 8
  %397 = getelementptr inbounds %struct.dib0070_wbd_gain_cfg, %struct.dib0070_wbd_gain_cfg* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %400 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %399, i32 0, i32 4
  store i32 %398, i32* %400, align 8
  br label %413

401:                                              ; preds = %361
  %402 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %403 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %404 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %403, i32 0, i32 6
  %405 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %404, align 8
  %406 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %405, i32 0, i32 6
  %407 = load i32, i32* %406, align 4
  %408 = shl i32 %407, 0
  %409 = or i32 31872, %408
  %410 = call i32 @dib0070_write_reg(%struct.dib0070_state* %402, i32 15, i32 %409)
  %411 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %412 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %411, i32 0, i32 4
  store i32 6, i32* %412, align 8
  br label %413

413:                                              ; preds = %401, %380
  %414 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %415 = call i32 @dib0070_write_reg(%struct.dib0070_state* %414, i32 6, i32 16383)
  %416 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %417 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %418 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %417, i32 0, i32 6
  %419 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %418, align 8
  %420 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %419, i32 0, i32 7
  %421 = load i32, i32* %420, align 4
  %422 = shl i32 %421, 11
  %423 = or i32 %422, 1792
  %424 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %425 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %424, i32 0, i32 5
  %426 = load %struct.dib0070_lna_match*, %struct.dib0070_lna_match** %425, align 8
  %427 = getelementptr inbounds %struct.dib0070_lna_match, %struct.dib0070_lna_match* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = shl i32 %428, 3
  %430 = or i32 %423, %429
  %431 = or i32 %430, 3
  %432 = call i32 @dib0070_write_reg(%struct.dib0070_state* %416, i32 7, i32 %431)
  %433 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %434 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %435 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %434, i32 0, i32 5
  %436 = load %struct.dib0070_lna_match*, %struct.dib0070_lna_match** %435, align 8
  %437 = getelementptr inbounds %struct.dib0070_lna_match, %struct.dib0070_lna_match* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = shl i32 %438, 10
  %440 = or i32 %439, 384
  %441 = or i32 %440, 127
  %442 = call i32 @dib0070_write_reg(%struct.dib0070_state* %433, i32 8, i32 %441)
  %443 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %444 = call i32 @dib0070_write_reg(%struct.dib0070_state* %443, i32 13, i32 3456)
  %445 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %446 = call i32 @dib0070_write_reg(%struct.dib0070_state* %445, i32 24, i32 2047)
  %447 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %448 = call i32 @dib0070_write_reg(%struct.dib0070_state* %447, i32 23, i32 51)
  %449 = load i32, i32* @CT_TUNER_STEP_5, align 4
  %450 = load i32*, i32** %8, align 8
  store i32 %449, i32* %450, align 4
  br label %465

451:                                              ; preds = %356
  %452 = load i32*, i32** %8, align 8
  %453 = load i32, i32* %452, align 4
  %454 = load i32, i32* @CT_TUNER_STEP_5, align 4
  %455 = icmp eq i32 %453, %454
  br i1 %455, label %456, label %462

456:                                              ; preds = %451
  %457 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %458 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %459 = call i32 @dib0070_set_bandwidth(%struct.dvb_frontend* %457, %struct.dvb_frontend_parameters* %458)
  %460 = load i32, i32* @CT_TUNER_STOP, align 4
  %461 = load i32*, i32** %8, align 8
  store i32 %460, i32* %461, align 4
  br label %464

462:                                              ; preds = %451
  %463 = load i32, i32* @FE_CALLBACK_TIME_NEVER, align 4
  store i32 %463, i32* %9, align 4
  br label %464

464:                                              ; preds = %462, %456
  br label %465

465:                                              ; preds = %464, %413
  br label %466

466:                                              ; preds = %465, %352
  br label %467

467:                                              ; preds = %466, %341
  %468 = load i32, i32* %9, align 4
  ret i32 %468
}

declare dso_local i32 @BAND_OF_FREQUENCY(i32) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @dib0070_write_reg(%struct.dib0070_state*, i32, i32) #1

declare dso_local i32 @dib0070_set_ctrl_lo5(%struct.dvb_frontend*, i32, i32, i32, i32) #1

declare dso_local i32 @dib0070_captrim(%struct.dib0070_state*, i32*) #1

declare dso_local i32 @dib0070_set_bandwidth(%struct.dvb_frontend*, %struct.dvb_frontend_parameters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
