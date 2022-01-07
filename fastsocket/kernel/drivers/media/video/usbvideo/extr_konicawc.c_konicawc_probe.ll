; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.usb_interface = type { i32, %struct.usb_host_interface*, i32 }
%struct.usb_host_interface = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.uvd = type { i32, i32, i8, i32, i64, i64, i32, i8*, i8*, i32, %struct.usb_device*, i32, i64, i64 }
%struct.konicawc = type { i64, i32, i32, i64, i32** }

@.str = private unnamed_addr constant [19 x i8] c"konicawc_probe(%p)\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Konica Webcam (rev. 0x%04x)\0A\00", align 1
@speed = common dso_local global i64 0, align 8
@MAX_SPEED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"Incorrect number of alternate settings (%d) for this camera!\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Interface %d. has %u. endpoints!\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"found endpoint: addr: 0x%2.2x maxps = 0x%4.4x\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Alternate settings have different endpoint addresses!\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Interface %d. has non-ISO endpoint!\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Interface %d. has ISO OUT endpoint!\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"More than one inactive alt. setting!\00", align 1
@spd_to_iface = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [28 x i8] c"Cant find required endpoint\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Selecting requested active setting=%d. maxPS=%d.\00", align 1
@cams = common dso_local global i32 0, align 4
@USBVIDEO_NUMSBUF = common dso_local global i32 0, align 4
@FRAMES_PER_DESC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"can't allocate urbs\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@size = common dso_local global i64 0, align 8
@SIZE_160X120 = common dso_local global i32 0, align 4
@SIZE_320X240 = common dso_local global i32 0, align 4
@camera_sizes = common dso_local global %struct.TYPE_8__* null, align 8
@debug = common dso_local global i32 0, align 4
@VIDEO_PALETTE_YUV420P = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [39 x i8] c"usbvideo_RegisterVideoDevice() failed.\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @konicawc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @konicawc_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.uvd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca %struct.usb_host_interface*, align 8
  %16 = alloca %struct.usb_endpoint_descriptor*, align 8
  %17 = alloca %struct.konicawc*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %18 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %19 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %18)
  store %struct.usb_device* %19, %struct.usb_device** %6, align 8
  store %struct.uvd* null, %struct.uvd** %7, align 8
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i8 0, i8* %14, align 1
  %20 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %21 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.usb_interface* %20)
  %22 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %345

30:                                               ; preds = %2
  %31 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %32 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %31, i32 0, i32 2
  %33 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = call i32 @dev_info(i32* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i64, i64* @speed, align 8
  %40 = load i32, i32* @MAX_SPEED, align 4
  %41 = call i32 @RESTRICT_TO_RANGE(i64 %39, i32 0, i32 %40)
  %42 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %43 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 8
  br i1 %46, label %47, label %52

47:                                               ; preds = %30
  %48 = load i32, i32* %10, align 4
  %49 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %345

52:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %182, %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %185

57:                                               ; preds = %53
  %58 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %59 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %58, i32 0, i32 1
  %60 = load %struct.usb_host_interface*, %struct.usb_host_interface** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %60, i64 %62
  store %struct.usb_host_interface* %63, %struct.usb_host_interface** %15, align 8
  %64 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  %65 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %9, align 4
  %68 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  %69 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 2
  br i1 %72, label %73, label %85

73:                                               ; preds = %57
  %74 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  %75 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  %79 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %81)
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %345

85:                                               ; preds = %57
  %86 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  %87 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %90, %struct.usb_endpoint_descriptor** %16, align 8
  %91 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %16, align 8
  %92 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %16, align 8
  %95 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le16_to_cpu(i32 %96)
  %98 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %93, i32 %97)
  %99 = load i8, i8* %14, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %85
  %103 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %16, align 8
  %104 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %14, align 1
  br label %119

107:                                              ; preds = %85
  %108 = load i8, i8* %14, align 1
  %109 = zext i8 %108 to i32
  %110 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %16, align 8
  %111 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %345

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118, %102
  %120 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %16, align 8
  %121 = call i32 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %119
  %124 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  %125 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @ENODEV, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %345

131:                                              ; preds = %119
  %132 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %16, align 8
  %133 = call i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  %137 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @ENODEV, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  br label %345

143:                                              ; preds = %131
  %144 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %16, align 8
  %145 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @le16_to_cpu(i32 %146)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %143
  %150 = load i32, i32* %12, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %12, align 4
  br label %158

154:                                              ; preds = %149
  %155 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %156 = load i32, i32* @ENODEV, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  br label %345

158:                                              ; preds = %152
  br label %169

159:                                              ; preds = %143
  %160 = load i32, i32* %9, align 4
  %161 = load i32*, i32** @spd_to_iface, align 8
  %162 = load i64, i64* @speed, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %160, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %11, align 4
  br label %168

168:                                              ; preds = %166, %159
  br label %169

169:                                              ; preds = %168, %158
  %170 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %16, align 8
  %171 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @le16_to_cpu(i32 %172)
  %174 = load i32, i32* %13, align 4
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %169
  %177 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %16, align 8
  %178 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @le16_to_cpu(i32 %179)
  store i32 %180, i32* %13, align 4
  br label %181

