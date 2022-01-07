; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rndis_host.c_generic_rndis_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rndis_host.c_generic_rndis_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i64, i32, i32, %struct.TYPE_2__*, i32, i32, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i64 (%struct.usbnet*)* }
%struct.net_device = type { i64, i64, i32, i32, i32* }
%struct.usb_interface = type { i32 }
%struct.cdc_state = type { i32* }
%union.anon = type { i8* }
%struct.rndis_init = type { i8*, i8*, i8*, i8*, i32 }
%struct.rndis_msg_hdr = type opaque
%struct.rndis_init_c = type { i32, i32 }
%struct.rndis_set = type { i8*, i32, i8*, i8*, i32 }
%struct.rndis_halt = type { i8*, i32, i8*, i8*, i32 }

@CONTROL_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RNDIS_MSG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"dev->maxpacket can't be 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@rndis_netdev_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"RNDIS init failed, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"dev can't take %u byte packets (max %u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"dev can't take %u byte packets (max %u), adjusting MTU to %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"hard mtu %u (%u from dev), rx buflen %Zu, align %d\0A\00", align 1
@OID_GEN_PHYSICAL_MEDIUM = common dso_local global i32 0, align 4
@RNDIS_PHYSICAL_MEDIUM_UNSPECIFIED = common dso_local global i64 0, align 8
@FLAG_RNDIS_PHYM_WIRELESS = common dso_local global i32 0, align 4
@RNDIS_PHYSICAL_MEDIUM_WIRELESS_LAN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [62 x i8] c"driver requires wireless physical medium, but device is not.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@FLAG_RNDIS_PHYM_NOT_WIRELESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [71 x i8] c"driver requires non-wireless physical medium, but device is wireless.\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@OID_802_3_PERMANENT_ADDRESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"rndis get ethaddr, %d\0A\00", align 1
@RNDIS_MSG_SET = common dso_local global i32 0, align 4
@OID_GEN_CURRENT_PACKET_FILTER = common dso_local global i32 0, align 4
@RNDIS_DEFAULT_FILTER = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"rndis set packet filter, %d\0A\00", align 1
@RNDIS_MSG_HALT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_rndis_bind(%struct.usbnet* %0, %struct.usb_interface* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.cdc_state*, align 8
  %11 = alloca %union.anon, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 7
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %9, align 8
  %20 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %21 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %20, i32 0, i32 6
  %22 = bitcast i32* %21 to i8*
  %23 = bitcast i8* %22 to %struct.cdc_state*
  store %struct.cdc_state* %23, %struct.cdc_state** %10, align 8
  %24 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kmalloc(i32 %24, i32 %25)
  %27 = bitcast %union.anon* %11 to i8**
  store i8* %26, i8** %27, align 8
  %28 = bitcast %union.anon* %11 to i8**
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %403

34:                                               ; preds = %3
  %35 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %36 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %37 = call i32 @usbnet_generic_cdc_bind(%struct.usbnet* %35, %struct.usb_interface* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %398

41:                                               ; preds = %34
  %42 = load i32, i32* @RNDIS_MSG_INIT, align 4
  %43 = bitcast %union.anon* %11 to %struct.rndis_init**
  %44 = load %struct.rndis_init*, %struct.rndis_init** %43, align 8
  %45 = getelementptr inbounds %struct.rndis_init, %struct.rndis_init* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 8
  %46 = call i8* @cpu_to_le32(i32 40)
  %47 = bitcast %union.anon* %11 to %struct.rndis_init**
  %48 = load %struct.rndis_init*, %struct.rndis_init** %47, align 8
  %49 = getelementptr inbounds %struct.rndis_init, %struct.rndis_init* %48, i32 0, i32 3
  store i8* %46, i8** %49, align 8
  %50 = call i8* @cpu_to_le32(i32 1)
  %51 = bitcast %union.anon* %11 to %struct.rndis_init**
  %52 = load %struct.rndis_init*, %struct.rndis_init** %51, align 8
  %53 = getelementptr inbounds %struct.rndis_init, %struct.rndis_init* %52, i32 0, i32 2
  store i8* %50, i8** %53, align 8
  %54 = call i8* @cpu_to_le32(i32 0)
  %55 = bitcast %union.anon* %11 to %struct.rndis_init**
  %56 = load %struct.rndis_init*, %struct.rndis_init** %55, align 8
  %57 = getelementptr inbounds %struct.rndis_init, %struct.rndis_init* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  %58 = load %struct.net_device*, %struct.net_device** %9, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %59, align 8
  %62 = load %struct.net_device*, %struct.net_device** %9, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.net_device*, %struct.net_device** %9, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %70 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %72 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %75 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @usb_maxpacket(i32 %73, i32 %76, i32 1)
  %78 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %79 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %81 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %41
  %85 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %86 = call i64 @netif_msg_probe(%struct.usbnet* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %90 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %89, i32 0, i32 0
  %91 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %84
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  br label %385

95:                                               ; preds = %41
  %96 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %97 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %100 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %98, %103
  %105 = trunc i64 %104 to i32
  %106 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %107 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %109 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 1
  %112 = xor i32 %111, -1
  %113 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %114 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %118 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @cpu_to_le32(i32 %119)
  %121 = bitcast %union.anon* %11 to %struct.rndis_init**
  %122 = load %struct.rndis_init*, %struct.rndis_init** %121, align 8
  %123 = getelementptr inbounds %struct.rndis_init, %struct.rndis_init* %122, i32 0, i32 0
  store i8* %120, i8** %123, align 8
  %124 = load %struct.net_device*, %struct.net_device** %9, align 8
  %125 = getelementptr inbounds %struct.net_device, %struct.net_device* %124, i32 0, i32 4
  store i32* @rndis_netdev_ops, i32** %125, align 8
  %126 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %127 = bitcast %union.anon* %11 to %struct.rndis_msg_hdr**
  %128 = load %struct.rndis_msg_hdr*, %struct.rndis_msg_hdr** %127, align 8
  %129 = bitcast %struct.rndis_msg_hdr* %128 to i8*
  %130 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %131 = call i32 @rndis_command(%struct.usbnet* %126, i8* %129, i32 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %95
  %138 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %139 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %138, i32 0, i32 0
  %140 = load i32, i32* %8, align 4
  %141 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  br label %385

142:                                              ; preds = %95
  %143 = bitcast %union.anon* %11 to %struct.rndis_init_c**
  %144 = load %struct.rndis_init_c*, %struct.rndis_init_c** %143, align 8
  %145 = getelementptr inbounds %struct.rndis_init_c, %struct.rndis_init_c* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @le32_to_cpu(i32 %146)
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %12, align 8
  %149 = load i64, i64* %12, align 8
  %150 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %151 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp slt i64 %149, %152
  br i1 %153, label %154, label %196

154:                                              ; preds = %142
  %155 = load i64, i64* %12, align 8
  %156 = load %struct.net_device*, %struct.net_device** %9, align 8
  %157 = getelementptr inbounds %struct.net_device, %struct.net_device* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp sle i64 %155, %158
  br i1 %159, label %160, label %171

160:                                              ; preds = %154
  %161 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %162 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %161, i32 0, i32 0
  %163 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %164 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = load i64, i64* %12, align 8
  %168 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %162, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %166, i64 %167)
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %8, align 4
  br label %366

171:                                              ; preds = %154
  %172 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %173 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %172, i32 0, i32 0
  %174 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %175 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %12, align 8
  %178 = load i64, i64* %12, align 8
  %179 = load %struct.net_device*, %struct.net_device** %9, align 8
  %180 = getelementptr inbounds %struct.net_device, %struct.net_device* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = sub nsw i64 %178, %181
  %183 = call i32 @dev_warn(i32* %173, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i64 %176, i64 %177, i64 %182)
  %184 = load i64, i64* %12, align 8
  %185 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %186 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  %187 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %188 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.net_device*, %struct.net_device** %9, align 8
  %191 = getelementptr inbounds %struct.net_device, %struct.net_device* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = sub nsw i64 %189, %192
  %194 = load %struct.net_device*, %struct.net_device** %9, align 8
  %195 = getelementptr inbounds %struct.net_device, %struct.net_device* %194, i32 0, i32 1
  store i64 %193, i64* %195, align 8
  br label %196

196:                                              ; preds = %171, %142
  %197 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %198 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %197, i32 0, i32 0
  %199 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %200 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %12, align 8
  %203 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %204 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = bitcast %union.anon* %11 to %struct.rndis_init_c**
  %207 = load %struct.rndis_init_c*, %struct.rndis_init_c** %206, align 8
  %208 = getelementptr inbounds %struct.rndis_init_c, %struct.rndis_init_c* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @le32_to_cpu(i32 %209)
  %211 = shl i32 1, %210
  %212 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %198, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %201, i64 %202, i32 %205, i32 %211)
  %213 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %214 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %213, i32 0, i32 3
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = load i64 (%struct.usbnet*)*, i64 (%struct.usbnet*)** %216, align 8
  %218 = icmp ne i64 (%struct.usbnet*)* %217, null
  br i1 %218, label %219, label %229

219:                                              ; preds = %196
  %220 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %221 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %220, i32 0, i32 3
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load i64 (%struct.usbnet*)*, i64 (%struct.usbnet*)** %223, align 8
  %225 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %226 = call i64 %224(%struct.usbnet* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %219
  br label %366

229:                                              ; preds = %219, %196
  store i64* null, i64** %14, align 8
  store i32 8, i32* %15, align 4
  %230 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %231 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %232 = bitcast %union.anon* %11 to i8**
  %233 = load i8*, i8** %232, align 8
  %234 = load i32, i32* @OID_GEN_PHYSICAL_MEDIUM, align 4
  %235 = bitcast i64** %14 to i8**
  %236 = call i32 @rndis_query(%struct.usbnet* %230, %struct.usb_interface* %231, i8* %233, i32 %234, i32 0, i8** %235, i32* %15)
  store i32 %236, i32* %8, align 4
  %237 = load i32, i32* %8, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %229
  %240 = load i64*, i64** %14, align 8
  %241 = icmp ne i64* %240, null
  br i1 %241, label %244, label %242

242:                                              ; preds = %239, %229
  %243 = load i64, i64* @RNDIS_PHYSICAL_MEDIUM_UNSPECIFIED, align 8
  store i64 %243, i64* %13, align 8
  store i64* %13, i64** %14, align 8
  br label %244

244:                                              ; preds = %242, %239
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* @FLAG_RNDIS_PHYM_WIRELESS, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %265

249:                                              ; preds = %244
  %250 = load i64*, i64** %14, align 8
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @RNDIS_PHYSICAL_MEDIUM_WIRELESS_LAN, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %265

254:                                              ; preds = %249
  %255 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %256 = call i64 @netif_msg_probe(%struct.usbnet* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %254
  %259 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %260 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %259, i32 0, i32 0
  %261 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %260, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0))
  br label %262

262:                                              ; preds = %258, %254
  %263 = load i32, i32* @ENODEV, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %8, align 4
  br label %366

265:                                              ; preds = %249, %244
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* @FLAG_RNDIS_PHYM_NOT_WIRELESS, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %286

270:                                              ; preds = %265
  %271 = load i64*, i64** %14, align 8
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @RNDIS_PHYSICAL_MEDIUM_WIRELESS_LAN, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %286

275:                                              ; preds = %270
  %276 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %277 = call i64 @netif_msg_probe(%struct.usbnet* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %275
  %280 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %281 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %280, i32 0, i32 0
  %282 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %281, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0))
  br label %283

283:                                              ; preds = %279, %275
  %284 = load i32, i32* @ENODEV, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %8, align 4
  br label %366

286:                                              ; preds = %270, %265
  %287 = load i32, i32* @ETH_ALEN, align 4
  store i32 %287, i32* %15, align 4
  %288 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %289 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %290 = bitcast %union.anon* %11 to i8**
  %291 = load i8*, i8** %290, align 8
  %292 = load i32, i32* @OID_802_3_PERMANENT_ADDRESS, align 4
  %293 = call i32 @rndis_query(%struct.usbnet* %288, %struct.usb_interface* %289, i8* %291, i32 %292, i32 48, i8** %16, i32* %15)
  store i32 %293, i32* %8, align 4
  %294 = load i32, i32* %8, align 4
  %295 = icmp slt i32 %294, 0
  %296 = zext i1 %295 to i32
  %297 = call i64 @unlikely(i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %286
  %300 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %301 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %300, i32 0, i32 0
  %302 = load i32, i32* %8, align 4
  %303 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %301, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %302)
  br label %366

304:                                              ; preds = %286
  %305 = load %struct.net_device*, %struct.net_device** %9, align 8
  %306 = getelementptr inbounds %struct.net_device, %struct.net_device* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 4
  %308 = load i8*, i8** %16, align 8
  %309 = load i32, i32* @ETH_ALEN, align 4
  %310 = call i32 @memcpy(i32 %307, i8* %308, i32 %309)
  %311 = load %struct.net_device*, %struct.net_device** %9, align 8
  %312 = getelementptr inbounds %struct.net_device, %struct.net_device* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = load i8*, i8** %16, align 8
  %315 = load i32, i32* @ETH_ALEN, align 4
  %316 = call i32 @memcpy(i32 %313, i8* %314, i32 %315)
  %317 = bitcast %union.anon* %11 to %struct.rndis_set**
  %318 = load %struct.rndis_set*, %struct.rndis_set** %317, align 8
  %319 = call i32 @memset(%struct.rndis_set* %318, i32 0, i32 40)
  %320 = load i32, i32* @RNDIS_MSG_SET, align 4
  %321 = bitcast %union.anon* %11 to %struct.rndis_set**
  %322 = load %struct.rndis_set*, %struct.rndis_set** %321, align 8
  %323 = getelementptr inbounds %struct.rndis_set, %struct.rndis_set* %322, i32 0, i32 1
  store i32 %320, i32* %323, align 8
  %324 = call i8* @cpu_to_le32(i32 44)
  %325 = bitcast %union.anon* %11 to %struct.rndis_set**
  %326 = load %struct.rndis_set*, %struct.rndis_set** %325, align 8
  %327 = getelementptr inbounds %struct.rndis_set, %struct.rndis_set* %326, i32 0, i32 0
  store i8* %324, i8** %327, align 8
  %328 = load i32, i32* @OID_GEN_CURRENT_PACKET_FILTER, align 4
  %329 = bitcast %union.anon* %11 to %struct.rndis_set**
  %330 = load %struct.rndis_set*, %struct.rndis_set** %329, align 8
  %331 = getelementptr inbounds %struct.rndis_set, %struct.rndis_set* %330, i32 0, i32 4
  store i32 %328, i32* %331, align 8
  %332 = call i8* @cpu_to_le32(i32 4)
  %333 = bitcast %union.anon* %11 to %struct.rndis_set**
  %334 = load %struct.rndis_set*, %struct.rndis_set** %333, align 8
  %335 = getelementptr inbounds %struct.rndis_set, %struct.rndis_set* %334, i32 0, i32 3
  store i8* %332, i8** %335, align 8
  %336 = call i8* @cpu_to_le32(i32 32)
  %337 = bitcast %union.anon* %11 to %struct.rndis_set**
  %338 = load %struct.rndis_set*, %struct.rndis_set** %337, align 8
  %339 = getelementptr inbounds %struct.rndis_set, %struct.rndis_set* %338, i32 0, i32 2
  store i8* %336, i8** %339, align 8
  %340 = load i64, i64* @RNDIS_DEFAULT_FILTER, align 8
  %341 = bitcast %union.anon* %11 to i8**
  %342 = load i8*, i8** %341, align 8
  %343 = getelementptr i8, i8* %342, i64 40
  %344 = bitcast i8* %343 to i64*
  store i64 %340, i64* %344, align 8
  %345 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %346 = bitcast %union.anon* %11 to %struct.rndis_msg_hdr**
  %347 = load %struct.rndis_msg_hdr*, %struct.rndis_msg_hdr** %346, align 8
  %348 = bitcast %struct.rndis_msg_hdr* %347 to i8*
  %349 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %350 = call i32 @rndis_command(%struct.usbnet* %345, i8* %348, i32 %349)
  store i32 %350, i32* %8, align 4
  %351 = load i32, i32* %8, align 4
  %352 = icmp slt i32 %351, 0
  %353 = zext i1 %352 to i32
  %354 = call i64 @unlikely(i32 %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %304
  %357 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %358 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %357, i32 0, i32 0
  %359 = load i32, i32* %8, align 4
  %360 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %358, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %359)
  br label %366

361:                                              ; preds = %304
  store i32 0, i32* %8, align 4
  %362 = bitcast %union.anon* %11 to i8**
  %363 = load i8*, i8** %362, align 8
  %364 = call i32 @kfree(i8* %363)
  %365 = load i32, i32* %8, align 4
  store i32 %365, i32* %4, align 4
  br label %403

366:                                              ; preds = %356, %299, %283, %262, %228, %160
  %367 = bitcast %union.anon* %11 to %struct.rndis_halt**
  %368 = load %struct.rndis_halt*, %struct.rndis_halt** %367, align 8
  %369 = bitcast %struct.rndis_halt* %368 to %struct.rndis_set*
  %370 = call i32 @memset(%struct.rndis_set* %369, i32 0, i32 40)
  %371 = load i32, i32* @RNDIS_MSG_HALT, align 4
  %372 = bitcast %union.anon* %11 to %struct.rndis_halt**
  %373 = load %struct.rndis_halt*, %struct.rndis_halt** %372, align 8
  %374 = getelementptr inbounds %struct.rndis_halt, %struct.rndis_halt* %373, i32 0, i32 1
  store i32 %371, i32* %374, align 8
  %375 = call i8* @cpu_to_le32(i32 40)
  %376 = bitcast %union.anon* %11 to %struct.rndis_halt**
  %377 = load %struct.rndis_halt*, %struct.rndis_halt** %376, align 8
  %378 = getelementptr inbounds %struct.rndis_halt, %struct.rndis_halt* %377, i32 0, i32 0
  store i8* %375, i8** %378, align 8
  %379 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %380 = bitcast %union.anon* %11 to %struct.rndis_halt**
  %381 = load %struct.rndis_halt*, %struct.rndis_halt** %380, align 8
  %382 = bitcast %struct.rndis_halt* %381 to i8*
  %383 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %384 = call i32 @rndis_command(%struct.usbnet* %379, i8* %382, i32 %383)
  br label %385

385:                                              ; preds = %366, %137, %92
  %386 = load %struct.cdc_state*, %struct.cdc_state** %10, align 8
  %387 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %386, i32 0, i32 0
  %388 = load i32*, i32** %387, align 8
  %389 = call i32 @usb_set_intfdata(i32* %388, i32* null)
  %390 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %391 = call i32 @driver_of(%struct.usb_interface* %390)
  %392 = load %struct.cdc_state*, %struct.cdc_state** %10, align 8
  %393 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %392, i32 0, i32 0
  %394 = load i32*, i32** %393, align 8
  %395 = call i32 @usb_driver_release_interface(i32 %391, i32* %394)
  %396 = load %struct.cdc_state*, %struct.cdc_state** %10, align 8
  %397 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %396, i32 0, i32 0
  store i32* null, i32** %397, align 8
  br label %398

398:                                              ; preds = %385, %40
  %399 = bitcast %union.anon* %11 to i8**
  %400 = load i8*, i8** %399, align 8
  %401 = call i32 @kfree(i8* %400)
  %402 = load i32, i32* %8, align 4
  store i32 %402, i32* %4, align 4
  br label %403

403:                                              ; preds = %398, %361, %31
  %404 = load i32, i32* %4, align 4
  ret i32 %404
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usbnet_generic_cdc_bind(%struct.usbnet*, %struct.usb_interface*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @usb_maxpacket(i32, i32, i32) #1

declare dso_local i64 @netif_msg_probe(%struct.usbnet*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @rndis_command(%struct.usbnet*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64, i64, i64) #1

declare dso_local i32 @rndis_query(%struct.usbnet*, %struct.usb_interface*, i8*, i32, i32, i8**, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.rndis_set*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_set_intfdata(i32*, i32*) #1

declare dso_local i32 @usb_driver_release_interface(i32, i32*) #1

declare dso_local i32 @driver_of(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
