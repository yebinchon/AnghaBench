; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.usb_interface_descriptor }
%struct.usb_interface_descriptor = type { i32, i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.usb_ov511 = type { i32, i32, i64, i32, i32, %struct.usb_ov511*, %struct.TYPE_16__*, i32, i32, %struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.usb_device* }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32, i32, %struct.usb_ov511* }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"probing for device...\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"couldn't kmalloc ov struct\00", align 1
@led = common dso_local global i32 0, align 4
@compress = common dso_local global i32 0, align 4
@lightfreq = common dso_local global i32 0, align 4
@fastset = common dso_local global i32 0, align 4
@backlight = common dso_local global i32 0, align 4
@mirror = common dso_local global i32 0, align 4
@autobright = common dso_local global i32 0, align 4
@autogain = common dso_local global i32 0, align 4
@autoexp = common dso_local global i32 0, align 4
@BRG_OV511 = common dso_local global i8* null, align 8
@BCL_OV511 = common dso_local global i64 0, align 8
@BRG_OV511PLUS = common dso_local global i8* null, align 8
@BRG_OV518 = common dso_local global i8* null, align 8
@BCL_OV518 = common dso_local global i64 0, align 8
@BRG_OV518PLUS = common dso_local global i8* null, align 8
@VEND_MATTEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unknown product ID 0x%04x\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"USB %s video device found\0A\00", align 1
@brglist = common dso_local global i32 0, align 4
@BUF_NOT_ALLOCATED = common dso_local global i32 0, align 4
@OV511_USB_PATH_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"usb_make_path error\00", align 1
@OV511_CBUF_SIZE = common dso_local global i32 0, align 4
@OV511_NUMFRAMES = common dso_local global i32 0, align 4
@OV511_NUMSBUF = common dso_local global i32 0, align 4
@vdev_template = common dso_local global i32 0, align 4
@ov511_devused = common dso_local global i32 0, align 4
@OV511_MAX_UNIT_VIDEO = common dso_local global i32 0, align 4
@unit_video = common dso_local global i64* null, align 8
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"video_register_device failed\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Device at %s registered to minor %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"ov_create_sysfs failed\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Camera initialization failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@dump_bridge = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ov51x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov51x_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_interface_descriptor*, align 8
  %8 = alloca %struct.usb_ov511*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  %14 = call i32 @PDEBUG(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %427

23:                                               ; preds = %2
  %24 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %25 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %24, i32 0, i32 1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store %struct.usb_interface_descriptor* %27, %struct.usb_interface_descriptor** %7, align 8
  %28 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %7, align 8
  %29 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 255
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %427

35:                                               ; preds = %23
  %36 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %7, align 8
  %37 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %427

43:                                               ; preds = %35
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.usb_ov511* @kzalloc(i32 136, i32 %44)
  store %struct.usb_ov511* %45, %struct.usb_ov511** %8, align 8
  %46 = icmp eq %struct.usb_ov511* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %423

49:                                               ; preds = %43
  %50 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %51 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %52 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %51, i32 0, i32 25
  store %struct.usb_device* %50, %struct.usb_device** %52, align 8
  %53 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %7, align 8
  %54 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %57 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %56, i32 0, i32 24
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @led, align 4
  %59 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %60 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %59, i32 0, i32 23
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @compress, align 4
  %62 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %63 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %62, i32 0, i32 22
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @lightfreq, align 4
  %65 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %66 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %65, i32 0, i32 21
  store i32 %64, i32* %66, align 4
  %67 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %68 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load i32, i32* @fastset, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %74 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @backlight, align 4
  %76 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %77 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %76, i32 0, i32 20
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @mirror, align 4
  %79 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %80 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %79, i32 0, i32 19
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @autobright, align 4
  %82 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %83 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %82, i32 0, i32 18
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @autogain, align 4
  %85 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %86 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %85, i32 0, i32 17
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @autoexp, align 4
  %88 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %89 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %88, i32 0, i32 16
  store i32 %87, i32* %89, align 8
  %90 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %91 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le16_to_cpu(i32 %93)
  switch i32 %94, label %139 [
    i32 131, label %95
    i32 130, label %102
    i32 129, label %109
    i32 128, label %116
    i32 132, label %123
  ]

95:                                               ; preds = %49
  %96 = load i8*, i8** @BRG_OV511, align 8
  %97 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %98 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %97, i32 0, i32 15
  store i8* %96, i8** %98, align 8
  %99 = load i64, i64* @BCL_OV511, align 8
  %100 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %101 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %146

102:                                              ; preds = %49
  %103 = load i8*, i8** @BRG_OV511PLUS, align 8
  %104 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %105 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %104, i32 0, i32 15
  store i8* %103, i8** %105, align 8
  %106 = load i64, i64* @BCL_OV511, align 8
  %107 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %108 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  br label %146

109:                                              ; preds = %49
  %110 = load i8*, i8** @BRG_OV518, align 8
  %111 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %112 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %111, i32 0, i32 15
  store i8* %110, i8** %112, align 8
  %113 = load i64, i64* @BCL_OV518, align 8
  %114 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %115 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  br label %146

116:                                              ; preds = %49
  %117 = load i8*, i8** @BRG_OV518PLUS, align 8
  %118 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %119 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %118, i32 0, i32 15
  store i8* %117, i8** %119, align 8
  %120 = load i64, i64* @BCL_OV518, align 8
  %121 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %122 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %121, i32 0, i32 2
  store i64 %120, i64* %122, align 8
  br label %146

123:                                              ; preds = %49
  %124 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %125 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @le16_to_cpu(i32 %127)
  %129 = load i32, i32* @VEND_MATTEL, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %377

132:                                              ; preds = %123
  %133 = load i8*, i8** @BRG_OV511PLUS, align 8
  %134 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %135 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %134, i32 0, i32 15
  store i8* %133, i8** %135, align 8
  %136 = load i64, i64* @BCL_OV511, align 8
  %137 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %138 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %137, i32 0, i32 2
  store i64 %136, i64* %138, align 8
  br label %146

139:                                              ; preds = %49
  %140 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %141 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @le16_to_cpu(i32 %143)
  %145 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  br label %377

146:                                              ; preds = %132, %116, %109, %102, %95
  %147 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %148 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %147, i32 0, i32 0
  %149 = load i32, i32* @brglist, align 4
  %150 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %151 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %150, i32 0, i32 15
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @symbolic(i32 %149, i8* %152)
  %154 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %148, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %153)
  %155 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %156 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %155, i32 0, i32 14
  %157 = call i32 @init_waitqueue_head(i32* %156)
  %158 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %159 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %158, i32 0, i32 7
  %160 = call i32 @mutex_init(i32* %159)
  %161 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %162 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %161, i32 0, i32 13
  %163 = call i32 @mutex_init(i32* %162)
  %164 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %165 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %164, i32 0, i32 12
  %166 = call i32 @mutex_init(i32* %165)
  %167 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %168 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %167, i32 0, i32 4
  %169 = call i32 @mutex_init(i32* %168)
  %170 = load i32, i32* @BUF_NOT_ALLOCATED, align 4
  %171 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %172 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %171, i32 0, i32 11
  store i32 %170, i32* %172, align 8
  %173 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %174 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %175 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %174, i32 0, i32 8
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @OV511_USB_PATH_LEN, align 4
  %178 = call i64 @usb_make_path(%struct.usb_device* %173, i32 %176, i32 %177)
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %146
  %181 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %377

