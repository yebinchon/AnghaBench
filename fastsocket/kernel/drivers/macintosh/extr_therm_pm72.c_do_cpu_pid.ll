; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_do_cpu_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_do_cpu_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_pid_state = type { i32, i32*, i32, i32, i32*, i32*, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"  power target: %d.%03d, error: %d.%03d\0A\00", align 1
@CPU_TEMP_HISTORY_SIZE = common dso_local global i32 0, align 4
@CPU_PID_INTERVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"  integral: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"   integ_p: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"   adj_in_target: %d.%03d, ttarget: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"   deriv_p: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"   prop_p: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"   sum: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_pid_state*, i32, i32)* @do_cpu_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_cpu_pid(%struct.cpu_pid_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cpu_pid_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.cpu_pid_state* %0, %struct.cpu_pid_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %19 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %23 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %21, %25
  %27 = trunc i64 %26 to i32
  %28 = shl i32 %27, 16
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @FIX32TOPRINT(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %31, %32
  %34 = call i32 @FIX32TOPRINT(i32 %33)
  %35 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %34)
  %36 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %37 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  %40 = load i32, i32* @CPU_TEMP_HISTORY_SIZE, align 4
  %41 = srem i32 %39, %40
  %42 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %43 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %46 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %49 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  store i32 %44, i32* %52, align 4
  %53 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %54 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  %57 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %58 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = srem i32 %56, %59
  %61 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %62 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %65 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %68 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  store i32 %63, i32* %71, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %72, %73
  %75 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %76 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %79 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  store i32 %74, i32* %82, align 4
  %83 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %84 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %83, i32 0, i32 8
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %159

87:                                               ; preds = %3
  store i32 0, i32* %17, align 4
  br label %88

88:                                               ; preds = %126, %87
  %89 = load i32, i32* %17, align 4
  %90 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %91 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, 1
  %94 = icmp slt i32 %89, %93
  br i1 %94, label %95, label %129

95:                                               ; preds = %88
  %96 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %97 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  %100 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %101 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = srem i32 %99, %102
  %104 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %105 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %108 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %111 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  store i32 %106, i32* %114, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %6, align 4
  %117 = sub nsw i32 %115, %116
  %118 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %119 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %118, i32 0, i32 5
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %122 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  store i32 %117, i32* %125, align 4
  br label %126

126:                                              ; preds = %95
  %127 = load i32, i32* %17, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %17, align 4
  br label %88

129:                                              ; preds = %88
  store i32 0, i32* %17, align 4
  br label %130

130:                                              ; preds = %153, %129
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* @CPU_TEMP_HISTORY_SIZE, align 4
  %133 = sub nsw i32 %132, 1
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %156

135:                                              ; preds = %130
  %136 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %137 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  %140 = load i32, i32* @CPU_TEMP_HISTORY_SIZE, align 4
  %141 = srem i32 %139, %140
  %142 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %143 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %146 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %149 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %147, i64 %151
  store i32 %144, i32* %152, align 4
  br label %153

153:                                              ; preds = %135
  %154 = load i32, i32* %17, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %17, align 4
  br label %130

156:                                              ; preds = %130
  %157 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %158 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %157, i32 0, i32 8
  store i64 0, i64* %158, align 8
  br label %159

159:                                              ; preds = %156, %3
  store i32 0, i32* %16, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %17, align 4
  br label %160

160:                                              ; preds = %176, %159
  %161 = load i32, i32* %17, align 4
  %162 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %163 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %179

166:                                              ; preds = %160
  %167 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %168 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %167, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %17, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %8, align 4
  br label %176

176:                                              ; preds = %166
  %177 = load i32, i32* %17, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %17, align 4
  br label %160

179:                                              ; preds = %160
  %180 = load i32, i32* @CPU_PID_INTERVAL, align 4
  %181 = load i32, i32* %8, align 4
  %182 = mul nsw i32 %181, %180
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %8, align 4
  %184 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %183)
  %185 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %186 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %185, i32 0, i32 7
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = trunc i64 %188 to i32
  %190 = load i32, i32* %8, align 4
  %191 = mul nsw i32 %189, %190
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %13, align 4
  %193 = ashr i32 %192, 36
  %194 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %193)
  %195 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %196 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %195, i32 0, i32 7
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = shl i32 %198, 16
  %200 = load i32, i32* %13, align 4
  %201 = ashr i32 %200, 20
  %202 = sub i32 %199, %201
  store i32 %202, i32* %12, align 4
  %203 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %204 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %203, i32 0, i32 7
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = shl i32 %206, 16
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* %12, align 4
  %210 = icmp sgt i32 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %179
  %212 = load i32, i32* %12, align 4
  store i32 %212, i32* %11, align 4
  br label %213

213:                                              ; preds = %211, %179
  %214 = load i32, i32* %11, align 4
  %215 = call i32 @FIX32TOPRINT(i32 %214)
  %216 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %217 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %216, i32 0, i32 7
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %215, i32 %219)
  %221 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %222 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %225 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %223, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %231 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %234 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @CPU_TEMP_HISTORY_SIZE, align 4
  %237 = add nsw i32 %235, %236
  %238 = sub nsw i32 %237, 1
  %239 = load i32, i32* @CPU_TEMP_HISTORY_SIZE, align 4
  %240 = srem i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %232, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = sub nsw i32 %229, %243
  store i32 %244, i32* %9, align 4
  %245 = load i32, i32* @CPU_PID_INTERVAL, align 4
  %246 = load i32, i32* %9, align 4
  %247 = sdiv i32 %246, %245
  store i32 %247, i32* %9, align 4
  %248 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %249 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %248, i32 0, i32 7
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = trunc i64 %251 to i32
  %253 = load i32, i32* %9, align 4
  %254 = mul nsw i32 %252, %253
  store i32 %254, i32* %14, align 4
  %255 = load i32, i32* %14, align 4
  %256 = ashr i32 %255, 36
  %257 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %256)
  %258 = load i32, i32* %14, align 4
  %259 = load i32, i32* %16, align 4
  %260 = add nsw i32 %259, %258
  store i32 %260, i32* %16, align 4
  %261 = load i32, i32* %5, align 4
  %262 = load i32, i32* %11, align 4
  %263 = sub nsw i32 %261, %262
  store i32 %263, i32* %10, align 4
  %264 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %265 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %264, i32 0, i32 7
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = trunc i64 %267 to i32
  %269 = load i32, i32* %10, align 4
  %270 = mul nsw i32 %268, %269
  store i32 %270, i32* %15, align 4
  %271 = load i32, i32* %15, align 4
  %272 = ashr i32 %271, 36
  %273 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %272)
  %274 = load i32, i32* %15, align 4
  %275 = load i32, i32* %16, align 4
  %276 = add nsw i32 %275, %274
  store i32 %276, i32* %16, align 4
  %277 = load i32, i32* %16, align 4
  %278 = ashr i32 %277, 36
  store i32 %278, i32* %16, align 4
  %279 = load i32, i32* %16, align 4
  %280 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %279)
  %281 = load i32, i32* %16, align 4
  %282 = load %struct.cpu_pid_state*, %struct.cpu_pid_state** %4, align 8
  %283 = getelementptr inbounds %struct.cpu_pid_state, %struct.cpu_pid_state* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 8
  %285 = add nsw i32 %284, %281
  store i32 %285, i32* %283, align 8
  ret void
}

declare dso_local i32 @DBG(i8*, i32, ...) #1

declare dso_local i32 @FIX32TOPRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
