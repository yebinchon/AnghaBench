; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7115.c_saa711x_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7115.c_saa711x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_device_id = type { i32, i8* }
%struct.saa711x_state = type { i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.v4l2_ctrl_handler, %struct.v4l2_subdev }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_subdev = type { %struct.v4l2_ctrl_handler* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"1f711\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"chip found @ 0x%x (ID %s) does not match a known saa711x chip.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"found saa711%c while %s was expected\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"saa711%c\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"saa711%c found (%s) @ 0x%x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@saa711x_ops = common dso_local global i32 0, align 4
@saa711x_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_CID_CHROMA_AGC = common dso_local global i32 0, align 4
@V4L2_CID_CHROMA_GAIN = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_UPDATE = common dso_local global i32 0, align 4
@SAA7115_IPORT_ON = common dso_local global i32 0, align 4
@R_00_CHIP_VERSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"saa7111a variant found\0A\00", align 1
@V4L2_IDENT_SAA7114 = common dso_local global i32 0, align 4
@V4L2_IDENT_SAA7115 = common dso_local global i32 0, align 4
@V4L2_IDENT_SAA7118 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [54 x i8] c"WARNING: Chip is not known - Falling back to saa7111\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"writing init values\0A\00", align 1
@SAA7115_FREQ_24_576_MHZ = common dso_local global i32 0, align 4
@saa7111_init = common dso_local global i32 0, align 4
@saa7113_init = common dso_local global i32 0, align 4
@SAA7115_FREQ_32_11_MHZ = common dso_local global i32 0, align 4
@saa7115_init_auto_input = common dso_local global i32 0, align 4
@saa7115_init_misc = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"status: (1E) 0x%02x, (1F) 0x%02x\0A\00", align 1
@R_1E_STATUS_BYTE_1_VD_DEC = common dso_local global i32 0, align 4
@R_1F_STATUS_BYTE_2_VD_DEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @saa711x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa711x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.saa711x_state*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.v4l2_ctrl_handler*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [17 x i8], align 16
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %14 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %15 = icmp ne %struct.i2c_device_id* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i1 [ true, %2 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %12, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %28 = call i32 @i2c_check_functionality(%struct.TYPE_6__* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %295

33:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %64, %33
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 15
  br i1 %36, label %37, label %67

37:                                               ; preds = %34
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %38, i32 0, i32 %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %41, i32 0)
  %43 = and i32 %42, 15
  %44 = add nsw i32 %43, 48
  %45 = trunc i32 %44 to i8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 %47
  store i8 %45, i8* %48, align 1
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sgt i32 %53, 57
  br i1 %54, label %55, label %63

55:                                               ; preds = %37
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = add nsw i32 %60, 39
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %58, align 1
  br label %63

63:                                               ; preds = %55, %37
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %34

67:                                               ; preds = %34
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 %69
  store i8 0, i8* %70, align 1
  %71 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 5
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %11, align 1
  %73 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 0
  %74 = call i64 @memcmp(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %67
  %77 = load i32, i32* @debug, align 4
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 %81, 1
  %83 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 0
  %84 = call i32 @v4l_dbg(i32 1, i32 %77, %struct.i2c_client* %78, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %82, i8* %83)
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %295

87:                                               ; preds = %67
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %107, label %90

90:                                               ; preds = %87
  %91 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %92 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 6
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = load i8, i8* %11, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %90
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = load i8, i8* %11, align 1
  %103 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %104 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @v4l_warn(%struct.i2c_client* %101, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8 signext %102, i8* %105)
  br label %107

107:                                              ; preds = %100, %90, %87
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i8, i8* %11, align 1
  %112 = call i32 @snprintf(i32 %110, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8 signext %111)
  %113 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %114 = load i8, i8* %11, align 1
  %115 = sext i8 %114 to i32
  %116 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 0
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = shl i32 %119, 1
  %121 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %122 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %113, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %115, i8* %116, i32 %120, i32 %125)
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call %struct.saa711x_state* @kzalloc(i32 72, i32 %127)
  store %struct.saa711x_state* %128, %struct.saa711x_state** %6, align 8
  %129 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %130 = icmp eq %struct.saa711x_state* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %107
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %295

134:                                              ; preds = %107
  %135 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %136 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %135, i32 0, i32 10
  store %struct.v4l2_subdev* %136, %struct.v4l2_subdev** %7, align 8
  %137 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %138 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %139 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %137, %struct.i2c_client* %138, i32* @saa711x_ops)
  %140 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %141 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %140, i32 0, i32 9
  store %struct.v4l2_ctrl_handler* %141, %struct.v4l2_ctrl_handler** %8, align 8
  %142 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %143 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %142, i32 6)
  %144 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %145 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %146 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %144, i32* @saa711x_ctrl_ops, i32 %145, i32 0, i32 255, i32 1, i32 128)
  %147 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %148 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %149 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %147, i32* @saa711x_ctrl_ops, i32 %148, i32 0, i32 127, i32 1, i32 64)
  %150 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %151 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %152 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %150, i32* @saa711x_ctrl_ops, i32 %151, i32 0, i32 127, i32 1, i32 64)
  %153 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %154 = load i32, i32* @V4L2_CID_HUE, align 4
  %155 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %153, i32* @saa711x_ctrl_ops, i32 %154, i32 -128, i32 127, i32 1, i32 0)
  %156 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %157 = load i32, i32* @V4L2_CID_CHROMA_AGC, align 4
  %158 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %156, i32* @saa711x_ctrl_ops, i32 %157, i32 0, i32 1, i32 1, i32 1)
  %159 = bitcast i8* %158 to %struct.TYPE_5__*
  %160 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %161 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %160, i32 0, i32 7
  store %struct.TYPE_5__* %159, %struct.TYPE_5__** %161, align 8
  %162 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %163 = load i32, i32* @V4L2_CID_CHROMA_GAIN, align 4
  %164 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %162, i32* @saa711x_ctrl_ops, i32 %163, i32 0, i32 127, i32 1, i32 40)
  %165 = bitcast i8* %164 to %struct.TYPE_4__*
  %166 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %167 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %166, i32 0, i32 8
  store %struct.TYPE_4__* %165, %struct.TYPE_4__** %167, align 8
  %168 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %169 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %168, i32 0, i32 8
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  store i32 1, i32* %171, align 4
  %172 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %173 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %174 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %173, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %172, %struct.v4l2_ctrl_handler** %174, align 8
  %175 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %176 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %134
  %180 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %181 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %13, align 4
  %183 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %184 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %183)
  %185 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %186 = call i32 @kfree(%struct.saa711x_state* %185)
  %187 = load i32, i32* %13, align 4
  store i32 %187, i32* %3, align 4
  br label %295

