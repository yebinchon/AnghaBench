; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c_if_usb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c_if_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.lbtf_private = type { i32, i32, i32 }
%struct.if_usb_card = type { i32, %struct.lbtf_private*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.usb_device*, i32, i32 }

@LBTF_DEB_USB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@if_usb_fw_timeo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"bcdUSB = 0x%X bDeviceClass = 0x%X bDeviceSubClass = 0x%X, bDeviceProtocol = 0x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"in_endpoint = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Bulk in size is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"out_endpoint = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Bulk out size is %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Endpoints not found\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Rx URB allocation failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Tx URB allocation failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Cmd URB allocation failed\0A\00", align 1
@MRVDRV_ETH_TX_PACKET_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Could not allocate buffer\0A\00", align 1
@if_usb_host_to_card = common dso_local global i32 0, align 4
@if_usb_prog_firmware = common dso_local global i32 0, align 4
@if_usb_reset_device = common dso_local global i32 0, align 4
@LBTF_DEB_MAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @if_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.lbtf_private*, align 8
  %10 = alloca %struct.if_usb_card*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load i32, i32* @LBTF_DEB_USB, align 4
  %13 = call i32 @lbtf_deb_enter(i32 %12)
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %14)
  store %struct.usb_device* %15, %struct.usb_device** %6, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.if_usb_card* @kzalloc(i32 96, i32 %16)
  store %struct.if_usb_card* %17, %struct.if_usb_card** %10, align 8
  %18 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %19 = icmp ne %struct.if_usb_card* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %232

21:                                               ; preds = %2
  %22 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %23 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %22, i32 0, i32 12
  %24 = load i32, i32* @if_usb_fw_timeo, align 4
  %25 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %26 = ptrtoint %struct.if_usb_card* %25 to i64
  %27 = call i32 @setup_timer(i32* %23, i32 %24, i64 %26)
  %28 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %29 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %28, i32 0, i32 11
  %30 = call i32 @init_waitqueue_head(i32* %29)
  %31 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %32 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %33 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %32, i32 0, i32 10
  store %struct.usb_device* %31, %struct.usb_device** %33, align 8
  %34 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %35 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %34, i32 0, i32 0
  %36 = load %struct.usb_host_interface*, %struct.usb_host_interface** %35, align 8
  store %struct.usb_host_interface* %36, %struct.usb_host_interface** %7, align 8
  %37 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 1
  %39 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @le16_to_cpu(i32 %42)
  %44 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %45 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %49 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %53 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32*, i8*, ...) @lbtf_deb_usbd(i32* %38, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i8* %43, i32 %47, i32 %51, i32 %55)
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %127, %21
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %60 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %130

64:                                               ; preds = %57
  %65 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %66 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %71, %struct.usb_endpoint_descriptor** %8, align 8
  %72 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %73 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %64
  %76 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %77 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @le16_to_cpu(i32 %78)
  %80 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %81 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %80, i32 0, i32 6
  store i8* %79, i8** %81, align 8
  %82 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %83 = call i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor* %82)
  %84 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %85 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %84, i32 0, i32 9
  store i8* %83, i8** %85, align 8
  %86 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %87 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %86, i32 0, i32 1
  %88 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %89 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %88, i32 0, i32 9
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i32*, i8*, ...) @lbtf_deb_usbd(i32* %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %90)
  %92 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %93 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %92, i32 0, i32 1
  %94 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %95 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %94, i32 0, i32 6
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i32*, i8*, ...) @lbtf_deb_usbd(i32* %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %96)
  br label %126

98:                                               ; preds = %64
  %99 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %100 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %125

102:                                              ; preds = %98
  %103 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %104 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @le16_to_cpu(i32 %105)
  %107 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %108 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %107, i32 0, i32 7
  store i8* %106, i8** %108, align 8
  %109 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %110 = call i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor* %109)
  %111 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %112 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %111, i32 0, i32 8
  store i8* %110, i8** %112, align 8
  %113 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %114 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %113, i32 0, i32 1
  %115 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %116 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %115, i32 0, i32 8
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i32*, i8*, ...) @lbtf_deb_usbd(i32* %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %117)
  %119 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %120 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %119, i32 0, i32 1
  %121 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %122 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %121, i32 0, i32 7
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i32*, i8*, ...) @lbtf_deb_usbd(i32* %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %123)
  br label %125

125:                                              ; preds = %102, %98
  br label %126

126:                                              ; preds = %125, %75
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %57

