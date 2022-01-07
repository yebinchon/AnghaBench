; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-mr800.c_usb_amradio_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-mr800.c_usb_amradio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.amradio_device = type { double, i32, %struct.amradio_device*, %struct.TYPE_5__*, i32, i32, i64, i64, %struct.v4l2_device }
%struct.TYPE_5__ = type { i32, i32*, i32*, %struct.v4l2_device*, i32 }
%struct.v4l2_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"kmalloc for amradio_device failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUFFER_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"kmalloc for radio->buffer failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"couldn't register v4l2_device\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"video_device_alloc failed\0A\00", align 1
@usb_amradio_fops = common dso_local global i32 0, align 4
@usb_amradio_ioctl_ops = common dso_local global i32 0, align 4
@usb_amradio_video_device_release = common dso_local global i32 0, align 4
@FREQ_MUL = common dso_local global double 0.000000e+00, align 8
@VFL_TYPE_RADIO = common dso_local global i32 0, align 4
@radio_nr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"could not register video device\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usb_amradio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_amradio_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.amradio_device*, align 8
  %7 = alloca %struct.v4l2_device*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.amradio_device* @kzalloc(i32 64, i32 %9)
  store %struct.amradio_device* %10, %struct.amradio_device** %6, align 8
  %11 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %12 = icmp ne %struct.amradio_device* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %157

19:                                               ; preds = %2
  %20 = load i32, i32* @BUFFER_LENGTH, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.amradio_device* @kmalloc(i32 %20, i32 %21)
  %23 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %24 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %23, i32 0, i32 2
  store %struct.amradio_device* %22, %struct.amradio_device** %24, align 8
  %25 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %26 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %25, i32 0, i32 2
  %27 = load %struct.amradio_device*, %struct.amradio_device** %26, align 8
  %28 = icmp ne %struct.amradio_device* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %19
  %30 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %31 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %34 = call i32 @kfree(%struct.amradio_device* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %157

37:                                               ; preds = %19
  %38 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %39 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %38, i32 0, i32 8
  store %struct.v4l2_device* %39, %struct.v4l2_device** %7, align 8
  %40 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %41 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %40, i32 0, i32 0
  %42 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %43 = call i32 @v4l2_device_register(i32* %41, %struct.v4l2_device* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %37
  %47 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %48 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %51 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %50, i32 0, i32 2
  %52 = load %struct.amradio_device*, %struct.amradio_device** %51, align 8
  %53 = call i32 @kfree(%struct.amradio_device* %52)
  %54 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %55 = call i32 @kfree(%struct.amradio_device* %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %157

57:                                               ; preds = %37
  %58 = call %struct.TYPE_5__* (...) @video_device_alloc()
  %59 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %60 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %59, i32 0, i32 3
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %60, align 8
  %61 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %62 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %61, i32 0, i32 3
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = icmp ne %struct.TYPE_5__* %63, null
  br i1 %64, label %77, label %65

65:                                               ; preds = %57
  %66 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %67 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %66, i32 0, i32 0
  %68 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %70 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %69, i32 0, i32 2
  %71 = load %struct.amradio_device*, %struct.amradio_device** %70, align 8
  %72 = call i32 @kfree(%struct.amradio_device* %71)
  %73 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %74 = call i32 @kfree(%struct.amradio_device* %73)
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %157

77:                                               ; preds = %57
  %78 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %79 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %78, i32 0, i32 3
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @strlcpy(i32 %82, i32 %85, i32 4)
  %87 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %88 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %89 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %88, i32 0, i32 3
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  store %struct.v4l2_device* %87, %struct.v4l2_device** %91, align 8
  %92 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %93 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %92, i32 0, i32 3
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  store i32* @usb_amradio_fops, i32** %95, align 8
  %96 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %97 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %96, i32 0, i32 3
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store i32* @usb_amradio_ioctl_ops, i32** %99, align 8
  %100 = load i32, i32* @usb_amradio_video_device_release, align 4
  %101 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %102 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %101, i32 0, i32 3
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 8
  %105 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %106 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %105, i32 0, i32 7
  store i64 0, i64* %106, align 8
  %107 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %108 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %107, i32 0, i32 6
  store i64 0, i64* %108, align 8
  %109 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %110 = call i32 @interface_to_usbdev(%struct.usb_interface* %109)
  %111 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %112 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  %113 = load double, double* @FREQ_MUL, align 8
  %114 = fmul double 0x4057CA3D70A3D70A, %113
  %115 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %116 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %115, i32 0, i32 0
  store double %114, double* %116, align 8
  %117 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %118 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %117, i32 0, i32 1
  store i32 -1, i32* %118, align 8
  %119 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %120 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %119, i32 0, i32 4
  %121 = call i32 @mutex_init(i32* %120)
  %122 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %123 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %122, i32 0, i32 3
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %126 = call i32 @video_set_drvdata(%struct.TYPE_5__* %124, %struct.amradio_device* %125)
  %127 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %128 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %127, i32 0, i32 3
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = load i32, i32* @VFL_TYPE_RADIO, align 4
  %131 = load i32, i32* @radio_nr, align 4
  %132 = call i32 @video_register_device(%struct.TYPE_5__* %129, i32 %130, i32 %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %77
  %136 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %137 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %136, i32 0, i32 0
  %138 = call i32 @dev_err(i32* %137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %139 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %140 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %139, i32 0, i32 3
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = call i32 @video_device_release(%struct.TYPE_5__* %141)
  %143 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %144 = call i32 @v4l2_device_unregister(%struct.v4l2_device* %143)
  %145 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %146 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %145, i32 0, i32 2
  %147 = load %struct.amradio_device*, %struct.amradio_device** %146, align 8
  %148 = call i32 @kfree(%struct.amradio_device* %147)
  %149 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %150 = call i32 @kfree(%struct.amradio_device* %149)
  %151 = load i32, i32* @EIO, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %157

153:                                              ; preds = %77
  %154 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %155 = load %struct.amradio_device*, %struct.amradio_device** %6, align 8
  %156 = call i32 @usb_set_intfdata(%struct.usb_interface* %154, %struct.amradio_device* %155)
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %153, %135, %65, %46, %29, %13
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.amradio_device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.amradio_device* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.amradio_device*) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.v4l2_device*) #1

declare dso_local %struct.TYPE_5__* @video_device_alloc(...) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_5__*, %struct.amradio_device*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @video_device_release(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.v4l2_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.amradio_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
