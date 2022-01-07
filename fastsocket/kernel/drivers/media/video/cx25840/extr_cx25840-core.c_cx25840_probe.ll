; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx25840_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx25840_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.cx25840_state = type { i32, i32, i32, i32, %struct.TYPE_6__, i8*, i8*, i32, i64, i32, i32, %struct.i2c_client*, %struct.v4l2_subdev }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_6__* }

@V4L2_IDENT_NONE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@cx25840_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"detecting cx25840 client on address 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"device_id = 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"likely a confused/unresponsive cx2388[578] A/V decoder found @ 0x%x (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"A method to reset it from the cx25840 driver software is not known at this time\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"cx25840 not found\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cx25840_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"cx23885 A/V decoder found @ 0x%x (%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"cx23887 A/V decoder found @ 0x%x (%s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"cx23888 A/V decoder found @ 0x%x (%s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"cx%d A/V decoder found @ 0x%x (%s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"cx25%3x-2%x found @ 0x%x (%s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"cx25%3x-%x found @ 0x%x (%s)\0A\00", align 1
@CX25840_COMPOSITE7 = common dso_local global i32 0, align 4
@CX25840_AUDIO8 = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_LANG1 = common dso_local global i32 0, align 4
@cx25840_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@cx25840_audio_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_VOLUME = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_BASS = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_TREBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @cx25840_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.cx25840_state*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load i32, i32* @V4L2_IDENT_NONE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %17 = call i32 @i2c_check_functionality(%struct.TYPE_7__* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %338

22:                                               ; preds = %2
  %23 = load i32, i32* @cx25840_debug, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 %27, 1
  %29 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %23, %struct.i2c_client* %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = call i32 @cx25840_read(%struct.i2c_client* %30, i32 257)
  %32 = shl i32 %31, 8
  store i32 %32, i32* %10, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = call i32 @cx25840_read(%struct.i2c_client* %33, i32 256)
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @cx25840_debug, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %37, %struct.i2c_client* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, 65280
  %43 = icmp eq i32 %42, 33536
  br i1 %43, label %44, label %50

44:                                               ; preds = %22
  %45 = load i32, i32* %10, align 4
  %46 = ashr i32 %45, 4
  %47 = and i32 %46, 15
  %48 = add nsw i32 133, %47
  %49 = sub nsw i32 %48, 6
  store i32 %49, i32* %9, align 4
  br label %101

50:                                               ; preds = %22
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 65280
  %53 = icmp eq i32 %52, 33792
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = ashr i32 %55, 4
  %57 = and i32 %56, 15
  %58 = add nsw i32 131, %57
  store i32 %58, i32* %9, align 4
  br label %100

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = call i32 @get_cx2388x_ident(%struct.i2c_client* %63)
  store i32 %64, i32* %9, align 4
  br label %99

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %66, 65520
  %68 = icmp eq i32 %67, 23088
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 137, i32* %9, align 4
  br label %98

70:                                               ; preds = %65
  %71 = load i32, i32* %10, align 4
  %72 = and i32 %71, 255
  %73 = load i32, i32* %10, align 4
  %74 = ashr i32 %73, 8
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %70
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %80, 1
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_err(%struct.i2c_client* %77, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %86)
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_err(%struct.i2c_client* %88, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %338

92:                                               ; preds = %70
  %93 = load i32, i32* @cx25840_debug, align 4
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %93, %struct.i2c_client* %94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %338

98:                                               ; preds = %69
  br label %99

99:                                               ; preds = %98, %62
  br label %100

100:                                              ; preds = %99, %54
  br label %101

101:                                              ; preds = %100, %44
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call %struct.cx25840_state* @kzalloc(i32 80, i32 %102)
  store %struct.cx25840_state* %103, %struct.cx25840_state** %6, align 8
  %104 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %105 = icmp eq %struct.cx25840_state* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %338

109:                                              ; preds = %101
  %110 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %111 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %110, i32 0, i32 12
  store %struct.v4l2_subdev* %111, %struct.v4l2_subdev** %7, align 8
  %112 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %113 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %114 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %112, %struct.i2c_client* %113, i32* @cx25840_ops)
  %115 = load i32, i32* %9, align 4
  switch i32 %115, label %193 [
    i32 136, label %116
    i32 135, label %128
    i32 134, label %140
    i32 137, label %152
    i32 131, label %165
    i32 130, label %165
    i32 129, label %165
    i32 128, label %165
    i32 133, label %192
    i32 132, label %192
  ]

116:                                              ; preds = %109
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = shl i32 %120, 1
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 1
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (%struct.i2c_client*, i8*, i32, i32, ...) @v4l_info(%struct.i2c_client* %117, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %121, i32 %126)
  br label %210

128:                                              ; preds = %109
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %131 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = shl i32 %132, 1
  %134 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %135 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %134, i32 0, i32 1
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (%struct.i2c_client*, i8*, i32, i32, ...) @v4l_info(%struct.i2c_client* %129, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %133, i32 %138)
  br label %210

140:                                              ; preds = %109
  %141 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %142 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %143 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = shl i32 %144, 1
  %146 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %147 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %146, i32 0, i32 1
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (%struct.i2c_client*, i8*, i32, i32, ...) @v4l_info(%struct.i2c_client* %141, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %145, i32 %150)
  br label %210

152:                                              ; preds = %109
  %153 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %154 = load i32, i32* %10, align 4
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = shl i32 %157, 1
  %159 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %160 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %159, i32 0, i32 1
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (%struct.i2c_client*, i8*, i32, i32, ...) @v4l_info(%struct.i2c_client* %153, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %154, i32 %158, i32 %163)
  br label %210

165:                                              ; preds = %109, %109, %109, %109
  %166 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %167 = load i32, i32* %10, align 4
  %168 = and i32 %167, 65520
  %169 = ashr i32 %168, 4
  %170 = load i32, i32* %10, align 4
  %171 = and i32 %170, 15
  %172 = icmp slt i32 %171, 3
  br i1 %172, label %173, label %177

173:                                              ; preds = %165
  %174 = load i32, i32* %10, align 4
  %175 = and i32 %174, 15
  %176 = add nsw i32 %175, 1
  br label %180

177:                                              ; preds = %165
  %178 = load i32, i32* %10, align 4
  %179 = and i32 %178, 15
  br label %180

180:                                              ; preds = %177, %173
  %181 = phi i32 [ %176, %173 ], [ %179, %177 ]
  %182 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %183 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = shl i32 %184, 1
  %186 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %187 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %186, i32 0, i32 1
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (%struct.i2c_client*, i8*, i32, i32, ...) @v4l_info(%struct.i2c_client* %166, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %169, i32 %181, i32 %185, i32 %190)
  br label %210

192:                                              ; preds = %109, %109
  br label %193

193:                                              ; preds = %109, %192
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = load i32, i32* %10, align 4
  %196 = and i32 %195, 65520
  %197 = ashr i32 %196, 4
  %198 = load i32, i32* %10, align 4
  %199 = and i32 %198, 15
  %200 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %201 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = shl i32 %202, 1
  %204 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %205 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %204, i32 0, i32 1
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (%struct.i2c_client*, i8*, i32, i32, ...) @v4l_info(%struct.i2c_client* %194, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %197, i32 %199, i32 %203, i32 %208)
  br label %210

210:                                              ; preds = %193, %180, %152, %140, %128, %116
  %211 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %212 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %213 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %212, i32 0, i32 11
  store %struct.i2c_client* %211, %struct.i2c_client** %213, align 8
  %214 = load i32, i32* @CX25840_COMPOSITE7, align 4
  %215 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %216 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %215, i32 0, i32 10
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* @CX25840_AUDIO8, align 4
  %218 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %219 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %218, i32 0, i32 9
  store i32 %217, i32* %219, align 8
  %220 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %221 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %220, i32 0, i32 0
  store i32 48000, i32* %221, align 8
  %222 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %223 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %222, i32 0, i32 8
  store i64 0, i64* %223, align 8
  %224 = load i32, i32* @V4L2_TUNER_MODE_LANG1, align 4
  %225 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %226 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %225, i32 0, i32 7
  store i32 %224, i32* %226, align 8
  %227 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %228 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %227, i32 0, i32 1
  store i32 8, i32* %228, align 4
  %229 = load i32, i32* %9, align 4
  %230 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %231 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 8
  %232 = load i32, i32* %10, align 4
  %233 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %234 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %233, i32 0, i32 3
  store i32 %232, i32* %234, align 4
  %235 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %236 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %235, i32 0, i32 4
  %237 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_6__* %236, i32 9)
  %238 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %239 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %238, i32 0, i32 4
  %240 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %241 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_6__* %239, i32* @cx25840_ctrl_ops, i32 %240, i32 0, i32 255, i32 1, i32 128)
  %242 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %243 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %242, i32 0, i32 4
  %244 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %245 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_6__* %243, i32* @cx25840_ctrl_ops, i32 %244, i32 0, i32 127, i32 1, i32 64)
  %246 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %247 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %246, i32 0, i32 4
  %248 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %249 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_6__* %247, i32* @cx25840_ctrl_ops, i32 %248, i32 0, i32 127, i32 1, i32 64)
  %250 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %251 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %250, i32 0, i32 4
  %252 = load i32, i32* @V4L2_CID_HUE, align 4
  %253 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_6__* %251, i32* @cx25840_ctrl_ops, i32 %252, i32 -128, i32 127, i32 1, i32 0)
  %254 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %255 = call i32 @is_cx2583x(%struct.cx25840_state* %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %303, label %257

257:                                              ; preds = %210
  %258 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %259 = call i32 @cx25840_read(%struct.i2c_client* %258, i32 2260)
  store i32 %259, i32* %8, align 4
  %260 = load i32, i32* %8, align 4
  %261 = icmp sgt i32 %260, 228
  br i1 %261, label %262, label %265

262:                                              ; preds = %257
  store i32 228, i32* %8, align 4
  %263 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %264 = call i32 @cx25840_write(%struct.i2c_client* %263, i32 2260, i32 228)
  br label %272

265:                                              ; preds = %257
  %266 = load i32, i32* %8, align 4
  %267 = icmp slt i32 %266, 20
  br i1 %267, label %268, label %271

268:                                              ; preds = %265
  store i32 20, i32* %8, align 4
  %269 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %270 = call i32 @cx25840_write(%struct.i2c_client* %269, i32 2260, i32 20)
  br label %271

271:                                              ; preds = %268, %265
  br label %272

272:                                              ; preds = %271, %262
  %273 = load i32, i32* %8, align 4
  %274 = sub nsw i32 228, %273
  %275 = ashr i32 %274, 1
  %276 = add nsw i32 %275, 23
  %277 = shl i32 %276, 9
  store i32 %277, i32* %8, align 4
  %278 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %279 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %278, i32 0, i32 4
  %280 = load i32, i32* @V4L2_CID_AUDIO_VOLUME, align 4
  %281 = load i32, i32* %8, align 4
  %282 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_6__* %279, i32* @cx25840_audio_ctrl_ops, i32 %280, i32 0, i32 65535, i32 655, i32 %281)
  %283 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %284 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %283, i32 0, i32 5
  store i8* %282, i8** %284, align 8
  %285 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %286 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %285, i32 0, i32 4
  %287 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %288 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_6__* %286, i32* @cx25840_audio_ctrl_ops, i32 %287, i32 0, i32 1, i32 1, i32 0)
  %289 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %290 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %289, i32 0, i32 6
  store i8* %288, i8** %290, align 8
  %291 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %292 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %291, i32 0, i32 4
  %293 = load i32, i32* @V4L2_CID_AUDIO_BALANCE, align 4
  %294 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_6__* %292, i32* @cx25840_audio_ctrl_ops, i32 %293, i32 0, i32 65535, i32 655, i32 32768)
  %295 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %296 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %295, i32 0, i32 4
  %297 = load i32, i32* @V4L2_CID_AUDIO_BASS, align 4
  %298 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_6__* %296, i32* @cx25840_audio_ctrl_ops, i32 %297, i32 0, i32 65535, i32 655, i32 32768)
  %299 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %300 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %299, i32 0, i32 4
  %301 = load i32, i32* @V4L2_CID_AUDIO_TREBLE, align 4
  %302 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_6__* %300, i32* @cx25840_audio_ctrl_ops, i32 %301, i32 0, i32 65535, i32 655, i32 32768)
  br label %303

