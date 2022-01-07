; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i8, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.uvd = type { i32, i32, i32, i32, i8, i32, i64, i64, i32, i32, %struct.usb_device*, i32 }
%struct.TYPE_8__ = type { i32, i64 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ibmcam_probe(%p,%u.)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"IBM camera with revision 0x%04x is not supported.\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"IBM NetCamera\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Veo Stingray [800C]\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Veo Stingray [800D]\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"IBM PC Camera\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"%s USB camera found (model %d, rev. 0x%04x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Number of alternate settings=%d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Too few alternate settings for this camera!\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Interface %d. has %u. endpoints!\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"Alternate settings have different endpoint addresses!\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Interface %d. has non-ISO endpoint!\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Interface %d. has ISO OUT endpoint!\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"More than one inactive alt. setting!\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Active setting=%d. maxPS=%d.\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"More than one active alt. setting! Ignoring #%d.\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Failed to recognize the camera!\00", align 1
@lighting = common dso_local global i32 0, align 4
@size = common dso_local global i32 0, align 4
@framerate = common dso_local global i32 0, align 4
@SIZE_352x240 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [27 x i8] c"IBM camera: using 320x240\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"IBM NetCamera: using 176x144\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"IBM camera: Model %d. not supported!\00", align 1
@cams = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@VIDEO_PALETTE_RGB24 = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [39 x i8] c"usbvideo_RegisterVideoDevice() failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ibmcam_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmcam_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
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
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8*, align 8
  %20 = alloca %struct.usb_host_interface*, align 8
  %21 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %22 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %23 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %22)
  store %struct.usb_device* %23, %struct.usb_device** %6, align 8
  store %struct.uvd* null, %struct.uvd** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %25 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %24, i32 0, i32 1
  %26 = load %struct.usb_host_interface*, %struct.usb_host_interface** %25, align 8
  %27 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %17, align 4
  store i8 0, i8* %18, align 1
  %30 = load i32, i32* @debug, align 4
  %31 = icmp sge i32 %30, 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 0
  %35 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %36 = load i32, i32* %17, align 4
  %37 = call i32 (i32*, i8*, ...) @dev_info(i32* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.usb_interface* %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %2
  %39 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %404

47:                                               ; preds = %38
  %48 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %49 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  switch i32 %52, label %90 [
    i32 2, label %53
    i32 778, label %60
    i32 769, label %83
  ]

53:                                               ; preds = %47
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 2
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %404

59:                                               ; preds = %53
  store i32 141, i32* %11, align 4
  br label %99

60:                                               ; preds = %47
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %404

66:                                               ; preds = %60
  %67 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %68 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le16_to_cpu(i32 %70)
  %72 = icmp eq i32 %71, 136
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %75 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le16_to_cpu(i32 %77)
  %79 = icmp eq i32 %78, 128
  br i1 %79, label %80, label %81

80:                                               ; preds = %73, %66
  store i32 138, i32* %11, align 4
  br label %82

81:                                               ; preds = %73
  store i32 140, i32* %11, align 4
  br label %82

82:                                               ; preds = %81, %80
  br label %99

83:                                               ; preds = %47
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @ENODEV, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %404

89:                                               ; preds = %83
  store i32 139, i32* %11, align 4
  br label %99

90:                                               ; preds = %47
  %91 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %92 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le16_to_cpu(i32 %94)
  %96 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @ENODEV, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %404

99:                                               ; preds = %89, %82, %59
  br label %100

100:                                              ; preds = %99
  store i8* null, i8** %19, align 8
  %101 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %102 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le16_to_cpu(i32 %104)
  switch i32 %105, label %110 [
    i32 136, label %106
    i32 129, label %107
    i32 128, label %108
    i32 137, label %109
  ]

106:                                              ; preds = %100
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  br label %111

107:                                              ; preds = %100
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %19, align 8
  br label %111

108:                                              ; preds = %100
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %19, align 8
  br label %111

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %100, %109
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %19, align 8
  br label %111

111:                                              ; preds = %110, %108, %107, %106
  %112 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %113 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %112, i32 0, i32 0
  %114 = load i8*, i8** %19, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %117 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @le16_to_cpu(i32 %119)
  %121 = call i32 (i32*, i8*, ...) @dev_info(i32* %113, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8* %114, i32 %115, i32 %120)
  br label %122

122:                                              ; preds = %111
  %123 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %124 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* @debug, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %130 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %129, i32 0, i32 0
  %131 = load i32, i32* %10, align 4
  %132 = call i32 (i32*, i8*, ...) @dev_info(i32* %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %128, %122
  %134 = load i32, i32* %10, align 4
  %135 = icmp slt i32 %134, 2
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %138 = load i32, i32* @ENODEV, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %404

140:                                              ; preds = %133
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %253, %140
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %256

145:                                              ; preds = %141
  %146 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %147 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %146, i32 0, i32 1
  %148 = load %struct.usb_host_interface*, %struct.usb_host_interface** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %148, i64 %150
  store %struct.usb_host_interface* %151, %struct.usb_host_interface** %20, align 8
  %152 = load %struct.usb_host_interface*, %struct.usb_host_interface** %20, align 8
  %153 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %9, align 4
  %156 = load %struct.usb_host_interface*, %struct.usb_host_interface** %20, align 8
  %157 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 1
  br i1 %160, label %161, label %170

161:                                              ; preds = %145
  %162 = load i32, i32* %17, align 4
  %163 = load %struct.usb_host_interface*, %struct.usb_host_interface** %20, align 8
  %164 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %162, i32 %166)
  %168 = load i32, i32* @ENODEV, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %404

170:                                              ; preds = %145
  %171 = load %struct.usb_host_interface*, %struct.usb_host_interface** %20, align 8
  %172 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %171, i32 0, i32 0
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %175, %struct.usb_endpoint_descriptor** %21, align 8
  %176 = load i8, i8* %18, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %170
  %180 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %21, align 8
  %181 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %180, i32 0, i32 0
  %182 = load i8, i8* %181, align 4
  store i8 %182, i8* %18, align 1
  br label %196

183:                                              ; preds = %170
  %184 = load i8, i8* %18, align 1
  %185 = zext i8 %184 to i32
  %186 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %21, align 8
  %187 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %186, i32 0, i32 0
  %188 = load i8, i8* %187, align 4
  %189 = zext i8 %188 to i32
  %190 = icmp ne i32 %185, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %183
  %192 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0))
  %193 = load i32, i32* @ENODEV, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %3, align 4
  br label %404

