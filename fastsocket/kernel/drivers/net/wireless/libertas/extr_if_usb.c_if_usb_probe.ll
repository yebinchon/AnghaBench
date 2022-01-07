; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_if_usb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_if_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.lbs_private = type { i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.if_usb_card = type { i32, %struct.lbs_private*, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.usb_device*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Out of memory allocating private data.\0A\00", align 1
@if_usb_fw_timeo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"bcdUSB = 0x%X bDeviceClass = 0x%X bDeviceSubClass = 0x%X, bDeviceProtocol = 0x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"in_endpoint = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Bulk in size is %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"out_endpoint = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Bulk out size is %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Endpoints not found\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Rx URB allocation failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Tx URB allocation failed\0A\00", align 1
@MRVDRV_ETH_TX_PACKET_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Could not allocate buffer\0A\00", align 1
@lbs_fw_name = common dso_local global i32 0, align 4
@BOOT_CMD_FW_BY_USB = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"FW upload failed\0A\00", align 1
@if_usb_host_to_card = common dso_local global i32 0, align 4
@dev_attr_lbs_flash_fw = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [40 x i8] c"cannot register lbs_flash_fw attribute\0A\00", align 1
@dev_attr_lbs_flash_boot2 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"cannot register lbs_flash_boot2 attribute\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@if_usb_reset_olpc_card = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @if_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.lbs_private*, align 8
  %10 = alloca %struct.if_usb_card*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.if_usb_card* @kzalloc(i32 88, i32 %14)
  store %struct.if_usb_card* %15, %struct.if_usb_card** %10, align 8
  %16 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %17 = icmp ne %struct.if_usb_card* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %252

20:                                               ; preds = %2
  %21 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %22 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %21, i32 0, i32 11
  %23 = load i32, i32* @if_usb_fw_timeo, align 4
  %24 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %25 = ptrtoint %struct.if_usb_card* %24 to i64
  %26 = call i32 @setup_timer(i32* %22, i32 %23, i64 %25)
  %27 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %28 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %27, i32 0, i32 10
  %29 = call i32 @init_waitqueue_head(i32* %28)
  %30 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %31 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %32 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %31, i32 0, i32 9
  store %struct.usb_device* %30, %struct.usb_device** %32, align 8
  %33 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %34 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %33, i32 0, i32 0
  %35 = load %struct.usb_host_interface*, %struct.usb_host_interface** %34, align 8
  store %struct.usb_host_interface* %35, %struct.usb_host_interface** %7, align 8
  %36 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 1
  %38 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %39 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @le16_to_cpu(i32 %41)
  %43 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %44 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %52 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %37, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i8* %42, i32 %46, i32 %50, i32 %54)
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %126, %20
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %59 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %129

63:                                               ; preds = %56
  %64 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %65 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %70, %struct.usb_endpoint_descriptor** %8, align 8
  %71 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %72 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %63
  %75 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %76 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @le16_to_cpu(i32 %77)
  %79 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %80 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %79, i32 0, i32 5
  store i8* %78, i8** %80, align 8
  %81 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %82 = call i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor* %81)
  %83 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %84 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %83, i32 0, i32 8
  store i8* %82, i8** %84, align 8
  %85 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %86 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %85, i32 0, i32 1
  %87 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %88 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %87, i32 0, i32 8
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %89)
  %91 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %92 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %91, i32 0, i32 1
  %93 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %94 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %93, i32 0, i32 5
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %95)
  br label %125

97:                                               ; preds = %63
  %98 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %99 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %97
  %102 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %103 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @le16_to_cpu(i32 %104)
  %106 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %107 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  %108 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %109 = call i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor* %108)
  %110 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %111 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %110, i32 0, i32 7
  store i8* %109, i8** %111, align 8
  %112 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %113 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %112, i32 0, i32 1
  %114 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %115 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %114, i32 0, i32 7
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %113, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %116)
  %118 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %119 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %118, i32 0, i32 1
  %120 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %121 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %120, i32 0, i32 6
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %101, %97
  br label %125

125:                                              ; preds = %124, %74
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %56

129:                                              ; preds = %56
  %130 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %131 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %130, i32 0, i32 6
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %136 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %135, i32 0, i32 5
  %137 = load i8*, i8** %136, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %134, %129
  %140 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %141 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %140, i32 0, i32 1
  %142 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %141, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %249

143:                                              ; preds = %134
  %144 = load i32, i32* @GFP_KERNEL, align 4
  %145 = call i8* @usb_alloc_urb(i32 0, i32 %144)
  %146 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %147 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %146, i32 0, i32 4
  store i8* %145, i8** %147, align 8
  %148 = icmp ne i8* %145, null
  br i1 %148, label %153, label %149

149:                                              ; preds = %143
  %150 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %151 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %150, i32 0, i32 1
  %152 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %151, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %249

