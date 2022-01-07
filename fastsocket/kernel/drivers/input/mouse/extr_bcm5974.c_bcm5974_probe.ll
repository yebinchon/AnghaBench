; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_bcm5974.c_bcm5974_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_bcm5974.c_bcm5974_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.bcm5974_config = type { i32, i32, i32, i32, i32 }
%struct.bcm5974 = type { %struct.TYPE_7__*, %struct.TYPE_7__*, i8*, %struct.bcm5974_config, %struct.usb_device*, i8*, %struct.input_dev*, i32, i32, %struct.usb_interface* }
%struct.TYPE_7__ = type { i32 }
%struct.input_dev = type { i8*, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"bcm5974: out of memory\00", align 1
@bcm5974_irq_button = common dso_local global i32 0, align 4
@bcm5974_irq_trackpad = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"bcm5974\00", align 1
@bcm5974_open = common dso_local global i32 0, align 4
@bcm5974_close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @bcm5974_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm5974_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.bcm5974_config*, align 8
  %8 = alloca %struct.bcm5974*, align 8
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
  %15 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %16 = call %struct.bcm5974_config* @bcm5974_get_config(%struct.usb_device* %15)
  store %struct.bcm5974_config* %16, %struct.bcm5974_config** %7, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.bcm5974* @kzalloc(i32 88, i32 %17)
  store %struct.bcm5974* %18, %struct.bcm5974** %8, align 8
  %19 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %19, %struct.input_dev** %9, align 8
  %20 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %21 = icmp ne %struct.bcm5974* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %24 = icmp ne %struct.input_dev* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %2
  %26 = call i32 @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %247

27:                                               ; preds = %22
  %28 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %29 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %30 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %29, i32 0, i32 4
  store %struct.usb_device* %28, %struct.usb_device** %30, align 8
  %31 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %32 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %33 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %32, i32 0, i32 9
  store %struct.usb_interface* %31, %struct.usb_interface** %33, align 8
  %34 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %35 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %36 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %35, i32 0, i32 6
  store %struct.input_dev* %34, %struct.input_dev** %36, align 8
  %37 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %38 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %37, i32 0, i32 3
  %39 = load %struct.bcm5974_config*, %struct.bcm5974_config** %7, align 8
  %40 = bitcast %struct.bcm5974_config* %38 to i8*
  %41 = bitcast %struct.bcm5974_config* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 4 %41, i64 20, i1 false)
  %42 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %43 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %42, i32 0, i32 8
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @usb_alloc_urb(i32 0, i32 %45)
  %47 = bitcast i8* %46 to %struct.TYPE_7__*
  %48 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %49 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %48, i32 0, i32 0
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %49, align 8
  %50 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %51 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = icmp ne %struct.TYPE_7__* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %27
  br label %247

55:                                               ; preds = %27
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @usb_alloc_urb(i32 0, i32 %56)
  %58 = bitcast i8* %57 to %struct.TYPE_7__*
  %59 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %60 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %59, i32 0, i32 1
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %60, align 8
  %61 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %62 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = icmp ne %struct.TYPE_7__* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  br label %242

66:                                               ; preds = %55
  %67 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %68 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %67, i32 0, i32 4
  %69 = load %struct.usb_device*, %struct.usb_device** %68, align 8
  %70 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %71 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %76 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = call i8* @usb_buffer_alloc(%struct.usb_device* %69, i32 %73, i32 %74, i32* %78)
  %80 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %81 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %83 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %66
  br label %237

87:                                               ; preds = %66
  %88 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %89 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %88, i32 0, i32 4
  %90 = load %struct.usb_device*, %struct.usb_device** %89, align 8
  %91 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %92 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %97 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = call i8* @usb_buffer_alloc(%struct.usb_device* %90, i32 %94, i32 %95, i32* %99)
  %101 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %102 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %101, i32 0, i32 5
  store i8* %100, i8** %102, align 8
  %103 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %104 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %103, i32 0, i32 5
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %87
  br label %220

