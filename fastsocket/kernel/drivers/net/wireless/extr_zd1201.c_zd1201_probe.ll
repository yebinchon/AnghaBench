; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.zd1201 = type { i32, i32, i32, i8*, i8*, i64, i32, i32, i64, %struct.usb_device*, %struct.net_device* }
%struct.usb_device = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i32*, i32* }

@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ap = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"zd1201 firmware upload failed: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ZD1201_RID_CNFMAXDATALEN = common dso_local global i32 0, align 4
@ZD1201_RID_TXRATECNTL = common dso_local global i32 0, align 4
@ZD1201_RATEB1 = common dso_local global i16 0, align 2
@ZD1201_RATEB2 = common dso_local global i16 0, align 2
@ZD1201_RATEB5 = common dso_local global i16 0, align 2
@ZD1201_RATEB11 = common dso_local global i16 0, align 2
@zd1201_netdev_ops = common dso_local global i32 0, align 4
@zd1201_iw_handlers = common dso_local global i32 0, align 4
@ZD1201_TX_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"wlan%d\00", align 1
@ZD1201_RID_CNFOWNMACADDR = common dso_local global i32 0, align 4
@ZD1201_RID_CNFDESIREDSSID = common dso_local global i32 0, align 4
@ZD1201_PORTTYPE_AP = common dso_local global i16 0, align 2
@ZD1201_PORTTYPE_BSS = common dso_local global i16 0, align 2
@ZD1201_RID_CNFPORTTYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: ZD1201 USB Wireless interface\0A\00", align 1
@ZD1201_CMDCODE_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @zd1201_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.zd1201*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %14 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %15 = add nsw i32 %14, 2
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %19)
  store %struct.usb_device* %20, %struct.usb_device** %8, align 8
  %21 = call %struct.net_device* @alloc_etherdev(i32 72)
  store %struct.net_device* %21, %struct.net_device** %7, align 8
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = icmp ne %struct.net_device* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %209