181:                                              ; preds = %176, %169
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %53

185:                                              ; preds = %53
  %186 = load i32, i32* %11, align 4
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %190 = load i32, i32* @ENODEV, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %3, align 4
  br label %345

192:                                              ; preds = %185
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* %13, align 4
  %195 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i32 %193, i32 %194)
  %196 = load i32, i32* @cams, align 4
  %197 = call %struct.uvd* @usbvideo_AllocateDevice(i32 %196)
  store %struct.uvd* %197, %struct.uvd** %7, align 8
  %198 = load %struct.uvd*, %struct.uvd** %7, align 8
  %199 = icmp ne %struct.uvd* %198, null
  br i1 %199, label %200, label %335

200:                                              ; preds = %192
  %201 = load %struct.uvd*, %struct.uvd** %7, align 8
  %202 = getelementptr inbounds %struct.uvd, %struct.uvd* %201, i32 0, i32 13
  %203 = load i64, i64* %202, align 8
  %204 = inttoptr i64 %203 to %struct.konicawc*
  store %struct.konicawc* %204, %struct.konicawc** %17, align 8
  store i32 0, i32* %9, align 4
  br label %205

205:                                              ; preds = %246, %200
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* @USBVIDEO_NUMSBUF, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %249

209:                                              ; preds = %205
  %210 = load i32, i32* @FRAMES_PER_DESC, align 4
  %211 = load i32, i32* @GFP_KERNEL, align 4
  %212 = call i32* @usb_alloc_urb(i32 %210, i32 %211)
  %213 = load %struct.konicawc*, %struct.konicawc** %17, align 8
  %214 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %213, i32 0, i32 4
  %215 = load i32**, i32*** %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32*, i32** %215, i64 %217
  store i32* %212, i32** %218, align 8
  %219 = load %struct.konicawc*, %struct.konicawc** %17, align 8
  %220 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %219, i32 0, i32 4
  %221 = load i32**, i32*** %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32*, i32** %221, i64 %223
  %225 = load i32*, i32** %224, align 8
  %226 = icmp eq i32* %225, null
  br i1 %226, label %227, label %245

227:                                              ; preds = %209
  br label %228

228:                                              ; preds = %232, %227
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, -1
  store i32 %230, i32* %9, align 4
  %231 = icmp ne i32 %229, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %228
  %233 = load %struct.konicawc*, %struct.konicawc** %17, align 8
  %234 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %233, i32 0, i32 4
  %235 = load i32**, i32*** %234, align 8
  %236 = load i32, i32* %9, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32*, i32** %235, i64 %237
  %239 = load i32*, i32** %238, align 8
  %240 = call i32 @usb_free_urb(i32* %239)
  br label %228

241:                                              ; preds = %228
  %242 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %243 = load i32, i32* @ENOMEM, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %3, align 4
  br label %345

245:                                              ; preds = %209
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %9, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %9, align 4
  br label %205