195:                                              ; preds = %183
  br label %196

196:                                              ; preds = %195, %179
  %197 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %21, align 8
  %198 = call i32 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %196
  %201 = load i32, i32* %17, align 4
  %202 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %201)
  %203 = load i32, i32* @ENODEV, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %3, align 4
  br label %404

205:                                              ; preds = %196
  %206 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %21, align 8
  %207 = call i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %205
  %210 = load i32, i32* %17, align 4
  %211 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* @ENODEV, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %3, align 4
  br label %404

214:                                              ; preds = %205
  %215 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %21, align 8
  %216 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @le16_to_cpu(i32 %217)
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %214
  %221 = load i32, i32* %15, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = load i32, i32* %9, align 4
  store i32 %224, i32* %15, align 4
  br label %229

225:                                              ; preds = %220
  %226 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %227 = load i32, i32* @ENODEV, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %3, align 4
  br label %404

229:                                              ; preds = %223
  br label %252

230:                                              ; preds = %214
  %231 = load i32, i32* %14, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %248

233:                                              ; preds = %230
  %234 = load i32, i32* %9, align 4
  store i32 %234, i32* %14, align 4
  %235 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %21, align 8
  %236 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @le16_to_cpu(i32 %237)
  store i32 %238, i32* %16, align 4
  %239 = load i32, i32* @debug, align 4
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %233
  %242 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %243 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %242, i32 0, i32 0
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* %16, align 4
  %246 = call i32 (i32*, i8*, ...) @dev_info(i32* %243, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %241, %233
  br label %251

248:                                              ; preds = %230
  %249 = load i32, i32* %9, align 4
  %250 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0), i32 %249)
  br label %251