108:                                              ; preds = %87
  %109 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %110 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %113 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %114 = load %struct.bcm5974_config*, %struct.bcm5974_config** %7, align 8
  %115 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @usb_rcvintpipe(%struct.usb_device* %113, i32 %116)
  %118 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %119 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %122 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @bcm5974_irq_button, align 4
  %126 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %127 = call i32 @usb_fill_int_urb(%struct.TYPE_7__* %111, %struct.usb_device* %112, i32 %117, i8* %120, i32 %124, i32 %125, %struct.bcm5974* %126, i32 1)
  %128 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %129 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %128, i32 0, i32 1
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %132 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %133 = load %struct.bcm5974_config*, %struct.bcm5974_config** %7, align 8
  %134 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @usb_rcvintpipe(%struct.usb_device* %132, i32 %135)
  %137 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %138 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %137, i32 0, i32 5
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %141 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @bcm5974_irq_trackpad, align 4
  %145 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %146 = call i32 @usb_fill_int_urb(%struct.TYPE_7__* %130, %struct.usb_device* %131, i32 %136, i8* %139, i32 %143, i32 %144, %struct.bcm5974* %145, i32 1)
  %147 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %148 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %149 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @usb_make_path(%struct.usb_device* %147, i32 %150, i32 4)
  %152 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %153 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @strlcat(i32 %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %156 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %157 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %156, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %157, align 8
  %158 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %159 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %162 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %161, i32 0, i32 5
  store i32 %160, i32* %162, align 4
  %163 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %164 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %163, i32 0, i32 4
  %165 = load %struct.usb_device*, %struct.usb_device** %164, align 8
  %166 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %167 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %166, i32 0, i32 4
  %168 = call i32 @usb_to_input_id(%struct.usb_device* %165, %struct.TYPE_6__* %167)
  %169 = load %struct.bcm5974_config*, %struct.bcm5974_config** %7, align 8
  %170 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %173 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 8
  %175 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %176 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %175, i32 0, i32 0
  %177 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %178 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  store i32* %176, i32** %179, align 8
  %180 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %181 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %182 = call i32 @input_set_drvdata(%struct.input_dev* %180, %struct.bcm5974* %181)
  %183 = load i32, i32* @bcm5974_open, align 4
  %184 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %185 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* @bcm5974_close, align 4
  %187 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %188 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 8
  %189 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %190 = load %struct.bcm5974_config*, %struct.bcm5974_config** %7, align 8
  %191 = call i32 @setup_events_to_report(%struct.input_dev* %189, %struct.bcm5974_config* %190)
  %192 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %193 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %192, i32 0, i32 6
  %194 = load %struct.input_dev*, %struct.input_dev** %193, align 8
  %195 = call i32 @input_register_device(%struct.input_dev* %194)
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %108
  br label %203

199:                                              ; preds = %108
  %200 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %201 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %202 = call i32 @usb_set_intfdata(%struct.usb_interface* %200, %struct.bcm5974* %201)
  store i32 0, i32* %3, align 4
  br label %255

203:                                              ; preds = %198
  %204 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %205 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %204, i32 0, i32 4
  %206 = load %struct.usb_device*, %struct.usb_device** %205, align 8
  %207 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %208 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %212 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %211, i32 0, i32 5
  %213 = load i8*, i8** %212, align 8
  %214 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %215 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %214, i32 0, i32 1
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @usb_buffer_free(%struct.usb_device* %206, i32 %210, i8* %213, i32 %218)
  br label %220

220:                                              ; preds = %203, %107
  %221 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %222 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %221, i32 0, i32 4
  %223 = load %struct.usb_device*, %struct.usb_device** %222, align 8
  %224 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %225 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %229 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %228, i32 0, i32 2
  %230 = load i8*, i8** %229, align 8
  %231 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %232 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %231, i32 0, i32 0
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @usb_buffer_free(%struct.usb_device* %223, i32 %227, i8* %230, i32 %235)
  br label %237

237:                                              ; preds = %220, %86
  %238 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %239 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %238, i32 0, i32 1
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %239, align 8
  %241 = call i32 @usb_free_urb(%struct.TYPE_7__* %240)
  br label %242

242:                                              ; preds = %237, %65
  %243 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %244 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %243, i32 0, i32 0
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %244, align 8
  %246 = call i32 @usb_free_urb(%struct.TYPE_7__* %245)
  br label %247

247:                                              ; preds = %242, %54, %25
  %248 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %249 = call i32 @usb_set_intfdata(%struct.usb_interface* %248, %struct.bcm5974* null)
  %250 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %251 = call i32 @input_free_device(%struct.input_dev* %250)
  %252 = load %struct.bcm5974*, %struct.bcm5974** %8, align 8
  %253 = call i32 @kfree(%struct.bcm5974* %252)
  %254 = load i32, i32* %10, align 4
  store i32 %254, i32* %3, align 4
  br label %255

255:                                              ; preds = %247, %199
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.bcm5974_config* @bcm5974_get_config(%struct.usb_device*) #1

declare dso_local %struct.bcm5974* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @err(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @usb_buffer_alloc(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_7__*, %struct.usb_device*, i32, i8*, i32, i32, %struct.bcm5974*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.bcm5974*) #1

declare dso_local i32 @setup_events_to_report(%struct.input_dev*, %struct.bcm5974_config*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.bcm5974*) #1

declare dso_local i32 @usb_buffer_free(%struct.usb_device*, i32, i8*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_7__*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.bcm5974*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