182:                                              ; preds = %146
  %183 = load i32, i32* @OV511_CBUF_SIZE, align 4
  %184 = load i32, i32* @GFP_KERNEL, align 4
  %185 = call %struct.usb_ov511* @kmalloc(i32 %183, i32 %184)
  %186 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %187 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %186, i32 0, i32 5
  store %struct.usb_ov511* %185, %struct.usb_ov511** %187, align 8
  %188 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %189 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %188, i32 0, i32 5
  %190 = load %struct.usb_ov511*, %struct.usb_ov511** %189, align 8
  %191 = icmp ne %struct.usb_ov511* %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %182
  br label %377

193:                                              ; preds = %182
  %194 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %195 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @BCL_OV518, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %193
  %200 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %201 = call i64 @ov518_configure(%struct.usb_ov511* %200)
  %202 = icmp slt i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  br label %377

204:                                              ; preds = %199
  br label %211

205:                                              ; preds = %193
  %206 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %207 = call i64 @ov511_configure(%struct.usb_ov511* %206)
  %208 = icmp slt i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  br label %377

210:                                              ; preds = %205
  br label %211

211:                                              ; preds = %210, %204
  store i32 0, i32* %9, align 4
  br label %212

212:                                              ; preds = %233, %211
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* @OV511_NUMFRAMES, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %236

216:                                              ; preds = %212
  %217 = load i32, i32* %9, align 4
  %218 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %219 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %218, i32 0, i32 10
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %219, align 8
  %221 = load i32, i32* %9, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  store i32 %217, i32* %224, align 4
  %225 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %226 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %225, i32 0, i32 10
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %226, align 8
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 1
  %232 = call i32 @init_waitqueue_head(i32* %231)
  br label %233

