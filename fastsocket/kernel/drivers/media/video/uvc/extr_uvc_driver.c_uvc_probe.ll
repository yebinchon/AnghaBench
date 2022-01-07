; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32, i32, i32 }
%struct.usb_device = type { i8*, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.uvc_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@UVC_TRACE_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Probing known UVC device %s (%04x:%04x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Probing generic UVC device %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uvc_quirks_param = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"UVC Camera (%04x:%04x)\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Unable to parse UVC descriptors.\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Found UVC %u.%02x device %s (%04x:%04x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"<unnamed>\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"Forcing device quirks to 0x%x by module parameter for testing purpose.\0A\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"Please report required quirks to the linux-uvc-devel mailing list.\0A\00", align 1
@.str.8 = private unnamed_addr constant [88 x i8] c"Unable to initialize the status endpoint (%d), status interrupt will not be supported.\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"UVC device initialized.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @uvc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.uvc_device*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %9)
  store %struct.usb_device* %10, %struct.usb_device** %6, align 8
  %11 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %12 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %17 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load i32, i32* @UVC_TRACE_PROBE, align 4
  %22 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %26 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %29 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @uvc_trace(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %30)
  br label %38

32:                                               ; preds = %15, %2
  %33 = load i32, i32* @UVC_TRACE_PROBE, align 4
  %34 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, ...) @uvc_trace(i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %32, %20
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.uvc_device* @kzalloc(i32 48, i32 %39)
  store %struct.uvc_device* %40, %struct.uvc_device** %7, align 8
  %41 = icmp eq %struct.uvc_device* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %209

45:                                               ; preds = %38
  %46 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %47 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %46, i32 0, i32 11
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %50 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %49, i32 0, i32 10
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %53 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %52, i32 0, i32 9
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %56 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %55, i32 0, i32 8
  %57 = call i32 @atomic_set(i32* %56, i32 0)
  %58 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %59 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %58, i32 0, i32 7
  %60 = call i32 @atomic_set(i32* %59, i32 0)
  %61 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %62 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %61, i32 0, i32 6
  %63 = call i32 @atomic_set(i32* %62, i32 0)
  %64 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %65 = call i32 @usb_get_dev(%struct.usb_device* %64)
  %66 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %67 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %69 = call i32 @usb_get_intf(%struct.usb_interface* %68)
  %70 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %71 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %73 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %79 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @uvc_quirks_param, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %86

82:                                               ; preds = %45
  %83 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %84 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  br label %88

86:                                               ; preds = %45
  %87 = load i32, i32* @uvc_quirks_param, align 4
  br label %88

88:                                               ; preds = %86, %82
  %89 = phi i32 [ %85, %82 ], [ %87, %86 ]
  %90 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %91 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %93 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %88
  %97 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %98 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %101 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strlcpy(i32 %99, i8* %102, i32 4)
  br label %119

104:                                              ; preds = %88
  %105 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %106 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %109 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le16_to_cpu(i32 %111)
  %113 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %114 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @le16_to_cpu(i32 %116)
  %118 = call i32 @snprintf(i32 %107, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %117)
  br label %119

119:                                              ; preds = %104, %96
  %120 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %121 = call i64 @uvc_parse_control(%struct.uvc_device* %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32, i32* @UVC_TRACE_PROBE, align 4
  %125 = call i32 (i32, i8*, ...) @uvc_trace(i32 %124, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %204

126:                                              ; preds = %119
  %127 = load i32, i32* @KERN_INFO, align 4
  %128 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %129 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = ashr i32 %130, 8
  %132 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %133 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 255
  %136 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %137 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %126
  %141 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %142 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  br label %145

144:                                              ; preds = %126
  br label %145

145:                                              ; preds = %144, %140
  %146 = phi i8* [ %143, %140 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %144 ]
  %147 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %148 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @le16_to_cpu(i32 %150)
  %152 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %153 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @le16_to_cpu(i32 %155)
  %157 = call i32 (i32, i8*, ...) @uvc_printk(i32 %127, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %131, i32 %135, i8* %146, i32 %151, i32 %156)
  %158 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %159 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %162 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %160, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %145
  %166 = load i32, i32* @KERN_INFO, align 4
  %167 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %168 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i32, i8*, ...) @uvc_printk(i32 %166, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* @KERN_INFO, align 4
  %172 = call i32 (i32, i8*, ...) @uvc_printk(i32 %171, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0))
  br label %173

173:                                              ; preds = %165, %145
  %174 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %175 = call i64 @uvc_ctrl_init_device(%struct.uvc_device* %174)
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  br label %204

178:                                              ; preds = %173
  %179 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %180 = call i64 @uvc_scan_device(%struct.uvc_device* %179)
  %181 = icmp slt i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  br label %204

183:                                              ; preds = %178
  %184 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %185 = call i64 @uvc_register_chains(%struct.uvc_device* %184)
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  br label %204

188:                                              ; preds = %183
  %189 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %190 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %191 = call i32 @usb_set_intfdata(%struct.usb_interface* %189, %struct.uvc_device* %190)
  %192 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %193 = call i32 @uvc_status_init(%struct.uvc_device* %192)
  store i32 %193, i32* %8, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %188
  %196 = load i32, i32* @KERN_INFO, align 4
  %197 = load i32, i32* %8, align 4
  %198 = call i32 (i32, i8*, ...) @uvc_printk(i32 %196, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.8, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %195, %188
  %200 = load i32, i32* @UVC_TRACE_PROBE, align 4
  %201 = call i32 (i32, i8*, ...) @uvc_trace(i32 %200, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %202 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %203 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %202, i32 0, i32 1
  store i64 0, i64* %203, align 8
  store i32 0, i32* %3, align 4
  br label %209

204:                                              ; preds = %187, %182, %177, %123
  %205 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  %206 = call i32 @uvc_unregister_video(%struct.uvc_device* %205)
  %207 = load i32, i32* @ENODEV, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %204, %199, %42
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @uvc_trace(i32, i8*, ...) #1

declare dso_local %struct.uvc_device* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @uvc_parse_control(%struct.uvc_device*) #1

declare dso_local i32 @uvc_printk(i32, i8*, ...) #1

declare dso_local i64 @uvc_ctrl_init_device(%struct.uvc_device*) #1

declare dso_local i64 @uvc_scan_device(%struct.uvc_device*) #1

declare dso_local i64 @uvc_register_chains(%struct.uvc_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.uvc_device*) #1

declare dso_local i32 @uvc_status_init(%struct.uvc_device*) #1

declare dso_local i32 @uvc_unregister_video(%struct.uvc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
