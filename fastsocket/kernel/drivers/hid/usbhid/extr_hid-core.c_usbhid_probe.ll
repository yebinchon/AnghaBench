; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usbhid_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usbhid_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_10__*, %struct.usb_host_interface* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.usb_host_interface = type { %struct.TYPE_12__, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i32, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i8*, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.usbhid_device = type { i32, i32, i32, i32, i32, i32, %struct.usb_interface*, %struct.hid_device* }
%struct.hid_device = type { i32, i32, %struct.usbhid_device*, i64*, i64*, i64*, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [31 x i8] c"HID probe called for ifnum %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"couldn't find an input interrupt endpoint\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@usb_hid_driver = common dso_local global i32 0, align 4
@usbhid_output_raw_report = common dso_local global i32 0, align 4
@hid_pidff_init = common dso_local global i32 0, align 4
@BUS_USB = common dso_local global i32 0, align 4
@USB_INTERFACE_PROTOCOL_MOUSE = common dso_local global i64 0, align 8
@HID_TYPE_USBMOUSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"HID %04x:%04x\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"/input\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hid_reset = common dso_local global i32 0, align 4
@__usbhid_restart_queues = common dso_local global i32 0, align 4
@hid_retry_timeout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"can't add hid device: %d\0A\00", align 1
@hiddev_connect = common dso_local global i32 0, align 4
@hiddev_disconnect = common dso_local global i32 0, align 4
@hiddev_hid_event = common dso_local global i32 0, align 4
@hiddev_report_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usbhid_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhid_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.usbhid_device*, align 8
  %9 = alloca %struct.hid_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 2
  %16 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  store %struct.usb_host_interface* %16, %struct.usb_host_interface** %6, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %18 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %17)
  store %struct.usb_device* %18, %struct.usb_device** %7, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dbg_hid(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %47, %2
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %29 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %35 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = call i64 @usb_endpoint_is_int_in(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* %11, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %43, %33
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %10, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %26

50:                                               ; preds = %26
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %55 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %54, i32 0, i32 0
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %290

59:                                               ; preds = %50
  %60 = call %struct.hid_device* (...) @hid_allocate_device()
  store %struct.hid_device* %60, %struct.hid_device** %9, align 8
  %61 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %62 = call i64 @IS_ERR(%struct.hid_device* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %66 = call i32 @PTR_ERR(%struct.hid_device* %65)
  store i32 %66, i32* %3, align 4
  br label %290

67:                                               ; preds = %59
  %68 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %69 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %70 = call i32 @usb_set_intfdata(%struct.usb_interface* %68, %struct.hid_device* %69)
  %71 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %72 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %71, i32 0, i32 15
  store i32* @usb_hid_driver, i32** %72, align 8
  %73 = load i32, i32* @usbhid_output_raw_report, align 4
  %74 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %75 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %74, i32 0, i32 14
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @hid_pidff_init, align 4
  %77 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %78 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %77, i32 0, i32 13
  store i32 %76, i32* %78, align 8
  %79 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %80 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %79, i32 0, i32 0
  %81 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %82 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %81, i32 0, i32 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32* %80, i32** %83, align 8
  %84 = load i32, i32* @BUS_USB, align 4
  %85 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %86 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 4
  %87 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %88 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @le16_to_cpu(i32 %90)
  %92 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %93 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %95 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le16_to_cpu(i32 %97)
  %99 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %100 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %102 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %101, i32 0, i32 5
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 0
  store i64 0, i64* %104, align 8
  %105 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %106 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %105, i32 0, i32 2
  %107 = load %struct.usb_host_interface*, %struct.usb_host_interface** %106, align 8
  %108 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @USB_INTERFACE_PROTOCOL_MOUSE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %67
  %114 = load i32, i32* @HID_TYPE_USBMOUSE, align 4
  %115 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %116 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %113, %67
  %118 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %119 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %117
  %123 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %124 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %123, i32 0, i32 5
  %125 = load i64*, i64** %124, align 8
  %126 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %127 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @strlcpy(i64* %125, i64 %128, i32 8)
  br label %130

130:                                              ; preds = %122, %117
  %131 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %132 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %153

135:                                              ; preds = %130
  %136 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %137 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %142 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %141, i32 0, i32 5
  %143 = load i64*, i64** %142, align 8
  %144 = call i32 @strlcat(i64* %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 8)
  br label %145

145:                                              ; preds = %140, %135
  %146 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %147 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %146, i32 0, i32 5
  %148 = load i64*, i64** %147, align 8
  %149 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %150 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @strlcat(i64* %148, i8* %151, i32 8)
  br label %153

153:                                              ; preds = %145, %130
  %154 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %155 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %154, i32 0, i32 5
  %156 = load i64*, i64** %155, align 8
  %157 = call i64 @strlen(i64* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %174, label %159

159:                                              ; preds = %153
  %160 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %161 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %160, i32 0, i32 5
  %162 = load i64*, i64** %161, align 8
  %163 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %164 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @le16_to_cpu(i32 %166)
  %168 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %169 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @le16_to_cpu(i32 %171)
  %173 = call i32 (i64*, i32, i8*, i32, ...) @snprintf(i64* %162, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %167, i32 %172)
  br label %174

174:                                              ; preds = %159, %153
  %175 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %176 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %177 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %176, i32 0, i32 4
  %178 = load i64*, i64** %177, align 8
  %179 = call i32 @usb_make_path(%struct.usb_device* %175, i64* %178, i32 8)
  %180 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %181 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %180, i32 0, i32 4
  %182 = load i64*, i64** %181, align 8
  %183 = call i32 @strlcat(i64* %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %184 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %185 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %184, i32 0, i32 4
  %186 = load i64*, i64** %185, align 8
  %187 = call i64 @strlen(i64* %186)
  store i64 %187, i64* %12, align 8
  %188 = load i64, i64* %12, align 8
  %189 = icmp ult i64 %188, 7
  br i1 %189, label %190, label %207

190:                                              ; preds = %174
  %191 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %192 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %191, i32 0, i32 4
  %193 = load i64*, i64** %192, align 8
  %194 = load i64, i64* %12, align 8
  %195 = getelementptr inbounds i64, i64* %193, i64 %194
  %196 = load i64, i64* %12, align 8
  %197 = sub i64 8, %196
  %198 = trunc i64 %197 to i32
  %199 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %200 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %199, i32 0, i32 1
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i64 0
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i64*, i32, i8*, i32, ...) @snprintf(i64* %195, i32 %198, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %190, %174
  %208 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %209 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %210 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %214 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %213, i32 0, i32 3
  %215 = load i64*, i64** %214, align 8
  %216 = call i64 @usb_string(%struct.usb_device* %208, i32 %212, i64* %215, i32 64)
  %217 = icmp sle i64 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %207
  %219 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %220 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %219, i32 0, i32 3
  %221 = load i64*, i64** %220, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 0
  store i64 0, i64* %222, align 8
  br label %223

223:                                              ; preds = %218, %207
  %224 = load i32, i32* @GFP_KERNEL, align 4
  %225 = call %struct.usbhid_device* @kzalloc(i32 40, i32 %224)
  store %struct.usbhid_device* %225, %struct.usbhid_device** %8, align 8
  %226 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %227 = icmp eq %struct.usbhid_device* %226, null
  br i1 %227, label %228, label %231

228:                                              ; preds = %223
  %229 = load i32, i32* @ENOMEM, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %13, align 4
  br label %286

231:                                              ; preds = %223
  %232 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %233 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %234 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %233, i32 0, i32 2
  store %struct.usbhid_device* %232, %struct.usbhid_device** %234, align 8
  %235 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %236 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %237 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %236, i32 0, i32 7
  store %struct.hid_device* %235, %struct.hid_device** %237, align 8
  %238 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %239 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %240 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %239, i32 0, i32 6
  store %struct.usb_interface* %238, %struct.usb_interface** %240, align 8
  %241 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %242 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %246 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %245, i32 0, i32 5
  store i32 %244, i32* %246, align 4
  %247 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %248 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %247, i32 0, i32 4
  %249 = call i32 @init_waitqueue_head(i32* %248)
  %250 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %251 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %250, i32 0, i32 3
  %252 = load i32, i32* @hid_reset, align 4
  %253 = call i32 @INIT_WORK(i32* %251, i32 %252)
  %254 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %255 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %254, i32 0, i32 2
  %256 = load i32, i32* @__usbhid_restart_queues, align 4
  %257 = call i32 @INIT_WORK(i32* %255, i32 %256)
  %258 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %259 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %258, i32 0, i32 1
  %260 = load i32, i32* @hid_retry_timeout, align 4
  %261 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %262 = ptrtoint %struct.hid_device* %261 to i64
  %263 = call i32 @setup_timer(i32* %259, i32 %260, i64 %262)
  %264 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %265 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %264, i32 0, i32 0
  %266 = call i32 @spin_lock_init(i32* %265)
  %267 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %268 = call i32 @hid_add_device(%struct.hid_device* %267)
  store i32 %268, i32* %13, align 4
  %269 = load i32, i32* %13, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %282

271:                                              ; preds = %231
  %272 = load i32, i32* %13, align 4
  %273 = load i32, i32* @ENODEV, align 4
  %274 = sub nsw i32 0, %273
  %275 = icmp ne i32 %272, %274
  br i1 %275, label %276, label %281

276:                                              ; preds = %271
  %277 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %278 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %277, i32 0, i32 0
  %279 = load i32, i32* %13, align 4
  %280 = call i32 (i32*, i8*, ...) @dev_err(i32* %278, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %279)
  br label %281

281:                                              ; preds = %276, %271
  br label %283

282:                                              ; preds = %231
  store i32 0, i32* %3, align 4
  br label %290

283:                                              ; preds = %281
  %284 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %285 = call i32 @kfree(%struct.usbhid_device* %284)
  br label %286

286:                                              ; preds = %283, %228
  %287 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %288 = call i32 @hid_destroy_device(%struct.hid_device* %287)
  %289 = load i32, i32* %13, align 4
  store i32 %289, i32* %3, align 4
  br label %290

290:                                              ; preds = %286, %282, %64, %53
  %291 = load i32, i32* %3, align 4
  ret i32 %291
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dbg_hid(i8*, i32) #1

declare dso_local i64 @usb_endpoint_is_int_in(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.hid_device* @hid_allocate_device(...) #1

declare dso_local i64 @IS_ERR(%struct.hid_device*) #1

declare dso_local i32 @PTR_ERR(%struct.hid_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.hid_device*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @strlcpy(i64*, i64, i32) #1

declare dso_local i32 @strlcat(i64*, i8*, i32) #1

declare dso_local i64 @strlen(i64*) #1

declare dso_local i32 @snprintf(i64*, i32, i8*, i32, ...) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i64*, i32) #1

declare dso_local i64 @usb_string(%struct.usb_device*, i32, i64*, i32) #1

declare dso_local %struct.usbhid_device* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hid_add_device(%struct.hid_device*) #1

declare dso_local i32 @kfree(%struct.usbhid_device*) #1

declare dso_local i32 @hid_destroy_device(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
