; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp3410d_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp3410d_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.msp_state = type { i64, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i64 }

@msp_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"msp3410 daemon started\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"msp3410 thread: sleep\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"msp3410 thread: wakeup\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"thread: restart scan\0A\00", align 1
@MSP_MODE_EXTERN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"thread: no carrier scan\0A\00", align 1
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"setting standard: %s (0x%04x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"detection still in progress\0A\00", align 1
@msp_stdlist = common dso_local global %struct.TYPE_2__* null, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"current standard: %s (0x%04x)\0A\00", align 1
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@msp_amsound = common dso_local global i64 0, align 8
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [65 x i8] c"autodetection failed, switching to backup standard: %s (0x%04x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@MSP_MODE_FM_NICAM2 = common dso_local global i64 0, align 8
@MSP_MODE_FM_NICAM1 = common dso_local global i64 0, align 8
@MSP_MODE_AM_NICAM = common dso_local global i64 0, align 8
@MSP_MODE_BTSC = common dso_local global i64 0, align 8
@MSP_MODE_FM_RADIO = common dso_local global i64 0, align 8
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@MSP_MODE_FM_TERRA = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"thread: exit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msp3410d_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.msp_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.i2c_client*
  store %struct.i2c_client* %10, %struct.i2c_client** %3, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = call i32 @i2c_get_clientdata(%struct.i2c_client* %11)
  %13 = call %struct.msp_state* @to_state(i32 %12)
  store %struct.msp_state* %13, %struct.msp_state** %4, align 8
  %14 = load i64, i64* @msp_debug, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %16 = call i32 (i32, i64, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i64 %14, %struct.i2c_client* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @set_freezable()
  br label %18

18:                                               ; preds = %308, %42, %1
  %19 = load i64, i64* @msp_debug, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = call i32 (i32, i64, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 2, i64 %19, %struct.i2c_client* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %23 = call i64 @msp_sleep(%struct.msp_state* %22, i32 -1)
  %24 = load i64, i64* @msp_debug, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %26 = call i32 (i32, i64, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 2, i64 %24, %struct.i2c_client* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %298, %101, %77, %18
  %28 = load i64, i64* @msp_debug, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = call i32 (i32, i64, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 2, i64 %28, %struct.i2c_client* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %31 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %32 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %31, i32 0, i32 13
  store i64 0, i64* %32, align 8
  %33 = call i64 (...) @kthread_should_stop()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %309

36:                                               ; preds = %27
  %37 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %38 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MSP_MODE_EXTERN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i64, i64* @msp_debug, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %45 = call i32 (i32, i64, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i64 %43, %struct.i2c_client* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %46 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %47 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %46, i32 0, i32 1
  store i32 0, i32* %47, align 8
  %48 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %49 = call i32 @msp_update_volume(%struct.msp_state* %48)
  br label %18

50:                                               ; preds = %36
  %51 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %52 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %51, i32 0, i32 1
  store i32 1, i32* %52, align 8
  %53 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %54 = call i32 @msp_update_volume(%struct.msp_state* %53)
  %55 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %56 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %55, i32 0, i32 10
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 64, i32* %7, align 4
  br label %69

60:                                               ; preds = %50
  %61 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %62 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @V4L2_STD_NTSC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 32, i32 1
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %60, %59
  %70 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %71 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %70, i32 0, i32 3
  store i32 0, i32* %71, align 8
  %72 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %73 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %72, i32 0, i32 4
  store i32 0, i32* %73, align 4
  %74 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %75 = call i64 @msp_sleep(%struct.msp_state* %74, i32 200)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %27

78:                                               ; preds = %69
  %79 = load i64, i64* @msp_debug, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i64, i64* @msp_debug, align 8
  %83 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @msp_standard_std_name(i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i32, i64, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 2, i64 %82, %struct.i2c_client* %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %78
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %5, align 4
  br label %113

93:                                               ; preds = %88
  %94 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @msp_write_dem(%struct.i2c_client* %94, i32 32, i32 %95)
  br label %97

97:                                               ; preds = %108, %93
  %98 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %99 = call i64 @msp_sleep(%struct.msp_state* %98, i32 100)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %27

102:                                              ; preds = %97
  %103 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %104 = call i32 @msp_read_dem(%struct.i2c_client* %103, i32 126)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %105, 2047
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %112

108:                                              ; preds = %102
  %109 = load i64, i64* @msp_debug, align 8
  %110 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %111 = call i32 (i32, i64, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 2, i64 %109, %struct.i2c_client* %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %97

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112, %91
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %133, %113
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msp_stdlist, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %136

122:                                              ; preds = %114
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msp_stdlist, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %136

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %114

136:                                              ; preds = %131, %114
  %137 = load i64, i64* @msp_debug, align 8
  %138 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @msp_standard_std_name(i32 %139)
  %141 = load i32, i32* %5, align 4
  %142 = call i32 (i32, i64, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i64 %137, %struct.i2c_client* %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %140, i32 %141)
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msp_stdlist, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %150 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %149, i32 0, i32 12
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msp_stdlist, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %158 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %157, i32 0, i32 11
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* %5, align 4
  %160 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %161 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %163 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %164 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %163, i32 0, i32 9
  store i32 %162, i32* %164, align 8
  %165 = load i64, i64* @msp_amsound, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %205

167:                                              ; preds = %136
  %168 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %169 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %168, i32 0, i32 10
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %205, label %172

172:                                              ; preds = %167
  %173 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %174 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @V4L2_STD_SECAM, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %205

179:                                              ; preds = %172
  %180 = load i32, i32* %5, align 4
  %181 = icmp ne i32 %180, 9
  br i1 %181, label %182, label %205

182:                                              ; preds = %179
  %183 = load i64, i64* @msp_debug, align 8
  %184 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msp_stdlist, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %195

190:                                              ; preds = %182
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msp_stdlist, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i64 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  br label %196

195:                                              ; preds = %182
  br label %196

196:                                              ; preds = %195, %190
  %197 = phi i8* [ %194, %190 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %195 ]
  %198 = load i32, i32* %5, align 4
  %199 = call i32 (i32, i64, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i64 %183, %struct.i2c_client* %184, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0), i8* %197, i32 %198)
  store i32 9, i32* %5, align 4
  %200 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %201 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %200, i32 0, i32 5
  store i32 9, i32* %201, align 8
  %202 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %203 = load i32, i32* %5, align 4
  %204 = call i32 @msp_write_dem(%struct.i2c_client* %202, i32 32, i32 %203)
  br label %205

205:                                              ; preds = %196, %179, %172, %167, %136
  %206 = load i32, i32* %5, align 4
  switch i32 %206, label %255 [
    i32 8, label %207
    i32 10, label %207
    i32 11, label %207
    i32 9, label %223
    i32 32, label %231
    i32 64, label %235
    i32 2, label %249
    i32 3, label %249
    i32 4, label %249
    i32 5, label %249
  ]

207:                                              ; preds = %205, %205, %205
  %208 = load i32, i32* %5, align 4
  %209 = icmp eq i32 %208, 10
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load i64, i64* @MSP_MODE_FM_NICAM2, align 8
  %212 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %213 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %212, i32 0, i32 0
  store i64 %211, i64* %213, align 8
  br label %218

214:                                              ; preds = %207
  %215 = load i64, i64* @MSP_MODE_FM_NICAM1, align 8
  %216 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %217 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %216, i32 0, i32 0
  store i64 %215, i64* %217, align 8
  br label %218

218:                                              ; preds = %214, %210
  %219 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %220 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %219, i32 0, i32 4
  store i32 1, i32* %220, align 4
  %221 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %222 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %221, i32 0, i32 3
  store i32 1, i32* %222, align 8
  br label %255

223:                                              ; preds = %205
  %224 = load i64, i64* @MSP_MODE_AM_NICAM, align 8
  %225 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %226 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %225, i32 0, i32 0
  store i64 %224, i64* %226, align 8
  %227 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %228 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %227, i32 0, i32 4
  store i32 1, i32* %228, align 4
  %229 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %230 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %229, i32 0, i32 3
  store i32 1, i32* %230, align 8
  br label %255

231:                                              ; preds = %205
  %232 = load i64, i64* @MSP_MODE_BTSC, align 8
  %233 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %234 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %233, i32 0, i32 0
  store i64 %232, i64* %234, align 8
  br label %255

235:                                              ; preds = %205
  %236 = load i64, i64* @MSP_MODE_FM_RADIO, align 8
  %237 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %238 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %237, i32 0, i32 0
  store i64 %236, i64* %238, align 8
  %239 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %240 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %241 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %240, i32 0, i32 9
  store i32 %239, i32* %241, align 8
  %242 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %243 = load i64, i64* @MSP_MODE_FM_RADIO, align 8
  %244 = call i32 @msp3400c_set_mode(%struct.i2c_client* %242, i64 %243)
  %245 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %246 = call i32 @MSP_CARRIER(double 1.070000e+01)
  %247 = call i32 @MSP_CARRIER(double 1.070000e+01)
  %248 = call i32 @msp3400c_set_carrier(%struct.i2c_client* %245, i32 %246, i32 %247)
  br label %255

249:                                              ; preds = %205, %205, %205, %205
  %250 = load i64, i64* @MSP_MODE_FM_TERRA, align 8
  %251 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %252 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %251, i32 0, i32 0
  store i64 %250, i64* %252, align 8
  %253 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %254 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %253, i32 0, i32 3
  store i32 1, i32* %254, align 8
  br label %255

255:                                              ; preds = %205, %249, %235, %231, %223, %218
  %256 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %257 = call i32 @msp_write_dsp(%struct.i2c_client* %256, i32 13, i32 6400)
  %258 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %259 = call i32 @msp_write_dsp(%struct.i2c_client* %258, i32 14, i32 12288)
  %260 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %261 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %260, i32 0, i32 8
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %255
  %265 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %266 = call i32 @msp_write_dsp(%struct.i2c_client* %265, i32 16, i32 23040)
  br label %267

267:                                              ; preds = %264, %255
  %268 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %269 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %268, i32 0, i32 7
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %267
  %273 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %274 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %275 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %274, i32 0, i32 6
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @msp_write_dem(%struct.i2c_client* %273, i32 64, i32 %276)
  br label %278

278:                                              ; preds = %272, %267
  %279 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %280 = call i32 @msp3400c_set_audmode(%struct.i2c_client* %279)
  %281 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %282 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %281, i32 0, i32 1
  store i32 0, i32* %282, align 8
  %283 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %284 = call i32 @msp_update_volume(%struct.msp_state* %283)
  store i32 3, i32* %8, align 4
  br label %285

285:                                              ; preds = %305, %278
  %286 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %287 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 8
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %308

290:                                              ; preds = %285
  %291 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %292 = load i32, i32* %8, align 4
  %293 = icmp ne i32 %292, 0
  %294 = zext i1 %293 to i64
  %295 = select i1 %293, i32 1000, i32 5000
  %296 = call i64 @msp_sleep(%struct.msp_state* %291, i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %290
  br label %27

299:                                              ; preds = %290
  %300 = load i32, i32* %8, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %299
  %303 = load i32, i32* %8, align 4
  %304 = add nsw i32 %303, -1
  store i32 %304, i32* %8, align 4
  br label %305

305:                                              ; preds = %302, %299
  %306 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %307 = call i32 @watch_stereo(%struct.i2c_client* %306)
  br label %285

308:                                              ; preds = %285
  br label %18

309:                                              ; preds = %35
  %310 = load i64, i64* @msp_debug, align 8
  %311 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %312 = call i32 (i32, i64, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i64 %310, %struct.i2c_client* %311, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @v4l_dbg(i32, i64, %struct.i2c_client*, i8*, ...) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i64 @msp_sleep(%struct.msp_state*, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @msp_update_volume(%struct.msp_state*) #1

declare dso_local i32 @msp_standard_std_name(i32) #1

declare dso_local i32 @msp_write_dem(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp_read_dem(%struct.i2c_client*, i32) #1

declare dso_local i32 @msp3400c_set_mode(%struct.i2c_client*, i64) #1

declare dso_local i32 @msp3400c_set_carrier(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @MSP_CARRIER(double) #1

declare dso_local i32 @msp_write_dsp(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp3400c_set_audmode(%struct.i2c_client*) #1

declare dso_local i32 @watch_stereo(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
