; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_dsbr100.c_usb_dsbr100_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_dsbr100.c_usb_dsbr100_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.dsbr100_device = type { i32, %struct.dsbr100_device*, %struct.TYPE_3__, i32, i32, i64, i32, %struct.v4l2_device }
%struct.TYPE_3__ = type { i32, i32*, i32*, %struct.v4l2_device*, i32 }
%struct.v4l2_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TB_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"couldn't register v4l2_device\0A\00", align 1
@usb_dsbr100_fops = common dso_local global i32 0, align 4
@usb_dsbr100_ioctl_ops = common dso_local global i32 0, align 4
@usb_dsbr100_video_device_release = common dso_local global i32 0, align 4
@FREQ_MIN = common dso_local global i32 0, align 4
@FREQ_MUL = common dso_local global i32 0, align 4
@STOPPED = common dso_local global i32 0, align 4
@VFL_TYPE_RADIO = common dso_local global i32 0, align 4
@radio_nr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"couldn't register video device\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usb_dsbr100_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_dsbr100_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.dsbr100_device*, align 8
  %7 = alloca %struct.v4l2_device*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.dsbr100_device* @kzalloc(i32 80, i32 %9)
  store %struct.dsbr100_device* %10, %struct.dsbr100_device** %6, align 8
  %11 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %12 = icmp ne %struct.dsbr100_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %118

16:                                               ; preds = %2
  %17 = load i32, i32* @TB_LEN, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.dsbr100_device* @kmalloc(i32 %17, i32 %18)
  %20 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %21 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %20, i32 0, i32 1
  store %struct.dsbr100_device* %19, %struct.dsbr100_device** %21, align 8
  %22 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %23 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %22, i32 0, i32 1
  %24 = load %struct.dsbr100_device*, %struct.dsbr100_device** %23, align 8
  %25 = icmp ne %struct.dsbr100_device* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %16
  %27 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %28 = call i32 @kfree(%struct.dsbr100_device* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %118

31:                                               ; preds = %16
  %32 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %33 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %32, i32 0, i32 7
  store %struct.v4l2_device* %33, %struct.v4l2_device** %7, align 8
  %34 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %35 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %34, i32 0, i32 0
  %36 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %37 = call i32 @v4l2_device_register(i32* %35, %struct.v4l2_device* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %31
  %41 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %42 = call i32 @v4l2_err(%struct.v4l2_device* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %44 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %43, i32 0, i32 1
  %45 = load %struct.dsbr100_device*, %struct.dsbr100_device** %44, align 8
  %46 = call i32 @kfree(%struct.dsbr100_device* %45)
  %47 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %48 = call i32 @kfree(%struct.dsbr100_device* %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %118

50:                                               ; preds = %31
  %51 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %52 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @strlcpy(i32 %54, i32 %57, i32 4)
  %59 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %60 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %61 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  store %struct.v4l2_device* %59, %struct.v4l2_device** %62, align 8
  %63 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %64 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i32* @usb_dsbr100_fops, i32** %65, align 8
  %66 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %67 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i32* @usb_dsbr100_ioctl_ops, i32** %68, align 8
  %69 = load i32, i32* @usb_dsbr100_video_device_release, align 4
  %70 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %71 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %74 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %73, i32 0, i32 6
  %75 = call i32 @mutex_init(i32* %74)
  %76 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %77 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %76, i32 0, i32 5
  store i64 0, i64* %77, align 8
  %78 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %79 = call i32 @interface_to_usbdev(%struct.usb_interface* %78)
  %80 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %81 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @FREQ_MIN, align 4
  %83 = load i32, i32* @FREQ_MUL, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %86 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @STOPPED, align 4
  %88 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %89 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %91 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %90, i32 0, i32 2
  %92 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %93 = call i32 @video_set_drvdata(%struct.TYPE_3__* %91, %struct.dsbr100_device* %92)
  %94 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %95 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %94, i32 0, i32 2
  %96 = load i32, i32* @VFL_TYPE_RADIO, align 4
  %97 = load i32, i32* @radio_nr, align 4
  %98 = call i32 @video_register_device(%struct.TYPE_3__* %95, i32 %96, i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %50
  %102 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %103 = call i32 @v4l2_err(%struct.v4l2_device* %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %104 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %105 = call i32 @v4l2_device_unregister(%struct.v4l2_device* %104)
  %106 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %107 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %106, i32 0, i32 1
  %108 = load %struct.dsbr100_device*, %struct.dsbr100_device** %107, align 8
  %109 = call i32 @kfree(%struct.dsbr100_device* %108)
  %110 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %111 = call i32 @kfree(%struct.dsbr100_device* %110)
  %112 = load i32, i32* @EIO, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %118

114:                                              ; preds = %50
  %115 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %116 = load %struct.dsbr100_device*, %struct.dsbr100_device** %6, align 8
  %117 = call i32 @usb_set_intfdata(%struct.usb_interface* %115, %struct.dsbr100_device* %116)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %114, %101, %40, %26, %13
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.dsbr100_device* @kzalloc(i32, i32) #1

declare dso_local %struct.dsbr100_device* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.dsbr100_device*) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.v4l2_device*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_device*, i8*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_3__*, %struct.dsbr100_device*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @v4l2_device_unregister(%struct.v4l2_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.dsbr100_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
