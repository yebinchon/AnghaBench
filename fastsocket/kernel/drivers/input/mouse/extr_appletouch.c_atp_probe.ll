; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_appletouch.c_atp_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_appletouch.c_atp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.usb_device_id = type { i64 }
%struct.atp = type { i32, %struct.TYPE_10__*, i32, %struct.atp_info*, %struct.usb_device*, i32, %struct.input_dev*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.atp_info = type { i32, i32, i32, i32, i32, i32 }
%struct.usb_device = type { i32 }
%struct.input_dev = type { i8*, i32, i32, i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not find int-in endpoint\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"appletouch\00", align 1
@atp_open = common dso_local global i32 0, align 4
@atp_close = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ATP_FUZZ = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ATP_PRESSURE = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_TRIPLETAP = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@atp_reinit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @atp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atp_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.atp*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.usb_host_interface*, align 8
  %10 = alloca %struct.usb_endpoint_descriptor*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.atp_info*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %15)
  store %struct.usb_device* %16, %struct.usb_device** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.atp_info*
  store %struct.atp_info* %22, %struct.atp_info** %14, align 8
  %23 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %24 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %23, i32 0, i32 1
  %25 = load %struct.usb_host_interface*, %struct.usb_host_interface** %24, align 8
  store %struct.usb_host_interface* %25, %struct.usb_host_interface** %9, align 8
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %52, %2
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %29 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %26
  %34 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %35 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %40, %struct.usb_endpoint_descriptor** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %33
  %44 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %45 = call i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %49 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  br label %55

51:                                               ; preds = %43, %33
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %26

55:                                               ; preds = %47, %26
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = call i32 @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %300

62:                                               ; preds = %55
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.atp* @kzalloc(i32 64, i32 %63)
  store %struct.atp* %64, %struct.atp** %6, align 8
  %65 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %65, %struct.input_dev** %7, align 8
  %66 = load %struct.atp*, %struct.atp** %6, align 8
  %67 = icmp ne %struct.atp* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %70 = icmp ne %struct.input_dev* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %68, %62
  %72 = call i32 @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %292

73:                                               ; preds = %68
  %74 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %75 = load %struct.atp*, %struct.atp** %6, align 8
  %76 = getelementptr inbounds %struct.atp, %struct.atp* %75, i32 0, i32 4
  store %struct.usb_device* %74, %struct.usb_device** %76, align 8
  %77 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %78 = load %struct.atp*, %struct.atp** %6, align 8
  %79 = getelementptr inbounds %struct.atp, %struct.atp* %78, i32 0, i32 6
  store %struct.input_dev* %77, %struct.input_dev** %79, align 8
  %80 = load %struct.atp_info*, %struct.atp_info** %14, align 8
  %81 = load %struct.atp*, %struct.atp** %6, align 8
  %82 = getelementptr inbounds %struct.atp, %struct.atp* %81, i32 0, i32 3
  store %struct.atp_info* %80, %struct.atp_info** %82, align 8
  %83 = load %struct.atp*, %struct.atp** %6, align 8
  %84 = getelementptr inbounds %struct.atp, %struct.atp* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.TYPE_10__* @usb_alloc_urb(i32 0, i32 %85)
  %87 = load %struct.atp*, %struct.atp** %6, align 8
  %88 = getelementptr inbounds %struct.atp, %struct.atp* %87, i32 0, i32 1
  store %struct.TYPE_10__* %86, %struct.TYPE_10__** %88, align 8
  %89 = load %struct.atp*, %struct.atp** %6, align 8
  %90 = getelementptr inbounds %struct.atp, %struct.atp* %89, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = icmp ne %struct.TYPE_10__* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %73
  br label %292

94:                                               ; preds = %73
  %95 = load %struct.atp*, %struct.atp** %6, align 8
  %96 = getelementptr inbounds %struct.atp, %struct.atp* %95, i32 0, i32 4
  %97 = load %struct.usb_device*, %struct.usb_device** %96, align 8
  %98 = load %struct.atp*, %struct.atp** %6, align 8
  %99 = getelementptr inbounds %struct.atp, %struct.atp* %98, i32 0, i32 3
  %100 = load %struct.atp_info*, %struct.atp_info** %99, align 8
  %101 = getelementptr inbounds %struct.atp_info, %struct.atp_info* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = load %struct.atp*, %struct.atp** %6, align 8
  %105 = getelementptr inbounds %struct.atp, %struct.atp* %104, i32 0, i32 1
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = call i32 @usb_buffer_alloc(%struct.usb_device* %97, i32 %102, i32 %103, i32* %107)
  %109 = load %struct.atp*, %struct.atp** %6, align 8
  %110 = getelementptr inbounds %struct.atp, %struct.atp* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load %struct.atp*, %struct.atp** %6, align 8
  %112 = getelementptr inbounds %struct.atp, %struct.atp* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %94
  br label %287

116:                                              ; preds = %94
  %117 = load %struct.atp*, %struct.atp** %6, align 8
  %118 = getelementptr inbounds %struct.atp, %struct.atp* %117, i32 0, i32 1
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %121 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @usb_rcvintpipe(%struct.usb_device* %121, i32 %122)
  %124 = load %struct.atp*, %struct.atp** %6, align 8
  %125 = getelementptr inbounds %struct.atp, %struct.atp* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.atp*, %struct.atp** %6, align 8
  %128 = getelementptr inbounds %struct.atp, %struct.atp* %127, i32 0, i32 3
  %129 = load %struct.atp_info*, %struct.atp_info** %128, align 8
  %130 = getelementptr inbounds %struct.atp_info, %struct.atp_info* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.atp*, %struct.atp** %6, align 8
  %133 = getelementptr inbounds %struct.atp, %struct.atp* %132, i32 0, i32 3
  %134 = load %struct.atp_info*, %struct.atp_info** %133, align 8
  %135 = getelementptr inbounds %struct.atp_info, %struct.atp_info* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.atp*, %struct.atp** %6, align 8
  %138 = call i32 @usb_fill_int_urb(%struct.TYPE_10__* %119, %struct.usb_device* %120, i32 %123, i32 %126, i32 %131, i32 %136, %struct.atp* %137, i32 1)
  %139 = load %struct.atp*, %struct.atp** %6, align 8
  %140 = call i32 @atp_handle_geyser(%struct.atp* %139)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %116
  br label %269

144:                                              ; preds = %116
  %145 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %146 = load %struct.atp*, %struct.atp** %6, align 8
  %147 = getelementptr inbounds %struct.atp, %struct.atp* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @usb_make_path(%struct.usb_device* %145, i32 %148, i32 4)
  %150 = load %struct.atp*, %struct.atp** %6, align 8
  %151 = getelementptr inbounds %struct.atp, %struct.atp* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @strlcat(i32 %152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %154 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %155 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %154, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %155, align 8
  %156 = load %struct.atp*, %struct.atp** %6, align 8
  %157 = getelementptr inbounds %struct.atp, %struct.atp* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %160 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %159, i32 0, i32 7
  store i32 %158, i32* %160, align 4
  %161 = load %struct.atp*, %struct.atp** %6, align 8
  %162 = getelementptr inbounds %struct.atp, %struct.atp* %161, i32 0, i32 4
  %163 = load %struct.usb_device*, %struct.usb_device** %162, align 8
  %164 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %165 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %164, i32 0, i32 6
  %166 = call i32 @usb_to_input_id(%struct.usb_device* %163, i32* %165)
  %167 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %168 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %167, i32 0, i32 0
  %169 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %170 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  store i32* %168, i32** %171, align 8
  %172 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %173 = load %struct.atp*, %struct.atp** %6, align 8
  %174 = call i32 @input_set_drvdata(%struct.input_dev* %172, %struct.atp* %173)
  %175 = load i32, i32* @atp_open, align 4
  %176 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %177 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %176, i32 0, i32 4
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @atp_close, align 4
  %179 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %180 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* @EV_ABS, align 4
  %182 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %183 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @set_bit(i32 %181, i32 %184)
  %186 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %187 = load i32, i32* @ABS_X, align 4
  %188 = load %struct.atp*, %struct.atp** %6, align 8
  %189 = getelementptr inbounds %struct.atp, %struct.atp* %188, i32 0, i32 3
  %190 = load %struct.atp_info*, %struct.atp_info** %189, align 8
  %191 = getelementptr inbounds %struct.atp_info, %struct.atp_info* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %192, 1
  %194 = load %struct.atp*, %struct.atp** %6, align 8
  %195 = getelementptr inbounds %struct.atp, %struct.atp* %194, i32 0, i32 3
  %196 = load %struct.atp_info*, %struct.atp_info** %195, align 8
  %197 = getelementptr inbounds %struct.atp_info, %struct.atp_info* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = mul nsw i32 %193, %198
  %200 = sub nsw i32 %199, 1
  %201 = load i32, i32* @ATP_FUZZ, align 4
  %202 = call i32 @input_set_abs_params(%struct.input_dev* %186, i32 %187, i32 0, i32 %200, i32 %201, i32 0)
  %203 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %204 = load i32, i32* @ABS_Y, align 4
  %205 = load %struct.atp*, %struct.atp** %6, align 8
  %206 = getelementptr inbounds %struct.atp, %struct.atp* %205, i32 0, i32 3
  %207 = load %struct.atp_info*, %struct.atp_info** %206, align 8
  %208 = getelementptr inbounds %struct.atp_info, %struct.atp_info* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %209, 1
  %211 = load %struct.atp*, %struct.atp** %6, align 8
  %212 = getelementptr inbounds %struct.atp, %struct.atp* %211, i32 0, i32 3
  %213 = load %struct.atp_info*, %struct.atp_info** %212, align 8
  %214 = getelementptr inbounds %struct.atp_info, %struct.atp_info* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 %210, %215
  %217 = sub nsw i32 %216, 1
  %218 = load i32, i32* @ATP_FUZZ, align 4
  %219 = call i32 @input_set_abs_params(%struct.input_dev* %203, i32 %204, i32 0, i32 %217, i32 %218, i32 0)
  %220 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %221 = load i32, i32* @ABS_PRESSURE, align 4
  %222 = load i32, i32* @ATP_PRESSURE, align 4
  %223 = call i32 @input_set_abs_params(%struct.input_dev* %220, i32 %221, i32 0, i32 %222, i32 0, i32 0)
  %224 = load i32, i32* @EV_KEY, align 4
  %225 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %226 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @set_bit(i32 %224, i32 %227)
  %229 = load i32, i32* @BTN_TOUCH, align 4
  %230 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %231 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @set_bit(i32 %229, i32 %232)
  %234 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %235 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %236 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @set_bit(i32 %234, i32 %237)
  %239 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %240 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %241 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @set_bit(i32 %239, i32 %242)
  %244 = load i32, i32* @BTN_TOOL_TRIPLETAP, align 4
  %245 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %246 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @set_bit(i32 %244, i32 %247)
  %249 = load i32, i32* @BTN_LEFT, align 4
  %250 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %251 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @set_bit(i32 %249, i32 %252)
  %254 = load %struct.atp*, %struct.atp** %6, align 8
  %255 = getelementptr inbounds %struct.atp, %struct.atp* %254, i32 0, i32 6
  %256 = load %struct.input_dev*, %struct.input_dev** %255, align 8
  %257 = call i32 @input_register_device(%struct.input_dev* %256)
  store i32 %257, i32* %13, align 4
  %258 = load i32, i32* %13, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %144
  br label %269

261:                                              ; preds = %144
  %262 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %263 = load %struct.atp*, %struct.atp** %6, align 8
  %264 = call i32 @usb_set_intfdata(%struct.usb_interface* %262, %struct.atp* %263)
  %265 = load %struct.atp*, %struct.atp** %6, align 8
  %266 = getelementptr inbounds %struct.atp, %struct.atp* %265, i32 0, i32 5
  %267 = load i32, i32* @atp_reinit, align 4
  %268 = call i32 @INIT_WORK(i32* %266, i32 %267)
  store i32 0, i32* %3, align 4
  br label %300

269:                                              ; preds = %260, %143
  %270 = load %struct.atp*, %struct.atp** %6, align 8
  %271 = getelementptr inbounds %struct.atp, %struct.atp* %270, i32 0, i32 4
  %272 = load %struct.usb_device*, %struct.usb_device** %271, align 8
  %273 = load %struct.atp*, %struct.atp** %6, align 8
  %274 = getelementptr inbounds %struct.atp, %struct.atp* %273, i32 0, i32 3
  %275 = load %struct.atp_info*, %struct.atp_info** %274, align 8
  %276 = getelementptr inbounds %struct.atp_info, %struct.atp_info* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.atp*, %struct.atp** %6, align 8
  %279 = getelementptr inbounds %struct.atp, %struct.atp* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.atp*, %struct.atp** %6, align 8
  %282 = getelementptr inbounds %struct.atp, %struct.atp* %281, i32 0, i32 1
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @usb_buffer_free(%struct.usb_device* %272, i32 %277, i32 %280, i32 %285)
  br label %287

287:                                              ; preds = %269, %115
  %288 = load %struct.atp*, %struct.atp** %6, align 8
  %289 = getelementptr inbounds %struct.atp, %struct.atp* %288, i32 0, i32 1
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %289, align 8
  %291 = call i32 @usb_free_urb(%struct.TYPE_10__* %290)
  br label %292

292:                                              ; preds = %287, %93, %71
  %293 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %294 = call i32 @usb_set_intfdata(%struct.usb_interface* %293, %struct.atp* null)
  %295 = load %struct.atp*, %struct.atp** %6, align 8
  %296 = call i32 @kfree(%struct.atp* %295)
  %297 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %298 = call i32 @input_free_device(%struct.input_dev* %297)
  %299 = load i32, i32* %13, align 4
  store i32 %299, i32* %3, align 4
  br label %300

300:                                              ; preds = %292, %261, %58
  %301 = load i32, i32* %3, align 4
  ret i32 %301
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local %struct.atp* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local %struct.TYPE_10__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_buffer_alloc(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_10__*, %struct.usb_device*, i32, i32, i32, i32, %struct.atp*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @atp_handle_geyser(%struct.atp*) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.atp*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.atp*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @usb_buffer_free(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_10__*) #1

declare dso_local i32 @kfree(%struct.atp*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
