; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-core.c_hdpvr_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-core.c_hdpvr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.hdpvr_device = type { i64, i64, i32, i32, i32, i32, i64, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"v4l2_device_register failed\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"hdpvr_buffer\00", align 1
@hdpvr_default_options = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@default_video_input = common dso_local global i64 0, align 8
@HDPVR_VIDEO_INPUTS = common dso_local global i64 0, align 8
@default_audio_input = common dso_local global i64 0, align 8
@HDPVR_AUDIO_INPUTS = common dso_local global i64 0, align 8
@HDPVR_SPDIF = common dso_local global i64 0, align 8
@V4L2_MPEG_AUDIO_ENCODING_AC3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Could not find bulk-in endpoint\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"device init failed\0A\00", align 1
@NUM_BUFFERS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"allocating transfer buffers failed\0A\00", align 1
@video_nr = common dso_local global i32* null, align 8
@dev_nr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"registering videodev failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"device now attached to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @hdpvr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdpvr_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.hdpvr_device*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.hdpvr_device* @kzalloc(i32 104, i32 %15)
  store %struct.hdpvr_device* %16, %struct.hdpvr_device** %6, align 8
  %17 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %18 = icmp ne %struct.hdpvr_device* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = call i32 @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %208

21:                                               ; preds = %2
  %22 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %23 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %25 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %24, i32 0, i32 0
  %26 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %27 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %26, i32 0, i32 4
  %28 = call i64 @v4l2_device_register(i32* %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = call i32 @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %208

32:                                               ; preds = %21
  %33 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %34 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %33, i32 0, i32 5
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %37 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %36, i32 0, i32 15
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %40 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %39, i32 0, i32 14
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32 @kmalloc(i32 64, i32 %42)
  %44 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %45 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %44, i32 0, i32 13
  store i32 %43, i32* %45, align 8
  %46 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %47 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %46, i32 0, i32 13
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %32
  %51 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %52 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %51, i32 0, i32 4
  %53 = call i32 @v4l2_err(i32* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %208

54:                                               ; preds = %32
  %55 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %56 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %55, i32 0, i32 12
  %57 = call i32 @init_waitqueue_head(i32* %56)
  %58 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %59 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %58, i32 0, i32 11
  %60 = call i32 @init_waitqueue_head(i32* %59)
  %61 = call i64 @create_singlethread_workqueue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %63 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %65 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %54
  br label %208

69:                                               ; preds = %54
  %70 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %71 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %70, i32 0, i32 10
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %74 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %73, i32 0, i32 9
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  %76 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %77 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %76, i32 0, i32 8
  %78 = bitcast %struct.TYPE_6__* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 bitcast (%struct.TYPE_6__* @hdpvr_default_options to i8*), i64 24, i1 false)
  %79 = load i64, i64* @default_video_input, align 8
  %80 = load i64, i64* @HDPVR_VIDEO_INPUTS, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %69
  %83 = load i64, i64* @default_video_input, align 8
  %84 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %85 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %84, i32 0, i32 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i64 %83, i64* %86, align 8
  br label %87

87:                                               ; preds = %82, %69
  %88 = load i64, i64* @default_audio_input, align 8
  %89 = load i64, i64* @HDPVR_AUDIO_INPUTS, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load i64, i64* @default_audio_input, align 8
  %93 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %94 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %93, i32 0, i32 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i64 %92, i64* %95, align 8
  %96 = load i64, i64* @default_audio_input, align 8
  %97 = load i64, i64* @HDPVR_SPDIF, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AC3, align 4
  %101 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %102 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %101, i32 0, i32 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  br label %104

104:                                              ; preds = %99, %91
  br label %105

105:                                              ; preds = %104, %87
  %106 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %107 = call i32 @interface_to_usbdev(%struct.usb_interface* %106)
  %108 = call i32 @usb_get_dev(i32 %107)
  %109 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %110 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %109, i32 0, i32 7
  store i32 %108, i32* %110, align 8
  %111 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %112 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %111, i32 0, i32 1
  %113 = load %struct.usb_host_interface*, %struct.usb_host_interface** %112, align 8
  store %struct.usb_host_interface* %113, %struct.usb_host_interface** %7, align 8
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %147, %105
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %117 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %115, %119
  br i1 %120, label %121, label %150

121:                                              ; preds = %114
  %122 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %123 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %128, %struct.usb_endpoint_descriptor** %8, align 8
  %129 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %130 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %146, label %133

133:                                              ; preds = %121
  %134 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %135 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  store i64 8192, i64* %10, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %140 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  %141 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %142 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %145 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %144, i32 0, i32 6
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %137, %133, %121
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %114

150:                                              ; preds = %114
  %151 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %152 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %150
  %156 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %157 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %156, i32 0, i32 4
  %158 = call i32 @v4l2_err(i32* %157, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %208

159:                                              ; preds = %150
  %160 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %161 = call i64 @hdpvr_device_init(%struct.hdpvr_device* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %165 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %164, i32 0, i32 4
  %166 = call i32 @v4l2_err(i32* %165, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %208

167:                                              ; preds = %159
  %168 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %169 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %168, i32 0, i32 5
  %170 = call i32 @mutex_lock(i32* %169)
  %171 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %172 = load i32, i32* @NUM_BUFFERS, align 4
  %173 = call i64 @hdpvr_alloc_buffers(%struct.hdpvr_device* %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %167
  %176 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %177 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %176, i32 0, i32 5
  %178 = call i32 @mutex_unlock(i32* %177)
  %179 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %180 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %179, i32 0, i32 4
  %181 = call i32 @v4l2_err(i32* %180, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %208

182:                                              ; preds = %167
  %183 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %184 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %183, i32 0, i32 5
  %185 = call i32 @mutex_unlock(i32* %184)
  %186 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %187 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %188 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %187, i32 0, i32 0
  %189 = load i32*, i32** @video_nr, align 8
  %190 = call i64 @atomic_inc_return(i32* @dev_nr)
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @hdpvr_register_videodev(%struct.hdpvr_device* %186, i32* %188, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %182
  %196 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %197 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %196, i32 0, i32 4
  %198 = call i32 @v4l2_err(i32* %197, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %208

199:                                              ; preds = %182
  %200 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %201 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %200, i32 0, i32 4
  %202 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %203 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @video_device_node_name(i32 %204)
  %206 = call i32 @v4l2_info(i32* %201, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %205)
  store i32 0, i32* %3, align 4
  br label %226

207:                                              ; No predecessors!
  br label %208

208:                                              ; preds = %207, %195, %175, %163, %155, %68, %50, %30, %19
  %209 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %210 = icmp ne %struct.hdpvr_device* %209, null
  br i1 %210, label %211, label %224

211:                                              ; preds = %208
  %212 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %213 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %211
  %217 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %218 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @destroy_workqueue(i64 %219)
  br label %221

221:                                              ; preds = %216, %211
  %222 = load %struct.hdpvr_device*, %struct.hdpvr_device** %6, align 8
  %223 = call i32 @hdpvr_delete(%struct.hdpvr_device* %222)
  br label %224

224:                                              ; preds = %221, %208
  %225 = load i32, i32* %12, align 4
  store i32 %225, i32* %3, align 4
  br label %226

226:                                              ; preds = %224, %199
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local %struct.hdpvr_device* @kzalloc(i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i64 @v4l2_device_register(i32*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @hdpvr_device_init(%struct.hdpvr_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @hdpvr_alloc_buffers(%struct.hdpvr_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @hdpvr_register_videodev(%struct.hdpvr_device*, i32*, i32) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32) #1

declare dso_local i32 @video_device_node_name(i32) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @hdpvr_delete(%struct.hdpvr_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
