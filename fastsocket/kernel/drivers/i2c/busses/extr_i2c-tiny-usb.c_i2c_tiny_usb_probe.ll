; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-tiny-usb.c_i2c_tiny_usb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-tiny-usb.c_i2c_tiny_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.i2c_tiny_usb = type { %struct.TYPE_10__, %struct.usb_interface*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__, i32, %struct.i2c_tiny_usb*, i32*, i32, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"probing usb device\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"version %x.%02x found at bus %03d address %03d\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@usb_algorithm = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"i2c-tiny-usb at bus %03d device %03d\00", align 1
@CMD_SET_DELAY = common dso_local global i32 0, align 4
@delay = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"failure setting delay to %dus\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"connected i2c-tiny-usb device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @i2c_tiny_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_tiny_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.i2c_tiny_usb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %11, i32 0, i32 0
  %13 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.i2c_tiny_usb* @kzalloc(i32 56, i32 %14)
  store %struct.i2c_tiny_usb* %15, %struct.i2c_tiny_usb** %6, align 8
  %16 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %17 = icmp eq %struct.i2c_tiny_usb* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 0
  %21 = bitcast i32* %20 to %struct.TYPE_12__*
  %22 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %124

23:                                               ; preds = %2
  %24 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %25 = call i32 @interface_to_usbdev(%struct.usb_interface* %24)
  %26 = call %struct.TYPE_11__* @usb_get_dev(i32 %25)
  %27 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %28 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %27, i32 0, i32 2
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %28, align 8
  %29 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %30 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %31 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %30, i32 0, i32 1
  store %struct.usb_interface* %29, %struct.usb_interface** %31, align 8
  %32 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %33 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %34 = call i32 @usb_set_intfdata(%struct.usb_interface* %32, %struct.i2c_tiny_usb* %33)
  %35 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %36 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %35, i32 0, i32 2
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @le16_to_cpu(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %43 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %42, i32 0, i32 0
  %44 = bitcast i32* %43 to %struct.TYPE_12__*
  %45 = load i32, i32* %8, align 4
  %46 = ashr i32 %45, 8
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 255
  %49 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %50 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %49, i32 0, i32 2
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %57 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %56, i32 0, i32 2
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_info(%struct.TYPE_12__* %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %48, i32 %55, i32 %60)
  %62 = load i32, i32* @THIS_MODULE, align 4
  %63 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %64 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 5
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %67 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %68 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 4
  store i32 %66, i32* %69, align 8
  %70 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %71 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  store i32* @usb_algorithm, i32** %72, align 8
  %73 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %74 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %75 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  store %struct.i2c_tiny_usb* %73, %struct.i2c_tiny_usb** %76, align 8
  %77 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %78 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %82 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %81, i32 0, i32 2
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %89 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %88, i32 0, i32 2
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @snprintf(i32 %80, i32 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %92)
  %94 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %95 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %94, i32 0, i32 0
  %96 = load i32, i32* @CMD_SET_DELAY, align 4
  %97 = load i32, i32* @delay, align 4
  %98 = call i64 @usb_write(%struct.TYPE_10__* %95, i32 %96, i32 %97, i32 0, i32* null, i32 0)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %23
  %101 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %102 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* @delay, align 4
  %105 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %124

108:                                              ; preds = %23
  %109 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %110 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %109, i32 0, i32 1
  %111 = load %struct.usb_interface*, %struct.usb_interface** %110, align 8
  %112 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %111, i32 0, i32 0
  %113 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %114 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  store i32* %112, i32** %116, align 8
  %117 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %118 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %117, i32 0, i32 0
  %119 = call i32 @i2c_add_adapter(%struct.TYPE_10__* %118)
  %120 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %121 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_info(%struct.TYPE_12__* %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %132

124:                                              ; preds = %100, %18
  %125 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %126 = icmp ne %struct.i2c_tiny_usb* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %6, align 8
  %129 = call i32 @i2c_tiny_usb_free(%struct.i2c_tiny_usb* %128)
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %108
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.i2c_tiny_usb* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local %struct.TYPE_11__* @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.i2c_tiny_usb*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i64 @usb_write(%struct.TYPE_10__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_10__*) #1

declare dso_local i32 @i2c_tiny_usb_free(%struct.i2c_tiny_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
