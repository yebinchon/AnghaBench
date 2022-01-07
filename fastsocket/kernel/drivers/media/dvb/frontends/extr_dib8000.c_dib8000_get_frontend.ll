; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_get_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.dib8000_state* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.dib8000_state = type { i32 }
%struct.dvb_frontend_parameters = type { i32 }

@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"dib8000_get_frontend GI = 1/32 \00", align 1
@GUARD_INTERVAL_1_16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"dib8000_get_frontend GI = 1/16 \00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"dib8000_get_frontend GI = 1/8 \00", align 1
@GUARD_INTERVAL_1_8 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"dib8000_get_frontend GI = 1/4 \00", align 1
@GUARD_INTERVAL_1_4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"dib8000_get_frontend : partial_reception = %d \00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"dib8000_get_frontend : Layer %d segments = %d \00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"dib8000_get_frontend : Layer %d time_intlv = %d \00", align 1
@FEC_1_2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"dib8000_get_frontend : Layer %d Code Rate = 1/2 \00", align 1
@FEC_2_3 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"dib8000_get_frontend : Layer %d Code Rate = 2/3 \00", align 1
@FEC_3_4 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [49 x i8] c"dib8000_get_frontend : Layer %d Code Rate = 3/4 \00", align 1
@FEC_5_6 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [49 x i8] c"dib8000_get_frontend : Layer %d Code Rate = 5/6 \00", align 1
@FEC_7_8 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [49 x i8] c"dib8000_get_frontend : Layer %d Code Rate = 7/8 \00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"dib8000_get_frontend : Layer %d DQPSK \00", align 1
@DQPSK = common dso_local global i32 0, align 4
@QPSK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c"dib8000_get_frontend : Layer %d QPSK \00", align 1
@QAM_16 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"dib8000_get_frontend : Layer %d QAM16 \00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"dib8000_get_frontend : Layer %d QAM64 \00", align 1
@QAM_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib8000_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_get_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.dib8000_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  %10 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  store %struct.dib8000_state* %10, %struct.dib8000_state** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 6000000, i32* %13, align 8
  %14 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %15 = call i32 @dib8000_read_word(%struct.dib8000_state* %14, i32 508)
  %16 = and i32 %15, 1
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %21 = call i32 @dib8000_read_word(%struct.dib8000_state* %20, i32 570)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 64
  %24 = ashr i32 %23, 6
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 48
  %30 = ashr i32 %29, 4
  switch i32 %30, label %37 [
    i32 1, label %31
    i32 3, label %36
  ]

31:                                               ; preds = %2
  %32 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %34 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 6
  store i32 %32, i32* %35, align 4
  br label %42

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %2, %36
  %38 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %40 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 6
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %31
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 3
  switch i32 %44, label %69 [
    i32 0, label %45
    i32 1, label %51
    i32 2, label %57
    i32 3, label %63
  ]

45:                                               ; preds = %42
  %46 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %47 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %48 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 5
  store i32 %46, i32* %49, align 8
  %50 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %69

51:                                               ; preds = %42
  %52 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %54 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 5
  store i32 %52, i32* %55, align 8
  %56 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %69

57:                                               ; preds = %42
  %58 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %61 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  store i32 %59, i32* %62, align 8
  br label %69

63:                                               ; preds = %42
  %64 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %66 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %67 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 5
  store i32 %65, i32* %68, align 8
  br label %69

69:                                               ; preds = %42, %63, %57, %51, %45
  %70 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %71 = call i32 @dib8000_read_word(%struct.dib8000_state* %70, i32 505)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, 1
  %74 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %75 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 4
  %77 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %78 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %259, %69
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 3
  br i1 %84, label %85, label %262

85:                                               ; preds = %82
  %86 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 493, %87
  %89 = call i32 @dib8000_read_word(%struct.dib8000_state* %86, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %90, 15
  %92 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %93 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 %91, i32* %99, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %102 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %100, i32 %109)
  %111 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 499, %112
  %114 = call i32 @dib8000_read_word(%struct.dib8000_state* %111, i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = and i32 %115, 3
  %117 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %118 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  store i32 %116, i32* %124, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %127 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %125, i32 %134)
  %136 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 481, %137
  %139 = call i32 @dib8000_read_word(%struct.dib8000_state* %136, i32 %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = and i32 %140, 7
  switch i32 %141, label %190 [
    i32 1, label %142
    i32 2, label %154
    i32 3, label %166
    i32 5, label %178
  ]

142:                                              ; preds = %85
  %143 = load i32, i32* @FEC_1_2, align 4
  %144 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %145 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 3
  store i32 %143, i32* %151, align 4
  %152 = load i32, i32* %6, align 4
  %153 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %152)
  br label %202

154:                                              ; preds = %85
  %155 = load i32, i32* @FEC_2_3, align 4
  %156 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %157 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 3
  store i32 %155, i32* %163, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %164)
  br label %202

166:                                              ; preds = %85
  %167 = load i32, i32* @FEC_3_4, align 4
  %168 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %169 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 3
  store i32 %167, i32* %175, align 4
  %176 = load i32, i32* %6, align 4
  %177 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %176)
  br label %202

178:                                              ; preds = %85
  %179 = load i32, i32* @FEC_5_6, align 4
  %180 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %181 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 3
  store i32 %179, i32* %187, align 4
  %188 = load i32, i32* %6, align 4
  %189 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i32 %188)
  br label %202

190:                                              ; preds = %85
  %191 = load i32, i32* @FEC_7_8, align 4
  %192 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %193 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 4
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 3
  store i32 %191, i32* %199, align 4
  %200 = load i32, i32* %6, align 4
  %201 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %190, %178, %166, %154, %142
  %203 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %204 = load i32, i32* %6, align 4
  %205 = add nsw i32 487, %204
  %206 = call i32 @dib8000_read_word(%struct.dib8000_state* %203, i32 %205)
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %7, align 4
  %208 = and i32 %207, 3
  switch i32 %208, label %246 [
    i32 0, label %209
    i32 1, label %221
    i32 2, label %233
    i32 3, label %245
  ]

209:                                              ; preds = %202
  %210 = load i32, i32* %6, align 4
  %211 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* @DQPSK, align 4
  %213 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %214 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 4
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %215, align 8
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 2
  store i32 %212, i32* %220, align 4
  br label %258

221:                                              ; preds = %202
  %222 = load i32, i32* @QPSK, align 4
  %223 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %224 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 4
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %225, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 2
  store i32 %222, i32* %230, align 4
  %231 = load i32, i32* %6, align 4
  %232 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %231)
  br label %258

233:                                              ; preds = %202
  %234 = load i32, i32* @QAM_16, align 4
  %235 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %236 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 4
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 2
  store i32 %234, i32* %242, align 4
  %243 = load i32, i32* %6, align 4
  %244 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i32 %243)
  br label %258

245:                                              ; preds = %202
  br label %246

246:                                              ; preds = %202, %245
  %247 = load i32, i32* %6, align 4
  %248 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %247)
  %249 = load i32, i32* @QAM_64, align 4
  %250 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %251 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 4
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %252, align 8
  %254 = load i32, i32* %6, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 2
  store i32 %249, i32* %257, align 4
  br label %258

258:                                              ; preds = %246, %233, %221, %209
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %6, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %6, align 4
  br label %82

262:                                              ; preds = %82
  ret i32 0
}

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