233:                                              ; preds = %216
  %234 = load i32, i32* %9, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %9, align 4
  br label %212

236:                                              ; preds = %212
  store i32 0, i32* %9, align 4
  br label %237

237:                                              ; preds = %266, %236
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* @OV511_NUMSBUF, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %269

241:                                              ; preds = %237
  %242 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %243 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %244 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %243, i32 0, i32 9
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %244, align 8
  %246 = load i32, i32* %9, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 2
  store %struct.usb_ov511* %242, %struct.usb_ov511** %249, align 8
  %250 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %251 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %250, i32 0, i32 9
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %251, align 8
  %253 = load i32, i32* %9, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 1
  %257 = call i32 @spin_lock_init(i32* %256)
  %258 = load i32, i32* %9, align 4
  %259 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %260 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %259, i32 0, i32 9
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %260, align 8
  %262 = load i32, i32* %9, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 0
  store i32 %258, i32* %265, align 8
  br label %266

266:                                              ; preds = %241
  %267 = load i32, i32* %9, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %9, align 4
  br label %237

269:                                              ; preds = %237
  %270 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %271 = call i64 @ov51x_set_default_params(%struct.usb_ov511* %270)
  %272 = icmp slt i64 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %269
  br label %377

274:                                              ; preds = %269
  %275 = call %struct.TYPE_16__* (...) @video_device_alloc()
  %276 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %277 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %276, i32 0, i32 6
  store %struct.TYPE_16__* %275, %struct.TYPE_16__** %277, align 8
  %278 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %279 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %278, i32 0, i32 6
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %279, align 8
  %281 = icmp ne %struct.TYPE_16__* %280, null
  br i1 %281, label %283, label %282

282:                                              ; preds = %274
  br label %377

283:                                              ; preds = %274
  %284 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %285 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %284, i32 0, i32 6
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %285, align 8
  %287 = call i32 @memcpy(%struct.TYPE_16__* %286, i32* @vdev_template, i32 16)
  %288 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %289 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %288, i32 0, i32 0
  %290 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %291 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %290, i32 0, i32 6
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 1
  store i32* %289, i32** %293, align 8
  %294 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %295 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %294, i32 0, i32 6
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %295, align 8
  %297 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %298 = call i32 @video_set_drvdata(%struct.TYPE_16__* %296, %struct.usb_ov511* %297)
  %299 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %300 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %299, i32 0, i32 7
  %301 = call i32 @mutex_lock(i32* %300)
  %302 = load i32, i32* @OV511_MAX_UNIT_VIDEO, align 4
  %303 = call i32 @find_first_zero_bit(i32* @ov511_devused, i32 %302)
  store i32 %303, i32* %11, align 4
  %304 = load i64*, i64** @unit_video, align 8
  %305 = load i32, i32* %11, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i64, i64* %304, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %322

310:                                              ; preds = %283
  %311 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %312 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %311, i32 0, i32 6
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %312, align 8
  %314 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %315 = load i64*, i64** @unit_video, align 8
  %316 = load i32, i32* %11, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i64, i64* %315, i64 %317
  %319 = load i64, i64* %318, align 8
  %320 = trunc i64 %319 to i32
  %321 = call i32 @video_register_device(%struct.TYPE_16__* %313, i32 %314, i32 %320)
  store i32 %321, i32* %10, align 4
  br label %328

322:                                              ; preds = %283
  %323 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %324 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %323, i32 0, i32 6
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %324, align 8
  %326 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %327 = call i32 @video_register_device(%struct.TYPE_16__* %325, i32 %326, i32 -1)
  store i32 %327, i32* %10, align 4
  br label %328

328:                                              ; preds = %322, %310
  %329 = load i32, i32* %10, align 4
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %328
  %332 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %333 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %334 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %333, i32 0, i32 7
  %335 = call i32 @mutex_unlock(i32* %334)
  br label %377

