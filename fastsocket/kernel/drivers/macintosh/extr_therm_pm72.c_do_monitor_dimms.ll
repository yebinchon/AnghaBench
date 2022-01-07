; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_do_monitor_dimms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_do_monitor_dimms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dimm_pid_state = type { i64, i32, i32, i32, i32*, i32*, i64, i32 }

@DIMM_PID_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DIMM:\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"  current value: %d\0A\00", align 1
@LM87_INT_TEMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"  temp: %d.%03d, target: %d.%03d\0A\00", align 1
@DIMM_PID_INPUT_TARGET = common dso_local global i32 0, align 4
@DIMM_PID_HISTORY_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"  integral: %08x\0A\00", align 1
@DIMM_PID_G_r = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"   integ_p: %d\0A\00", align 1
@DIMM_PID_G_d = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"   deriv_p: %d\0A\00", align 1
@DIMM_PID_G_p = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"   prop_p: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"   sum: %d\0A\00", align 1
@DIMM_PID_OUTPUT_MIN = common dso_local global i32 0, align 4
@DIMM_PID_OUTPUT_MAX = common dso_local global i32 0, align 4
@dimm_output_clamp = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"** DIMM clamp value: %d\0A\00", align 1
@backside_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@backside_state = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.9 = private unnamed_addr constant [47 x i8] c" -> applying clamp to backside fan now: %d  !\0A\00", align 1
@BACKSIDE_FAN_PWM_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dimm_pid_state*)* @do_monitor_dimms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_monitor_dimms(%struct.dimm_pid_state* %0) #0 {
  %2 = alloca %struct.dimm_pid_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dimm_pid_state* %0, %struct.dimm_pid_state** %2, align 8
  %12 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %13 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %255

18:                                               ; preds = %1
  %19 = load i32, i32* @DIMM_PID_INTERVAL, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %22 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %25 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %29 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @LM87_INT_TEMP, align 4
  %32 = call i32 @read_lm87_reg(i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  br label %255

36:                                               ; preds = %18
  %37 = load i32, i32* %3, align 4
  %38 = shl i32 %37, 16
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %41 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @FIX32TOPRINT(i32 %42)
  %44 = load i32, i32* @DIMM_PID_INPUT_TARGET, align 4
  %45 = call i32 @FIX32TOPRINT(i32 %44)
  %46 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %45)
  %47 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %48 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* @DIMM_PID_HISTORY_SIZE, align 4
  %52 = srem i32 %50, %51
  %53 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %54 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %57 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %60 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  store i32 %55, i32* %63, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @DIMM_PID_INPUT_TARGET, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %68 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %71 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  store i32 %66, i32* %74, align 4
  %75 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %76 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %120

79:                                               ; preds = %36
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %114, %79
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @DIMM_PID_HISTORY_SIZE, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %117

85:                                               ; preds = %80
  %86 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %87 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* @DIMM_PID_HISTORY_SIZE, align 4
  %91 = srem i32 %89, %90
  %92 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %93 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %3, align 4
  %95 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %96 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %99 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  store i32 %94, i32* %102, align 4
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @DIMM_PID_INPUT_TARGET, align 4
  %105 = sub nsw i32 %103, %104
  %106 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %107 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %110 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  store i32 %105, i32* %113, align 4
  br label %114

114:                                              ; preds = %85
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %80

117:                                              ; preds = %80
  %118 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %119 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %118, i32 0, i32 6
  store i64 0, i64* %119, align 8
  br label %120

120:                                              ; preds = %117, %36
  store i32 0, i32* %10, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %11, align 4
  br label %121

121:                                              ; preds = %135, %120
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @DIMM_PID_HISTORY_SIZE, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %121
  %126 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %127 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %126, i32 0, i32 5
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %125
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %121

138:                                              ; preds = %121
  %139 = load i32, i32* @DIMM_PID_INTERVAL, align 4
  %140 = load i32, i32* %4, align 4
  %141 = mul nsw i32 %140, %139
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  %144 = load i64, i64* @DIMM_PID_G_r, align 8
  %145 = trunc i64 %144 to i32
  %146 = load i32, i32* %4, align 4
  %147 = mul nsw i32 %145, %146
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = ashr i32 %148, 36
  %150 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %10, align 4
  %154 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %155 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %154, i32 0, i32 5
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %158 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %164 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %163, i32 0, i32 5
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %167 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @DIMM_PID_HISTORY_SIZE, align 4
  %170 = add nsw i32 %168, %169
  %171 = sub nsw i32 %170, 1
  %172 = load i32, i32* @DIMM_PID_HISTORY_SIZE, align 4
  %173 = srem i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %165, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %162, %176
  store i32 %177, i32* %5, align 4
  %178 = load i32, i32* @DIMM_PID_INTERVAL, align 4
  %179 = load i32, i32* %5, align 4
  %180 = sdiv i32 %179, %178
  store i32 %180, i32* %5, align 4
  %181 = load i64, i64* @DIMM_PID_G_d, align 8
  %182 = trunc i64 %181 to i32
  %183 = load i32, i32* %5, align 4
  %184 = mul nsw i32 %182, %183
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = ashr i32 %185, 36
  %187 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %10, align 4
  %191 = load i64, i64* @DIMM_PID_G_p, align 8
  %192 = trunc i64 %191 to i32
  %193 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %194 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %193, i32 0, i32 5
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %197 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %195, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = mul nsw i32 %192, %201
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = ashr i32 %203, 36
  %205 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* %10, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = ashr i32 %209, 36
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* %10, align 4
  %212 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* %10, align 4
  %214 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %215 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 8
  %216 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %217 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @DIMM_PID_OUTPUT_MIN, align 4
  %220 = call i8* @max(i32 %218, i32 %219)
  %221 = ptrtoint i8* %220 to i32
  %222 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %223 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 8
  %224 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %225 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @DIMM_PID_OUTPUT_MAX, align 4
  %228 = call i32 @min(i32 %226, i32 %227)
  %229 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %230 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 8
  %231 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %232 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  store i32 %233, i32* @dimm_output_clamp, align 4
  %234 = load %struct.dimm_pid_state*, %struct.dimm_pid_state** %2, align 8
  %235 = getelementptr inbounds %struct.dimm_pid_state, %struct.dimm_pid_state* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %236)
  %238 = load i32, i32* @dimm_output_clamp, align 4
  %239 = mul nsw i32 %238, 100
  %240 = sdiv i32 %239, 14000
  store i32 %240, i32* %6, align 4
  %241 = load i32, i32* %6, align 4
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @backside_params, i32 0, i32 0), align 4
  %243 = call i8* @max(i32 %241, i32 %242)
  %244 = ptrtoint i8* %243 to i32
  store i32 %244, i32* %6, align 4
  %245 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @backside_state, i32 0, i32 0), align 4
  %246 = load i32, i32* %6, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %255

248:                                              ; preds = %138
  %249 = load i32, i32* %6, align 4
  store i32 %249, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @backside_state, i32 0, i32 0), align 4
  %250 = load i32, i32* %6, align 4
  %251 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %250)
  %252 = load i32, i32* @BACKSIDE_FAN_PWM_INDEX, align 4
  %253 = load i32, i32* %6, align 4
  %254 = call i32 @set_pwm_fan(i32 %252, i32 %253)
  br label %255

255:                                              ; preds = %17, %35, %248, %138
  ret void
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @read_lm87_reg(i32, i32) #1

declare dso_local i32 @FIX32TOPRINT(i32) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @set_pwm_fan(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