249:                                              ; preds = %205
  %250 = load i64, i64* @speed, align 8
  %251 = load %struct.konicawc*, %struct.konicawc** %17, align 8
  %252 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %251, i32 0, i32 0
  store i64 %250, i64* %252, align 8
  %253 = load i64, i64* @size, align 8
  %254 = load i32, i32* @SIZE_160X120, align 4
  %255 = load i32, i32* @SIZE_320X240, align 4
  %256 = call i32 @RESTRICT_TO_RANGE(i64 %253, i32 %254, i32 %255)
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** @camera_sizes, align 8
  %258 = load i64, i64* @size, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.konicawc*, %struct.konicawc** %17, align 8
  %263 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 8
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** @camera_sizes, align 8
  %265 = load i64, i64* @size, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.konicawc*, %struct.konicawc** %17, align 8
  %270 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %269, i32 0, i32 2
  store i32 %268, i32* %270, align 4
  %271 = load i64, i64* @size, align 8
  %272 = load %struct.konicawc*, %struct.konicawc** %17, align 8
  %273 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %272, i32 0, i32 3
  store i64 %271, i64* %273, align 8
  %274 = load %struct.uvd*, %struct.uvd** %7, align 8
  %275 = getelementptr inbounds %struct.uvd, %struct.uvd* %274, i32 0, i32 12
  store i64 0, i64* %275, align 8
  %276 = load i32, i32* @debug, align 4
  %277 = load %struct.uvd*, %struct.uvd** %7, align 8
  %278 = getelementptr inbounds %struct.uvd, %struct.uvd* %277, i32 0, i32 11
  store i32 %276, i32* %278, align 8
  %279 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %280 = load %struct.uvd*, %struct.uvd** %7, align 8
  %281 = getelementptr inbounds %struct.uvd, %struct.uvd* %280, i32 0, i32 10
  store %struct.usb_device* %279, %struct.usb_device** %281, align 8
  %282 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %283 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %282, i32 0, i32 1
  %284 = load %struct.usb_host_interface*, %struct.usb_host_interface** %283, align 8
  %285 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.uvd*, %struct.uvd** %7, align 8
  %289 = getelementptr inbounds %struct.uvd, %struct.uvd* %288, i32 0, i32 9
  store i32 %287, i32* %289, align 8
  %290 = load i32, i32* %12, align 4
  %291 = load %struct.uvd*, %struct.uvd** %7, align 8
  %292 = getelementptr inbounds %struct.uvd, %struct.uvd* %291, i32 0, i32 0
  store i32 %290, i32* %292, align 8
  %293 = load i32, i32* %11, align 4
  %294 = load %struct.uvd*, %struct.uvd** %7, align 8
  %295 = getelementptr inbounds %struct.uvd, %struct.uvd* %294, i32 0, i32 1
  store i32 %293, i32* %295, align 4
  %296 = load i8, i8* %14, align 1
  %297 = load %struct.uvd*, %struct.uvd** %7, align 8
  %298 = getelementptr inbounds %struct.uvd, %struct.uvd* %297, i32 0, i32 2
  store i8 %296, i8* %298, align 8
  %299 = load i32, i32* %13, align 4
  %300 = load %struct.uvd*, %struct.uvd** %7, align 8
  %301 = getelementptr inbounds %struct.uvd, %struct.uvd* %300, i32 0, i32 3
  store i32 %299, i32* %301, align 4
  %302 = load i64, i64* @VIDEO_PALETTE_YUV420P, align 8
  %303 = shl i64 1, %302
  %304 = load %struct.uvd*, %struct.uvd** %7, align 8
  %305 = getelementptr inbounds %struct.uvd, %struct.uvd* %304, i32 0, i32 4
  store i64 %303, i64* %305, align 8
  %306 = load i64, i64* @VIDEO_PALETTE_YUV420P, align 8
  %307 = load %struct.uvd*, %struct.uvd** %7, align 8
  %308 = getelementptr inbounds %struct.uvd, %struct.uvd* %307, i32 0, i32 5
  store i64 %306, i64* %308, align 8
  %309 = call i8* @VIDEOSIZE(i32 320, i32 240)
  %310 = load %struct.uvd*, %struct.uvd** %7, align 8
  %311 = getelementptr inbounds %struct.uvd, %struct.uvd* %310, i32 0, i32 8
  store i8* %309, i8** %311, align 8
  %312 = load %struct.konicawc*, %struct.konicawc** %17, align 8
  %313 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.konicawc*, %struct.konicawc** %17, align 8
  %316 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = call i8* @VIDEOSIZE(i32 %314, i32 %317)
  %319 = load %struct.uvd*, %struct.uvd** %7, align 8
  %320 = getelementptr inbounds %struct.uvd, %struct.uvd* %319, i32 0, i32 7
  store i8* %318, i8** %320, align 8
  %321 = load %struct.uvd*, %struct.uvd** %7, align 8
  %322 = call i32 @konicawc_configure_video(%struct.uvd* %321)
  %323 = load %struct.uvd*, %struct.uvd** %7, align 8
  %324 = call i32 @usbvideo_RegisterVideoDevice(%struct.uvd* %323)
  store i32 %324, i32* %9, align 4
  %325 = load %struct.uvd*, %struct.uvd** %7, align 8
  %326 = getelementptr inbounds %struct.uvd, %struct.uvd* %325, i32 0, i32 6
  store i32 115200, i32* %326, align 8
  %327 = load i32, i32* %9, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %249
  %330 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  store %struct.uvd* null, %struct.uvd** %7, align 8
  br label %331

331:                                              ; preds = %329, %249
  %332 = load %struct.konicawc*, %struct.konicawc** %17, align 8
  %333 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %334 = call i32 @konicawc_register_input(%struct.konicawc* %332, %struct.usb_device* %333)
  br label %335

335:                                              ; preds = %331, %192
  %336 = load %struct.uvd*, %struct.uvd** %7, align 8
  %337 = icmp ne %struct.uvd* %336, null
  br i1 %337, label %338, label %342

338:                                              ; preds = %335
  %339 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %340 = load %struct.uvd*, %struct.uvd** %7, align 8
  %341 = call i32 @usb_set_intfdata(%struct.usb_interface* %339, %struct.uvd* %340)
  store i32 0, i32* %3, align 4
  br label %345

342:                                              ; preds = %335
  %343 = load i32, i32* @EIO, align 4
  %344 = sub nsw i32 0, %343
  store i32 %344, i32* %3, align 4
  br label %345

345:                                              ; preds = %342, %338, %241, %188, %154, %135, %123, %114, %73, %47, %27
  %346 = load i32, i32* %3, align 4
  ret i32 %346
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @RESTRICT_TO_RANGE(i64, i32, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local %struct.uvd* @usbvideo_AllocateDevice(i32) #1

declare dso_local i32* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i8* @VIDEOSIZE(i32, i32) #1

declare dso_local i32 @konicawc_configure_video(%struct.uvd*) #1

declare dso_local i32 @usbvideo_RegisterVideoDevice(%struct.uvd*) #1

declare dso_local i32 @konicawc_register_input(%struct.konicawc*, %struct.usb_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.uvd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
