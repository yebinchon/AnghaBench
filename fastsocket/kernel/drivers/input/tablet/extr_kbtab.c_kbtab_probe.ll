; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_kbtab.c_kbtab_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_kbtab.c_kbtab_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.kbtab = type { i32, i32, %struct.TYPE_10__*, %struct.input_dev*, i32, %struct.usb_device* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.input_dev = type { i8*, i32*, i32*, i32*, i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"KB Gear Tablet\00", align 1
@kbtab_open = common dso_local global i32 0, align 4
@kbtab_close = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_DIGI = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@kbtab_irq = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @kbtab_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbtab_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca %struct.kbtab*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %11)
  store %struct.usb_device* %12, %struct.usb_device** %6, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.kbtab* @kzalloc(i32 40, i32 %15)
  store %struct.kbtab* %16, %struct.kbtab** %8, align 8
  %17 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %17, %struct.input_dev** %9, align 8
  %18 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %19 = icmp ne %struct.kbtab* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %22 = icmp ne %struct.input_dev* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %2
  br label %212

24:                                               ; preds = %20
  %25 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %28 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %27, i32 0, i32 0
  %29 = call i32 @usb_buffer_alloc(%struct.usb_device* %25, i32 8, i32 %26, i32* %28)
  %30 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %31 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %33 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  br label %212

37:                                               ; preds = %24
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.TYPE_10__* @usb_alloc_urb(i32 0, i32 %38)
  %40 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %41 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %40, i32 0, i32 2
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %41, align 8
  %42 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %43 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %42, i32 0, i32 2
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  br label %203

47:                                               ; preds = %37
  %48 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %49 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %50 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %49, i32 0, i32 5
  store %struct.usb_device* %48, %struct.usb_device** %50, align 8
  %51 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %52 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %53 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %52, i32 0, i32 3
  store %struct.input_dev* %51, %struct.input_dev** %53, align 8
  %54 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %55 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %56 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @usb_make_path(%struct.usb_device* %54, i32 %57, i32 4)
  %59 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %60 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @strlcat(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %63 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %64, align 8
  %65 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %66 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %69 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 4
  %70 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %71 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %72 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %71, i32 0, i32 7
  %73 = call i32 @usb_to_input_id(%struct.usb_device* %70, i32* %72)
  %74 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %75 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %74, i32 0, i32 1
  %76 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %77 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32* %75, i32** %78, align 8
  %79 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %80 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %81 = call i32 @input_set_drvdata(%struct.input_dev* %79, %struct.kbtab* %80)
  %82 = load i32, i32* @kbtab_open, align 4
  %83 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %84 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @kbtab_close, align 4
  %86 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %87 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @EV_KEY, align 4
  %89 = call i32 @BIT_MASK(i32 %88)
  %90 = load i32, i32* @EV_ABS, align 4
  %91 = call i32 @BIT_MASK(i32 %90)
  %92 = or i32 %89, %91
  %93 = load i32, i32* @EV_MSC, align 4
  %94 = call i32 @BIT_MASK(i32 %93)
  %95 = or i32 %92, %94
  %96 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %97 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %95
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @BTN_LEFT, align 4
  %103 = call i32 @BIT_MASK(i32 %102)
  %104 = load i32, i32* @BTN_RIGHT, align 4
  %105 = call i32 @BIT_MASK(i32 %104)
  %106 = or i32 %103, %105
  %107 = load i32, i32* @BTN_MIDDLE, align 4
  %108 = call i32 @BIT_MASK(i32 %107)
  %109 = or i32 %106, %108
  %110 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %111 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* @BTN_LEFT, align 4
  %114 = call i64 @BIT_WORD(i32 %113)
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %109
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* @BTN_TOOL_PEN, align 4
  %119 = call i32 @BIT_MASK(i32 %118)
  %120 = load i32, i32* @BTN_TOUCH, align 4
  %121 = call i32 @BIT_MASK(i32 %120)
  %122 = or i32 %119, %121
  %123 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %124 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* @BTN_DIGI, align 4
  %127 = call i64 @BIT_WORD(i32 %126)
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %122
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* @MSC_SERIAL, align 4
  %132 = call i32 @BIT_MASK(i32 %131)
  %133 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %134 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %132
  store i32 %138, i32* %136, align 4
  %139 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %140 = load i32, i32* @ABS_X, align 4
  %141 = call i32 @input_set_abs_params(%struct.input_dev* %139, i32 %140, i32 0, i32 8192, i32 4, i32 0)
  %142 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %143 = load i32, i32* @ABS_Y, align 4
  %144 = call i32 @input_set_abs_params(%struct.input_dev* %142, i32 %143, i32 0, i32 5968, i32 4, i32 0)
  %145 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %146 = load i32, i32* @ABS_PRESSURE, align 4
  %147 = call i32 @input_set_abs_params(%struct.input_dev* %145, i32 %146, i32 0, i32 255, i32 0, i32 0)
  %148 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %149 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %148, i32 0, i32 0
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %154, %struct.usb_endpoint_descriptor** %7, align 8
  %155 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %156 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %155, i32 0, i32 2
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %159 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %160 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %161 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @usb_rcvintpipe(%struct.usb_device* %159, i32 %162)
  %164 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %165 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @kbtab_irq, align 4
  %168 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %169 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %170 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @usb_fill_int_urb(%struct.TYPE_10__* %157, %struct.usb_device* %158, i32 %163, i32 %166, i32 8, i32 %167, %struct.kbtab* %168, i32 %171)
  %173 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %174 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %177 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %176, i32 0, i32 2
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  store i32 %175, i32* %179, align 4
  %180 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %181 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %182 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %181, i32 0, i32 2
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %180
  store i32 %186, i32* %184, align 4
  %187 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %188 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %187, i32 0, i32 3
  %189 = load %struct.input_dev*, %struct.input_dev** %188, align 8
  %190 = call i32 @input_register_device(%struct.input_dev* %189)
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %47
  br label %198

194:                                              ; preds = %47
  %195 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %196 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %197 = call i32 @usb_set_intfdata(%struct.usb_interface* %195, %struct.kbtab* %196)
  store i32 0, i32* %3, align 4
  br label %218

198:                                              ; preds = %193
  %199 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %200 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %199, i32 0, i32 2
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = call i32 @usb_free_urb(%struct.TYPE_10__* %201)
  br label %203

203:                                              ; preds = %198, %46
  %204 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %205 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %206 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %209 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @usb_buffer_free(%struct.usb_device* %204, i32 10, i32 %207, i32 %210)
  br label %212

212:                                              ; preds = %203, %36, %23
  %213 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %214 = call i32 @input_free_device(%struct.input_dev* %213)
  %215 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %216 = call i32 @kfree(%struct.kbtab* %215)
  %217 = load i32, i32* %10, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %212, %194
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.kbtab* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @usb_buffer_alloc(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_10__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.kbtab*) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i64 @BIT_WORD(i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_10__*, %struct.usb_device*, i32, i32, i32, i32, %struct.kbtab*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.kbtab*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_10__*) #1

declare dso_local i32 @usb_buffer_free(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.kbtab*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
