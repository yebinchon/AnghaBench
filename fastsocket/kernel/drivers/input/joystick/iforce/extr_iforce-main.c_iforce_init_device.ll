; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-main.c_iforce_init_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-main.c_iforce_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i8*, i64*, i16*, i64* }
%struct.iforce = type { i32, i32*, %struct.input_dev*, %struct.TYPE_13__*, i32, %struct.TYPE_12__, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.input_dev = type { i8*, i32*, %struct.ff_device*, i32, i32, %struct.TYPE_11__, %struct.TYPE_14__, i32, i32 }
%struct.ff_device = type { i32, i32 (%struct.input_dev*, i32)*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_12__ = type { i8*, i32, i32*, i32*, i32*, i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@__const.iforce_init_device.c = private unnamed_addr constant [5 x i8] c"CEOV\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown I-Force device\00", align 1
@iforce_open = common dso_local global i32 0, align 4
@iforce_release = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"I-Force device effect memory\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Timeout waiting for response from device.\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Device does not respond to id packet M\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Device does not respond to id packet P\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Device does not respond to id packet B\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Device does not respond to id packet N\0A\00", align 1
@IFORCE_EFFECTS_MAX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [54 x i8] c"Limiting number of effects to %d (device reports %d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@iforce_device = common dso_local global %struct.TYPE_13__* null, align 8
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_FF_STATUS = common dso_local global i32 0, align 4
@BTN_DEAD = common dso_local global i16 0, align 2
@iforce_upload_effect = common dso_local global i32 0, align 4
@iforce_erase_effect = common dso_local global i32 0, align 4
@iforce_set_gain = common dso_local global i32 0, align 4
@iforce_playback = common dso_local global i32 0, align 4
@BUS_RS232 = common dso_local global i32 0, align 4
@BUS_USB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iforce_init_device(%struct.iforce* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iforce*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.ff_device*, align 8
  %6 = alloca [5 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store %struct.iforce* %0, %struct.iforce** %3, align 8
  %11 = bitcast [5 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.iforce_init_device.c, i32 0, i32 0), i64 5, i1 false)
  store i32 0, i32* %9, align 4
  %12 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %12, %struct.input_dev** %4, align 8
  %13 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %14 = icmp ne %struct.input_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %448

18:                                               ; preds = %1
  %19 = load %struct.iforce*, %struct.iforce** %3, align 8
  %20 = getelementptr inbounds %struct.iforce, %struct.iforce* %19, i32 0, i32 12
  %21 = call i32 @init_waitqueue_head(i32* %20)
  %22 = load %struct.iforce*, %struct.iforce** %3, align 8
  %23 = getelementptr inbounds %struct.iforce, %struct.iforce* %22, i32 0, i32 11
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.iforce*, %struct.iforce** %3, align 8
  %26 = getelementptr inbounds %struct.iforce, %struct.iforce* %25, i32 0, i32 10
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.iforce*, %struct.iforce** %3, align 8
  %29 = getelementptr inbounds %struct.iforce, %struct.iforce* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.iforce*, %struct.iforce** %3, align 8
  %32 = getelementptr inbounds %struct.iforce, %struct.iforce* %31, i32 0, i32 9
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %35 = load %struct.iforce*, %struct.iforce** %3, align 8
  %36 = getelementptr inbounds %struct.iforce, %struct.iforce* %35, i32 0, i32 2
  store %struct.input_dev* %34, %struct.input_dev** %36, align 8
  %37 = load %struct.iforce*, %struct.iforce** %3, align 8
  %38 = getelementptr inbounds %struct.iforce, %struct.iforce* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %40 [
  ]

40:                                               ; preds = %18
  %41 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %42 = load %struct.iforce*, %struct.iforce** %3, align 8
  %43 = call i32 @input_set_drvdata(%struct.input_dev* %41, %struct.iforce* %42)
  %44 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %45, align 8
  %46 = load i32, i32* @iforce_open, align 4
  %47 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @iforce_release, align 4
  %50 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 8
  %52 = load %struct.iforce*, %struct.iforce** %3, align 8
  %53 = getelementptr inbounds %struct.iforce, %struct.iforce* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %54, align 8
  %55 = load %struct.iforce*, %struct.iforce** %3, align 8
  %56 = getelementptr inbounds %struct.iforce, %struct.iforce* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 6
  store i64 0, i64* %57, align 8
  %58 = load %struct.iforce*, %struct.iforce** %3, align 8
  %59 = getelementptr inbounds %struct.iforce, %struct.iforce* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  store i32 200, i32* %60, align 8
  %61 = load i32, i32* @IORESOURCE_MEM, align 4
  %62 = load %struct.iforce*, %struct.iforce** %3, align 8
  %63 = getelementptr inbounds %struct.iforce, %struct.iforce* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 5
  store i32 %61, i32* %64, align 8
  %65 = load %struct.iforce*, %struct.iforce** %3, align 8
  %66 = getelementptr inbounds %struct.iforce, %struct.iforce* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 4
  store i32* null, i32** %67, align 8
  %68 = load %struct.iforce*, %struct.iforce** %3, align 8
  %69 = getelementptr inbounds %struct.iforce, %struct.iforce* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  store i32* null, i32** %70, align 8
  %71 = load %struct.iforce*, %struct.iforce** %3, align 8
  %72 = getelementptr inbounds %struct.iforce, %struct.iforce* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  store i32* null, i32** %73, align 8
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %83, %40
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 20
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load %struct.iforce*, %struct.iforce** %3, align 8
  %79 = call i32 (%struct.iforce*, ...) @iforce_get_id_packet(%struct.iforce* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  br label %86

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %74

86:                                               ; preds = %81, %74
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 20
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = call i32 @err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %8, align 4
  br label %444

93:                                               ; preds = %86
  %94 = load %struct.iforce*, %struct.iforce** %3, align 8
  %95 = call i32 (%struct.iforce*, ...) @iforce_get_id_packet(%struct.iforce* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %113, label %97

97:                                               ; preds = %93
  %98 = load %struct.iforce*, %struct.iforce** %3, align 8
  %99 = getelementptr inbounds %struct.iforce, %struct.iforce* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 8
  %104 = load %struct.iforce*, %struct.iforce** %3, align 8
  %105 = getelementptr inbounds %struct.iforce, %struct.iforce* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %103, %108
  %110 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %111 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  br label %119

113:                                              ; preds = %93
  %114 = load %struct.iforce*, %struct.iforce** %3, align 8
  %115 = getelementptr inbounds %struct.iforce, %struct.iforce* %114, i32 0, i32 2
  %116 = load %struct.input_dev*, %struct.input_dev** %115, align 8
  %117 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %116, i32 0, i32 6
  %118 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_warn(%struct.TYPE_14__* %117, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %119

119:                                              ; preds = %113, %97
  %120 = load %struct.iforce*, %struct.iforce** %3, align 8
  %121 = call i32 (%struct.iforce*, ...) @iforce_get_id_packet(%struct.iforce* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %139, label %123

123:                                              ; preds = %119
  %124 = load %struct.iforce*, %struct.iforce** %3, align 8
  %125 = getelementptr inbounds %struct.iforce, %struct.iforce* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 8
  %130 = load %struct.iforce*, %struct.iforce** %3, align 8
  %131 = getelementptr inbounds %struct.iforce, %struct.iforce* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %129, %134
  %136 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %137 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  br label %145

139:                                              ; preds = %119
  %140 = load %struct.iforce*, %struct.iforce** %3, align 8
  %141 = getelementptr inbounds %struct.iforce, %struct.iforce* %140, i32 0, i32 2
  %142 = load %struct.input_dev*, %struct.input_dev** %141, align 8
  %143 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %142, i32 0, i32 6
  %144 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_warn(%struct.TYPE_14__* %143, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %145

145:                                              ; preds = %139, %123
  %146 = load %struct.iforce*, %struct.iforce** %3, align 8
  %147 = call i32 (%struct.iforce*, ...) @iforce_get_id_packet(%struct.iforce* %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %165, label %149

149:                                              ; preds = %145
  %150 = load %struct.iforce*, %struct.iforce** %3, align 8
  %151 = getelementptr inbounds %struct.iforce, %struct.iforce* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %154, 8
  %156 = load %struct.iforce*, %struct.iforce** %3, align 8
  %157 = getelementptr inbounds %struct.iforce, %struct.iforce* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %155, %160
  %162 = load %struct.iforce*, %struct.iforce** %3, align 8
  %163 = getelementptr inbounds %struct.iforce, %struct.iforce* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 8
  br label %171

165:                                              ; preds = %145
  %166 = load %struct.iforce*, %struct.iforce** %3, align 8
  %167 = getelementptr inbounds %struct.iforce, %struct.iforce* %166, i32 0, i32 2
  %168 = load %struct.input_dev*, %struct.input_dev** %167, align 8
  %169 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %168, i32 0, i32 6
  %170 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_warn(%struct.TYPE_14__* %169, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  br label %171

171:                                              ; preds = %165, %149
  %172 = load %struct.iforce*, %struct.iforce** %3, align 8
  %173 = call i32 (%struct.iforce*, ...) @iforce_get_id_packet(%struct.iforce* %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %171
  %176 = load %struct.iforce*, %struct.iforce** %3, align 8
  %177 = getelementptr inbounds %struct.iforce, %struct.iforce* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %9, align 4
  br label %187

181:                                              ; preds = %171
  %182 = load %struct.iforce*, %struct.iforce** %3, align 8
  %183 = getelementptr inbounds %struct.iforce, %struct.iforce* %182, i32 0, i32 2
  %184 = load %struct.input_dev*, %struct.input_dev** %183, align 8
  %185 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %184, i32 0, i32 6
  %186 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_warn(%struct.TYPE_14__* %185, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  br label %187

187:                                              ; preds = %181, %175
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* @IFORCE_EFFECTS_MAX, align 4
  %190 = icmp sgt i32 %188, %189
  br i1 %190, label %191, label %200

191:                                              ; preds = %187
  %192 = load %struct.iforce*, %struct.iforce** %3, align 8
  %193 = getelementptr inbounds %struct.iforce, %struct.iforce* %192, i32 0, i32 2
  %194 = load %struct.input_dev*, %struct.input_dev** %193, align 8
  %195 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %194, i32 0, i32 6
  %196 = load i32, i32* @IFORCE_EFFECTS_MAX, align 4
  %197 = load i32, i32* %9, align 4
  %198 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_warn(%struct.TYPE_14__* %195, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i32 %196, i32 %197)
  %199 = load i32, i32* @IFORCE_EFFECTS_MAX, align 4
  store i32 %199, i32* %9, align 4
  br label %200

200:                                              ; preds = %191, %187
  store i32 0, i32* %7, align 4
  br label %201

201:                                              ; preds = %224, %200
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = icmp ne i8 %205, 0
  br i1 %206, label %207, label %227

207:                                              ; preds = %201
  %208 = load %struct.iforce*, %struct.iforce** %3, align 8
  %209 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %209, i64 %211
  %213 = call i32 (%struct.iforce*, ...) @iforce_get_id_packet(%struct.iforce* %208, i8* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %223, label %215

215:                                              ; preds = %207
  %216 = load %struct.iforce*, %struct.iforce** %3, align 8
  %217 = getelementptr inbounds %struct.iforce, %struct.iforce* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.iforce*, %struct.iforce** %3, align 8
  %220 = getelementptr inbounds %struct.iforce, %struct.iforce* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @iforce_dump_packet(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %218, i32* %221)
  br label %223

223:                                              ; preds = %215, %207
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %7, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %7, align 4
  br label %201

227:                                              ; preds = %201
  %228 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %229 = call i32 @iforce_set_autocenter(%struct.input_dev* %228, i32 0)
  store i32 0, i32* %7, align 4
  br label %230

230:                                              ; preds = %264, %227
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** @iforce_device, align 8
  %232 = load i32, i32* %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %267

238:                                              ; preds = %230
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** @iforce_device, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %246 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp eq i32 %244, %248
  br i1 %249, label %250, label %263

250:                                              ; preds = %238
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** @iforce_device, align 8
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %258 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %257, i32 0, i32 5
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = icmp eq i32 %256, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %250
  br label %267

263:                                              ; preds = %250, %238
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %7, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %7, align 4
  br label %230

267:                                              ; preds = %262, %230
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** @iforce_device, align 8
  %269 = load i32, i32* %7, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i64 %270
  %272 = load %struct.iforce*, %struct.iforce** %3, align 8
  %273 = getelementptr inbounds %struct.iforce, %struct.iforce* %272, i32 0, i32 3
  store %struct.TYPE_13__* %271, %struct.TYPE_13__** %273, align 8
  %274 = load %struct.iforce*, %struct.iforce** %3, align 8
  %275 = getelementptr inbounds %struct.iforce, %struct.iforce* %274, i32 0, i32 3
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 2
  %278 = load i8*, i8** %277, align 8
  %279 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %280 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %279, i32 0, i32 0
  store i8* %278, i8** %280, align 8
  %281 = load i32, i32* @EV_KEY, align 4
  %282 = call i32 @BIT_MASK(i32 %281)
  %283 = load i32, i32* @EV_ABS, align 4
  %284 = call i32 @BIT_MASK(i32 %283)
  %285 = or i32 %282, %284
  %286 = load i32, i32* @EV_FF_STATUS, align 4
  %287 = call i32 @BIT_MASK(i32 %286)
  %288 = or i32 %285, %287
  %289 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %290 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  store i32 %288, i32* %292, align 4
  store i32 0, i32* %7, align 4
  br label %293

293:                                              ; preds = %319, %267
  %294 = load %struct.iforce*, %struct.iforce** %3, align 8
  %295 = getelementptr inbounds %struct.iforce, %struct.iforce* %294, i32 0, i32 3
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 3
  %298 = load i64*, i64** %297, align 8
  %299 = load i32, i32* %7, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i64, i64* %298, i64 %300
  %302 = load i64, i64* %301, align 8
  %303 = icmp sge i64 %302, 0
  br i1 %303, label %304, label %322

304:                                              ; preds = %293
  %305 = load %struct.iforce*, %struct.iforce** %3, align 8
  %306 = getelementptr inbounds %struct.iforce, %struct.iforce* %305, i32 0, i32 3
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 3
  %309 = load i64*, i64** %308, align 8
  %310 = load i32, i32* %7, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i64, i64* %309, i64 %311
  %313 = load i64, i64* %312, align 8
  %314 = trunc i64 %313 to i16
  %315 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %316 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @set_bit(i16 signext %314, i32 %317)
  br label %319

319:                                              ; preds = %304
  %320 = load i32, i32* %7, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %7, align 4
  br label %293

322:                                              ; preds = %293
  %323 = load i16, i16* @BTN_DEAD, align 2
  %324 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %325 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @set_bit(i16 signext %323, i32 %326)
  store i32 0, i32* %7, align 4
  br label %328

328:                                              ; preds = %374, %322
  %329 = load %struct.iforce*, %struct.iforce** %3, align 8
  %330 = getelementptr inbounds %struct.iforce, %struct.iforce* %329, i32 0, i32 3
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 4
  %333 = load i16*, i16** %332, align 8
  %334 = load i32, i32* %7, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i16, i16* %333, i64 %335
  %337 = load i16, i16* %336, align 2
  %338 = sext i16 %337 to i32
  %339 = icmp sge i32 %338, 0
  br i1 %339, label %340, label %377

340:                                              ; preds = %328
  %341 = load %struct.iforce*, %struct.iforce** %3, align 8
  %342 = getelementptr inbounds %struct.iforce, %struct.iforce* %341, i32 0, i32 3
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 4
  %345 = load i16*, i16** %344, align 8
  %346 = load i32, i32* %7, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i16, i16* %345, i64 %347
  %349 = load i16, i16* %348, align 2
  store i16 %349, i16* %10, align 2
  %350 = load i16, i16* %10, align 2
  %351 = sext i16 %350 to i32
  switch i32 %351, label %373 [
    i32 131, label %352
    i32 130, label %352
    i32 132, label %352
    i32 133, label %361
    i32 139, label %361
    i32 140, label %361
    i32 134, label %365
    i32 138, label %369
    i32 137, label %369
    i32 136, label %369
    i32 135, label %369
  ]

352:                                              ; preds = %340, %340, %340
  %353 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %354 = load i16, i16* %10, align 2
  %355 = call i32 @input_set_abs_params(%struct.input_dev* %353, i16 signext %354, i32 -1920, i32 1920, i32 16, i32 128)
  %356 = load i16, i16* %10, align 2
  %357 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %358 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 8
  %360 = call i32 @set_bit(i16 signext %356, i32 %359)
  br label %373

361:                                              ; preds = %340, %340, %340
  %362 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %363 = load i16, i16* %10, align 2
  %364 = call i32 @input_set_abs_params(%struct.input_dev* %362, i16 signext %363, i32 0, i32 255, i32 0, i32 0)
  br label %373

365:                                              ; preds = %340
  %366 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %367 = load i16, i16* %10, align 2
  %368 = call i32 @input_set_abs_params(%struct.input_dev* %366, i16 signext %367, i32 -128, i32 127, i32 0, i32 0)
  br label %373

369:                                              ; preds = %340, %340, %340, %340
  %370 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %371 = load i16, i16* %10, align 2
  %372 = call i32 @input_set_abs_params(%struct.input_dev* %370, i16 signext %371, i32 -1, i32 1, i32 0, i32 0)
  br label %373

373:                                              ; preds = %340, %369, %365, %361, %352
  br label %374

374:                                              ; preds = %373
  %375 = load i32, i32* %7, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %7, align 4
  br label %328

377:                                              ; preds = %328
  %378 = load i32, i32* %9, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %435

380:                                              ; preds = %377
  store i32 0, i32* %7, align 4
  br label %381

381:                                              ; preds = %407, %380
  %382 = load %struct.iforce*, %struct.iforce** %3, align 8
  %383 = getelementptr inbounds %struct.iforce, %struct.iforce* %382, i32 0, i32 3
  %384 = load %struct.TYPE_13__*, %struct.TYPE_13__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %384, i32 0, i32 5
  %386 = load i64*, i64** %385, align 8
  %387 = load i32, i32* %7, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i64, i64* %386, i64 %388
  %390 = load i64, i64* %389, align 8
  %391 = icmp sge i64 %390, 0
  br i1 %391, label %392, label %410

392:                                              ; preds = %381
  %393 = load %struct.iforce*, %struct.iforce** %3, align 8
  %394 = getelementptr inbounds %struct.iforce, %struct.iforce* %393, i32 0, i32 3
  %395 = load %struct.TYPE_13__*, %struct.TYPE_13__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %395, i32 0, i32 5
  %397 = load i64*, i64** %396, align 8
  %398 = load i32, i32* %7, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i64, i64* %397, i64 %399
  %401 = load i64, i64* %400, align 8
  %402 = trunc i64 %401 to i16
  %403 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %404 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %403, i32 0, i32 3
  %405 = load i32, i32* %404, align 8
  %406 = call i32 @set_bit(i16 signext %402, i32 %405)
  br label %407

407:                                              ; preds = %392
  %408 = load i32, i32* %7, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %7, align 4
  br label %381

410:                                              ; preds = %381
  %411 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %412 = load i32, i32* %9, align 4
  %413 = call i32 @input_ff_create(%struct.input_dev* %411, i32 %412)
  store i32 %413, i32* %8, align 4
  %414 = load i32, i32* %8, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %417

416:                                              ; preds = %410
  br label %444

417:                                              ; preds = %410
  %418 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %419 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %418, i32 0, i32 2
  %420 = load %struct.ff_device*, %struct.ff_device** %419, align 8
  store %struct.ff_device* %420, %struct.ff_device** %5, align 8
  %421 = load i32, i32* @iforce_upload_effect, align 4
  %422 = load %struct.ff_device*, %struct.ff_device** %5, align 8
  %423 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %422, i32 0, i32 4
  store i32 %421, i32* %423, align 8
  %424 = load i32, i32* @iforce_erase_effect, align 4
  %425 = load %struct.ff_device*, %struct.ff_device** %5, align 8
  %426 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %425, i32 0, i32 3
  store i32 %424, i32* %426, align 4
  %427 = load i32, i32* @iforce_set_gain, align 4
  %428 = load %struct.ff_device*, %struct.ff_device** %5, align 8
  %429 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %428, i32 0, i32 2
  store i32 %427, i32* %429, align 8
  %430 = load %struct.ff_device*, %struct.ff_device** %5, align 8
  %431 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %430, i32 0, i32 1
  store i32 (%struct.input_dev*, i32)* @iforce_set_autocenter, i32 (%struct.input_dev*, i32)** %431, align 8
  %432 = load i32, i32* @iforce_playback, align 4
  %433 = load %struct.ff_device*, %struct.ff_device** %5, align 8
  %434 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %433, i32 0, i32 0
  store i32 %432, i32* %434, align 8
  br label %435

435:                                              ; preds = %417, %377
  %436 = load %struct.iforce*, %struct.iforce** %3, align 8
  %437 = getelementptr inbounds %struct.iforce, %struct.iforce* %436, i32 0, i32 2
  %438 = load %struct.input_dev*, %struct.input_dev** %437, align 8
  %439 = call i32 @input_register_device(%struct.input_dev* %438)
  store i32 %439, i32* %8, align 4
  %440 = load i32, i32* %8, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %443

442:                                              ; preds = %435
  br label %444

443:                                              ; preds = %435
  store i32 0, i32* %2, align 4
  br label %448

444:                                              ; preds = %442, %416, %89
  %445 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %446 = call i32 @input_free_device(%struct.input_dev* %445)
  %447 = load i32, i32* %8, align 4
  store i32 %447, i32* %2, align 4
  br label %448

448:                                              ; preds = %444, %443, %15
  %449 = load i32, i32* %2, align 4
  ret i32 %449
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #2

declare dso_local i32 @init_waitqueue_head(i32*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.iforce*) #2

declare dso_local i32 @iforce_get_id_packet(%struct.iforce*, ...) #2

declare dso_local i32 @err(i8*) #2

declare dso_local i32 @dev_warn(%struct.TYPE_14__*, i8*, ...) #2

declare dso_local i32 @iforce_dump_packet(i8*, i32, i32*) #2

declare dso_local i32 @iforce_set_autocenter(%struct.input_dev*, i32) #2

declare dso_local i32 @BIT_MASK(i32) #2

declare dso_local i32 @set_bit(i16 signext, i32) #2

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i16 signext, i32, i32, i32, i32) #2

declare dso_local i32 @input_ff_create(%struct.input_dev*, i32) #2

declare dso_local i32 @input_register_device(%struct.input_dev*) #2

declare dso_local i32 @input_free_device(%struct.input_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
