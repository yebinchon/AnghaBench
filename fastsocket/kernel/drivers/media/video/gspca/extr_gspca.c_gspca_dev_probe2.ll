; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_gspca_dev_probe2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_gspca_dev_probe2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_16__*, i32, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.usb_device_id = type { i32, i32 }
%struct.sd_desc = type { i32 (%struct.gspca_dev*, %struct.usb_device_id*)*, i32 (%struct.gspca_dev.0*)* }
%struct.gspca_dev = type opaque
%struct.gspca_dev.0 = type opaque
%struct.module = type { i32 }
%struct.gspca_dev.1 = type { i32, i32, i32, i32, %struct.gspca_dev.1*, i64, %struct.TYPE_18__, %struct.module*, i32, i32, i32, %struct.TYPE_17__, %struct.sd_desc*, i32, i32, %struct.usb_device* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { i32* }
%struct.usb_device = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.usb_interface**, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"probing %04x:%04x\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"couldn't kzalloc gspca struct\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@USB_BUF_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@USB_CLASS_AUDIO = common dso_local global i64 0, align 8
@gspca_template = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"video_register_device err %d\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s created\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gspca_dev_probe2(%struct.usb_interface* %0, %struct.usb_device_id* %1, %struct.sd_desc* %2, i32 %3, %struct.module* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.usb_device_id*, align 8
  %9 = alloca %struct.sd_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.module*, align 8
  %12 = alloca %struct.gspca_dev.1*, align 8
  %13 = alloca %struct.usb_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %7, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %8, align 8
  store %struct.sd_desc* %2, %struct.sd_desc** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.module* %4, %struct.module** %11, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %18 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %17)
  store %struct.usb_device* %18, %struct.usb_device** %13, align 8
  %19 = load i32, i32* @D_PROBE, align 4
  %20 = load %struct.usb_device_id*, %struct.usb_device_id** %8, align 8
  %21 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.usb_device_id*, %struct.usb_device_id** %8, align 8
  %24 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 96
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 96, i32* %10, align 4
  br label %31

31:                                               ; preds = %30, %5
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.gspca_dev.1* @kzalloc(i32 %32, i32 %33)
  store %struct.gspca_dev.1* %34, %struct.gspca_dev.1** %12, align 8
  %35 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %36 = icmp ne %struct.gspca_dev.1* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %219

41:                                               ; preds = %31
  %42 = load i32, i32* @USB_BUF_SZ, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.gspca_dev.1* @kmalloc(i32 %42, i32 %43)
  %45 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %46 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %45, i32 0, i32 4
  store %struct.gspca_dev.1* %44, %struct.gspca_dev.1** %46, align 8
  %47 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %48 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %47, i32 0, i32 4
  %49 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %48, align 8
  %50 = icmp ne %struct.gspca_dev.1* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %14, align 4
  br label %211

55:                                               ; preds = %41
  %56 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %57 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %58 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %57, i32 0, i32 15
  store %struct.usb_device* %56, %struct.usb_device** %58, align 8
  %59 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %60 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %59, i32 0, i32 3
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %66 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %65, i32 0, i32 14
  store i32 %64, i32* %66, align 4
  %67 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %68 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %71 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %70, i32 0, i32 13
  store i32 %69, i32* %71, align 8
  %72 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %73 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 1
  br i1 %78, label %79, label %123

79:                                               ; preds = %55
  store i32 0, i32* %15, align 4
  br label %80

80:                                               ; preds = %119, %79
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %83 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %81, %87
  br i1 %88, label %89, label %122

89:                                               ; preds = %80
  %90 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %91 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %90, i32 0, i32 0
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load %struct.usb_interface**, %struct.usb_interface*** %93, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %94, i64 %96
  %98 = load %struct.usb_interface*, %struct.usb_interface** %97, align 8
  store %struct.usb_interface* %98, %struct.usb_interface** %16, align 8
  %99 = load %struct.usb_interface*, %struct.usb_interface** %16, align 8
  %100 = icmp ne %struct.usb_interface* %99, null
  br i1 %100, label %101, label %118

101:                                              ; preds = %89
  %102 = load %struct.usb_interface*, %struct.usb_interface** %16, align 8
  %103 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %102, i32 0, i32 1
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = icmp ne %struct.TYPE_16__* %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %101
  %107 = load %struct.usb_interface*, %struct.usb_interface** %16, align 8
  %108 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %107, i32 0, i32 1
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @USB_CLASS_AUDIO, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %117 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  br label %122

118:                                              ; preds = %106, %101, %89
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  br label %80

122:                                              ; preds = %115, %80
  br label %123

