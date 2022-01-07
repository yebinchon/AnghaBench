; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i32 }
%struct.kaweth_device = type { i8*, i8*, i8*, i32, i8*, %struct.usb_device*, i32, i8*, %struct.net_device*, i32, %struct.TYPE_6__, %struct.usb_interface*, i32*, i32, i32 }
%struct.net_device = type { i32, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64* }

@.str = private unnamed_addr constant [66 x i8] c"Kawasaki Device Probe (Device number:%d): 0x%4.4x:0x%4.4x:0x%4.4x\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Device at %p\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Descriptor length: %x type: %x\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Resetting.\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Firmware present in device.\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Downloading firmware...\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"kaweth/new_code.bin\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Error downloading firmware (%d)\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"kaweth/new_code_fix.bin\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Error downloading firmware fix (%d)\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"kaweth/trigger_code.bin\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Error downloading trigger code (%d)\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"kaweth/trigger_code_fix.bin\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"Error downloading trigger code fix (%d)\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Error triggering firmware (%d)\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Firmware loaded.  I'll be back...\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [56 x i8] c"Error reading configuration (%d), no net device created\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Statistics collection: %x\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Multicast filter limit: %x\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"MTU: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"Read MAC address %2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x\0A\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"Firmware not functioning properly, no net device created\00", align 1
@KAWETH_BUF_SIZE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [23 x i8] c"Error setting URB size\00", align 1
@KAWETH_SOFS_TO_WAIT = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [24 x i8] c"Error setting SOFS wait\00", align 1
@KAWETH_PACKET_FILTER_DIRECTED = common dso_local global i32 0, align 4
@KAWETH_PACKET_FILTER_BROADCAST = common dso_local global i32 0, align 4
@KAWETH_PACKET_FILTER_MULTICAST = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [29 x i8] c"Error setting receive filter\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Initializing net device.\00", align 1
@INTBUFFERSIZE = common dso_local global i32 0, align 4
@kaweth_netdev_ops = common dso_local global i32 0, align 4
@KAWETH_TX_TIMEOUT = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4
@kaweth_resubmit_tl = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [26 x i8] c"Error registering netdev.\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"kaweth interface created at %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"Kaweth probe returning.\00", align 1
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @kaweth_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kaweth_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.kaweth_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %11)
  store %struct.usb_device* %12, %struct.usb_device** %6, align 8
  store i64* inttoptr (i64 255 to i64*), i64** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  %21 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @le16_to_cpu(i32 %24)
  %26 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @le16_to_cpu(i32 %29)
  %31 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %20, i32 %25, i32 %30)
  %32 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %33 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.usb_device* %32)
  %34 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %43)
  %45 = call %struct.net_device* @alloc_etherdev(i32 128)
  store %struct.net_device* %45, %struct.net_device** %8, align 8
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = icmp ne %struct.net_device* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %2
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %411

51:                                               ; preds = %2
  %52 = load %struct.net_device*, %struct.net_device** %8, align 8
  %53 = call %struct.kaweth_device* @netdev_priv(%struct.net_device* %52)
  store %struct.kaweth_device* %53, %struct.kaweth_device** %7, align 8
  %54 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %55 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %56 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %55, i32 0, i32 5
  store %struct.usb_device* %54, %struct.usb_device** %56, align 8
  %57 = load %struct.net_device*, %struct.net_device** %8, align 8
  %58 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %59 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %58, i32 0, i32 8
  store %struct.net_device* %57, %struct.net_device** %59, align 8
  %60 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %61 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %60, i32 0, i32 14
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %64 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %63, i32 0, i32 13
  %65 = call i32 @init_waitqueue_head(i32* %64)
  %66 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %68 = call i32 @kaweth_reset(%struct.kaweth_device* %67)
  %69 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %70 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @le16_to_cpu(i32 %72)
  %74 = ashr i32 %73, 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %51
  %77 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %78 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %77, i32 0, i32 0
  %79 = call i32 (i32*, i8*, ...) @dev_info(i32* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %137

80:                                               ; preds = %51
  %81 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %82 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %81, i32 0, i32 0
  %83 = call i32 (i32*, i8*, ...) @dev_info(i32* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i64 @__get_free_page(i32 %84)
  %86 = inttoptr i64 %85 to i32*
  %87 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %88 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %87, i32 0, i32 12
  store i32* %86, i32** %88, align 8
  %89 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %90 = call i32 @kaweth_download_firmware(%struct.kaweth_device* %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 100, i32 2)
  store i32 %90, i32* %10, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %80
  %93 = load i32, i32* %10, align 4
  %94 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %93)
  br label %127

95:                                               ; preds = %80
  %96 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %97 = call i32 @kaweth_download_firmware(%struct.kaweth_device* %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 100, i32 3)
  store i32 %97, i32* %10, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* %10, align 4
  %101 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %100)
  br label %127

