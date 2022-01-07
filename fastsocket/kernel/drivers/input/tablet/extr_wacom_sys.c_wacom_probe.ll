; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.wacom = type { i32, i32, %struct.TYPE_10__*, %struct.input_dev*, i32, %struct.wacom*, %struct.wacom_features*, i32, i32, %struct.usb_interface*, %struct.usb_device* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.input_dev = type { i32*, i32*, i32*, i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.wacom_features = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.wacom_wac = type { i32, i32, %struct.TYPE_10__*, %struct.input_dev*, i32, %struct.wacom_wac*, %struct.wacom_features*, i32, i32, %struct.usb_interface*, %struct.usb_device* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@WACOM_PKGLEN_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@wacom_open = common dso_local global i32 0, align 4
@wacom_close = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_DIGI = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i64 0, align 8
@ABS_PRESSURE = common dso_local global i32 0, align 4
@WACOM_QUIRK_MULTI_INPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" Pen\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" Finger\00", align 1
@wacom_sys_irq = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @wacom_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca %struct.wacom*, align 8
  %9 = alloca %struct.wacom_wac*, align 8
  %10 = alloca %struct.wacom_features*, align 8
  %11 = alloca %struct.input_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %6, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.wacom_wac* @kzalloc(i32 72, i32 %17)
  %19 = bitcast %struct.wacom_wac* %18 to %struct.wacom*
  store %struct.wacom* %19, %struct.wacom** %8, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.wacom_wac* @kzalloc(i32 72, i32 %20)
  store %struct.wacom_wac* %21, %struct.wacom_wac** %9, align 8
  %22 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %22, %struct.input_dev** %11, align 8
  %23 = load %struct.wacom*, %struct.wacom** %8, align 8
  %24 = icmp ne %struct.wacom* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %27 = icmp ne %struct.input_dev* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.wacom_wac*, %struct.wacom_wac** %9, align 8
  %30 = icmp ne %struct.wacom_wac* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %25, %2
  br label %305

32:                                               ; preds = %28
  %33 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %34 = load i64, i64* @WACOM_PKGLEN_MAX, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = load %struct.wacom*, %struct.wacom** %8, align 8
  %37 = getelementptr inbounds %struct.wacom, %struct.wacom* %36, i32 0, i32 0
  %38 = call i32 @usb_buffer_alloc(%struct.usb_device* %33, i64 %34, i32 %35, i32* %37)
  %39 = load %struct.wacom_wac*, %struct.wacom_wac** %9, align 8
  %40 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.wacom_wac*, %struct.wacom_wac** %9, align 8
  %42 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %32
  br label %305

46:                                               ; preds = %32
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.TYPE_10__* @usb_alloc_urb(i32 0, i32 %47)
  %49 = load %struct.wacom*, %struct.wacom** %8, align 8
  %50 = getelementptr inbounds %struct.wacom, %struct.wacom* %49, i32 0, i32 2
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %50, align 8
  %51 = load %struct.wacom*, %struct.wacom** %8, align 8
  %52 = getelementptr inbounds %struct.wacom, %struct.wacom* %51, i32 0, i32 2
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = icmp ne %struct.TYPE_10__* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  br label %295

56:                                               ; preds = %46
  %57 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %58 = load %struct.wacom*, %struct.wacom** %8, align 8
  %59 = getelementptr inbounds %struct.wacom, %struct.wacom* %58, i32 0, i32 10
  store %struct.usb_device* %57, %struct.usb_device** %59, align 8
  %60 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %61 = load %struct.wacom*, %struct.wacom** %8, align 8
  %62 = getelementptr inbounds %struct.wacom, %struct.wacom* %61, i32 0, i32 3
  store %struct.input_dev* %60, %struct.input_dev** %62, align 8
  %63 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %64 = load %struct.wacom*, %struct.wacom** %8, align 8
  %65 = getelementptr inbounds %struct.wacom, %struct.wacom* %64, i32 0, i32 9
  store %struct.usb_interface* %63, %struct.usb_interface** %65, align 8
  %66 = load %struct.wacom*, %struct.wacom** %8, align 8
  %67 = getelementptr inbounds %struct.wacom, %struct.wacom* %66, i32 0, i32 8
  %68 = call i32 @mutex_init(i32* %67)
  %69 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %70 = load %struct.wacom*, %struct.wacom** %8, align 8
  %71 = getelementptr inbounds %struct.wacom, %struct.wacom* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @usb_make_path(%struct.usb_device* %69, i32 %72, i32 4)
  %74 = load %struct.wacom*, %struct.wacom** %8, align 8
  %75 = getelementptr inbounds %struct.wacom, %struct.wacom* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @strlcat(i32 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %78 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %79 = call %struct.wacom_features* @get_wacom_feature(%struct.usb_device_id* %78)
  store %struct.wacom_features* %79, %struct.wacom_features** %10, align 8
  %80 = load %struct.wacom_wac*, %struct.wacom_wac** %9, align 8
  %81 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %80, i32 0, i32 6
  store %struct.wacom_features* %79, %struct.wacom_features** %81, align 8
  %82 = load %struct.wacom_features*, %struct.wacom_features** %10, align 8
  %83 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @WACOM_PKGLEN_MAX, align 8
  %86 = icmp sgt i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @BUG_ON(i32 %87)
  %89 = load %struct.wacom_wac*, %struct.wacom_wac** %9, align 8
  %90 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %91 = call i32 @wacom_add_shared_data(%struct.wacom_wac* %89, %struct.usb_device* %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %56
  br label %290

95:                                               ; preds = %56
  %96 = load %struct.wacom_wac*, %struct.wacom_wac** %9, align 8
  %97 = bitcast %struct.wacom_wac* %96 to %struct.wacom*
  %98 = load %struct.wacom*, %struct.wacom** %8, align 8
  %99 = getelementptr inbounds %struct.wacom, %struct.wacom* %98, i32 0, i32 5
  store %struct.wacom* %97, %struct.wacom** %99, align 8
  %100 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %101 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %102 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %101, i32 0, i32 7
  %103 = call i32 @usb_to_input_id(%struct.usb_device* %100, i32* %102)
  %104 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %105 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %104, i32 0, i32 1
  %106 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %107 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i32* %105, i32** %108, align 8
  %109 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %110 = load %struct.wacom*, %struct.wacom** %8, align 8
  %111 = bitcast %struct.wacom* %110 to %struct.wacom_wac*
  %112 = call i32 @input_set_drvdata(%struct.input_dev* %109, %struct.wacom_wac* %111)
  %113 = load i32, i32* @wacom_open, align 4
  %114 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %115 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* @wacom_close, align 4
  %117 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %118 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  %119 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %120 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %119, i32 0, i32 0
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %125, %struct.usb_endpoint_descriptor** %7, align 8
  %126 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %127 = load %struct.wacom_features*, %struct.wacom_features** %10, align 8
  %128 = call i32 @wacom_retrieve_hid_descriptor(%struct.usb_interface* %126, %struct.wacom_features* %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %95
  br label %287

132:                                              ; preds = %95
  %133 = load i32, i32* @EV_KEY, align 4
  %134 = call i32 @BIT_MASK(i32 %133)
  %135 = load i32, i32* @EV_ABS, align 4
  %136 = call i32 @BIT_MASK(i32 %135)
  %137 = or i32 %134, %136
  %138 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %139 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %137
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* @BTN_TOUCH, align 4
  %145 = call i32 @BIT_MASK(i32 %144)
  %146 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %147 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* @BTN_DIGI, align 4
  %150 = call i64 @BIT_WORD(i32 %149)
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %145
  store i32 %153, i32* %151, align 4
  %154 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %155 = load i32, i32* @ABS_X, align 4
  %156 = load %struct.wacom_features*, %struct.wacom_features** %10, align 8
  %157 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @input_set_abs_params(%struct.input_dev* %154, i32 %155, i32 0, i32 %158, i32 4, i32 0)
  %160 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %161 = load i32, i32* @ABS_Y, align 4
  %162 = load %struct.wacom_features*, %struct.wacom_features** %10, align 8
  %163 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @input_set_abs_params(%struct.input_dev* %160, i32 %161, i32 0, i32 %164, i32 4, i32 0)
  %166 = load i32, i32* @ABS_MISC, align 4
  %167 = call i32 @BIT_MASK(i32 %166)
  %168 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %169 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* @ABS_MISC, align 4
  %172 = call i64 @BIT_WORD(i32 %171)
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %167
  store i32 %175, i32* %173, align 4
  %176 = load %struct.wacom_features*, %struct.wacom_features** %10, align 8
  %177 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @BTN_TOOL_PEN, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %132
  %182 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %183 = load i32, i32* @ABS_PRESSURE, align 4
  %184 = load %struct.wacom_features*, %struct.wacom_features** %10, align 8
  %185 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @input_set_abs_params(%struct.input_dev* %182, i32 %183, i32 0, i32 %186, i32 0, i32 0)
  br label %188

188:                                              ; preds = %181, %132
  %189 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %190 = load %struct.wacom_wac*, %struct.wacom_wac** %9, align 8
  %191 = call i32 @wacom_init_input_dev(%struct.input_dev* %189, %struct.wacom_wac* %190)
  %192 = load %struct.wacom_features*, %struct.wacom_features** %10, align 8
  %193 = call i32 @wacom_setup_device_quirks(%struct.wacom_features* %192)
  %194 = load %struct.wacom_wac*, %struct.wacom_wac** %9, align 8
  %195 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.wacom_features*, %struct.wacom_features** %10, align 8
  %198 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @strlcpy(i32 %196, i32 %199, i32 4)
  %201 = load %struct.wacom_features*, %struct.wacom_features** %10, align 8
  %202 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @WACOM_QUIRK_MULTI_INPUT, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %188
  %208 = load %struct.wacom_wac*, %struct.wacom_wac** %9, align 8
  %209 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.wacom_features*, %struct.wacom_features** %10, align 8
  %212 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @BTN_TOOL_PEN, align 8
  %215 = icmp eq i64 %213, %214
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %218 = call i32 @strlcat(i32 %210, i8* %217, i32 4)
  br label %219

219:                                              ; preds = %207, %188
  %220 = load %struct.wacom_wac*, %struct.wacom_wac** %9, align 8
  %221 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %224 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %223, i32 0, i32 3
  store i32 %222, i32* %224, align 8
  %225 = load %struct.wacom*, %struct.wacom** %8, align 8
  %226 = getelementptr inbounds %struct.wacom, %struct.wacom* %225, i32 0, i32 2
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %229 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %230 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %231 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @usb_rcvintpipe(%struct.usb_device* %229, i32 %232)
  %234 = load %struct.wacom_wac*, %struct.wacom_wac** %9, align 8
  %235 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.wacom_features*, %struct.wacom_features** %10, align 8
  %238 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i32, i32* @wacom_sys_irq, align 4
  %241 = load %struct.wacom*, %struct.wacom** %8, align 8
  %242 = bitcast %struct.wacom* %241 to %struct.wacom_wac*
  %243 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %244 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @usb_fill_int_urb(%struct.TYPE_10__* %227, %struct.usb_device* %228, i32 %233, i32 %236, i64 %239, i32 %240, %struct.wacom_wac* %242, i32 %245)
  %247 = load %struct.wacom*, %struct.wacom** %8, align 8
  %248 = getelementptr inbounds %struct.wacom, %struct.wacom* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.wacom*, %struct.wacom** %8, align 8
  %251 = getelementptr inbounds %struct.wacom, %struct.wacom* %250, i32 0, i32 2
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 1
  store i32 %249, i32* %253, align 4
  %254 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %255 = load %struct.wacom*, %struct.wacom** %8, align 8
  %256 = getelementptr inbounds %struct.wacom, %struct.wacom* %255, i32 0, i32 2
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = or i32 %259, %254
  store i32 %260, i32* %258, align 4
  %261 = load %struct.wacom*, %struct.wacom** %8, align 8
  %262 = bitcast %struct.wacom* %261 to %struct.wacom_wac*
  %263 = call i32 @wacom_initialize_leds(%struct.wacom_wac* %262)
  store i32 %263, i32* %12, align 4
  %264 = load i32, i32* %12, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %219
  br label %287

267:                                              ; preds = %219
  %268 = load %struct.wacom*, %struct.wacom** %8, align 8
  %269 = getelementptr inbounds %struct.wacom, %struct.wacom* %268, i32 0, i32 3
  %270 = load %struct.input_dev*, %struct.input_dev** %269, align 8
  %271 = call i32 @input_register_device(%struct.input_dev* %270)
  store i32 %271, i32* %12, align 4
  %272 = load i32, i32* %12, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %267
  br label %283

275:                                              ; preds = %267
  %276 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %277 = load %struct.wacom_features*, %struct.wacom_features** %10, align 8
  %278 = call i32 @wacom_query_tablet_data(%struct.usb_interface* %276, %struct.wacom_features* %277)
  %279 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %280 = load %struct.wacom*, %struct.wacom** %8, align 8
  %281 = bitcast %struct.wacom* %280 to %struct.wacom_wac*
  %282 = call i32 @usb_set_intfdata(%struct.usb_interface* %279, %struct.wacom_wac* %281)
  store i32 0, i32* %3, align 4
  br label %314

283:                                              ; preds = %274
  %284 = load %struct.wacom*, %struct.wacom** %8, align 8
  %285 = bitcast %struct.wacom* %284 to %struct.wacom_wac*
  %286 = call i32 @wacom_destroy_leds(%struct.wacom_wac* %285)
  br label %287

287:                                              ; preds = %283, %266, %131
  %288 = load %struct.wacom_wac*, %struct.wacom_wac** %9, align 8
  %289 = call i32 @wacom_remove_shared_data(%struct.wacom_wac* %288)
  br label %290

290:                                              ; preds = %287, %94
  %291 = load %struct.wacom*, %struct.wacom** %8, align 8
  %292 = getelementptr inbounds %struct.wacom, %struct.wacom* %291, i32 0, i32 2
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %292, align 8
  %294 = call i32 @usb_free_urb(%struct.TYPE_10__* %293)
  br label %295

295:                                              ; preds = %290, %55
  %296 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %297 = load i64, i64* @WACOM_PKGLEN_MAX, align 8
  %298 = load %struct.wacom_wac*, %struct.wacom_wac** %9, align 8
  %299 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.wacom*, %struct.wacom** %8, align 8
  %302 = getelementptr inbounds %struct.wacom, %struct.wacom* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @usb_buffer_free(%struct.usb_device* %296, i64 %297, i32 %300, i32 %303)
  br label %305

305:                                              ; preds = %295, %45, %31
  %306 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %307 = call i32 @input_free_device(%struct.input_dev* %306)
  %308 = load %struct.wacom*, %struct.wacom** %8, align 8
  %309 = bitcast %struct.wacom* %308 to %struct.wacom_wac*
  %310 = call i32 @kfree(%struct.wacom_wac* %309)
  %311 = load %struct.wacom_wac*, %struct.wacom_wac** %9, align 8
  %312 = call i32 @kfree(%struct.wacom_wac* %311)
  %313 = load i32, i32* %12, align 4
  store i32 %313, i32* %3, align 4
  br label %314

314:                                              ; preds = %305, %275
  %315 = load i32, i32* %3, align 4
  ret i32 %315
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.wacom_wac* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @usb_buffer_alloc(%struct.usb_device*, i64, i32, i32*) #1

declare dso_local %struct.TYPE_10__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local %struct.wacom_features* @get_wacom_feature(%struct.usb_device_id*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wacom_add_shared_data(%struct.wacom_wac*, %struct.usb_device*) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @wacom_retrieve_hid_descriptor(%struct.usb_interface*, %struct.wacom_features*) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i64 @BIT_WORD(i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wacom_init_input_dev(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @wacom_setup_device_quirks(%struct.wacom_features*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_10__*, %struct.usb_device*, i32, i32, i64, i32, %struct.wacom_wac*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @wacom_initialize_leds(%struct.wacom_wac*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @wacom_query_tablet_data(%struct.usb_interface*, %struct.wacom_features*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.wacom_wac*) #1

declare dso_local i32 @wacom_destroy_leds(%struct.wacom_wac*) #1

declare dso_local i32 @wacom_remove_shared_data(%struct.wacom_wac*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_10__*) #1

declare dso_local i32 @usb_buffer_free(%struct.usb_device*, i64, i32, i32) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.wacom_wac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