303:                                              ; preds = %272, %210
  %304 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %305 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %304, i32 0, i32 4
  %306 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %307 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %306, i32 0, i32 0
  store %struct.TYPE_6__* %305, %struct.TYPE_6__** %307, align 8
  %308 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %309 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %308, i32 0, i32 4
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %324

313:                                              ; preds = %303
  %314 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %315 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %314, i32 0, i32 4
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  store i32 %317, i32* %11, align 4
  %318 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %319 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %318, i32 0, i32 4
  %320 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_6__* %319)
  %321 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %322 = call i32 @kfree(%struct.cx25840_state* %321)
  %323 = load i32, i32* %11, align 4
  store i32 %323, i32* %3, align 4
  br label %338

324:                                              ; preds = %303
  %325 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %326 = call i32 @is_cx2583x(%struct.cx25840_state* %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %332, label %328

328:                                              ; preds = %324
  %329 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %330 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %329, i32 0, i32 5
  %331 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %330)
  br label %332

332:                                              ; preds = %328, %324
  %333 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %334 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %333, i32 0, i32 4
  %335 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_6__* %334)
  %336 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %337 = call i32 @cx25840_ir_probe(%struct.v4l2_subdev* %336)
  store i32 0, i32* %3, align 4
  br label %338

338:                                              ; preds = %332, %313, %106, %92, %76, %19
  %339 = load i32, i32* %3, align 4
  ret i32 %339
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, ...) #1

declare dso_local i32 @cx25840_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @get_cx2388x_ident(%struct.i2c_client*) #1

declare dso_local i32 @v4l_err(%struct.i2c_client*, i8*, ...) #1

declare dso_local %struct.cx25840_state* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32, ...) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @is_cx2583x(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.cx25840_state*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_6__*) #1

declare dso_local i32 @cx25840_ir_probe(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