102:                                              ; preds = %95
  %103 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %104 = call i32 @kaweth_download_firmware(%struct.kaweth_device* %103, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 126, i32 2)
  store i32 %104, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32, i32* %10, align 4
  %108 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %107)
  br label %127

109:                                              ; preds = %102
  %110 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %111 = call i32 @kaweth_download_firmware(%struct.kaweth_device* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 126, i32 3)
  store i32 %111, i32* %10, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* %10, align 4
  %115 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %114)
  br label %127

116:                                              ; preds = %109
  %117 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %118 = call i32 @kaweth_trigger_firmware(%struct.kaweth_device* %117, i32 126)
  store i32 %118, i32* %10, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* %10, align 4
  %122 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %121)
  br label %127

123:                                              ; preds = %116
  %124 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %125 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %124, i32 0, i32 0
  %126 = call i32 (i32*, i8*, ...) @dev_info(i32* %125, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  br label %127

127:                                              ; preds = %123, %120, %113, %106, %99, %92
  %128 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %129 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %128, i32 0, i32 12
  %130 = load i32*, i32** %129, align 8
  %131 = ptrtoint i32* %130 to i64
  %132 = call i32 @free_page(i64 %131)
  %133 = load %struct.net_device*, %struct.net_device** %8, align 8
  %134 = call i32 @free_netdev(%struct.net_device* %133)
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %411

137:                                              ; preds = %76
  %138 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %139 = call i32 @kaweth_read_configuration(%struct.kaweth_device* %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* %10, align 4
  %144 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0), i32 %143)
  br label %406

145:                                              ; preds = %137
  %146 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %147 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %146, i32 0, i32 0
  %148 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %149 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %148, i32 0, i32 10
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i32*, i8*, ...) @dev_info(i32* %147, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 %151)
  %153 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %154 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %153, i32 0, i32 0
  %155 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %156 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %155, i32 0, i32 10
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 32767
  %160 = call i32 (i32*, i8*, ...) @dev_info(i32* %154, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 %159)
  %161 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %162 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %161, i32 0, i32 0
  %163 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %164 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %163, i32 0, i32 10
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @le16_to_cpu(i32 %166)
  %168 = call i32 (i32*, i8*, ...) @dev_info(i32* %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %167)
  %169 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %170 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %169, i32 0, i32 0
  %171 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %172 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %171, i32 0, i32 10
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 3
  %174 = load i64*, i64** %173, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 0
  %176 = load i64, i64* %175, align 8
  %177 = trunc i64 %176 to i32
  %178 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %179 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %178, i32 0, i32 10
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 3
  %181 = load i64*, i64** %180, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 1
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %186 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %185, i32 0, i32 10
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 3
  %188 = load i64*, i64** %187, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 2
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  %192 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %193 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %192, i32 0, i32 10
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 3
  %195 = load i64*, i64** %194, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 3
  %197 = load i64, i64* %196, align 8
  %198 = trunc i64 %197 to i32
  %199 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %200 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %199, i32 0, i32 10
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 3
  %202 = load i64*, i64** %201, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 4
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  %206 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %207 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %206, i32 0, i32 10
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 3
  %209 = load i64*, i64** %208, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 5
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = call i32 (i32*, i8*, ...) @dev_info(i32* %170, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i64 0, i64 0), i32 %177, i32 %184, i32 %191, i32 %198, i32 %205, i32 %212)
  %214 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %215 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %214, i32 0, i32 10
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 3
  %217 = call i32 @memcmp(i64** %216, i64** %9, i32 8)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %145
  %220 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.21, i64 0, i64 0))
  br label %406

221:                                              ; preds = %145
  %222 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %223 = load i32, i32* @KAWETH_BUF_SIZE, align 4
  %224 = call i64 @kaweth_set_urb_size(%struct.kaweth_device* %222, i32 %223)
  %225 = icmp slt i64 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0))
  br label %406

228:                                              ; preds = %221
  %229 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %230 = load i32, i32* @KAWETH_SOFS_TO_WAIT, align 4
  %231 = call i64 @kaweth_set_sofs_wait(%struct.kaweth_device* %229, i32 %230)
  %232 = icmp slt i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0))
  br label %406

235:                                              ; preds = %228
  %236 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %237 = load i32, i32* @KAWETH_PACKET_FILTER_DIRECTED, align 4
  %238 = load i32, i32* @KAWETH_PACKET_FILTER_BROADCAST, align 4
  %239 = or i32 %237, %238
  %240 = load i32, i32* @KAWETH_PACKET_FILTER_MULTICAST, align 4
  %241 = or i32 %239, %240
  %242 = call i32 @kaweth_set_receive_filter(%struct.kaweth_device* %236, i32 %241)
  store i32 %242, i32* %10, align 4
  %243 = load i32, i32* %10, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %235
  %246 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0))
  br label %406

