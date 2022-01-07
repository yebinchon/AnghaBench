; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_parse_hid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_parse_hid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hid_descriptor = type { i32 }
%struct.wacom_features = type { i8, i8, i32, i8*, i8*, i8*, i32, i8*, i8*, i8* }
%struct.usb_device = type { i32 }

@WCM_UNDEFINED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_REQ_GET_DESCRIPTOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@HID_DEVICET_REPORT = common dso_local global i32 0, align 4
@WCM_DIGITIZER = common dso_local global i32 0, align 4
@WCM_DESKTOP = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i8* null, align 8
@TABLETPC2FG = common dso_local global i32 0, align 4
@WACOM_PKGLEN_TPC2FG = common dso_local global i8* null, align 8
@WACOM_PKGLEN_PENABLED = common dso_local global i8* null, align 8
@BTN_TOOL_PEN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.hid_descriptor*, %struct.wacom_features*)* @wacom_parse_hid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_parse_hid(%struct.usb_interface* %0, %struct.hid_descriptor* %1, %struct.wacom_features* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.hid_descriptor*, align 8
  %7 = alloca %struct.wacom_features*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %5, align 8
  store %struct.hid_descriptor* %1, %struct.hid_descriptor** %6, align 8
  store %struct.wacom_features* %2, %struct.wacom_features** %7, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %17 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %16)
  store %struct.usb_device* %17, %struct.usb_device** %8, align 8
  store i8 0, i8* %9, align 1
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @WCM_UNDEFINED, align 4
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.hid_descriptor*, %struct.hid_descriptor** %6, align 8
  %20 = getelementptr inbounds %struct.hid_descriptor, %struct.hid_descriptor* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kzalloc(i32 %21, i32 %22)
  store i8* %23, i8** %15, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %302

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %60, %29
  %31 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %32 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %33 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %32, i32 0)
  %34 = load i32, i32* @USB_REQ_GET_DESCRIPTOR, align 4
  %35 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %36 = load i32, i32* @USB_DIR_IN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @HID_DEVICET_REPORT, align 4
  %39 = shl i32 %38, 8
  %40 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %41 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %15, align 8
  %48 = load %struct.hid_descriptor*, %struct.hid_descriptor** %6, align 8
  %49 = getelementptr inbounds %struct.hid_descriptor, %struct.hid_descriptor* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @usb_control_msg(%struct.usb_device* %31, i32 %33, i32 %34, i32 %37, i32 %39, i32 %46, i8* %47, i32 %50, i32 5000)
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %30
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i8, i8* %9, align 1
  %57 = add i8 %56, 1
  store i8 %57, i8* %9, align 1
  %58 = sext i8 %56 to i32
  %59 = icmp slt i32 %58, 5
  br label %60

60:                                               ; preds = %55, %52
  %61 = phi i1 [ false, %52 ], [ %59, %55 ]
  br i1 %61, label %30, label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %298

66:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %294, %66
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.hid_descriptor*, %struct.hid_descriptor** %6, align 8
  %70 = getelementptr inbounds %struct.hid_descriptor, %struct.hid_descriptor* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %297

73:                                               ; preds = %67
  %74 = load i8*, i8** %15, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  switch i32 %79, label %293 [
    i32 133, label %80
    i32 135, label %97
    i32 136, label %292
  ]

80:                                               ; preds = %73
  %81 = load i8*, i8** %15, align 8
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  switch i32 %87, label %96 [
    i32 131, label %88
    i32 132, label %92
  ]

88:                                               ; preds = %80
  %89 = load i32, i32* @WCM_DIGITIZER, align 4
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %96

92:                                               ; preds = %80
  %93 = load i32, i32* @WCM_DESKTOP, align 4
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %80, %92, %88
  br label %293

97:                                               ; preds = %73
  %98 = load i8*, i8** %15, align 8
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  switch i32 %104, label %291 [
    i32 129, label %105
    i32 128, label %200
    i32 134, label %285
    i32 130, label %288
  ]

105:                                              ; preds = %97
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @WCM_DESKTOP, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %189

109:                                              ; preds = %105
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %160

112:                                              ; preds = %109
  %113 = load i8*, i8** @BTN_TOOL_FINGER, align 8
  %114 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %115 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %114, i32 0, i32 4
  store i8* %113, i8** %115, align 8
  %116 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %117 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @TABLETPC2FG, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %112
  %122 = load i8*, i8** @WACOM_PKGLEN_TPC2FG, align 8
  %123 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %124 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %123, i32 0, i32 5
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %121, %112
  %126 = load i8*, i8** %15, align 8
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 3
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  %131 = call i8* @wacom_le16_to_cpu(i8* %130)
  %132 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %133 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %132, i32 0, i32 8
  store i8* %131, i8** %133, align 8
  %134 = load i8*, i8** %15, align 8
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 6
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  %139 = call i8* @wacom_le16_to_cpu(i8* %138)
  %140 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %141 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %140, i32 0, i32 9
  store i8* %139, i8** %141, align 8
  %142 = load i8*, i8** %15, align 8
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 9
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %149 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %148, i32 0, i32 0
  store i8 %147, i8* %149, align 8
  %150 = load i8*, i8** %15, align 8
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 11
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %157 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %156, i32 0, i32 1
  store i8 %155, i8* %157, align 1
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 12
  store i32 %159, i32* %11, align 4
  br label %188

160:                                              ; preds = %109
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %187

