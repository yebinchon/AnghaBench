; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ultracam.c_ultracam_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ultracam.c_ultracam_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.usb_host_interface*, i32 }
%struct.usb_host_interface = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i8, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.uvd = type { i32, i32, i32, i8, i32, i64, i64, i32, i32, i32, %struct.usb_device*, i32 }
%struct.TYPE_8__ = type { i64, i64 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ultracam_probe\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"IBM Ultra camera found (rev. 0x%04x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Number of alternate settings=%d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Too few alternate settings for this camera!\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Interface %d. has %u. endpoints!\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Alternate settings have different endpoint addresses!\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Interface %d. has non-ISO endpoint!\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Interface %d. has ISO OUT endpoint!\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"More than one inactive alt. setting!\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Active setting=%d. maxPS=%d.\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Even better ctive setting=%d. maxPS=%d.\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Failed to recognize the camera!\00", align 1
@cams = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@VIDEO_PALETTE_RGB24 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [39 x i8] c"usbvideo_RegisterVideoDevice() failed.\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ultracam_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ultracam_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
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
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %18 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %17)
  store %struct.usb_device* %18, %struct.usb_device** %6, align 8
  store %struct.uvd* null, %struct.uvd** %7, align 8
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i8 0, i8* %14, align 1
  %19 = load i32, i32* @debug, align 4
  %20 = icmp sge i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 2
  %24 = call i32 (i32*, i8*, ...) @dev_info(i32* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %2
  %26 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %298

34:                                               ; preds = %25
  %35 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %36 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %35, i32 0, i32 2
  %37 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le16_to_cpu(i32 %40)
  %42 = call i32 (i32*, i8*, ...) @dev_info(i32* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %44 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @debug, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %34
  %49 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %50 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %49, i32 0, i32 2
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (i32*, i8*, ...) @dev_info(i32* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %48, %34
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 8
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %298

60:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %202, %60
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %205

65:                                               ; preds = %61
  %66 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %67 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %66, i32 0, i32 1
  %68 = load %struct.usb_host_interface*, %struct.usb_host_interface** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %68, i64 %70
  store %struct.usb_host_interface* %71, %struct.usb_host_interface** %15, align 8
  %72 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  %73 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %9, align 4
  %76 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  %77 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %93

81:                                               ; preds = %65
  %82 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  %83 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  %87 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %85, i32 %89)
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %298

93:                                               ; preds = %65
  %94 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  %95 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %98, %struct.usb_endpoint_descriptor** %16, align 8
  %99 = load i8, i8* %14, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %93
  %103 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %16, align 8
  %104 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %103, i32 0, i32 0
  %105 = load i8, i8* %104, align 4
  store i8 %105, i8* %14, align 1
  br label %119

106:                                              ; preds = %93
  %107 = load i8, i8* %14, align 1
  %108 = zext i8 %107 to i32
  %109 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %16, align 8
  %110 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %109, i32 0, i32 0
  %111 = load i8, i8* %110, align 4
  %112 = zext i8 %111 to i32
  %113 = icmp ne i32 %108, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %298

118:                                              ; preds = %106
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
  br label %298

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
  br label %298

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
  br label %298

158:                                              ; preds = %152
  br label %201

159:                                              ; preds = %143
  %160 = load i32, i32* %11, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %159
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %11, align 4
  %164 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %16, align 8
  %165 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @le16_to_cpu(i32 %166)
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* @debug, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %162
  %171 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %172 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %171, i32 0, i32 2
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %13, align 4
  %175 = call i32 (i32*, i8*, ...) @dev_info(i32* %172, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %170, %162
  br label %200

177:                                              ; preds = %159
  %178 = load i32, i32* %13, align 4
  %179 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %16, align 8
  %180 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @le16_to_cpu(i32 %181)
  %183 = icmp slt i32 %178, %182
  br i1 %183, label %184, label %199

184:                                              ; preds = %177
  %185 = load i32, i32* %9, align 4
  store i32 %185, i32* %11, align 4
  %186 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %16, align 8
  %187 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @le16_to_cpu(i32 %188)
  store i32 %189, i32* %13, align 4
  %190 = load i32, i32* @debug, align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %184
  %193 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %194 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %193, i32 0, i32 2
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %13, align 4
  %197 = call i32 (i32*, i8*, ...) @dev_info(i32* %194, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %192, %184
  br label %199

199:                                              ; preds = %198, %177
  br label %200

200:                                              ; preds = %199, %176
  br label %201

201:                                              ; preds = %200, %158
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  br label %61

205:                                              ; preds = %61
  %206 = load i32, i32* %13, align 4
  %207 = icmp sle i32 %206, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %205
  %209 = load i32, i32* %11, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %12, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %211, %208, %205
  %215 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %216 = load i32, i32* @ENODEV, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %3, align 4
  br label %298

218:                                              ; preds = %211
  %219 = load i32, i32* @cams, align 4
  %220 = call %struct.uvd* @usbvideo_AllocateDevice(i32 %219)
  store %struct.uvd* %220, %struct.uvd** %7, align 8
  %221 = load %struct.uvd*, %struct.uvd** %7, align 8
  %222 = icmp ne %struct.uvd* %221, null
  br i1 %222, label %223, label %288

223:                                              ; preds = %218
  %224 = load i32, i32* @flags, align 4
  %225 = load %struct.uvd*, %struct.uvd** %7, align 8
  %226 = getelementptr inbounds %struct.uvd, %struct.uvd* %225, i32 0, i32 11
  store i32 %224, i32* %226, align 8
  %227 = load i32, i32* @debug, align 4
  %228 = load %struct.uvd*, %struct.uvd** %7, align 8
  %229 = getelementptr inbounds %struct.uvd, %struct.uvd* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  %230 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %231 = load %struct.uvd*, %struct.uvd** %7, align 8
  %232 = getelementptr inbounds %struct.uvd, %struct.uvd* %231, i32 0, i32 10
  store %struct.usb_device* %230, %struct.usb_device** %232, align 8
  %233 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %234 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %233, i32 0, i32 1
  %235 = load %struct.usb_host_interface*, %struct.usb_host_interface** %234, align 8
  %236 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.uvd*, %struct.uvd** %7, align 8
  %240 = getelementptr inbounds %struct.uvd, %struct.uvd* %239, i32 0, i32 9
  store i32 %238, i32* %240, align 8
  %241 = load i32, i32* %12, align 4
  %242 = load %struct.uvd*, %struct.uvd** %7, align 8
  %243 = getelementptr inbounds %struct.uvd, %struct.uvd* %242, i32 0, i32 1
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* %11, align 4
  %245 = load %struct.uvd*, %struct.uvd** %7, align 8
  %246 = getelementptr inbounds %struct.uvd, %struct.uvd* %245, i32 0, i32 2
  store i32 %244, i32* %246, align 8
  %247 = load i8, i8* %14, align 1
  %248 = load %struct.uvd*, %struct.uvd** %7, align 8
  %249 = getelementptr inbounds %struct.uvd, %struct.uvd* %248, i32 0, i32 3
  store i8 %247, i8* %249, align 4
  %250 = load i32, i32* %13, align 4
  %251 = load %struct.uvd*, %struct.uvd** %7, align 8
  %252 = getelementptr inbounds %struct.uvd, %struct.uvd* %251, i32 0, i32 4
  store i32 %250, i32* %252, align 8
  %253 = load i64, i64* @VIDEO_PALETTE_RGB24, align 8
  %254 = shl i64 1, %253
  %255 = load %struct.uvd*, %struct.uvd** %7, align 8
  %256 = getelementptr inbounds %struct.uvd, %struct.uvd* %255, i32 0, i32 5
  store i64 %254, i64* %256, align 8
  %257 = load i64, i64* @VIDEO_PALETTE_RGB24, align 8
  %258 = load %struct.uvd*, %struct.uvd** %7, align 8
  %259 = getelementptr inbounds %struct.uvd, %struct.uvd* %258, i32 0, i32 6
  store i64 %257, i64* %259, align 8
  %260 = call i32 @VIDEOSIZE(i32 640, i32 480)
  %261 = load %struct.uvd*, %struct.uvd** %7, align 8
  %262 = getelementptr inbounds %struct.uvd, %struct.uvd* %261, i32 0, i32 7
  store i32 %260, i32* %262, align 8
  %263 = load %struct.uvd*, %struct.uvd** %7, align 8
  %264 = getelementptr inbounds %struct.uvd, %struct.uvd* %263, i32 0, i32 7
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.uvd*, %struct.uvd** %7, align 8
  %267 = getelementptr inbounds %struct.uvd, %struct.uvd* %266, i32 0, i32 8
  store i32 %265, i32* %267, align 4
  %268 = load %struct.uvd*, %struct.uvd** %7, align 8
  %269 = call %struct.TYPE_8__* @ULTRACAM_T(%struct.uvd* %268)
  %270 = icmp ne %struct.TYPE_8__* %269, null
  %271 = zext i1 %270 to i32
  %272 = call i32 @assert(i32 %271)
  %273 = load %struct.uvd*, %struct.uvd** %7, align 8
  %274 = call %struct.TYPE_8__* @ULTRACAM_T(%struct.uvd* %273)
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 1
  store i64 0, i64* %275, align 8
  %276 = load %struct.uvd*, %struct.uvd** %7, align 8
  %277 = call %struct.TYPE_8__* @ULTRACAM_T(%struct.uvd* %276)
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  store i64 0, i64* %278, align 8
  %279 = load %struct.uvd*, %struct.uvd** %7, align 8
  %280 = call i32 @ultracam_configure_video(%struct.uvd* %279)
  %281 = load %struct.uvd*, %struct.uvd** %7, align 8
  %282 = call i32 @usbvideo_RegisterVideoDevice(%struct.uvd* %281)
  store i32 %282, i32* %9, align 4
  %283 = load i32, i32* %9, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %223
  %286 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  store %struct.uvd* null, %struct.uvd** %7, align 8
  br label %287

287:                                              ; preds = %285, %223
  br label %288

288:                                              ; preds = %287, %218
  %289 = load %struct.uvd*, %struct.uvd** %7, align 8
  %290 = icmp ne %struct.uvd* %289, null
  br i1 %290, label %291, label %295

291:                                              ; preds = %288
  %292 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %293 = load %struct.uvd*, %struct.uvd** %7, align 8
  %294 = call i32 @usb_set_intfdata(%struct.usb_interface* %292, %struct.uvd* %293)
  store i32 0, i32* %3, align 4
  br label %298

295:                                              ; preds = %288
  %296 = load i32, i32* @EIO, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %3, align 4
  br label %298

298:                                              ; preds = %295, %291, %214, %154, %135, %123, %114, %81, %56, %31
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local %struct.uvd* @usbvideo_AllocateDevice(i32) #1

declare dso_local i32 @VIDEOSIZE(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_8__* @ULTRACAM_T(%struct.uvd*) #1

declare dso_local i32 @ultracam_configure_video(%struct.uvd*) #1

declare dso_local i32 @usbvideo_RegisterVideoDevice(%struct.uvd*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.uvd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
