; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp3400c_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp3400c_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msp3400c_carrier_detect = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.msp_state = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@msp_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"msp3400 daemon started\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"msp3400 thread: sleep\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"msp3400 thread: wakeup\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"thread: restart scan\0A\00", align 1
@MSP_MODE_EXTERN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"thread: no carrier scan\0A\00", align 1
@MSP_MODE_AM_DETECT = common dso_local global i32 0, align 4
@msp3400c_carrier_detect_main = common dso_local global %struct.msp3400c_carrier_detect* null, align 8
@msp_amsound = common dso_local global i64 0, align 8
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"AM sound override\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"carrier1 val: %5d / %s\0A\00", align 1
@msp3400c_carrier_detect_55 = common dso_local global %struct.msp3400c_carrier_detect* null, align 8
@msp3400c_carrier_detect_65 = common dso_local global %struct.msp3400c_carrier_detect* null, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"carrier2 val: %5d / %s\0A\00", align 1
@MSP_MODE_FM_TERRA = common dso_local global i32 0, align 4
@MSP_MODE_FM_NICAM1 = common dso_local global i32 0, align 4
@MSP_MODE_FM_NICAM2 = common dso_local global i32 0, align 4
@MSP_MODE_AM_NICAM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"thread: exit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msp3400c_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.msp_state*, align 8
  %5 = alloca %struct.msp3400c_carrier_detect*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.i2c_client*
  store %struct.i2c_client* %14, %struct.i2c_client** %3, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %16 = call i32 @i2c_get_clientdata(%struct.i2c_client* %15)
  %17 = call %struct.msp_state* @to_state(i32 %16)
  store %struct.msp_state* %17, %struct.msp_state** %4, align 8
  %18 = load i64, i64* @msp_debug, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = call i32 (i32, i64, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i64 %18, %struct.i2c_client* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (...) @set_freezable()
  br label %22

22:                                               ; preds = %416, %51, %1
  %23 = load i64, i64* @msp_debug, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = call i32 (i32, i64, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 2, i64 %23, %struct.i2c_client* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %27 = call i64 @msp_sleep(%struct.msp_state* %26, i32 -1)
  %28 = load i64, i64* @msp_debug, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = call i32 (i32, i64, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 2, i64 %28, %struct.i2c_client* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %406, %191, %115, %74, %22
  %32 = load i64, i64* @msp_debug, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = call i32 (i32, i64, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 2, i64 %32, %struct.i2c_client* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %36 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %35, i32 0, i32 9
  store i64 0, i64* %36, align 8
  %37 = call i64 (...) @kthread_should_stop()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %417

40:                                               ; preds = %31
  %41 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %42 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* @MSP_MODE_EXTERN, align 8
  %47 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %48 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45, %40
  %52 = load i64, i64* @msp_debug, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %54 = call i32 (i32, i64, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i64 %52, %struct.i2c_client* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %55 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %56 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %55, i32 0, i32 1
  store i32 0, i32* %56, align 8
  %57 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %58 = call i32 @msp_update_volume(%struct.msp_state* %57)
  br label %22

59:                                               ; preds = %45
  %60 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %61 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %60, i32 0, i32 1
  store i32 1, i32* %61, align 8
  %62 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %63 = call i32 @msp_update_volume(%struct.msp_state* %62)
  %64 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %65 = load i32, i32* @MSP_MODE_AM_DETECT, align 4
  %66 = call i32 @msp3400c_set_mode(%struct.i2c_client* %64, i32 %65)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %7, align 4
  %67 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %68 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %67, i32 0, i32 2
  store i32 0, i32* %68, align 4
  %69 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %70 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %69, i32 0, i32 3
  store i32 0, i32* %70, align 8
  %71 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %72 = call i64 @msp_sleep(%struct.msp_state* %71, i32 200)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %59
  br label %31

75:                                               ; preds = %59
  %76 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_main, align 8
  store %struct.msp3400c_carrier_detect* %76, %struct.msp3400c_carrier_detect** %5, align 8
  %77 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_main, align 8
  %78 = call i32 @ARRAY_SIZE(%struct.msp3400c_carrier_detect* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i64, i64* @msp_amsound, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %75
  %82 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %83 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @V4L2_STD_SECAM, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  store i32 3, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %89 = load i64, i64* @msp_debug, align 8
  %90 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %91 = call i32 (i32, i64, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i64 %89, %struct.i2c_client* %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %81, %75
  store i32 0, i32* %12, align 4
  br label %93

93:                                               ; preds = %142, %92
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %145

97:                                               ; preds = %93
  %98 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %99 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** %5, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %99, i64 %101
  %103 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** %5, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %105, i64 %107
  %109 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @msp3400c_set_carrier(%struct.i2c_client* %98, i32 %104, i32 %110)
  %112 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %113 = call i64 @msp_sleep(%struct.msp_state* %112, i32 100)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %97
  br label %31

116:                                              ; preds = %97
  %117 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %118 = call i32 @msp_read_dsp(%struct.i2c_client* %117, i32 27)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp sgt i32 %119, 32767
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* %11, align 4
  %123 = sub nsw i32 %122, 65536
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %121, %116
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %128, %124
  %132 = load i64, i64* @msp_debug, align 8
  %133 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** %5, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %135, i64 %137
  %139 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i32, i64, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i64 %132, %struct.i2c_client* %133, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %134, i32 %140)
  br label %142

142:                                              ; preds = %131
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %12, align 4
  br label %93

145:                                              ; preds = %93
  %146 = load i32, i32* %7, align 4
  switch i32 %146, label %156 [
    i32 1, label %147
    i32 3, label %151
    i32 0, label %155
    i32 2, label %155
  ]

147:                                              ; preds = %145
  %148 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_55, align 8
  store %struct.msp3400c_carrier_detect* %148, %struct.msp3400c_carrier_detect** %5, align 8
  %149 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_55, align 8
  %150 = call i32 @ARRAY_SIZE(%struct.msp3400c_carrier_detect* %149)
  store i32 %150, i32* %6, align 4
  br label %157

151:                                              ; preds = %145
  %152 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_65, align 8
  store %struct.msp3400c_carrier_detect* %152, %struct.msp3400c_carrier_detect** %5, align 8
  %153 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_65, align 8
  %154 = call i32 @ARRAY_SIZE(%struct.msp3400c_carrier_detect* %153)
  store i32 %154, i32* %6, align 4
  br label %157

155:                                              ; preds = %145, %145
  br label %156

156:                                              ; preds = %145, %155
  store %struct.msp3400c_carrier_detect* null, %struct.msp3400c_carrier_detect** %5, align 8
  store i32 0, i32* %6, align 4
  br label %157

157:                                              ; preds = %156, %151, %147
  %158 = load i64, i64* @msp_amsound, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %157
  %161 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %162 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @V4L2_STD_SECAM, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  store %struct.msp3400c_carrier_detect* null, %struct.msp3400c_carrier_detect** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %168

168:                                              ; preds = %167, %160, %157
  store i32 0, i32* %12, align 4
  br label %169

169:                                              ; preds = %218, %168
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* %6, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %221

173:                                              ; preds = %169
  %174 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %175 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** %5, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %175, i64 %177
  %179 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** %5, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %181, i64 %183
  %185 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @msp3400c_set_carrier(%struct.i2c_client* %174, i32 %180, i32 %186)
  %188 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %189 = call i64 @msp_sleep(%struct.msp_state* %188, i32 100)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %173
  br label %31

192:                                              ; preds = %173
  %193 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %194 = call i32 @msp_read_dsp(%struct.i2c_client* %193, i32 27)
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp sgt i32 %195, 32767
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load i32, i32* %11, align 4
  %199 = sub nsw i32 %198, 65536
  store i32 %199, i32* %11, align 4
  br label %200

200:                                              ; preds = %197, %192
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* %11, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %200
  %205 = load i32, i32* %11, align 4
  store i32 %205, i32* %10, align 4
  %206 = load i32, i32* %12, align 4
  store i32 %206, i32* %8, align 4
  br label %207

207:                                              ; preds = %204, %200
  %208 = load i64, i64* @msp_debug, align 8
  %209 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %210 = load i32, i32* %11, align 4
  %211 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** %5, align 8
  %212 = load i32, i32* %12, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %211, i64 %213
  %215 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (i32, i64, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i64 %208, %struct.i2c_client* %209, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %210, i32 %216)
  br label %218

218:                                              ; preds = %207
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %12, align 4
  br label %169

221:                                              ; preds = %169
  %222 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_main, align 8
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %222, i64 %224
  %226 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %229 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %228, i32 0, i32 5
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* %7, align 4
  switch i32 %230, label %359 [
    i32 1, label %231
    i32 2, label %275
    i32 3, label %286
    i32 0, label %358
  ]

231:                                              ; preds = %221
  %232 = load i32, i32* %8, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %248

234:                                              ; preds = %231
  %235 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_55, align 8
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %235, i64 %237
  %239 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %242 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %241, i32 0, i32 6
  store i32 %240, i32* %242, align 4
  %243 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %244 = load i32, i32* @MSP_MODE_FM_TERRA, align 4
  %245 = call i32 @msp3400c_set_mode(%struct.i2c_client* %243, i32 %244)
  %246 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %247 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %246, i32 0, i32 2
  store i32 1, i32* %247, align 4
  br label %274

248:                                              ; preds = %231
  %249 = load i32, i32* %8, align 4
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %272

251:                                              ; preds = %248
  %252 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %253 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %252, i32 0, i32 7
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %272

256:                                              ; preds = %251
  %257 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_55, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %257, i64 %259
  %261 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %264 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %263, i32 0, i32 6
  store i32 %262, i32* %264, align 4
  %265 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %266 = load i32, i32* @MSP_MODE_FM_NICAM1, align 4
  %267 = call i32 @msp3400c_set_mode(%struct.i2c_client* %265, i32 %266)
  %268 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %269 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %268, i32 0, i32 3
  store i32 1, i32* %269, align 8
  %270 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %271 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %270, i32 0, i32 2
  store i32 1, i32* %271, align 4
  br label %273

272:                                              ; preds = %251, %248
  br label %360

273:                                              ; preds = %256
  br label %274

274:                                              ; preds = %273, %234
  br label %372

275:                                              ; preds = %221
  %276 = call i32 @MSP_CARRIER(double 6.552000e+00)
  %277 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %278 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %277, i32 0, i32 6
  store i32 %276, i32* %278, align 4
  %279 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %280 = load i32, i32* @MSP_MODE_FM_NICAM2, align 4
  %281 = call i32 @msp3400c_set_mode(%struct.i2c_client* %279, i32 %280)
  %282 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %283 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %282, i32 0, i32 3
  store i32 1, i32* %283, align 8
  %284 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %285 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %284, i32 0, i32 2
  store i32 1, i32* %285, align 4
  br label %372

286:                                              ; preds = %221
  %287 = load i32, i32* %8, align 4
  %288 = icmp eq i32 %287, 1
  br i1 %288, label %292, label %289

289:                                              ; preds = %286
  %290 = load i32, i32* %8, align 4
  %291 = icmp eq i32 %290, 2
  br i1 %291, label %292, label %306

292:                                              ; preds = %289, %286
  %293 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_65, align 8
  %294 = load i32, i32* %8, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %293, i64 %295
  %297 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %300 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %299, i32 0, i32 6
  store i32 %298, i32* %300, align 4
  %301 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %302 = load i32, i32* @MSP_MODE_FM_TERRA, align 4
  %303 = call i32 @msp3400c_set_mode(%struct.i2c_client* %301, i32 %302)
  %304 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %305 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %304, i32 0, i32 2
  store i32 1, i32* %305, align 4
  br label %357

306:                                              ; preds = %289
  %307 = load i32, i32* %8, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %330

309:                                              ; preds = %306
  %310 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %311 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @V4L2_STD_SECAM, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %330

316:                                              ; preds = %309
  %317 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_65, align 8
  %318 = load i32, i32* %8, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %317, i64 %319
  %321 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %324 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %323, i32 0, i32 6
  store i32 %322, i32* %324, align 4
  %325 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %326 = load i32, i32* @MSP_MODE_AM_NICAM, align 4
  %327 = call i32 @msp3400c_set_mode(%struct.i2c_client* %325, i32 %326)
  %328 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %329 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %328, i32 0, i32 2
  store i32 1, i32* %329, align 4
  br label %356

330:                                              ; preds = %309, %306
  %331 = load i32, i32* %8, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %354

333:                                              ; preds = %330
  %334 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %335 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %334, i32 0, i32 7
  %336 = load i32, i32* %335, align 8
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %354

338:                                              ; preds = %333
  %339 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_65, align 8
  %340 = load i32, i32* %8, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %339, i64 %341
  %343 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %346 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %345, i32 0, i32 6
  store i32 %344, i32* %346, align 4
  %347 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %348 = load i32, i32* @MSP_MODE_FM_NICAM1, align 4
  %349 = call i32 @msp3400c_set_mode(%struct.i2c_client* %347, i32 %348)
  %350 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %351 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %350, i32 0, i32 3
  store i32 1, i32* %351, align 8
  %352 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %353 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %352, i32 0, i32 2
  store i32 1, i32* %353, align 4
  br label %355

354:                                              ; preds = %333, %330
  br label %360

355:                                              ; preds = %338
  br label %356

356:                                              ; preds = %355, %316
  br label %357

357:                                              ; preds = %356, %292
  br label %372

358:                                              ; preds = %221
  br label %359

359:                                              ; preds = %221, %358
  br label %360

360:                                              ; preds = %359, %354, %272
  %361 = load %struct.msp3400c_carrier_detect*, %struct.msp3400c_carrier_detect** @msp3400c_carrier_detect_main, align 8
  %362 = load i32, i32* %7, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %361, i64 %363
  %365 = getelementptr inbounds %struct.msp3400c_carrier_detect, %struct.msp3400c_carrier_detect* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %368 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %367, i32 0, i32 6
  store i32 %366, i32* %368, align 4
  %369 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %370 = load i32, i32* @MSP_MODE_FM_TERRA, align 4
  %371 = call i32 @msp3400c_set_mode(%struct.i2c_client* %369, i32 %370)
  br label %372

372:                                              ; preds = %360, %357, %275, %274
  %373 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %374 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %375 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %374, i32 0, i32 6
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %378 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %377, i32 0, i32 5
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @msp3400c_set_carrier(%struct.i2c_client* %373, i32 %376, i32 %379)
  %381 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %382 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %381, i32 0, i32 1
  store i32 0, i32* %382, align 8
  %383 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %384 = call i32 @msp3400c_set_audmode(%struct.i2c_client* %383)
  %385 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %386 = call i32 @msp_update_volume(%struct.msp_state* %385)
  %387 = load i64, i64* @msp_debug, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %372
  %390 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %391 = call i32 @msp3400c_print_mode(%struct.i2c_client* %390)
  br label %392

392:                                              ; preds = %389, %372
  store i32 3, i32* %6, align 4
  br label %393

393:                                              ; preds = %413, %392
  %394 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %395 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %416

398:                                              ; preds = %393
  %399 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %400 = load i32, i32* %6, align 4
  %401 = icmp ne i32 %400, 0
  %402 = zext i1 %401 to i64
  %403 = select i1 %401, i32 1000, i32 5000
  %404 = call i64 @msp_sleep(%struct.msp_state* %399, i32 %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %407

406:                                              ; preds = %398
  br label %31

407:                                              ; preds = %398
  %408 = load i32, i32* %6, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %413

410:                                              ; preds = %407
  %411 = load i32, i32* %6, align 4
  %412 = add nsw i32 %411, -1
  store i32 %412, i32* %6, align 4
  br label %413

413:                                              ; preds = %410, %407
  %414 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %415 = call i32 @watch_stereo(%struct.i2c_client* %414)
  br label %393

416:                                              ; preds = %393
  br label %22

417:                                              ; preds = %39
  %418 = load i64, i64* @msp_debug, align 8
  %419 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %420 = call i32 (i32, i64, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i64 %418, %struct.i2c_client* %419, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @v4l_dbg(i32, i64, %struct.i2c_client*, i8*, ...) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i64 @msp_sleep(%struct.msp_state*, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @msp_update_volume(%struct.msp_state*) #1

declare dso_local i32 @msp3400c_set_mode(%struct.i2c_client*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.msp3400c_carrier_detect*) #1

declare dso_local i32 @msp3400c_set_carrier(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp_read_dsp(%struct.i2c_client*, i32) #1

declare dso_local i32 @MSP_CARRIER(double) #1

declare dso_local i32 @msp3400c_set_audmode(%struct.i2c_client*) #1

declare dso_local i32 @msp3400c_print_mode(%struct.i2c_client*) #1

declare dso_local i32 @watch_stereo(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