123:                                              ; preds = %122, %55
  %124 = load %struct.sd_desc*, %struct.sd_desc** %9, align 8
  %125 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %126 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %125, i32 0, i32 12
  store %struct.sd_desc* %124, %struct.sd_desc** %126, align 8
  %127 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %128 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %127, i32 0, i32 1
  store i32 2, i32* %128, align 4
  %129 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %130 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %129, i32 0, i32 2
  store i32 -1, i32* %130, align 8
  %131 = load %struct.sd_desc*, %struct.sd_desc** %9, align 8
  %132 = getelementptr inbounds %struct.sd_desc, %struct.sd_desc* %131, i32 0, i32 0
  %133 = load i32 (%struct.gspca_dev*, %struct.usb_device_id*)*, i32 (%struct.gspca_dev*, %struct.usb_device_id*)** %132, align 8
  %134 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %135 = bitcast %struct.gspca_dev.1* %134 to %struct.gspca_dev*
  %136 = load %struct.usb_device_id*, %struct.usb_device_id** %8, align 8
  %137 = call i32 %133(%struct.gspca_dev* %135, %struct.usb_device_id* %136)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %123
  br label %211

141:                                              ; preds = %123
  %142 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %143 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %142, i32 0, i32 11
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %149 = call i32 @ctrls_init(%struct.gspca_dev.1* %148)
  br label %150

150:                                              ; preds = %147, %141
  %151 = load %struct.sd_desc*, %struct.sd_desc** %9, align 8
  %152 = getelementptr inbounds %struct.sd_desc, %struct.sd_desc* %151, i32 0, i32 1
  %153 = load i32 (%struct.gspca_dev.0*)*, i32 (%struct.gspca_dev.0*)** %152, align 8
  %154 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %155 = bitcast %struct.gspca_dev.1* %154 to %struct.gspca_dev.0*
  %156 = call i32 %153(%struct.gspca_dev.0* %155)
  store i32 %156, i32* %14, align 4
  %157 = load i32, i32* %14, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %150
  br label %211

160:                                              ; preds = %150
  %161 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %162 = call i32 @gspca_set_default_mode(%struct.gspca_dev.1* %161)
  %163 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %164 = call i32 @gspca_input_connect(%struct.gspca_dev.1* %163)
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  br label %211

168:                                              ; preds = %160
  %169 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %170 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %169, i32 0, i32 10
  %171 = call i32 @mutex_init(i32* %170)
  %172 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %173 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %172, i32 0, i32 9
  %174 = call i32 @mutex_init(i32* %173)
  %175 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %176 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %175, i32 0, i32 8
  %177 = call i32 @init_waitqueue_head(i32* %176)
  %178 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %179 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %178, i32 0, i32 6
  %180 = call i32 @memcpy(%struct.TYPE_18__* %179, i32* @gspca_template, i32 4)
  %181 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %182 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %181, i32 0, i32 0
  %183 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %184 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  store i32* %182, i32** %185, align 8
  %186 = load %struct.module*, %struct.module** %11, align 8
  %187 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %188 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %187, i32 0, i32 7
  store %struct.module* %186, %struct.module** %188, align 8
  %189 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %190 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %189, i32 0, i32 3
  store i32 1, i32* %190, align 4
  %191 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %192 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %191, i32 0, i32 6
  %193 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %194 = call i32 @video_register_device(%struct.TYPE_18__* %192, i32 %193, i32 -1)
  store i32 %194, i32* %14, align 4
  %195 = load i32, i32* %14, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %168
  %198 = load i32, i32* %14, align 4
  %199 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %198)
  br label %211

200:                                              ; preds = %168
  %201 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %202 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %203 = call i32 @usb_set_intfdata(%struct.usb_interface* %201, %struct.gspca_dev.1* %202)
  %204 = load i32, i32* @D_PROBE, align 4
  %205 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %206 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %205, i32 0, i32 6
  %207 = call i32 @video_device_node_name(%struct.TYPE_18__* %206)
  %208 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 %204, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %207)
  %209 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %210 = call i32 @gspca_input_create_urb(%struct.gspca_dev.1* %209)
  store i32 0, i32* %6, align 4
  br label %219

211:                                              ; preds = %197, %167, %159, %140, %51
  %212 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %213 = getelementptr inbounds %struct.gspca_dev.1, %struct.gspca_dev.1* %212, i32 0, i32 4
  %214 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %213, align 8
  %215 = call i32 @kfree(%struct.gspca_dev.1* %214)
  %216 = load %struct.gspca_dev.1*, %struct.gspca_dev.1** %12, align 8
  %217 = call i32 @kfree(%struct.gspca_dev.1* %216)
  %218 = load i32, i32* %14, align 4
  store i32 %218, i32* %6, align 4
  br label %219

219:                                              ; preds = %211, %200, %37
  %220 = load i32, i32* %6, align 4
  ret i32 %220
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, ...) #1

declare dso_local %struct.gspca_dev.1* @kzalloc(i32, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local %struct.gspca_dev.1* @kmalloc(i32, i32) #1

declare dso_local i32 @ctrls_init(%struct.gspca_dev.1*) #1

declare dso_local i32 @gspca_set_default_mode(%struct.gspca_dev.1*) #1

declare dso_local i32 @gspca_input_connect(%struct.gspca_dev.1*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @video_register_device(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.gspca_dev.1*) #1

declare dso_local i32 @video_device_node_name(%struct.TYPE_18__*) #1

declare dso_local i32 @gspca_input_create_urb(%struct.gspca_dev.1*) #1

declare dso_local i32 @kfree(%struct.gspca_dev.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