153:                                              ; preds = %143
  %154 = load i32, i32* @GFP_KERNEL, align 4
  %155 = call i8* @usb_alloc_urb(i32 0, i32 %154)
  %156 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %157 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %156, i32 0, i32 3
  store i8* %155, i8** %157, align 8
  %158 = icmp ne i8* %155, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %153
  %160 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %161 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %160, i32 0, i32 1
  %162 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %161, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %249

163:                                              ; preds = %153
  %164 = load i32, i32* @MRVDRV_ETH_TX_PACKET_BUFFER_SIZE, align 4
  %165 = load i32, i32* @GFP_KERNEL, align 4
  %166 = call i32 @kmalloc(i32 %164, i32 %165)
  %167 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %168 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %170 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %163
  %174 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %175 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %174, i32 0, i32 1
  %176 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %175, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %249

177:                                              ; preds = %163
  %178 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %179 = load i32, i32* @lbs_fw_name, align 4
  %180 = load i32, i32* @BOOT_CMD_FW_BY_USB, align 4
  %181 = call i64 @__if_usb_prog_firmware(%struct.if_usb_card* %178, i32 %179, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %185 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %184, i32 0, i32 1
  %186 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %185, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %246

187:                                              ; preds = %177
  %188 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %189 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %190 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %189, i32 0, i32 1
  %191 = call %struct.lbs_private* @lbs_add_card(%struct.if_usb_card* %188, i32* %190)
  store %struct.lbs_private* %191, %struct.lbs_private** %9, align 8
  %192 = icmp ne %struct.lbs_private* %191, null
  br i1 %192, label %194, label %193

193:                                              ; preds = %187
  br label %246

194:                                              ; preds = %187
  %195 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %196 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %197 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %196, i32 0, i32 1
  store %struct.lbs_private* %195, %struct.lbs_private** %197, align 8
  %198 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %199 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %198, i32 0, i32 1
  %200 = load %struct.lbs_private*, %struct.lbs_private** %199, align 8
  %201 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %200, i32 0, i32 0
  store i32 1, i32* %201, align 8
  %202 = load i32, i32* @if_usb_host_to_card, align 4
  %203 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %204 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 4
  %205 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %206 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %210 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %212 = call i32 @if_usb_submit_rx_urb(%struct.if_usb_card* %211)
  %213 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %214 = call i64 @lbs_start_card(%struct.lbs_private* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %194
  br label %243

217:                                              ; preds = %194
  %218 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %219 = call i32 @if_usb_setup_firmware(%struct.lbs_private* %218)
  %220 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %221 = call i32 @usb_get_dev(%struct.usb_device* %220)
  %222 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %223 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %224 = call i32 @usb_set_intfdata(%struct.usb_interface* %222, %struct.if_usb_card* %223)
  %225 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %226 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %225, i32 0, i32 1
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = call i64 @device_create_file(i32* %228, i32* @dev_attr_lbs_flash_fw)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %217
  %232 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  br label %233

233:                                              ; preds = %231, %217
  %234 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %235 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %234, i32 0, i32 1
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = call i64 @device_create_file(i32* %237, i32* @dev_attr_lbs_flash_boot2)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %233
  %241 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  br label %242

242:                                              ; preds = %240, %233
  store i32 0, i32* %3, align 4
  br label %255

243:                                              ; preds = %216
  %244 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %245 = call i32 @lbs_remove_card(%struct.lbs_private* %244)
  br label %246

246:                                              ; preds = %243, %193, %183
  %247 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %248 = call i32 @if_usb_reset_device(%struct.if_usb_card* %247)
  br label %249

249:                                              ; preds = %246, %173, %159, %149, %139
  %250 = load %struct.if_usb_card*, %struct.if_usb_card** %10, align 8
  %251 = call i32 @if_usb_free(%struct.if_usb_card* %250)
  br label %252

252:                                              ; preds = %249, %18
  %253 = load i32, i32* @ENOMEM, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %3, align 4
  br label %255

255:                                              ; preds = %252, %242
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.if_usb_card* @kzalloc(i32, i32) #1

declare dso_local i32 @lbs_pr_err(i8*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @lbs_deb_usbd(i32*, i8*, ...) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i64 @__if_usb_prog_firmware(%struct.if_usb_card*, i32, i32) #1

declare dso_local %struct.lbs_private* @lbs_add_card(%struct.if_usb_card*, i32*) #1

declare dso_local i32 @if_usb_submit_rx_urb(%struct.if_usb_card*) #1

declare dso_local i64 @lbs_start_card(%struct.lbs_private*) #1

declare dso_local i32 @if_usb_setup_firmware(%struct.lbs_private*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.if_usb_card*) #1

declare dso_local i64 @device_create_file(i32*, i32*) #1

declare dso_local i32 @lbs_remove_card(%struct.lbs_private*) #1

declare dso_local i32 @if_usb_reset_device(%struct.if_usb_card*) #1

declare dso_local i32 @if_usb_free(%struct.if_usb_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