163:                                              ; preds = %160
  %164 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %165 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @TABLETPC2FG, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = load i8*, i8** @WACOM_PKGLEN_PENABLED, align 8
  %171 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %172 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %171, i32 0, i32 5
  store i8* %170, i8** %172, align 8
  br label %173

173:                                              ; preds = %169, %163
  %174 = load i8*, i8** @BTN_TOOL_PEN, align 8
  %175 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %176 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %175, i32 0, i32 4
  store i8* %174, i8** %176, align 8
  %177 = load i8*, i8** %15, align 8
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, 3
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %177, i64 %180
  %182 = call i8* @wacom_le16_to_cpu(i8* %181)
  %183 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %184 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %183, i32 0, i32 8
  store i8* %182, i8** %184, align 8
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, 4
  store i32 %186, i32* %11, align 4
  br label %187

187:                                              ; preds = %173, %160
  br label %188

188:                                              ; preds = %187, %125
  br label %199

189:                                              ; preds = %105
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* @WCM_DIGITIZER, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %189
  %194 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %195 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %194, i32 0, i32 2
  store i32 255, i32* %195, align 4
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 4
  store i32 %197, i32* %11, align 4
  br label %198

198:                                              ; preds = %193, %189
  br label %199

199:                                              ; preds = %198, %188
  br label %291

200:                                              ; preds = %97
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* @WCM_DESKTOP, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %284

204:                                              ; preds = %200
  %205 = load i32, i32* %13, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %255

207:                                              ; preds = %204
  %208 = load i8*, i8** @BTN_TOOL_FINGER, align 8
  %209 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %210 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %209, i32 0, i32 4
  store i8* %208, i8** %210, align 8
  %211 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %212 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @TABLETPC2FG, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %238

216:                                              ; preds = %207
  %217 = load i8*, i8** @WACOM_PKGLEN_TPC2FG, align 8
  %218 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %219 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %218, i32 0, i32 5
  store i8* %217, i8** %219, align 8
  %220 = load i8*, i8** %15, align 8
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, 3
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %220, i64 %223
  %225 = call i8* @wacom_le16_to_cpu(i8* %224)
  %226 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %227 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %226, i32 0, i32 3
  store i8* %225, i8** %227, align 8
  %228 = load i8*, i8** %15, align 8
  %229 = load i32, i32* %11, align 4
  %230 = add nsw i32 %229, 6
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %228, i64 %231
  %233 = call i8* @wacom_le16_to_cpu(i8* %232)
  %234 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %235 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %234, i32 0, i32 7
  store i8* %233, i8** %235, align 8
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %236, 7
  store i32 %237, i32* %11, align 4
  br label %254

238:                                              ; preds = %207
  %239 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %240 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %239, i32 0, i32 8
  %241 = load i8*, i8** %240, align 8
  %242 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %243 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %242, i32 0, i32 3
  store i8* %241, i8** %243, align 8
  %244 = load i8*, i8** %15, align 8
  %245 = load i32, i32* %11, align 4
  %246 = add nsw i32 %245, 3
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %244, i64 %247
  %249 = call i8* @wacom_le16_to_cpu(i8* %248)
  %250 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %251 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %250, i32 0, i32 7
  store i8* %249, i8** %251, align 8
  %252 = load i32, i32* %11, align 4
  %253 = add nsw i32 %252, 4
  store i32 %253, i32* %11, align 4
  br label %254

254:                                              ; preds = %238, %216
  br label %283

255:                                              ; preds = %204
  %256 = load i32, i32* %14, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %282

258:                                              ; preds = %255
  %259 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %260 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @TABLETPC2FG, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %258
  %265 = load i8*, i8** @WACOM_PKGLEN_PENABLED, align 8
  %266 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %267 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %266, i32 0, i32 5
  store i8* %265, i8** %267, align 8
  br label %268

268:                                              ; preds = %264, %258
  %269 = load i8*, i8** @BTN_TOOL_PEN, align 8
  %270 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %271 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %270, i32 0, i32 4
  store i8* %269, i8** %271, align 8
  %272 = load i8*, i8** %15, align 8
  %273 = load i32, i32* %11, align 4
  %274 = add nsw i32 %273, 3
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %272, i64 %275
  %277 = call i8* @wacom_le16_to_cpu(i8* %276)
  %278 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %279 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %278, i32 0, i32 3
  store i8* %277, i8** %279, align 8
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %280, 4
  store i32 %281, i32* %11, align 4
  br label %282

282:                                              ; preds = %268, %255
  br label %283

283:                                              ; preds = %282, %254
  br label %284

284:                                              ; preds = %283, %200
  br label %291

285:                                              ; preds = %97
  store i32 1, i32* %13, align 4
  %286 = load i32, i32* %11, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %11, align 4
  br label %291

288:                                              ; preds = %97
  store i32 1, i32* %14, align 4
  %289 = load i32, i32* %11, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %11, align 4
  br label %291

291:                                              ; preds = %97, %288, %285, %284, %199
  br label %293

292:                                              ; preds = %73
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %293

293:                                              ; preds = %73, %292, %291, %96
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %11, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %11, align 4
  br label %67

297:                                              ; preds = %67
  br label %298

298:                                              ; preds = %297, %65
  store i32 0, i32* %10, align 4
  %299 = load i8*, i8** %15, align 8
  %300 = call i32 @kfree(i8* %299)
  %301 = load i32, i32* %10, align 4
  store i32 %301, i32* %4, align 4
  br label %302

302:                                              ; preds = %298, %26
  %303 = load i32, i32* %4, align 4
  ret i32 %303
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i8* @wacom_le16_to_cpu(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