188:                                              ; preds = %134
  %189 = load i32, i32* @V4L2_CTRL_FLAG_UPDATE, align 4
  %190 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %191 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %190, i32 0, i32 7
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %189
  store i32 %195, i32* %193, align 4
  %196 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %197 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %196, i32 0, i32 7
  %198 = call i32 @v4l2_ctrl_cluster(i32 2, %struct.TYPE_5__** %197)
  %199 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %200 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %199, i32 0, i32 0
  store i32 -1, i32* %200, align 8
  %201 = load i32, i32* @SAA7115_IPORT_ON, align 4
  %202 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %203 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %202, i32 0, i32 6
  store i32 %201, i32* %203, align 8
  %204 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %205 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %204, i32 0, i32 1
  store i32 1, i32* %205, align 4
  %206 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %207 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %206, i32 0, i32 5
  store i64 0, i64* %207, align 8
  %208 = load i8, i8* %11, align 1
  %209 = sext i8 %208 to i32
  switch i32 %209, label %239 [
    i32 49, label %210
    i32 51, label %224
    i32 52, label %227
    i32 53, label %231
    i32 56, label %235
  ]

210:                                              ; preds = %188
  %211 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %212 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %211, i32 0, i32 2
  store i32 130, i32* %212, align 8
  %213 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %214 = load i32, i32* @R_00_CHIP_VERSION, align 4
  %215 = call i32 @saa711x_read(%struct.v4l2_subdev* %213, i32 %214)
  %216 = and i32 %215, 240
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %210
  %219 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %220 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %219, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %221 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %222 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %221, i32 0, i32 2
  store i32 129, i32* %222, align 8
  br label %223

223:                                              ; preds = %218, %210
  br label %244