251:                                              ; preds = %248, %247
  br label %252

252:                                              ; preds = %251, %229
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %141

256:                                              ; preds = %141
  %257 = load i32, i32* %16, align 4
  %258 = icmp sle i32 %257, 0
  br i1 %258, label %265, label %259

259:                                              ; preds = %256
  %260 = load i32, i32* %14, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %259
  %263 = load i32, i32* %15, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %262, %259, %256
  %266 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  %267 = load i32, i32* @ENODEV, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %3, align 4
  br label %404

269:                                              ; preds = %262
  %270 = load i32, i32* %11, align 4
  switch i32 %270, label %328 [
    i32 141, label %271
    i32 140, label %280
    i32 139, label %290
    i32 138, label %314
  ]

271:                                              ; preds = %269
  %272 = load i32, i32* @lighting, align 4
  %273 = call i32 @RESTRICT_TO_RANGE(i32 %272, i32 0, i32 2)
  %274 = load i32, i32* @size, align 4
  %275 = call i32 @RESTRICT_TO_RANGE(i32 %274, i32 135, i32 131)
  %276 = load i32, i32* @framerate, align 4
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %271
  store i32 2, i32* @framerate, align 4
  br label %279

279:                                              ; preds = %278, %271
  store i32 352, i32* %12, align 4
  store i32 288, i32* %13, align 4
  br label %333

280:                                              ; preds = %269
  %281 = load i32, i32* @lighting, align 4
  %282 = call i32 @RESTRICT_TO_RANGE(i32 %281, i32 0, i32 15)
  %283 = load i32, i32* @size, align 4
  %284 = load i32, i32* @SIZE_352x240, align 4
  %285 = call i32 @RESTRICT_TO_RANGE(i32 %283, i32 133, i32 %284)
  %286 = load i32, i32* @framerate, align 4
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %280
  store i32 2, i32* @framerate, align 4
  br label %289

289:                                              ; preds = %288, %280
  store i32 352, i32* %12, align 4
  store i32 240, i32* %13, align 4
  br label %333

290:                                              ; preds = %269
  %291 = load i32, i32* @lighting, align 4
  %292 = call i32 @RESTRICT_TO_RANGE(i32 %291, i32 0, i32 15)
  %293 = load i32, i32* @size, align 4
  switch i32 %293, label %301 [
    i32 134, label %294
    i32 132, label %305
    i32 130, label %312
  ]

294:                                              ; preds = %290
  store i32 160, i32* %12, align 4
  store i32 120, i32* %13, align 4
  %295 = load i32, i32* @framerate, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %294
  store i32 2, i32* @framerate, align 4
  br label %298

298:                                              ; preds = %297, %294
  %299 = load i32, i32* @framerate, align 4
  %300 = call i32 @RESTRICT_TO_RANGE(i32 %299, i32 0, i32 5)
  br label %313

