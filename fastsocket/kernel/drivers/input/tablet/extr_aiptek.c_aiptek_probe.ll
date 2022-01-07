; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_aiptek.c_aiptek_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_aiptek.c_aiptek_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_12__, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.aiptek = type { i32, i32, i32, %struct.TYPE_19__*, %struct.input_dev*, %struct.TYPE_16__, %struct.usb_device*, %struct.TYPE_17__, %struct.TYPE_16__, i64, i64, i64, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.input_dev = type { i8*, i64*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_12__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32 }

@AIPTEK_PROGRAMMABLE_DELAY_50 = common dso_local global i32 0, align 4
@AIPTEK_PROGRAMMABLE_DELAY_400 = common dso_local global i32 0, align 4
@AIPTEK_PROGRAMMABLE_DELAY_25 = common dso_local global i32 0, align 4
@AIPTEK_PROGRAMMABLE_DELAY_100 = common dso_local global i32 0, align 4
@AIPTEK_PROGRAMMABLE_DELAY_200 = common dso_local global i32 0, align 4
@AIPTEK_PROGRAMMABLE_DELAY_300 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@programmableDelay = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cannot allocate memory or input device\0A\00", align 1
@AIPTEK_PACKET_LENGTH = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot allocate usb buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot allocate urb\0A\00", align 1
@AIPTEK_POINTER_EITHER_MODE = common dso_local global i32 0, align 4
@AIPTEK_COORDINATE_ABSOLUTE_MODE = common dso_local global i32 0, align 4
@AIPTEK_TOOL_BUTTON_PEN_MODE = common dso_local global i32 0, align 4
@AIPTEK_TILT_DISABLE = common dso_local global i8* null, align 8
@AIPTEK_MOUSE_LEFT_BUTTON = common dso_local global i32 0, align 4
@AIPTEK_MOUSE_MIDDLE_BUTTON = common dso_local global i32 0, align 4
@AIPTEK_MOUSE_RIGHT_BUTTON = common dso_local global i32 0, align 4
@AIPTEK_STYLUS_UPPER_BUTTON = common dso_local global i32 0, align 4
@AIPTEK_STYLUS_LOWER_BUTTON = common dso_local global i32 0, align 4
@jitterDelay = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Aiptek\00", align 1
@aiptek_open = common dso_local global i32 0, align 4
@aiptek_close = common dso_local global i32 0, align 4
@eventTypes = common dso_local global i32* null, align 8
@absEvents = common dso_local global i32* null, align 8
@relEvents = common dso_local global i32* null, align 8
@MSC_SERIAL = common dso_local global i32 0, align 4
@buttonEvents = common dso_local global i32* null, align 8
@macroKeyEvents = common dso_local global i32* null, align 8
@ABS_X = common dso_local global i64 0, align 8
@ABS_Y = common dso_local global i64 0, align 8
@ABS_PRESSURE = common dso_local global i64 0, align 8
@ABS_TILT_X = common dso_local global i64 0, align 8
@AIPTEK_TILT_MIN = common dso_local global i32 0, align 4
@AIPTEK_TILT_MAX = common dso_local global i32 0, align 4
@ABS_TILT_Y = common dso_local global i64 0, align 8
@ABS_WHEEL = common dso_local global i64 0, align 8
@AIPTEK_WHEEL_MIN = common dso_local global i32 0, align 4
@AIPTEK_WHEEL_MAX = common dso_local global i32 0, align 4
@aiptek_irq = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Aiptek using %d ms programming speed\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Aiptek tried all speeds, no sane response\0A\00", align 1
@aiptek_attribute_group = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"cannot create sysfs group err: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"input_register_device returned err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @aiptek_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aiptek_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca %struct.aiptek*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [7 x i32], align 16
  %12 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %6, align 8
  %15 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* @AIPTEK_PROGRAMMABLE_DELAY_50, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @AIPTEK_PROGRAMMABLE_DELAY_400, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @AIPTEK_PROGRAMMABLE_DELAY_25, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @AIPTEK_PROGRAMMABLE_DELAY_100, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @AIPTEK_PROGRAMMABLE_DELAY_200, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @AIPTEK_PROGRAMMABLE_DELAY_300, align 4
  store i32 %27, i32* %26, align 4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %12, align 4
  %30 = load i8*, i8** @programmableDelay, align 8
  %31 = ptrtoint i8* %30 to i32
  %32 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  store i32 %31, i32* %32, align 16
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.aiptek* @kzalloc(i32 208, i32 %33)
  store %struct.aiptek* %34, %struct.aiptek** %8, align 8
  %35 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %35, %struct.input_dev** %9, align 8
  %36 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %37 = icmp ne %struct.aiptek* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %40 = icmp ne %struct.input_dev* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %38, %2
  %42 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %43 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %42, i32 0, i32 0
  %44 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_warn(%struct.TYPE_12__* %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %453

45:                                               ; preds = %38
  %46 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %47 = load i32, i32* @AIPTEK_PACKET_LENGTH, align 4
  %48 = load i32, i32* @GFP_ATOMIC, align 4
  %49 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %50 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %49, i32 0, i32 1
  %51 = call i32 @usb_buffer_alloc(%struct.usb_device* %46, i32 %47, i32 %48, i32* %50)
  %52 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %53 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %55 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %45
  %59 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %60 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %59, i32 0, i32 0
  %61 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_warn(%struct.TYPE_12__* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %453

62:                                               ; preds = %45
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.TYPE_19__* @usb_alloc_urb(i32 0, i32 %63)
  %65 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %66 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %65, i32 0, i32 3
  store %struct.TYPE_19__* %64, %struct.TYPE_19__** %66, align 8
  %67 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %68 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %67, i32 0, i32 3
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %68, align 8
  %70 = icmp ne %struct.TYPE_19__* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %62
  %72 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %73 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %72, i32 0, i32 0
  %74 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_warn(%struct.TYPE_12__* %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %443

75:                                               ; preds = %62
  %76 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %77 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %78 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %77, i32 0, i32 4
  store %struct.input_dev* %76, %struct.input_dev** %78, align 8
  %79 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %80 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %81 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %80, i32 0, i32 6
  store %struct.usb_device* %79, %struct.usb_device** %81, align 8
  %82 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %83 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %82, i32 0, i32 1
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %90 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %89, i32 0, i32 12
  store i32 %88, i32* %90, align 8
  %91 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %92 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %91, i32 0, i32 11
  store i64 0, i64* %92, align 8
  %93 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %94 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %93, i32 0, i32 10
  store i64 0, i64* %94, align 8
  %95 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %96 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %95, i32 0, i32 9
  store i64 0, i64* %96, align 8
  %97 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %98 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %97, i32 0, i32 0
  store i32 -1, i32* %98, align 8
  %99 = load i32, i32* @AIPTEK_POINTER_EITHER_MODE, align 4
  %100 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %101 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 11
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* @AIPTEK_COORDINATE_ABSOLUTE_MODE, align 4
  %104 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %105 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 10
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @AIPTEK_TOOL_BUTTON_PEN_MODE, align 4
  %108 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %109 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 9
  store i32 %107, i32* %110, align 8
  %111 = load i8*, i8** @AIPTEK_TILT_DISABLE, align 8
  %112 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %113 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 8
  store i8* %111, i8** %114, align 8
  %115 = load i8*, i8** @AIPTEK_TILT_DISABLE, align 8
  %116 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %117 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 7
  store i8* %115, i8** %118, align 8
  %119 = load i32, i32* @AIPTEK_MOUSE_LEFT_BUTTON, align 4
  %120 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %121 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 6
  store i32 %119, i32* %122, align 8
  %123 = load i32, i32* @AIPTEK_MOUSE_MIDDLE_BUTTON, align 4
  %124 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %125 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 5
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* @AIPTEK_MOUSE_RIGHT_BUTTON, align 4
  %128 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %129 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 4
  store i32 %127, i32* %130, align 8
  %131 = load i32, i32* @AIPTEK_STYLUS_UPPER_BUTTON, align 4
  %132 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %133 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 3
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* @AIPTEK_STYLUS_LOWER_BUTTON, align 4
  %136 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %137 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  store i32 %135, i32* %138, align 8
  %139 = load i32, i32* @jitterDelay, align 4
  %140 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %141 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 4
  %143 = load i8*, i8** @programmableDelay, align 8
  %144 = ptrtoint i8* %143 to i32
  %145 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %146 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 8
  %148 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %149 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %148, i32 0, i32 8
  %150 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %151 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %150, i32 0, i32 5
  %152 = bitcast %struct.TYPE_16__* %149 to i8*
  %153 = bitcast %struct.TYPE_16__* %151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %152, i8* align 8 %153, i64 64, i1 false)
  %154 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %155 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %156 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %155, i32 0, i32 7
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @usb_make_path(%struct.usb_device* %154, i32 %158, i32 4)
  %160 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %161 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %160, i32 0, i32 7
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @strlcat(i32 %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %165 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %166 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %165, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %166, align 8
  %167 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %168 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %167, i32 0, i32 7
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %172 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %171, i32 0, i32 11
  store i32 %170, i32* %172, align 4
  %173 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %174 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %175 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %174, i32 0, i32 10
  %176 = call i32 @usb_to_input_id(%struct.usb_device* %173, i32* %175)
  %177 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %178 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %177, i32 0, i32 0
  %179 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %180 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %179, i32 0, i32 9
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  store %struct.TYPE_12__* %178, %struct.TYPE_12__** %181, align 8
  %182 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %183 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %184 = call i32 @input_set_drvdata(%struct.input_dev* %182, %struct.aiptek* %183)
  %185 = load i32, i32* @aiptek_open, align 4
  %186 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %187 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %186, i32 0, i32 8
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* @aiptek_close, align 4
  %189 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %190 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %189, i32 0, i32 7
  store i32 %188, i32* %190, align 4
  store i32 0, i32* %10, align 4
  br label %191

191:                                              ; preds = %206, %75
  %192 = load i32, i32* %10, align 4
  %193 = load i32*, i32** @eventTypes, align 8
  %194 = call i32 @ARRAY_SIZE(i32* %193)
  %195 = icmp slt i32 %192, %194
  br i1 %195, label %196, label %209

196:                                              ; preds = %191
  %197 = load i32*, i32** @eventTypes, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %203 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @__set_bit(i32 %201, i32 %204)
  br label %206

206:                                              ; preds = %196
  %207 = load i32, i32* %10, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %10, align 4
  br label %191

209:                                              ; preds = %191
  store i32 0, i32* %10, align 4
  br label %210

210:                                              ; preds = %225, %209
  %211 = load i32, i32* %10, align 4
  %212 = load i32*, i32** @absEvents, align 8
  %213 = call i32 @ARRAY_SIZE(i32* %212)
  %214 = icmp slt i32 %211, %213
  br i1 %214, label %215, label %228

215:                                              ; preds = %210
  %216 = load i32*, i32** @absEvents, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %222 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @__set_bit(i32 %220, i32 %223)
  br label %225

225:                                              ; preds = %215
  %226 = load i32, i32* %10, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %10, align 4
  br label %210

228:                                              ; preds = %210
  store i32 0, i32* %10, align 4
  br label %229

229:                                              ; preds = %244, %228
  %230 = load i32, i32* %10, align 4
  %231 = load i32*, i32** @relEvents, align 8
  %232 = call i32 @ARRAY_SIZE(i32* %231)
  %233 = icmp slt i32 %230, %232
  br i1 %233, label %234, label %247

234:                                              ; preds = %229
  %235 = load i32*, i32** @relEvents, align 8
  %236 = load i32, i32* %10, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %241 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @__set_bit(i32 %239, i32 %242)
  br label %244

244:                                              ; preds = %234
  %245 = load i32, i32* %10, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %10, align 4
  br label %229

247:                                              ; preds = %229
  %248 = load i32, i32* @MSC_SERIAL, align 4
  %249 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %250 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @__set_bit(i32 %248, i32 %251)
  store i32 0, i32* %10, align 4
  br label %253

253:                                              ; preds = %268, %247
  %254 = load i32, i32* %10, align 4
  %255 = load i32*, i32** @buttonEvents, align 8
  %256 = call i32 @ARRAY_SIZE(i32* %255)
  %257 = icmp slt i32 %254, %256
  br i1 %257, label %258, label %271

258:                                              ; preds = %253
  %259 = load i32*, i32** @buttonEvents, align 8
  %260 = load i32, i32* %10, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %265 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @__set_bit(i32 %263, i32 %266)
  br label %268

268:                                              ; preds = %258
  %269 = load i32, i32* %10, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %10, align 4
  br label %253

271:                                              ; preds = %253
  store i32 0, i32* %10, align 4
  br label %272

272:                                              ; preds = %287, %271
  %273 = load i32, i32* %10, align 4
  %274 = load i32*, i32** @macroKeyEvents, align 8
  %275 = call i32 @ARRAY_SIZE(i32* %274)
  %276 = icmp slt i32 %273, %275
  br i1 %276, label %277, label %290

277:                                              ; preds = %272
  %278 = load i32*, i32** @macroKeyEvents, align 8
  %279 = load i32, i32* %10, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %284 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @__set_bit(i32 %282, i32 %285)
  br label %287

287:                                              ; preds = %277
  %288 = load i32, i32* %10, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %10, align 4
  br label %272

290:                                              ; preds = %272
  %291 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %292 = load i64, i64* @ABS_X, align 8
  %293 = call i32 @input_set_abs_params(%struct.input_dev* %291, i64 %292, i32 0, i32 2999, i32 0, i32 0)
  %294 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %295 = load i64, i64* @ABS_Y, align 8
  %296 = call i32 @input_set_abs_params(%struct.input_dev* %294, i64 %295, i32 0, i32 2249, i32 0, i32 0)
  %297 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %298 = load i64, i64* @ABS_PRESSURE, align 8
  %299 = call i32 @input_set_abs_params(%struct.input_dev* %297, i64 %298, i32 0, i32 511, i32 0, i32 0)
  %300 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %301 = load i64, i64* @ABS_TILT_X, align 8
  %302 = load i32, i32* @AIPTEK_TILT_MIN, align 4
  %303 = load i32, i32* @AIPTEK_TILT_MAX, align 4
  %304 = call i32 @input_set_abs_params(%struct.input_dev* %300, i64 %301, i32 %302, i32 %303, i32 0, i32 0)
  %305 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %306 = load i64, i64* @ABS_TILT_Y, align 8
  %307 = load i32, i32* @AIPTEK_TILT_MIN, align 4
  %308 = load i32, i32* @AIPTEK_TILT_MAX, align 4
  %309 = call i32 @input_set_abs_params(%struct.input_dev* %305, i64 %306, i32 %307, i32 %308, i32 0, i32 0)
  %310 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %311 = load i64, i64* @ABS_WHEEL, align 8
  %312 = load i32, i32* @AIPTEK_WHEEL_MIN, align 4
  %313 = load i32, i32* @AIPTEK_WHEEL_MAX, align 4
  %314 = sub nsw i32 %313, 1
  %315 = call i32 @input_set_abs_params(%struct.input_dev* %310, i64 %311, i32 %312, i32 %314, i32 0, i32 0)
  %316 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %317 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %316, i32 0, i32 1
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i64 0
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i64 0
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %323, %struct.usb_endpoint_descriptor** %7, align 8
  %324 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %325 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %324, i32 0, i32 3
  %326 = load %struct.TYPE_19__*, %struct.TYPE_19__** %325, align 8
  %327 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %328 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %327, i32 0, i32 6
  %329 = load %struct.usb_device*, %struct.usb_device** %328, align 8
  %330 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %331 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %330, i32 0, i32 6
  %332 = load %struct.usb_device*, %struct.usb_device** %331, align 8
  %333 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %334 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @usb_rcvintpipe(%struct.usb_device* %332, i32 %335)
  %337 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %338 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* @aiptek_irq, align 4
  %341 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %342 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %343 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @usb_fill_int_urb(%struct.TYPE_19__* %326, %struct.usb_device* %329, i32 %336, i32 %339, i32 8, i32 %340, %struct.aiptek* %341, i32 %344)
  %346 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %347 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %350 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %349, i32 0, i32 3
  %351 = load %struct.TYPE_19__*, %struct.TYPE_19__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %351, i32 0, i32 1
  store i32 %348, i32* %352, align 4
  %353 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %354 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %355 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %354, i32 0, i32 3
  %356 = load %struct.TYPE_19__*, %struct.TYPE_19__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = or i32 %358, %353
  store i32 %359, i32* %357, align 4
  store i32 0, i32* %10, align 4
  br label %360

360:                                              ; preds = %393, %290
  %361 = load i32, i32* %10, align 4
  %362 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %363 = call i32 @ARRAY_SIZE(i32* %362)
  %364 = icmp slt i32 %361, %363
  br i1 %364, label %365, label %396

365:                                              ; preds = %360
  %366 = load i32, i32* %10, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %371 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %370, i32 0, i32 5
  %372 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %371, i32 0, i32 0
  store i32 %369, i32* %372, align 8
  %373 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %374 = call i32 @aiptek_program_tablet(%struct.aiptek* %373)
  %375 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %376 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %375, i32 0, i32 4
  %377 = load %struct.input_dev*, %struct.input_dev** %376, align 8
  %378 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %377, i32 0, i32 1
  %379 = load i64*, i64** %378, align 8
  %380 = load i64, i64* @ABS_X, align 8
  %381 = getelementptr inbounds i64, i64* %379, i64 %380
  %382 = load i64, i64* %381, align 8
  %383 = icmp sgt i64 %382, 0
  br i1 %383, label %384, label %392

384:                                              ; preds = %365
  %385 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %386 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %385, i32 0, i32 0
  %387 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %388 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %387, i32 0, i32 5
  %389 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_info(%struct.TYPE_12__* %386, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %390)
  br label %396

392:                                              ; preds = %365
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %10, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %10, align 4
  br label %360

396:                                              ; preds = %384, %360
  %397 = load i32, i32* %10, align 4
  %398 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %399 = call i32 @ARRAY_SIZE(i32* %398)
  %400 = icmp eq i32 %397, %399
  br i1 %400, label %401, label %405

401:                                              ; preds = %396
  %402 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %403 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %402, i32 0, i32 0
  %404 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_info(%struct.TYPE_12__* %403, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %443

405:                                              ; preds = %396
  %406 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %407 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %408 = call i32 @usb_set_intfdata(%struct.usb_interface* %406, %struct.aiptek* %407)
  %409 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %410 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %410, i32 0, i32 0
  %412 = call i32 @sysfs_create_group(i32* %411, i32* @aiptek_attribute_group)
  store i32 %412, i32* %12, align 4
  %413 = load i32, i32* %12, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %420

415:                                              ; preds = %405
  %416 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %417 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %416, i32 0, i32 0
  %418 = load i32, i32* %12, align 4
  %419 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_warn(%struct.TYPE_12__* %417, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %418)
  br label %438

420:                                              ; preds = %405
  %421 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %422 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %421, i32 0, i32 4
  %423 = load %struct.input_dev*, %struct.input_dev** %422, align 8
  %424 = call i32 @input_register_device(%struct.input_dev* %423)
  store i32 %424, i32* %12, align 4
  %425 = load i32, i32* %12, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %432

427:                                              ; preds = %420
  %428 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %429 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %428, i32 0, i32 0
  %430 = load i32, i32* %12, align 4
  %431 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_warn(%struct.TYPE_12__* %429, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %430)
  br label %433

432:                                              ; preds = %420
  store i32 0, i32* %3, align 4
  br label %461

433:                                              ; preds = %427
  %434 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %435 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %435, i32 0, i32 0
  %437 = call i32 @sysfs_remove_group(i32* %436, i32* @aiptek_attribute_group)
  br label %438

438:                                              ; preds = %433, %415
  %439 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %440 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %439, i32 0, i32 3
  %441 = load %struct.TYPE_19__*, %struct.TYPE_19__** %440, align 8
  %442 = call i32 @usb_free_urb(%struct.TYPE_19__* %441)
  br label %443

443:                                              ; preds = %438, %401, %71
  %444 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %445 = load i32, i32* @AIPTEK_PACKET_LENGTH, align 4
  %446 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %447 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 8
  %449 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %450 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 4
  %452 = call i32 @usb_buffer_free(%struct.usb_device* %444, i32 %445, i32 %448, i32 %451)
  br label %453

453:                                              ; preds = %443, %58, %41
  %454 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %455 = call i32 @usb_set_intfdata(%struct.usb_interface* %454, %struct.aiptek* null)
  %456 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %457 = call i32 @input_free_device(%struct.input_dev* %456)
  %458 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %459 = call i32 @kfree(%struct.aiptek* %458)
  %460 = load i32, i32* %12, align 4
  store i32 %460, i32* %3, align 4
  br label %461

461:                                              ; preds = %453, %432
  %462 = load i32, i32* %3, align 4
  ret i32 %462
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.aiptek* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @dev_warn(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @usb_buffer_alloc(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_19__* @usb_alloc_urb(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.aiptek*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_19__*, %struct.usb_device*, i32, i32, i32, i32, %struct.aiptek*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @aiptek_program_tablet(%struct.aiptek*) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.aiptek*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_19__*) #1

declare dso_local i32 @usb_buffer_free(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.aiptek*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