224:                                              ; preds = %188
  %225 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %226 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %225, i32 0, i32 2
  store i32 128, i32* %226, align 8
  br label %244

227:                                              ; preds = %188
  %228 = load i32, i32* @V4L2_IDENT_SAA7114, align 4
  %229 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %230 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 8
  br label %244

231:                                              ; preds = %188
  %232 = load i32, i32* @V4L2_IDENT_SAA7115, align 4
  %233 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %234 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 8
  br label %244

235:                                              ; preds = %188
  %236 = load i32, i32* @V4L2_IDENT_SAA7118, align 4
  %237 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %238 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 8
  br label %244

239:                                              ; preds = %188
  %240 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %241 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %240, i32 0, i32 2
  store i32 130, i32* %241, align 8
  %242 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %243 = call i32 @v4l2_info(%struct.v4l2_subdev* %242, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  br label %244

244:                                              ; preds = %239, %235, %231, %227, %224, %223
  %245 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %246 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %245, i32 0, i32 3
  store i32 48000, i32* %246, align 4
  %247 = load i32, i32* @debug, align 4
  %248 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %249 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %247, %struct.v4l2_subdev* %248, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %250 = load i32, i32* @SAA7115_FREQ_24_576_MHZ, align 4
  %251 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %252 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %251, i32 0, i32 4
  store i32 %250, i32* %252, align 8
  %253 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %254 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  switch i32 %255, label %264 [
    i32 130, label %256
    i32 129, label %256
    i32 128, label %260
  ]

256:                                              ; preds = %244, %244
  %257 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %258 = load i32, i32* @saa7111_init, align 4
  %259 = call i32 @saa711x_writeregs(%struct.v4l2_subdev* %257, i32 %258)
  br label %271

260:                                              ; preds = %244
  %261 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %262 = load i32, i32* @saa7113_init, align 4
  %263 = call i32 @saa711x_writeregs(%struct.v4l2_subdev* %261, i32 %262)
  br label %271

264:                                              ; preds = %244
  %265 = load i32, i32* @SAA7115_FREQ_32_11_MHZ, align 4
  %266 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %267 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %266, i32 0, i32 4
  store i32 %265, i32* %267, align 8
  %268 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %269 = load i32, i32* @saa7115_init_auto_input, align 4
  %270 = call i32 @saa711x_writeregs(%struct.v4l2_subdev* %268, i32 %269)
  br label %271

271:                                              ; preds = %264, %260, %256
  %272 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %273 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = icmp sgt i32 %274, 129
  br i1 %275, label %276, label %280

276:                                              ; preds = %271
  %277 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %278 = load i32, i32* @saa7115_init_misc, align 4
  %279 = call i32 @saa711x_writeregs(%struct.v4l2_subdev* %277, i32 %278)
  br label %280

280:                                              ; preds = %276, %271
  %281 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %282 = load i32, i32* @V4L2_STD_NTSC, align 4
  %283 = call i32 @saa711x_set_v4lstd(%struct.v4l2_subdev* %281, i32 %282)
  %284 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %285 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %284)
  %286 = load i32, i32* @debug, align 4
  %287 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %288 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %289 = load i32, i32* @R_1E_STATUS_BYTE_1_VD_DEC, align 4
  %290 = call i32 @saa711x_read(%struct.v4l2_subdev* %288, i32 %289)
  %291 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %292 = load i32, i32* @R_1F_STATUS_BYTE_2_VD_DEC, align 4
  %293 = call i32 @saa711x_read(%struct.v4l2_subdev* %291, i32 %292)
  %294 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %286, %struct.v4l2_subdev* %287, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %290, i32 %293)
  store i32 0, i32* %3, align 4
  br label %295

295:                                              ; preds = %280, %179, %131, %76, %30
  %296 = load i32, i32* %3, align 4
  ret i32 %296
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i32, i8*) #1

declare dso_local i32 @v4l_warn(%struct.i2c_client*, i8*, i8 signext, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8 signext) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, ...) #1

declare dso_local %struct.saa711x_state* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @kfree(%struct.saa711x_state*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, %struct.TYPE_5__**) #1

declare dso_local i32 @saa711x_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @saa711x_writeregs(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @saa711x_set_v4lstd(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