27:                                               ; preds = %2
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = call %struct.zd1201* @netdev_priv(%struct.net_device* %28)
  store %struct.zd1201* %29, %struct.zd1201** %6, align 8
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %32 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %31, i32 0, i32 10
  store %struct.net_device* %30, %struct.net_device** %32, align 8
  %33 = load i64, i64* @ap, align 8
  %34 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %35 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %34, i32 0, i32 5
  store i64 %33, i64* %35, align 8
  %36 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %37 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %38 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %37, i32 0, i32 9
  store %struct.usb_device* %36, %struct.usb_device** %38, align 8
  %39 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %40 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %39, i32 0, i32 8
  store i64 0, i64* %40, align 8
  %41 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %42 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %41, i32 0, i32 7
  %43 = call i32 @init_waitqueue_head(i32* %42)
  %44 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %45 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %44, i32 0, i32 6
  %46 = call i32 @INIT_HLIST_HEAD(i32* %45)
  %47 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %48 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %49 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @zd1201_fw_upload(%struct.usb_device* %47, i64 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %27
  %55 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %56 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %55, i32 0, i32 0
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %197

59:                                               ; preds = %27
  %60 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %61 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %63 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %65 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %64, i32 0, i32 2
  store i32 2, i32* %65, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i8* @usb_alloc_urb(i32 0, i32 %66)
  %68 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %69 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i8* @usb_alloc_urb(i32 0, i32 %70)
  %72 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %73 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %75 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %59
  %79 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %80 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %79, i32 0, i32 4
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %78, %59
  br label %197

84:                                               ; preds = %78
  %85 = call i32 @mdelay(i32 100)
  %86 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %87 = call i32 @zd1201_drvr_start(%struct.zd1201* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %197

91:                                               ; preds = %84
  %92 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %93 = load i32, i32* @ZD1201_RID_CNFMAXDATALEN, align 4
  %94 = call i32 @zd1201_setconfig16(%struct.zd1201* %92, i32 %93, i16 signext 2312)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %193

98:                                               ; preds = %91
  %99 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %100 = load i32, i32* @ZD1201_RID_TXRATECNTL, align 4
  %101 = load i16, i16* @ZD1201_RATEB1, align 2
  %102 = sext i16 %101 to i32
  %103 = load i16, i16* @ZD1201_RATEB2, align 2
  %104 = sext i16 %103 to i32
  %105 = or i32 %102, %104
  %106 = load i16, i16* @ZD1201_RATEB5, align 2
  %107 = sext i16 %106 to i32
  %108 = or i32 %105, %107
  %109 = load i16, i16* @ZD1201_RATEB11, align 2
  %110 = sext i16 %109 to i32
  %111 = or i32 %108, %110
  %112 = trunc i32 %111 to i16
  %113 = call i32 @zd1201_setconfig16(%struct.zd1201* %99, i32 %100, i16 signext %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %98
  br label %193

117:                                              ; preds = %98
  %118 = load %struct.net_device*, %struct.net_device** %7, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 5
  store i32* @zd1201_netdev_ops, i32** %119, align 8
  %120 = load %struct.net_device*, %struct.net_device** %7, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 4
  store i32* @zd1201_iw_handlers, i32** %121, align 8
  %122 = load i32, i32* @ZD1201_TX_TIMEOUT, align 4
  %123 = load %struct.net_device*, %struct.net_device** %7, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.net_device*, %struct.net_device** %7, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @strcpy(i32 %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %129 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %130 = load i32, i32* @ZD1201_RID_CNFOWNMACADDR, align 4
  %131 = load %struct.net_device*, %struct.net_device** %7, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.net_device*, %struct.net_device** %7, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @zd1201_getconfig(%struct.zd1201* %129, i32 %130, i32 %133, i32 %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %117
  br label %193

141:                                              ; preds = %117
  %142 = call i32 @cpu_to_le16(i32 0)
  %143 = bitcast i8* %18 to i32*
  store i32 %142, i32* %143, align 16
  %144 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %145 = load i32, i32* @ZD1201_RID_CNFDESIREDSSID, align 4
  %146 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %147 = add nsw i32 %146, 2
  %148 = call i32 @zd1201_setconfig(%struct.zd1201* %144, i32 %145, i8* %18, i32 %147, i32 1)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %141
  br label %193

152:                                              ; preds = %141
  %153 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %154 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i16, i16* @ZD1201_PORTTYPE_AP, align 2
  store i16 %158, i16* %10, align 2
  br label %161

159:                                              ; preds = %152
  %160 = load i16, i16* @ZD1201_PORTTYPE_BSS, align 2
  store i16 %160, i16* %10, align 2
  br label %161

161:                                              ; preds = %159, %157
  %162 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %163 = load i32, i32* @ZD1201_RID_CNFPORTTYPE, align 4
  %164 = load i16, i16* %10, align 2
  %165 = call i32 @zd1201_setconfig16(%struct.zd1201* %162, i32 %163, i16 signext %164)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  br label %193

169:                                              ; preds = %161
  %170 = load %struct.net_device*, %struct.net_device** %7, align 8
  %171 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %172 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %171, i32 0, i32 0
  %173 = call i32 @SET_NETDEV_DEV(%struct.net_device* %170, i32* %172)
  %174 = load %struct.net_device*, %struct.net_device** %7, align 8
  %175 = call i32 @register_netdev(%struct.net_device* %174)
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %169
  br label %193

179:                                              ; preds = %169
  %180 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %181 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %180, i32 0, i32 0
  %182 = load %struct.net_device*, %struct.net_device** %7, align 8
  %183 = getelementptr inbounds %struct.net_device, %struct.net_device* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @dev_info(i32* %181, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %184)
  %186 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %187 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %188 = call i32 @usb_set_intfdata(%struct.usb_interface* %186, %struct.zd1201* %187)
  %189 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %190 = call i32 @zd1201_enable(%struct.zd1201* %189)
  %191 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %192 = call i32 @zd1201_disable(%struct.zd1201* %191)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %209

193:                                              ; preds = %178, %168, %151, %140, %116, %97
  %194 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %195 = load i32, i32* @ZD1201_CMDCODE_INIT, align 4
  %196 = call i32 @zd1201_docmd(%struct.zd1201* %194, i32 %195, i32 0, i32 0, i32 0)
  br label %197

197:                                              ; preds = %193, %90, %83, %54
  %198 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %199 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %198, i32 0, i32 4
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @usb_free_urb(i8* %200)
  %202 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %203 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %202, i32 0, i32 3
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @usb_free_urb(i8* %204)
  %206 = load %struct.net_device*, %struct.net_device** %7, align 8
  %207 = call i32 @free_netdev(%struct.net_device* %206)
  %208 = load i32, i32* %9, align 4
  store i32 %208, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %209

209:                                              ; preds = %197, %179, %24
  %210 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %210)
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #2

declare dso_local %struct.net_device* @alloc_etherdev(i32) #2

declare dso_local %struct.zd1201* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @init_waitqueue_head(i32*) #2

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #2

declare dso_local i32 @zd1201_fw_upload(%struct.usb_device*, i64) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i8* @usb_alloc_urb(i32, i32) #2

declare dso_local i32 @mdelay(i32) #2

declare dso_local i32 @zd1201_drvr_start(%struct.zd1201*) #2

declare dso_local i32 @zd1201_setconfig16(%struct.zd1201*, i32, i16 signext) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @zd1201_getconfig(%struct.zd1201*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @zd1201_setconfig(%struct.zd1201*, i32, i8*, i32, i32) #2

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #2

declare dso_local i32 @register_netdev(%struct.net_device*) #2

declare dso_local i32 @dev_info(i32*, i8*, i32) #2

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.zd1201*) #2

declare dso_local i32 @zd1201_enable(%struct.zd1201*) #2

declare dso_local i32 @zd1201_disable(%struct.zd1201*) #2

declare dso_local i32 @zd1201_docmd(%struct.zd1201*, i32, i32, i32, i32) #2

declare dso_local i32 @usb_free_urb(i8*) #2

declare dso_local i32 @free_netdev(%struct.net_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