247:                                              ; preds = %235
  %248 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0))
  %249 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %250 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %251 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %250, i32 0, i32 11
  store %struct.usb_interface* %249, %struct.usb_interface** %251, align 8
  %252 = load i32, i32* @GFP_KERNEL, align 4
  %253 = call i8* @usb_alloc_urb(i32 0, i32 %252)
  %254 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %255 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %254, i32 0, i32 0
  store i8* %253, i8** %255, align 8
  %256 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %257 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %261, label %260

260:                                              ; preds = %247
  br label %406

261:                                              ; preds = %247
  %262 = load i32, i32* @GFP_KERNEL, align 4
  %263 = call i8* @usb_alloc_urb(i32 0, i32 %262)
  %264 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %265 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %264, i32 0, i32 1
  store i8* %263, i8** %265, align 8
  %266 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %267 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %266, i32 0, i32 1
  %268 = load i8*, i8** %267, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %271, label %270

270:                                              ; preds = %261
  br label %401

271:                                              ; preds = %261
  %272 = load i32, i32* @GFP_KERNEL, align 4
  %273 = call i8* @usb_alloc_urb(i32 0, i32 %272)
  %274 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %275 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %274, i32 0, i32 2
  store i8* %273, i8** %275, align 8
  %276 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %277 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %276, i32 0, i32 2
  %278 = load i8*, i8** %277, align 8
  %279 = icmp ne i8* %278, null
  br i1 %279, label %281, label %280

280:                                              ; preds = %271
  br label %396

281:                                              ; preds = %271
  %282 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %283 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %282, i32 0, i32 5
  %284 = load %struct.usb_device*, %struct.usb_device** %283, align 8
  %285 = load i32, i32* @INTBUFFERSIZE, align 4
  %286 = load i32, i32* @GFP_KERNEL, align 4
  %287 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %288 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %287, i32 0, i32 3
  %289 = call i8* @usb_buffer_alloc(%struct.usb_device* %284, i32 %285, i32 %286, i32* %288)
  %290 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %291 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %290, i32 0, i32 4
  store i8* %289, i8** %291, align 8
  %292 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %293 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %292, i32 0, i32 4
  %294 = load i8*, i8** %293, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %297, label %296

296:                                              ; preds = %281
  br label %391

297:                                              ; preds = %281
  %298 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %299 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %298, i32 0, i32 5
  %300 = load %struct.usb_device*, %struct.usb_device** %299, align 8
  %301 = load i32, i32* @KAWETH_BUF_SIZE, align 4
  %302 = load i32, i32* @GFP_KERNEL, align 4
  %303 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %304 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %303, i32 0, i32 6
  %305 = call i8* @usb_buffer_alloc(%struct.usb_device* %300, i32 %301, i32 %302, i32* %304)
  %306 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %307 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %306, i32 0, i32 7
  store i8* %305, i8** %307, align 8
  %308 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %309 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %308, i32 0, i32 7
  %310 = load i8*, i8** %309, align 8
  %311 = icmp ne i8* %310, null
  br i1 %311, label %313, label %312

312:                                              ; preds = %297
  br label %379

313:                                              ; preds = %297
  %314 = load %struct.net_device*, %struct.net_device** %8, align 8
  %315 = getelementptr inbounds %struct.net_device, %struct.net_device* %314, i32 0, i32 6
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @memcpy(i32 %316, i64** %9, i32 8)
  %318 = load %struct.net_device*, %struct.net_device** %8, align 8
  %319 = getelementptr inbounds %struct.net_device, %struct.net_device* %318, i32 0, i32 5
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %322 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %321, i32 0, i32 10
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 3
  %324 = call i32 @memcpy(i32 %320, i64** %323, i32 8)
  %325 = load %struct.net_device*, %struct.net_device** %8, align 8
  %326 = getelementptr inbounds %struct.net_device, %struct.net_device* %325, i32 0, i32 4
  store i32* @kaweth_netdev_ops, i32** %326, align 8
  %327 = load i32, i32* @KAWETH_TX_TIMEOUT, align 4
  %328 = load %struct.net_device*, %struct.net_device** %8, align 8
  %329 = getelementptr inbounds %struct.net_device, %struct.net_device* %328, i32 0, i32 3
  store i32 %327, i32* %329, align 4
  %330 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %331 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %330, i32 0, i32 10
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @le16_to_cpu(i32 %333)
  %335 = load %struct.net_device*, %struct.net_device** %8, align 8
  %336 = getelementptr inbounds %struct.net_device, %struct.net_device* %335, i32 0, i32 0
  store i32 %334, i32* %336, align 8
  %337 = load %struct.net_device*, %struct.net_device** %8, align 8
  %338 = call i32 @SET_ETHTOOL_OPS(%struct.net_device* %337, i32* @ops)
  %339 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %340 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %339, i32 0, i32 9
  %341 = load i32, i32* @kaweth_resubmit_tl, align 4
  %342 = call i32 @INIT_DELAYED_WORK(i32* %340, i32 %341)
  %343 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %344 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %345 = call i32 @usb_set_intfdata(%struct.usb_interface* %343, %struct.kaweth_device* %344)
  %346 = load %struct.net_device*, %struct.net_device** %8, align 8
  %347 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %348 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %347, i32 0, i32 0
  %349 = call i32 @SET_NETDEV_DEV(%struct.net_device* %346, i32* %348)
  %350 = load %struct.net_device*, %struct.net_device** %8, align 8
  %351 = call i64 @register_netdev(%struct.net_device* %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %313
  %354 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0))
  br label %365