336:                                              ; preds = %328
  %337 = load i32, i32* %11, align 4
  %338 = shl i32 1, %337
  %339 = load i32, i32* @ov511_devused, align 4
  %340 = or i32 %339, %338
  store i32 %340, i32* @ov511_devused, align 4
  %341 = load i32, i32* %11, align 4
  %342 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %343 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %342, i32 0, i32 3
  store i32 %341, i32* %343, align 8
  %344 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %345 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %344, i32 0, i32 0
  %346 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %347 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %346, i32 0, i32 8
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %350 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %349, i32 0, i32 6
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %345, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %348, i32 %353)
  %355 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %356 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %357 = call i32 @usb_set_intfdata(%struct.usb_interface* %355, %struct.usb_ov511* %356)
  %358 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %359 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %358, i32 0, i32 6
  %360 = load %struct.TYPE_16__*, %struct.TYPE_16__** %359, align 8
  %361 = call i64 @ov_create_sysfs(%struct.TYPE_16__* %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %373

363:                                              ; preds = %336
  %364 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %365 = load i32, i32* %11, align 4
  %366 = shl i32 1, %365
  %367 = xor i32 %366, -1
  %368 = load i32, i32* @ov511_devused, align 4
  %369 = and i32 %368, %367
  store i32 %369, i32* @ov511_devused, align 4
  %370 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %371 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %370, i32 0, i32 7
  %372 = call i32 @mutex_unlock(i32* %371)
  br label %377

373:                                              ; preds = %336
  %374 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %375 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %374, i32 0, i32 7
  %376 = call i32 @mutex_unlock(i32* %375)
  store i32 0, i32* %3, align 4
  br label %427

377:                                              ; preds = %363, %331, %282, %273, %209, %203, %192, %180, %139, %131
  %378 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %379 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %378, i32 0, i32 6
  %380 = load %struct.TYPE_16__*, %struct.TYPE_16__** %379, align 8
  %381 = icmp ne %struct.TYPE_16__* %380, null
  br i1 %381, label %382, label %402

382:                                              ; preds = %377
  %383 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %384 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %383, i32 0, i32 6
  %385 = load %struct.TYPE_16__*, %struct.TYPE_16__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = icmp eq i32 -1, %387
  br i1 %388, label %389, label %394

389:                                              ; preds = %382
  %390 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %391 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %390, i32 0, i32 6
  %392 = load %struct.TYPE_16__*, %struct.TYPE_16__** %391, align 8
  %393 = call i32 @video_device_release(%struct.TYPE_16__* %392)
  br label %399

394:                                              ; preds = %382
  %395 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %396 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %395, i32 0, i32 6
  %397 = load %struct.TYPE_16__*, %struct.TYPE_16__** %396, align 8
  %398 = call i32 @video_unregister_device(%struct.TYPE_16__* %397)
  br label %399

399:                                              ; preds = %394, %389
  %400 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %401 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %400, i32 0, i32 6
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %401, align 8
  br label %402

402:                                              ; preds = %399, %377
  %403 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %404 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %403, i32 0, i32 5
  %405 = load %struct.usb_ov511*, %struct.usb_ov511** %404, align 8
  %406 = icmp ne %struct.usb_ov511* %405, null
  br i1 %406, label %407, label %420

407:                                              ; preds = %402
  %408 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %409 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %408, i32 0, i32 4
  %410 = call i32 @mutex_lock(i32* %409)
  %411 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %412 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %411, i32 0, i32 5
  %413 = load %struct.usb_ov511*, %struct.usb_ov511** %412, align 8
  %414 = call i32 @kfree(%struct.usb_ov511* %413)
  %415 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %416 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %415, i32 0, i32 5
  store %struct.usb_ov511* null, %struct.usb_ov511** %416, align 8
  %417 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %418 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %417, i32 0, i32 4
  %419 = call i32 @mutex_unlock(i32* %418)
  br label %420

420:                                              ; preds = %407, %402
  %421 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %422 = call i32 @kfree(%struct.usb_ov511* %421)
  store %struct.usb_ov511* null, %struct.usb_ov511** %8, align 8
  br label %423

423:                                              ; preds = %420, %47
  %424 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %425 = load i32, i32* @EIO, align 4
  %426 = sub nsw i32 0, %425
  store i32 %426, i32* %3, align 4
  br label %427

427:                                              ; preds = %423, %373, %40, %32, %20
  %428 = load i32, i32* %3, align 4
  ret i32 %428
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local %struct.usb_ov511* @kzalloc(i32, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @symbolic(i32, i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local %struct.usb_ov511* @kmalloc(i32, i32) #1

declare dso_local i64 @ov518_configure(%struct.usb_ov511*) #1

declare dso_local i64 @ov511_configure(%struct.usb_ov511*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @ov51x_set_default_params(%struct.usb_ov511*) #1

declare dso_local %struct.TYPE_16__* @video_device_alloc(...) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_16__*, %struct.usb_ov511*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32*, i32) #1

declare dso_local i32 @video_register_device(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_ov511*) #1

declare dso_local i64 @ov_create_sysfs(%struct.TYPE_16__*) #1

declare dso_local i32 @video_device_release(%struct.TYPE_16__*) #1

declare dso_local i32 @video_unregister_device(%struct.TYPE_16__*) #1

declare dso_local i32 @kfree(%struct.usb_ov511*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
