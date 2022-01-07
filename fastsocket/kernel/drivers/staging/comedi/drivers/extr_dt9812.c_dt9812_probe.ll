; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot_dt9812 = type { i64, i32, %struct.usb_dt9812* }
%struct.usb_dt9812 = type { i32, i32, i32, i32, i32*, i32, %struct.slot_dt9812*, i64, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.usb_interface* }
%struct.TYPE_14__ = type { i32, i8* }
%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_12__ = type { i32, i8* }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_10__ = type { i32, i8* }
%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.usb_device_id = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Wrong number of endpints.\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Endpoint has wrong direction.\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"usb_reset_configuration succeded after %d iterations\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Failed to read vendor.\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Failed to read product.\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Failed to read device.\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Failed to read serial.\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"USB DT9812 (%4.4x.%4.4x.%4.4x) #0x%8.8x\0A\00", align 1
@dt9812_mutex = common dso_local global i32 0, align 4
@DT9812_NUM_SLOTS = common dso_local global i32 0, align 4
@dt9812 = common dso_local global %struct.slot_dt9812* null, align 8
@dt9812_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @dt9812_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt9812_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_dt9812*, align 8
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.slot_dt9812*, align 8
  %14 = alloca %struct.slot_dt9812*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  store %struct.usb_dt9812* null, %struct.usb_dt9812** %7, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.usb_dt9812* @kzalloc(i32 144, i32 %17)
  store %struct.usb_dt9812* %18, %struct.usb_dt9812** %7, align 8
  %19 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %20 = icmp eq %struct.usb_dt9812* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %372

25:                                               ; preds = %2
  %26 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %27 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %26, i32 0, i32 5
  %28 = call i32 @kref_init(i32* %27)
  %29 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %30 = call i32 @interface_to_usbdev(%struct.usb_interface* %29)
  %31 = call i32 @usb_get_dev(i32 %30)
  %32 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %33 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  %34 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %35 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %36 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %35, i32 0, i32 14
  store %struct.usb_interface* %34, %struct.usb_interface** %36, align 8
  %37 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %38 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %37, i32 0, i32 1
  %39 = load %struct.usb_host_interface*, %struct.usb_host_interface** %38, align 8
  store %struct.usb_host_interface* %39, %struct.usb_host_interface** %8, align 8
  %40 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %41 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 5
  br i1 %44, label %45, label %49

45:                                               ; preds = %25
  %46 = call i32 @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %372

49:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %156, %49
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %53 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %159

57:                                               ; preds = %50
  store i32 -1, i32* %12, align 4
  %58 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %59 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %64, %struct.usb_endpoint_descriptor** %9, align 8
  %65 = load i32, i32* %10, align 4
  switch i32 %65, label %141 [
    i32 0, label %66
    i32 1, label %81
    i32 2, label %96
    i32 3, label %111
    i32 4, label %126
  ]

66:                                               ; preds = %57
  %67 = load i32, i32* @USB_DIR_IN, align 4
  store i32 %67, i32* %12, align 4
  %68 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %69 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %72 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %71, i32 0, i32 13
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %75 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @le16_to_cpu(i32 %76)
  %78 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %79 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %78, i32 0, i32 13
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  br label %141

81:                                               ; preds = %57
  %82 = load i32, i32* @USB_DIR_OUT, align 4
  store i32 %82, i32* %12, align 4
  %83 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %84 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %87 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %86, i32 0, i32 12
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %90 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @le16_to_cpu(i32 %91)
  %93 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %94 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %93, i32 0, i32 12
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  store i8* %92, i8** %95, align 8
  br label %141

96:                                               ; preds = %57
  %97 = load i32, i32* @USB_DIR_IN, align 4
  store i32 %97, i32* %12, align 4
  %98 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %99 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %102 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %101, i32 0, i32 11
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %105 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @le16_to_cpu(i32 %106)
  %108 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %109 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %108, i32 0, i32 11
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  store i8* %107, i8** %110, align 8
  br label %141

111:                                              ; preds = %57
  %112 = load i32, i32* @USB_DIR_OUT, align 4
  store i32 %112, i32* %12, align 4
  %113 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %114 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %117 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %116, i32 0, i32 10
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  %119 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %120 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @le16_to_cpu(i32 %121)
  %123 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %124 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %123, i32 0, i32 10
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  store i8* %122, i8** %125, align 8
  br label %141

126:                                              ; preds = %57
  %127 = load i32, i32* @USB_DIR_IN, align 4
  store i32 %127, i32* %12, align 4
  %128 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %129 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %132 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %131, i32 0, i32 9
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  %134 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %135 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @le16_to_cpu(i32 %136)
  %138 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %139 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %138, i32 0, i32 9
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  store i8* %137, i8** %140, align 8
  br label %141