355:                                              ; preds = %313
  %356 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %357 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %356, i32 0, i32 0
  %358 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %359 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %358, i32 0, i32 8
  %360 = load %struct.net_device*, %struct.net_device** %359, align 8
  %361 = getelementptr inbounds %struct.net_device, %struct.net_device* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = call i32 (i32*, i8*, ...) @dev_info(i32* %357, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0), i32 %362)
  %364 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %411

365:                                              ; preds = %353
  %366 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %367 = call i32 @usb_set_intfdata(%struct.usb_interface* %366, %struct.kaweth_device* null)
  %368 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %369 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %368, i32 0, i32 5
  %370 = load %struct.usb_device*, %struct.usb_device** %369, align 8
  %371 = load i32, i32* @KAWETH_BUF_SIZE, align 4
  %372 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %373 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %372, i32 0, i32 7
  %374 = load i8*, i8** %373, align 8
  %375 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %376 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %375, i32 0, i32 6
  %377 = load i32, i32* %376, align 8
  %378 = call i32 @usb_buffer_free(%struct.usb_device* %370, i32 %371, i8* %374, i32 %377)
  br label %379

379:                                              ; preds = %365, %312
  %380 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %381 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %380, i32 0, i32 5
  %382 = load %struct.usb_device*, %struct.usb_device** %381, align 8
  %383 = load i32, i32* @INTBUFFERSIZE, align 4
  %384 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %385 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %384, i32 0, i32 4
  %386 = load i8*, i8** %385, align 8
  %387 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %388 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %387, i32 0, i32 3
  %389 = load i32, i32* %388, align 8
  %390 = call i32 @usb_buffer_free(%struct.usb_device* %382, i32 %383, i8* %386, i32 %389)
  br label %391

391:                                              ; preds = %379, %296
  %392 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %393 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %392, i32 0, i32 2
  %394 = load i8*, i8** %393, align 8
  %395 = call i32 @usb_free_urb(i8* %394)
  br label %396

396:                                              ; preds = %391, %280
  %397 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %398 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %397, i32 0, i32 1
  %399 = load i8*, i8** %398, align 8
  %400 = call i32 @usb_free_urb(i8* %399)
  br label %401

401:                                              ; preds = %396, %270
  %402 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  %403 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %402, i32 0, i32 0
  %404 = load i8*, i8** %403, align 8
  %405 = call i32 @usb_free_urb(i8* %404)
  br label %406

406:                                              ; preds = %401, %260, %245, %233, %226, %219, %142
  %407 = load %struct.net_device*, %struct.net_device** %8, align 8
  %408 = call i32 @free_netdev(%struct.net_device* %407)
  %409 = load i32, i32* @EIO, align 4
  %410 = sub nsw i32 0, %409
  store i32 %410, i32* %3, align 4
  br label %411

411:                                              ; preds = %406, %355, %127, %48
  %412 = load i32, i32* %3, align 4
  ret i32 %412
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.kaweth_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kaweth_reset(%struct.kaweth_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @kaweth_download_firmware(%struct.kaweth_device*, i8*, i32, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @kaweth_trigger_firmware(%struct.kaweth_device*, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @kaweth_read_configuration(%struct.kaweth_device*) #1

declare dso_local i32 @memcmp(i64**, i64**, i32) #1

declare dso_local i64 @kaweth_set_urb_size(%struct.kaweth_device*, i32) #1

declare dso_local i64 @kaweth_set_sofs_wait(%struct.kaweth_device*, i32) #1

declare dso_local i32 @kaweth_set_receive_filter(%struct.kaweth_device*, i32) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @usb_buffer_alloc(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i64**, i32) #1

declare dso_local i32 @SET_ETHTOOL_OPS(%struct.net_device*, i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.kaweth_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @usb_buffer_free(%struct.usb_device*, i32, i8*, i32) #1

declare dso_local i32 @usb_free_urb(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