301:                                              ; preds = %290
  %302 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %303 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %302, i32 0, i32 0
  %304 = call i32 (i32*, i8*, ...) @dev_info(i32* %303, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  store i32 132, i32* @size, align 4
  br label %305

305:                                              ; preds = %290, %301
  store i32 320, i32* %12, align 4
  store i32 240, i32* %13, align 4
  %306 = load i32, i32* @framerate, align 4
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  store i32 3, i32* @framerate, align 4
  br label %309

309:                                              ; preds = %308, %305
  %310 = load i32, i32* @framerate, align 4
  %311 = call i32 @RESTRICT_TO_RANGE(i32 %310, i32 0, i32 5)
  br label %313

312:                                              ; preds = %290
  store i32 640, i32* %12, align 4
  store i32 480, i32* %13, align 4
  store i32 0, i32* @framerate, align 4
  br label %313

313:                                              ; preds = %312, %309, %298
  br label %333

314:                                              ; preds = %269
  %315 = load i32, i32* @lighting, align 4
  %316 = call i32 @RESTRICT_TO_RANGE(i32 %315, i32 0, i32 2)
  %317 = load i32, i32* @size, align 4
  switch i32 %317, label %320 [
    i32 135, label %318
    i32 134, label %319
    i32 133, label %324
    i32 132, label %325
    i32 131, label %326
  ]

318:                                              ; preds = %314
  store i32 128, i32* %12, align 4
  store i32 96, i32* %13, align 4
  br label %327

319:                                              ; preds = %314
  store i32 160, i32* %12, align 4
  store i32 120, i32* %13, align 4
  br label %327

320:                                              ; preds = %314
  %321 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %322 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %321, i32 0, i32 0
  %323 = call i32 (i32*, i8*, ...) @dev_info(i32* %322, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  store i32 133, i32* @size, align 4
  br label %324

324:                                              ; preds = %314, %320
  store i32 176, i32* %12, align 4
  store i32 144, i32* %13, align 4
  br label %327

325:                                              ; preds = %314
  store i32 320, i32* %12, align 4
  store i32 240, i32* %13, align 4
  br label %327

326:                                              ; preds = %314
  store i32 352, i32* %12, align 4
  store i32 288, i32* %13, align 4
  br label %327

327:                                              ; preds = %326, %325, %324, %319, %318
  br label %333

328:                                              ; preds = %269
  %329 = load i32, i32* %11, align 4
  %330 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 %329)
  %331 = load i32, i32* @ENODEV, align 4
  %332 = sub nsw i32 0, %331
  store i32 %332, i32* %3, align 4
  br label %404

333:                                              ; preds = %327, %313, %289, %279
  %334 = load i32, i32* @cams, align 4
  %335 = call %struct.uvd* @usbvideo_AllocateDevice(i32 %334)
  store %struct.uvd* %335, %struct.uvd** %7, align 8
  %336 = load %struct.uvd*, %struct.uvd** %7, align 8
  %337 = icmp ne %struct.uvd* %336, null
  br i1 %337, label %338, label %400

338:                                              ; preds = %333
  %339 = load i32, i32* @flags, align 4
  %340 = load %struct.uvd*, %struct.uvd** %7, align 8
  %341 = getelementptr inbounds %struct.uvd, %struct.uvd* %340, i32 0, i32 11
  store i32 %339, i32* %341, align 8
  %342 = load i32, i32* @debug, align 4
  %343 = load %struct.uvd*, %struct.uvd** %7, align 8
  %344 = getelementptr inbounds %struct.uvd, %struct.uvd* %343, i32 0, i32 0
  store i32 %342, i32* %344, align 8
  %345 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %346 = load %struct.uvd*, %struct.uvd** %7, align 8
  %347 = getelementptr inbounds %struct.uvd, %struct.uvd* %346, i32 0, i32 10
  store %struct.usb_device* %345, %struct.usb_device** %347, align 8
  %348 = load i32, i32* %17, align 4
  %349 = load %struct.uvd*, %struct.uvd** %7, align 8
  %350 = getelementptr inbounds %struct.uvd, %struct.uvd* %349, i32 0, i32 1
  store i32 %348, i32* %350, align 4
  %351 = load i32, i32* %15, align 4
  %352 = load %struct.uvd*, %struct.uvd** %7, align 8
  %353 = getelementptr inbounds %struct.uvd, %struct.uvd* %352, i32 0, i32 2
  store i32 %351, i32* %353, align 8
  %354 = load i32, i32* %14, align 4
  %355 = load %struct.uvd*, %struct.uvd** %7, align 8
  %356 = getelementptr inbounds %struct.uvd, %struct.uvd* %355, i32 0, i32 3
  store i32 %354, i32* %356, align 4
  %357 = load i8, i8* %18, align 1
  %358 = load %struct.uvd*, %struct.uvd** %7, align 8
  %359 = getelementptr inbounds %struct.uvd, %struct.uvd* %358, i32 0, i32 4
  store i8 %357, i8* %359, align 8
  %360 = load i32, i32* %16, align 4
  %361 = load %struct.uvd*, %struct.uvd** %7, align 8
  %362 = getelementptr inbounds %struct.uvd, %struct.uvd* %361, i32 0, i32 5
  store i32 %360, i32* %362, align 4
  %363 = load i64, i64* @VIDEO_PALETTE_RGB24, align 8
  %364 = shl i64 1, %363
  %365 = load %struct.uvd*, %struct.uvd** %7, align 8
  %366 = getelementptr inbounds %struct.uvd, %struct.uvd* %365, i32 0, i32 6
  store i64 %364, i64* %366, align 8
  %367 = load i64, i64* @VIDEO_PALETTE_RGB24, align 8
  %368 = load %struct.uvd*, %struct.uvd** %7, align 8
  %369 = getelementptr inbounds %struct.uvd, %struct.uvd* %368, i32 0, i32 7
  store i64 %367, i64* %369, align 8
  %370 = load i32, i32* %12, align 4
  %371 = load i32, i32* %13, align 4
  %372 = call i32 @VIDEOSIZE(i32 %370, i32 %371)
  %373 = load %struct.uvd*, %struct.uvd** %7, align 8
  %374 = getelementptr inbounds %struct.uvd, %struct.uvd* %373, i32 0, i32 9
  store i32 %372, i32* %374, align 4
  %375 = load i32, i32* @size, align 4
  %376 = call i32 @ibmcam_size_to_videosize(i32 %375)
  %377 = load %struct.uvd*, %struct.uvd** %7, align 8
  %378 = getelementptr inbounds %struct.uvd, %struct.uvd* %377, i32 0, i32 8
  store i32 %376, i32* %378, align 8
  %379 = load %struct.uvd*, %struct.uvd** %7, align 8
  %380 = call %struct.TYPE_8__* @IBMCAM_T(%struct.uvd* %379)
  %381 = icmp ne %struct.TYPE_8__* %380, null
  %382 = zext i1 %381 to i32
  %383 = call i32 @assert(i32 %382)
  %384 = load i32, i32* %11, align 4
  %385 = load %struct.uvd*, %struct.uvd** %7, align 8
  %386 = call %struct.TYPE_8__* @IBMCAM_T(%struct.uvd* %385)
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i32 0, i32 0
  store i32 %384, i32* %387, align 8
  %388 = load %struct.uvd*, %struct.uvd** %7, align 8
  %389 = call %struct.TYPE_8__* @IBMCAM_T(%struct.uvd* %388)
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i32 0, i32 1
  store i64 0, i64* %390, align 8
  %391 = load %struct.uvd*, %struct.uvd** %7, align 8
  %392 = call i32 @ibmcam_configure_video(%struct.uvd* %391)
  %393 = load %struct.uvd*, %struct.uvd** %7, align 8
  %394 = call i32 @usbvideo_RegisterVideoDevice(%struct.uvd* %393)
  store i32 %394, i32* %9, align 4
  %395 = load i32, i32* %9, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %338
  %398 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0))
  store %struct.uvd* null, %struct.uvd** %7, align 8
  br label %399

399:                                              ; preds = %397, %338
  br label %400

400:                                              ; preds = %399, %333
  %401 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %402 = load %struct.uvd*, %struct.uvd** %7, align 8
  %403 = call i32 @usb_set_intfdata(%struct.usb_interface* %401, %struct.uvd* %402)
  store i32 0, i32* %3, align 4
  br label %404

404:                                              ; preds = %400, %328, %265, %225, %209, %200, %191, %161, %136, %90, %86, %63, %56, %44
  %405 = load i32, i32* %3, align 4
  ret i32 %405
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @RESTRICT_TO_RANGE(i32, i32, i32) #1

declare dso_local %struct.uvd* @usbvideo_AllocateDevice(i32) #1

declare dso_local i32 @VIDEOSIZE(i32, i32) #1

declare dso_local i32 @ibmcam_size_to_videosize(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_8__* @IBMCAM_T(%struct.uvd*) #1

declare dso_local i32 @ibmcam_configure_video(%struct.uvd*) #1

declare dso_local i32 @usbvideo_RegisterVideoDevice(%struct.uvd*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.uvd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