141:                                              ; preds = %57, %126, %111, %96, %81, %66
  %142 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %143 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @USB_DIR_IN, align 4
  %146 = and i32 %144, %145
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %141
  %150 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %151 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %150, i32 0, i32 0
  %152 = call i32 @dev_err(i32* %151, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %153 = load i32, i32* @ENODEV, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %6, align 4
  br label %372

155:                                              ; preds = %141
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %50

159:                                              ; preds = %50
  %160 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %161 = call i32 @dt9812_read_info(%struct.usb_dt9812* %160, i32 0, i32* %11, i32 4)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %186

163:                                              ; preds = %159
  %164 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %165 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @usb_reset_configuration(i32 %166)
  store i32 0, i32* %10, align 4
  br label %168

168:                                              ; preds = %182, %163
  %169 = load i32, i32* %10, align 4
  %170 = icmp slt i32 %169, 10
  br i1 %170, label %171, label %185

171:                                              ; preds = %168
  %172 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %173 = call i32 @dt9812_read_info(%struct.usb_dt9812* %172, i32 1, i32* %11, i32 4)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %178 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %177, i32 0, i32 0
  %179 = load i32, i32* %10, align 4
  %180 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %178, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %179)
  br label %185

181:                                              ; preds = %171
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %10, align 4
  br label %168

185:                                              ; preds = %176, %168
  br label %186

186:                                              ; preds = %185, %159
  %187 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %188 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %189 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %188, i32 0, i32 0
  %190 = call i32 @dt9812_read_info(%struct.usb_dt9812* %187, i32 1, i32* %189, i32 4)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %186
  %193 = call i32 @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %194 = load i32, i32* @ENODEV, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %6, align 4
  br label %372

196:                                              ; preds = %186
  %197 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %198 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %199 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %198, i32 0, i32 1
  %200 = call i32 @dt9812_read_info(%struct.usb_dt9812* %197, i32 3, i32* %199, i32 4)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  %203 = call i32 @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %204 = load i32, i32* @ENODEV, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %6, align 4
  br label %372

206:                                              ; preds = %196
  %207 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %208 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %209 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %208, i32 0, i32 2
  %210 = call i32 @dt9812_read_info(%struct.usb_dt9812* %207, i32 5, i32* %209, i32 4)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = call i32 @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %214 = load i32, i32* @ENODEV, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %6, align 4
  br label %372

216:                                              ; preds = %206
  %217 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %218 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %219 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %218, i32 0, i32 3
  %220 = call i32 @dt9812_read_info(%struct.usb_dt9812* %217, i32 7, i32* %219, i32 4)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = call i32 @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %224 = load i32, i32* @ENODEV, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %6, align 4
  br label %372

226:                                              ; preds = %216
  %227 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %228 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i8* @le16_to_cpu(i32 %229)
  %231 = ptrtoint i8* %230 to i32
  %232 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %233 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  %234 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %235 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i8* @le16_to_cpu(i32 %236)
  %238 = ptrtoint i8* %237 to i32
  %239 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %240 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  %241 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %242 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = call i8* @le16_to_cpu(i32 %243)
  %245 = ptrtoint i8* %244 to i32
  %246 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %247 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %246, i32 0, i32 2
  store i32 %245, i32* %247, align 8
  %248 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %249 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @le32_to_cpu(i32 %250)
  %252 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %253 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %252, i32 0, i32 3
  store i32 %251, i32* %253, align 4
  %254 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %255 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  switch i32 %256, label %275 [
    i32 129, label %257
    i32 128, label %266
  ]

257:                                              ; preds = %226
  %258 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %259 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %258, i32 0, i32 4
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  store i32 2048, i32* %261, align 4
  %262 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %263 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %262, i32 0, i32 4
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 1
  store i32 2048, i32* %265, align 4
  br label %275

266:                                              ; preds = %226
  %267 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %268 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %267, i32 0, i32 4
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  store i32 0, i32* %270, align 4
  %271 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %272 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %271, i32 0, i32 4
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  store i32 0, i32* %274, align 4
  br label %275

275:                                              ; preds = %226, %266, %257
  %276 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %277 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %276, i32 0, i32 7
  store i64 0, i64* %277, align 8
  %278 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %279 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %280 = call i32 @usb_set_intfdata(%struct.usb_interface* %278, %struct.usb_dt9812* %279)
  %281 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %282 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %281, i32 0, i32 0
  %283 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %284 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %287 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %290 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %293 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %282, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %285, i32 %288, i32 %291, i32 %294)
  %296 = call i32 @down(i32* @dt9812_mutex)
  store %struct.slot_dt9812* null, %struct.slot_dt9812** %13, align 8
  store %struct.slot_dt9812* null, %struct.slot_dt9812** %14, align 8
  store i32 0, i32* %10, align 4
  br label %297

297:                                              ; preds = %346, %275
  %298 = load i32, i32* %10, align 4
  %299 = load i32, i32* @DT9812_NUM_SLOTS, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %349