130:                                              ; preds = %57
  %131 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %132 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %131, i32 0, i32 7
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %137 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %136, i32 0, i32 6
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %135, %130
  %141 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %142 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %141, i32 0, i32 1
  %143 = call i32 (i32*, i8*, ...) @lbtf_deb_usbd(i32* %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %229

144:                                              ; preds = %135
  %145 = load i32, i32* @GFP_KERNEL, align 4
  %146 = call i8* @usb_alloc_urb(i32 0, i32 %145)
  %147 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %148 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %147, i32 0, i32 5
  store i8* %146, i8** %148, align 8
  %149 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %150 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %149, i32 0, i32 5
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %144
  %154 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %155 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %154, i32 0, i32 1
  %156 = call i32 (i32*, i8*, ...) @lbtf_deb_usbd(i32* %155, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %229

157:                                              ; preds = %144
  %158 = load i32, i32* @GFP_KERNEL, align 4
  %159 = call i8* @usb_alloc_urb(i32 0, i32 %158)
  %160 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %161 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %160, i32 0, i32 4
  store i8* %159, i8** %161, align 8
  %162 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %163 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %162, i32 0, i32 4
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %170, label %166

166:                                              ; preds = %157
  %167 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %168 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %167, i32 0, i32 1
  %169 = call i32 (i32*, i8*, ...) @lbtf_deb_usbd(i32* %168, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %229

170:                                              ; preds = %157
  %171 = load i32, i32* @GFP_KERNEL, align 4
  %172 = call i8* @usb_alloc_urb(i32 0, i32 %171)
  %173 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %174 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %173, i32 0, i32 3
  store i8* %172, i8** %174, align 8
  %175 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %176 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %175, i32 0, i32 3
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %183, label %179

179:                                              ; preds = %170
  %180 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %181 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %180, i32 0, i32 1
  %182 = call i32 (i32*, i8*, ...) @lbtf_deb_usbd(i32* %181, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %229

183:                                              ; preds = %170
  %184 = load i32, i32* @MRVDRV_ETH_TX_PACKET_BUFFER_SIZE, align 4
  %185 = load i32, i32* @GFP_KERNEL, align 4
  %186 = call i32 @kmalloc(i32 %184, i32 %185)
  %187 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %188 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  %189 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %190 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %183
  %194 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %195 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %194, i32 0, i32 1
  %196 = call i32 (i32*, i8*, ...) @lbtf_deb_usbd(i32* %195, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %229

197:                                              ; preds = %183
  %198 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %199 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %200 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %199, i32 0, i32 1
  %201 = call %struct.lbtf_private* @lbtf_add_card(%struct.if_usb_card* %198, i32* %200)
  store %struct.lbtf_private* %201, %struct.lbtf_private** %9, align 8
  %202 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %203 = icmp ne %struct.lbtf_private* %202, null
  br i1 %203, label %205, label %204

204:                                              ; preds = %197
  br label %229

205:                                              ; preds = %197
  %206 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %207 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %208 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %207, i32 0, i32 1
  store %struct.lbtf_private* %206, %struct.lbtf_private** %208, align 8
  %209 = load i32, i32* @if_usb_host_to_card, align 4
  %210 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %211 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* @if_usb_prog_firmware, align 4
  %213 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %214 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* @if_usb_reset_device, align 4
  %216 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %217 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 4
  %218 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %219 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %223 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  %224 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %225 = call i32 @usb_get_dev(%struct.usb_device* %224)
  %226 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %227 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %228 = call i32 @usb_set_intfdata(%struct.usb_interface* %226, %struct.if_usb_card* %227)
  store i32 0, i32* %3, align 4
  br label %237

229:                                              ; preds = %204, %193, %179, %166, %153, %140
  %230 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %231 = call i32 @if_usb_free(%struct.if_usb_card* %230)
  br label %232

232:                                              ; preds = %229, %20
  %233 = load i32, i32* @LBTF_DEB_MAIN, align 4
  %234 = call i32 @lbtf_deb_leave(i32 %233)
  %235 = load i32, i32* @ENOMEM, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %3, align 4
  br label %237

237:                                              ; preds = %232, %205
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.if_usb_card* @kzalloc(i32, i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @lbtf_deb_usbd(i32*, i8*, ...) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local %struct.lbtf_private* @lbtf_add_card(%struct.if_usb_card*, i32*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.if_usb_card*) #1

declare dso_local i32 @if_usb_free(%struct.if_usb_card*) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
