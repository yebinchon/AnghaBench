; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_xpad.c_xpad_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_xpad.c_xpad_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i32, i64, i32 }
%struct.usb_interface = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__*, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.usb_xpad = type { i32, i64, i32*, i32, i32, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.usb_device*, %struct.input_dev*, i32 }
%struct.TYPE_18__ = type { %struct.usb_device*, i32, i32 }
%struct.input_dev = type { i32*, i32, i32, i32, %struct.TYPE_16__, i32, i32, i32 }
%struct.TYPE_16__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@xpad_device = common dso_local global %struct.TYPE_17__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@XPAD_PKT_LEN = common dso_local global i32 0, align 4
@MAP_DPAD_UNKNOWN = common dso_local global i32 0, align 4
@dpad_to_buttons = common dso_local global i32 0, align 4
@XTYPE_UNKNOWN = common dso_local global i64 0, align 8
@USB_CLASS_VENDOR_SPEC = common dso_local global i64 0, align 8
@XTYPE_XBOX360W = common dso_local global i64 0, align 8
@XTYPE_XBOX360 = common dso_local global i64 0, align 8
@XTYPE_XBOX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@xpad_open = common dso_local global i32 0, align 4
@xpad_close = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@xpad_common_btn = common dso_local global i64* null, align 8
@xpad360_btn = common dso_local global i64* null, align 8
@xpad_btn = common dso_local global i64* null, align 8
@MAP_DPAD_TO_BUTTONS = common dso_local global i32 0, align 4
@xpad_btn_pad = common dso_local global i64* null, align 8
@xpad_abs = common dso_local global i64* null, align 8
@MAP_DPAD_TO_AXES = common dso_local global i32 0, align 4
@xpad_abs_pad = common dso_local global i64* null, align 8
@xpad_irq_in = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@xpad_bulk_out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @xpad_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpad_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_xpad*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %52, %2
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** @xpad_device, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %16
  %25 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le16_to_cpu(i32 %28)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** @xpad_device, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %29, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %24
  %38 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %39 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @le16_to_cpu(i32 %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** @xpad_device, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %42, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %55

51:                                               ; preds = %37, %24
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %16

55:                                               ; preds = %50, %16
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @kzalloc(i32 72, i32 %56)
  %58 = bitcast i8* %57 to %struct.usb_xpad*
  store %struct.usb_xpad* %58, %struct.usb_xpad** %7, align 8
  %59 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %59, %struct.input_dev** %8, align 8
  %60 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %61 = icmp ne %struct.usb_xpad* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %64 = icmp ne %struct.input_dev* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62, %55
  br label %561

66:                                               ; preds = %62
  %67 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %68 = load i32, i32* @XPAD_PKT_LEN, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %71 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %70, i32 0, i32 3
  %72 = call i32 @usb_buffer_alloc(%struct.usb_device* %67, i32 %68, i32 %69, i32* %71)
  %73 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %74 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %76 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %66
  br label %561

80:                                               ; preds = %66
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i8* @usb_alloc_urb(i32 0, i32 %81)
  %83 = bitcast i8* %82 to %struct.TYPE_18__*
  %84 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %85 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %84, i32 0, i32 5
  store %struct.TYPE_18__* %83, %struct.TYPE_18__** %85, align 8
  %86 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %87 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %86, i32 0, i32 5
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = icmp ne %struct.TYPE_18__* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %80
  br label %551

91:                                               ; preds = %80
  %92 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %93 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %94 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %93, i32 0, i32 7
  store %struct.usb_device* %92, %struct.usb_device** %94, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** @xpad_device, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %102 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** @xpad_device, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %110 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %112 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @MAP_DPAD_UNKNOWN, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %91
  %117 = load i32, i32* @dpad_to_buttons, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %122 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %116, %91
  %124 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %125 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @XTYPE_UNKNOWN, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %160

129:                                              ; preds = %123
  %130 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %131 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %130, i32 0, i32 0
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %155

138:                                              ; preds = %129
  %139 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %140 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %139, i32 0, i32 0
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 129
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = load i64, i64* @XTYPE_XBOX360W, align 8
  %148 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %149 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  br label %154

150:                                              ; preds = %138
  %151 = load i64, i64* @XTYPE_XBOX360, align 8
  %152 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %153 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %150, %146
  br label %159

155:                                              ; preds = %129
  %156 = load i64, i64* @XTYPE_XBOX, align 8
  %157 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %158 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %155, %154
  br label %160

160:                                              ; preds = %159, %123
  %161 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %162 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %163 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %162, i32 0, i32 8
  store %struct.input_dev* %161, %struct.input_dev** %163, align 8
  %164 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %165 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %166 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @usb_make_path(%struct.usb_device* %164, i32 %167, i32 4)
  %169 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %170 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %169, i32 0, i32 9
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @strlcat(i32 %171, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** @xpad_device, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %180 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %179, i32 0, i32 7
  store i32 %178, i32* %180, align 8
  %181 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %182 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %181, i32 0, i32 9
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %185 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %184, i32 0, i32 6
  store i32 %183, i32* %185, align 4
  %186 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %187 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %188 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %187, i32 0, i32 5
  %189 = call i32 @usb_to_input_id(%struct.usb_device* %186, i32* %188)
  %190 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %191 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %190, i32 0, i32 1
  %192 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %193 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  store i32* %191, i32** %194, align 8
  %195 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %196 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %197 = call i32 @input_set_drvdata(%struct.input_dev* %195, %struct.usb_xpad* %196)
  %198 = load i32, i32* @xpad_open, align 4
  %199 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %200 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 8
  %201 = load i32, i32* @xpad_close, align 4
  %202 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %203 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* @EV_KEY, align 4
  %205 = call i32 @BIT_MASK(i32 %204)
  %206 = load i32, i32* @EV_ABS, align 4
  %207 = call i32 @BIT_MASK(i32 %206)
  %208 = or i32 %205, %207
  %209 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %210 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  store i32 %208, i32* %212, align 4
  store i32 0, i32* %10, align 4
  br label %213

213:                                              ; preds = %230, %160
  %214 = load i64*, i64** @xpad_common_btn, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = icmp sge i64 %218, 0
  br i1 %219, label %220, label %233

220:                                              ; preds = %213
  %221 = load i64*, i64** @xpad_common_btn, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %221, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %227 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @set_bit(i64 %225, i32 %228)
  br label %230

230:                                              ; preds = %220
  %231 = load i32, i32* %10, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %10, align 4
  br label %213

233:                                              ; preds = %213
  %234 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %235 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @XTYPE_XBOX360, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %245, label %239

239:                                              ; preds = %233
  %240 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %241 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @XTYPE_XBOX360W, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %267

245:                                              ; preds = %239, %233
  store i32 0, i32* %10, align 4
  br label %246

246:                                              ; preds = %263, %245
  %247 = load i64*, i64** @xpad360_btn, align 8
  %248 = load i32, i32* %10, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %247, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = icmp sge i64 %251, 0
  br i1 %252, label %253, label %266

253:                                              ; preds = %246
  %254 = load i64*, i64** @xpad360_btn, align 8
  %255 = load i32, i32* %10, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i64, i64* %254, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %260 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @set_bit(i64 %258, i32 %261)
  br label %263

263:                                              ; preds = %253
  %264 = load i32, i32* %10, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %10, align 4
  br label %246

266:                                              ; preds = %246
  br label %289

267:                                              ; preds = %239
  store i32 0, i32* %10, align 4
  br label %268

268:                                              ; preds = %285, %267
  %269 = load i64*, i64** @xpad_btn, align 8
  %270 = load i32, i32* %10, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i64, i64* %269, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = icmp sge i64 %273, 0
  br i1 %274, label %275, label %288

275:                                              ; preds = %268
  %276 = load i64*, i64** @xpad_btn, align 8
  %277 = load i32, i32* %10, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i64, i64* %276, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %282 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @set_bit(i64 %280, i32 %283)
  br label %285

285:                                              ; preds = %275
  %286 = load i32, i32* %10, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %10, align 4
  br label %268

288:                                              ; preds = %268
  br label %289

289:                                              ; preds = %288, %266
  %290 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %291 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @MAP_DPAD_TO_BUTTONS, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %317

295:                                              ; preds = %289
  store i32 0, i32* %10, align 4
  br label %296

296:                                              ; preds = %313, %295
  %297 = load i64*, i64** @xpad_btn_pad, align 8
  %298 = load i32, i32* %10, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i64, i64* %297, i64 %299
  %301 = load i64, i64* %300, align 8
  %302 = icmp sge i64 %301, 0
  br i1 %302, label %303, label %316

303:                                              ; preds = %296
  %304 = load i64*, i64** @xpad_btn_pad, align 8
  %305 = load i32, i32* %10, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i64, i64* %304, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %310 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @set_bit(i64 %308, i32 %311)
  br label %313

313:                                              ; preds = %303
  %314 = load i32, i32* %10, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %10, align 4
  br label %296

316:                                              ; preds = %296
  br label %317

317:                                              ; preds = %316, %289
  store i32 0, i32* %10, align 4
  br label %318

318:                                              ; preds = %333, %317
  %319 = load i64*, i64** @xpad_abs, align 8
  %320 = load i32, i32* %10, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i64, i64* %319, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = icmp sge i64 %323, 0
  br i1 %324, label %325, label %336

325:                                              ; preds = %318
  %326 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %327 = load i64*, i64** @xpad_abs, align 8
  %328 = load i32, i32* %10, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i64, i64* %327, i64 %329
  %331 = load i64, i64* %330, align 8
  %332 = call i32 @xpad_set_up_abs(%struct.input_dev* %326, i64 %331)
  br label %333

333:                                              ; preds = %325
  %334 = load i32, i32* %10, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %10, align 4
  br label %318

336:                                              ; preds = %318
  %337 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %338 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* @MAP_DPAD_TO_AXES, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %362

342:                                              ; preds = %336
  store i32 0, i32* %10, align 4
  br label %343

343:                                              ; preds = %358, %342
  %344 = load i64*, i64** @xpad_abs_pad, align 8
  %345 = load i32, i32* %10, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i64, i64* %344, i64 %346
  %348 = load i64, i64* %347, align 8
  %349 = icmp sge i64 %348, 0
  br i1 %349, label %350, label %361

350:                                              ; preds = %343
  %351 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %352 = load i64*, i64** @xpad_abs_pad, align 8
  %353 = load i32, i32* %10, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i64, i64* %352, i64 %354
  %356 = load i64, i64* %355, align 8
  %357 = call i32 @xpad_set_up_abs(%struct.input_dev* %351, i64 %356)
  br label %358

358:                                              ; preds = %350
  %359 = load i32, i32* %10, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %10, align 4
  br label %343

361:                                              ; preds = %343
  br label %362

362:                                              ; preds = %361, %336
  %363 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %364 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %365 = call i32 @xpad_init_output(%struct.usb_interface* %363, %struct.usb_xpad* %364)
  store i32 %365, i32* %11, align 4
  %366 = load i32, i32* %11, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %362
  br label %551

369:                                              ; preds = %362
  %370 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %371 = call i32 @xpad_init_ff(%struct.usb_xpad* %370)
  store i32 %371, i32* %11, align 4
  %372 = load i32, i32* %11, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %369
  br label %548

375:                                              ; preds = %369
  %376 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %377 = call i32 @xpad_led_probe(%struct.usb_xpad* %376)
  store i32 %377, i32* %11, align 4
  %378 = load i32, i32* %11, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %375
  br label %548

381:                                              ; preds = %375
  %382 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %383 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %382, i32 0, i32 0
  %384 = load %struct.TYPE_15__*, %struct.TYPE_15__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %384, i32 0, i32 0
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i64 0
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %388, %struct.usb_endpoint_descriptor** %9, align 8
  %389 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %390 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %389, i32 0, i32 5
  %391 = load %struct.TYPE_18__*, %struct.TYPE_18__** %390, align 8
  %392 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %393 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %394 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %395 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @usb_rcvintpipe(%struct.usb_device* %393, i32 %396)
  %398 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %399 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %398, i32 0, i32 4
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* @XPAD_PKT_LEN, align 4
  %402 = load i32, i32* @xpad_irq_in, align 4
  %403 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %404 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %405 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @usb_fill_int_urb(%struct.TYPE_18__* %391, %struct.usb_device* %392, i32 %397, i32 %400, i32 %401, i32 %402, %struct.usb_xpad* %403, i32 %406)
  %408 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %409 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 8
  %411 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %412 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %411, i32 0, i32 5
  %413 = load %struct.TYPE_18__*, %struct.TYPE_18__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %413, i32 0, i32 2
  store i32 %410, i32* %414, align 4
  %415 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %416 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %417 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %416, i32 0, i32 5
  %418 = load %struct.TYPE_18__*, %struct.TYPE_18__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = or i32 %420, %415
  store i32 %421, i32* %419, align 8
  %422 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %423 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %422, i32 0, i32 8
  %424 = load %struct.input_dev*, %struct.input_dev** %423, align 8
  %425 = call i32 @input_register_device(%struct.input_dev* %424)
  store i32 %425, i32* %11, align 4
  %426 = load i32, i32* %11, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %429

428:                                              ; preds = %381
  br label %543

429:                                              ; preds = %381
  %430 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %431 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %432 = call i32 @usb_set_intfdata(%struct.usb_interface* %430, %struct.usb_xpad* %431)
  %433 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %434 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %433, i32 0, i32 1
  %435 = load i64, i64* %434, align 8
  %436 = load i64, i64* @XTYPE_XBOX360W, align 8
  %437 = icmp eq i64 %435, %436
  br i1 %437, label %438, label %532

438:                                              ; preds = %429
  %439 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %440 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %439, i32 0, i32 7
  %441 = load %struct.usb_device*, %struct.usb_device** %440, align 8
  %442 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %443 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %442, i32 0, i32 5
  %444 = load %struct.TYPE_18__*, %struct.TYPE_18__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %444, i32 0, i32 0
  store %struct.usb_device* %441, %struct.usb_device** %445, align 8
  %446 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %447 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %446, i32 0, i32 5
  %448 = load %struct.TYPE_18__*, %struct.TYPE_18__** %447, align 8
  %449 = load i32, i32* @GFP_KERNEL, align 4
  %450 = call i32 @usb_submit_urb(%struct.TYPE_18__* %448, i32 %449)
  store i32 %450, i32* %11, align 4
  %451 = load i32, i32* %11, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %438
  br label %543

454:                                              ; preds = %438
  %455 = load i32, i32* @GFP_KERNEL, align 4
  %456 = call i8* @usb_alloc_urb(i32 0, i32 %455)
  %457 = bitcast i8* %456 to %struct.TYPE_18__*
  %458 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %459 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %458, i32 0, i32 6
  store %struct.TYPE_18__* %457, %struct.TYPE_18__** %459, align 8
  %460 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %461 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %460, i32 0, i32 6
  %462 = load %struct.TYPE_18__*, %struct.TYPE_18__** %461, align 8
  %463 = icmp ne %struct.TYPE_18__* %462, null
  br i1 %463, label %465, label %464

464:                                              ; preds = %454
  br label %538

465:                                              ; preds = %454
  %466 = load i32, i32* @XPAD_PKT_LEN, align 4
  %467 = load i32, i32* @GFP_KERNEL, align 4
  %468 = call i8* @kzalloc(i32 %466, i32 %467)
  %469 = bitcast i8* %468 to i32*
  %470 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %471 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %470, i32 0, i32 2
  store i32* %469, i32** %471, align 8
  %472 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %473 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %472, i32 0, i32 2
  %474 = load i32*, i32** %473, align 8
  %475 = icmp ne i32* %474, null
  br i1 %475, label %477, label %476

476:                                              ; preds = %465
  br label %533

477:                                              ; preds = %465
  %478 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %479 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %478, i32 0, i32 2
  %480 = load i32*, i32** %479, align 8
  %481 = getelementptr inbounds i32, i32* %480, i64 2
  store i32 8, i32* %481, align 4
  %482 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %483 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %482, i32 0, i32 0
  %484 = load %struct.TYPE_15__*, %struct.TYPE_15__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 4
  switch i32 %487, label %508 [
    i32 0, label %488
    i32 2, label %493
    i32 4, label %498
    i32 6, label %503
  ]

488:                                              ; preds = %477
  %489 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %490 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %489, i32 0, i32 2
  %491 = load i32*, i32** %490, align 8
  %492 = getelementptr inbounds i32, i32* %491, i64 3
  store i32 66, i32* %492, align 4
  br label %508

493:                                              ; preds = %477
  %494 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %495 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %494, i32 0, i32 2
  %496 = load i32*, i32** %495, align 8
  %497 = getelementptr inbounds i32, i32* %496, i64 3
  store i32 67, i32* %497, align 4
  br label %508

498:                                              ; preds = %477
  %499 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %500 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %499, i32 0, i32 2
  %501 = load i32*, i32** %500, align 8
  %502 = getelementptr inbounds i32, i32* %501, i64 3
  store i32 68, i32* %502, align 4
  br label %508

503:                                              ; preds = %477
  %504 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %505 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %504, i32 0, i32 2
  %506 = load i32*, i32** %505, align 8
  %507 = getelementptr inbounds i32, i32* %506, i64 3
  store i32 69, i32* %507, align 4
  br label %508

508:                                              ; preds = %503, %477, %498, %493, %488
  %509 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %510 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %509, i32 0, i32 0
  %511 = load %struct.TYPE_15__*, %struct.TYPE_15__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %511, i32 0, i32 0
  %513 = load %struct.TYPE_12__*, %struct.TYPE_12__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %513, i64 1
  %515 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %514, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %515, %struct.usb_endpoint_descriptor** %9, align 8
  %516 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %517 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %516, i32 0, i32 6
  %518 = load %struct.TYPE_18__*, %struct.TYPE_18__** %517, align 8
  %519 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %520 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %521 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %522 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 4
  %524 = call i32 @usb_sndbulkpipe(%struct.usb_device* %520, i32 %523)
  %525 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %526 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %525, i32 0, i32 2
  %527 = load i32*, i32** %526, align 8
  %528 = load i32, i32* @XPAD_PKT_LEN, align 4
  %529 = load i32, i32* @xpad_bulk_out, align 4
  %530 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %531 = call i32 @usb_fill_bulk_urb(%struct.TYPE_18__* %518, %struct.usb_device* %519, i32 %524, i32* %527, i32 %528, i32 %529, %struct.usb_xpad* %530)
  br label %532

532:                                              ; preds = %508, %429
  store i32 0, i32* %3, align 4
  br label %567

533:                                              ; preds = %476
  %534 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %535 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %534, i32 0, i32 6
  %536 = load %struct.TYPE_18__*, %struct.TYPE_18__** %535, align 8
  %537 = call i32 @usb_free_urb(%struct.TYPE_18__* %536)
  br label %538

538:                                              ; preds = %533, %464
  %539 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %540 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %539, i32 0, i32 5
  %541 = load %struct.TYPE_18__*, %struct.TYPE_18__** %540, align 8
  %542 = call i32 @usb_kill_urb(%struct.TYPE_18__* %541)
  br label %543

543:                                              ; preds = %538, %453, %428
  %544 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %545 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %544, i32 0, i32 5
  %546 = load %struct.TYPE_18__*, %struct.TYPE_18__** %545, align 8
  %547 = call i32 @usb_free_urb(%struct.TYPE_18__* %546)
  br label %548

548:                                              ; preds = %543, %380, %374
  %549 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %550 = call i32 @xpad_deinit_output(%struct.usb_xpad* %549)
  br label %551

551:                                              ; preds = %548, %368, %90
  %552 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %553 = load i32, i32* @XPAD_PKT_LEN, align 4
  %554 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %555 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %554, i32 0, i32 4
  %556 = load i32, i32* %555, align 4
  %557 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %558 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %557, i32 0, i32 3
  %559 = load i32, i32* %558, align 8
  %560 = call i32 @usb_buffer_free(%struct.usb_device* %552, i32 %553, i32 %556, i32 %559)
  br label %561

561:                                              ; preds = %551, %79, %65
  %562 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %563 = call i32 @input_free_device(%struct.input_dev* %562)
  %564 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %565 = call i32 @kfree(%struct.usb_xpad* %564)
  %566 = load i32, i32* %11, align 4
  store i32 %566, i32* %3, align 4
  br label %567

567:                                              ; preds = %561, %532
  %568 = load i32, i32* %3, align 4
  ret i32 %568
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @usb_buffer_alloc(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.usb_xpad*) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @xpad_set_up_abs(%struct.input_dev*, i64) #1

declare dso_local i32 @xpad_init_output(%struct.usb_interface*, %struct.usb_xpad*) #1

declare dso_local i32 @xpad_init_ff(%struct.usb_xpad*) #1

declare dso_local i32 @xpad_led_probe(%struct.usb_xpad*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_18__*, %struct.usb_device*, i32, i32, i32, i32, %struct.usb_xpad*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_xpad*) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_18__*, %struct.usb_device*, i32, i32*, i32, i32, %struct.usb_xpad*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_18__*) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_18__*) #1

declare dso_local i32 @xpad_deinit_output(%struct.usb_xpad*) #1

declare dso_local i32 @usb_buffer_free(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.usb_xpad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