301:                                              ; preds = %297
  %302 = load %struct.slot_dt9812*, %struct.slot_dt9812** %13, align 8
  %303 = icmp ne %struct.slot_dt9812* %302, null
  br i1 %303, label %325, label %304

304:                                              ; preds = %301
  %305 = load %struct.slot_dt9812*, %struct.slot_dt9812** @dt9812, align 8
  %306 = load i32, i32* %10, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %305, i64 %307
  %309 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %308, i32 0, i32 2
  %310 = load %struct.usb_dt9812*, %struct.usb_dt9812** %309, align 8
  %311 = icmp ne %struct.usb_dt9812* %310, null
  br i1 %311, label %325, label %312

312:                                              ; preds = %304
  %313 = load %struct.slot_dt9812*, %struct.slot_dt9812** @dt9812, align 8
  %314 = load i32, i32* %10, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %313, i64 %315
  %317 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %312
  %321 = load %struct.slot_dt9812*, %struct.slot_dt9812** @dt9812, align 8
  %322 = load i32, i32* %10, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %321, i64 %323
  store %struct.slot_dt9812* %324, %struct.slot_dt9812** %13, align 8
  br label %325

325:                                              ; preds = %320, %312, %304, %301
  %326 = load %struct.slot_dt9812*, %struct.slot_dt9812** %14, align 8
  %327 = icmp ne %struct.slot_dt9812* %326, null
  br i1 %327, label %345, label %328

328:                                              ; preds = %325
  %329 = load %struct.slot_dt9812*, %struct.slot_dt9812** @dt9812, align 8
  %330 = load i32, i32* %10, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %329, i64 %331
  %333 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %336 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = sext i32 %337 to i64
  %339 = icmp eq i64 %334, %338
  br i1 %339, label %340, label %345

340:                                              ; preds = %328
  %341 = load %struct.slot_dt9812*, %struct.slot_dt9812** @dt9812, align 8
  %342 = load i32, i32* %10, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %341, i64 %343
  store %struct.slot_dt9812* %344, %struct.slot_dt9812** %14, align 8
  br label %345

345:                                              ; preds = %340, %328, %325
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %10, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %10, align 4
  br label %297

349:                                              ; preds = %297
  %350 = load %struct.slot_dt9812*, %struct.slot_dt9812** %14, align 8
  %351 = icmp ne %struct.slot_dt9812* %350, null
  br i1 %351, label %354, label %352

352:                                              ; preds = %349
  %353 = load %struct.slot_dt9812*, %struct.slot_dt9812** %13, align 8
  store %struct.slot_dt9812* %353, %struct.slot_dt9812** %14, align 8
  br label %354

354:                                              ; preds = %352, %349
  %355 = load %struct.slot_dt9812*, %struct.slot_dt9812** %14, align 8
  %356 = icmp ne %struct.slot_dt9812* %355, null
  br i1 %356, label %357, label %370

357:                                              ; preds = %354
  %358 = load %struct.slot_dt9812*, %struct.slot_dt9812** %14, align 8
  %359 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %358, i32 0, i32 1
  %360 = call i32 @down(i32* %359)
  %361 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %362 = load %struct.slot_dt9812*, %struct.slot_dt9812** %14, align 8
  %363 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %362, i32 0, i32 2
  store %struct.usb_dt9812* %361, %struct.usb_dt9812** %363, align 8
  %364 = load %struct.slot_dt9812*, %struct.slot_dt9812** %14, align 8
  %365 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %366 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %365, i32 0, i32 6
  store %struct.slot_dt9812* %364, %struct.slot_dt9812** %366, align 8
  %367 = load %struct.slot_dt9812*, %struct.slot_dt9812** %14, align 8
  %368 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %367, i32 0, i32 1
  %369 = call i32 @up(i32* %368)
  br label %370

370:                                              ; preds = %357, %354
  %371 = call i32 @up(i32* @dt9812_mutex)
  store i32 0, i32* %3, align 4
  br label %382

372:                                              ; preds = %222, %212, %202, %192, %149, %45, %21
  %373 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %374 = icmp ne %struct.usb_dt9812* %373, null
  br i1 %374, label %375, label %380

375:                                              ; preds = %372
  %376 = load %struct.usb_dt9812*, %struct.usb_dt9812** %7, align 8
  %377 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %376, i32 0, i32 5
  %378 = load i32, i32* @dt9812_delete, align 4
  %379 = call i32 @kref_put(i32* %377, i32 %378)
  br label %380

380:                                              ; preds = %375, %372
  %381 = load i32, i32* %6, align 4
  store i32 %381, i32* %3, align 4
  br label %382

382:                                              ; preds = %380, %370
  %383 = load i32, i32* %3, align 4
  ret i32 %383
}

declare dso_local %struct.usb_dt9812* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @dt9812_read_info(%struct.usb_dt9812*, i32, i32*, i32) #1

declare dso_local i32 @usb_reset_configuration(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_dt9812*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
