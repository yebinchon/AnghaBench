; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_hid_submit_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_hid_submit_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.usbhid_device* }
%struct.usbhid_device = type { i64, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i8, i64, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8, %struct.hid_report* }
%struct.hid_report = type { i32, i32, i32 }

@HID_REPORTED_IDLE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i8 0, align 1
@USB_TYPE_CLASS = common dso_local global i8 0, align 1
@USB_RECIP_INTERFACE = common dso_local global i8 0, align 1
@HID_REQ_SET_REPORT = common dso_local global i64 0, align 8
@HID_REQ_GET_REPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"submitting ctrl urb: %s wValue=0x%04x wIndex=0x%04x wLength=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Set_Report\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Get_Report\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"usb_submit_urb(ctrl) failed\00", align 1
@jiffies = common dso_local global i32 0, align 4
@resumption_waker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @hid_submit_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_submit_ctrl(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_report*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usbhid_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %11 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %12 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %11, i32 0, i32 0
  %13 = load %struct.usbhid_device*, %struct.usbhid_device** %12, align 8
  store %struct.usbhid_device* %13, %struct.usbhid_device** %8, align 8
  %14 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %15 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %14, i32 0, i32 7
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %18 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load %struct.hid_report*, %struct.hid_report** %21, align 8
  store %struct.hid_report* %22, %struct.hid_report** %4, align 8
  %23 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %24 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %23, i32 0, i32 7
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %27 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %6, align 8
  %32 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %33 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %32, i32 0, i32 7
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %36 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i8, i8* %39, align 8
  store i8 %40, i8* %5, align 1
  %41 = load i32, i32* @HID_REPORTED_IDLE, align 4
  %42 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %43 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %42, i32 0, i32 9
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %239, label %46

46:                                               ; preds = %1
  %47 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %48 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  %51 = ashr i32 %50, 3
  %52 = add nsw i32 %51, 1
  %53 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %54 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = add nsw i32 %52, %57
  store i32 %58, i32* %7, align 4
  %59 = load i8, i8* %5, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* @USB_DIR_OUT, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %97

64:                                               ; preds = %46
  %65 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %66 = call i32 @hid_to_usb_dev(%struct.hid_device* %65)
  %67 = call i32 @usb_sndctrlpipe(i32 %66, i32 0)
  %68 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %69 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %68, i32 0, i32 5
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %74 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %73, i32 0, i32 5
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %96

79:                                               ; preds = %64
  %80 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %81 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @memcpy(i32 %82, i8* %83, i32 %84)
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @kfree(i8* %86)
  %88 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %89 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %88, i32 0, i32 7
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %92 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i8* null, i8** %95, align 8
  br label %96

96:                                               ; preds = %79, %64
  br label %139

97:                                               ; preds = %46
  %98 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %99 = call i32 @hid_to_usb_dev(%struct.hid_device* %98)
  %100 = call i32 @usb_rcvctrlpipe(i32 %99, i32 0)
  %101 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %102 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %101, i32 0, i32 5
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  store i32 %100, i32* %104, align 4
  %105 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %106 = call i32 @hid_to_usb_dev(%struct.hid_device* %105)
  %107 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %108 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %107, i32 0, i32 5
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @usb_maxpacket(i32 %106, i32 %111, i32 0)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %97
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @DIV_ROUND_UP(i32 %116, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = mul nsw i32 %120, %119
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %124 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp sgt i32 %122, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %115
  %128 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %129 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %127, %115
  br label %133

132:                                              ; preds = %97
  store i32 0, i32* %10, align 4
  br label %133

133:                                              ; preds = %132, %131
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %136 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %135, i32 0, i32 5
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  store i32 %134, i32* %138, align 4
  br label %139

139:                                              ; preds = %133, %96
  %140 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %141 = call i32 @hid_to_usb_dev(%struct.hid_device* %140)
  %142 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %143 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %142, i32 0, i32 5
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  store i32 %141, i32* %145, align 4
  %146 = load i8, i8* @USB_TYPE_CLASS, align 1
  %147 = zext i8 %146 to i32
  %148 = load i8, i8* @USB_RECIP_INTERFACE, align 1
  %149 = zext i8 %148 to i32
  %150 = or i32 %147, %149
  %151 = load i8, i8* %5, align 1
  %152 = zext i8 %151 to i32
  %153 = or i32 %150, %152
  %154 = trunc i32 %153 to i8
  %155 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %156 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %155, i32 0, i32 6
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  store i8 %154, i8* %158, align 8
  %159 = load i8, i8* %5, align 1
  %160 = zext i8 %159 to i32
  %161 = load i8, i8* @USB_DIR_OUT, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp eq i32 %160, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %139
  %165 = load i64, i64* @HID_REQ_SET_REPORT, align 8
  br label %168

166:                                              ; preds = %139
  %167 = load i64, i64* @HID_REQ_GET_REPORT, align 8
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i64 [ %165, %164 ], [ %167, %166 ]
  %170 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %171 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %170, i32 0, i32 6
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  store i64 %169, i64* %173, align 8
  %174 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %175 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  %178 = shl i32 %177, 8
  %179 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %180 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %178, %181
  %183 = call i8* @cpu_to_le16(i32 %182)
  %184 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %185 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %184, i32 0, i32 6
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 4
  store i8* %183, i8** %187, align 8
  %188 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %189 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @cpu_to_le16(i32 %190)
  %192 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %193 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %192, i32 0, i32 6
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 3
  store i8* %191, i8** %195, align 8
  %196 = load i32, i32* %7, align 4
  %197 = call i8* @cpu_to_le16(i32 %196)
  %198 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %199 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %198, i32 0, i32 6
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 2
  store i8* %197, i8** %201, align 8
  %202 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %203 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %202, i32 0, i32 6
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @HID_REQ_SET_REPORT, align 8
  %208 = icmp eq i64 %206, %207
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %211 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %212 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %211, i32 0, i32 6
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 4
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %217 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %216, i32 0, i32 6
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 3
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %222 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %221, i32 0, i32 6
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 2
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 @dbg_hid(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %210, i8* %215, i8* %220, i8* %225)
  %227 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %228 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %227, i32 0, i32 5
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %228, align 8
  %230 = load i32, i32* @GFP_ATOMIC, align 4
  %231 = call i64 @usb_submit_urb(%struct.TYPE_6__* %229, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %168
  %234 = call i32 @err_hid(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %245

235:                                              ; preds = %168
  %236 = load i32, i32* @jiffies, align 4
  %237 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %238 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %237, i32 0, i32 4
  store i32 %236, i32* %238, align 4
  br label %244

239:                                              ; preds = %1
  %240 = load i32, i32* @resumption_waker, align 4
  %241 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %242 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %241, i32 0, i32 3
  %243 = call i32 @queue_work(i32 %240, i32* %242)
  br label %244

244:                                              ; preds = %239, %235
  store i32 0, i32* %2, align 4
  br label %245

245:                                              ; preds = %244, %233
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @hid_to_usb_dev(%struct.hid_device*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_maxpacket(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @dbg_hid(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @usb_submit_urb(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @err_hid(i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
