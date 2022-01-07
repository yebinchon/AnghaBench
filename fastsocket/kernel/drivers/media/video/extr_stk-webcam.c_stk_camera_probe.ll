; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_camera_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_camera_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.stk_camera = type { i32, i32, i32, %struct.TYPE_6__, i64, i64, %struct.usb_interface*, %struct.usb_device*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Out of memory !\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@vflip = common dso_local global i32 0, align 4
@hflip = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not find isoc-in endpoint\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_RGB565 = common dso_local global i32 0, align 4
@MODE_VGA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @stk_camera_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_camera_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stk_camera*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.usb_host_interface*, align 8
  %11 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store i32 0, i32* %7, align 4
  store %struct.stk_camera* null, %struct.stk_camera** %8, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %9, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.stk_camera* @kzalloc(i32 72, i32 %14)
  store %struct.stk_camera* %15, %struct.stk_camera** %8, align 8
  %16 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %17 = icmp eq %struct.stk_camera* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = call i32 @STK_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %126

22:                                               ; preds = %2
  %23 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %24 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %23, i32 0, i32 9
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %27 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %26, i32 0, i32 8
  %28 = call i32 @init_waitqueue_head(i32* %27)
  %29 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %30 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %31 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %30, i32 0, i32 7
  store %struct.usb_device* %29, %struct.usb_device** %31, align 8
  %32 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %33 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %34 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %33, i32 0, i32 6
  store %struct.usb_interface* %32, %struct.usb_interface** %34, align 8
  %35 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %36 = call i32 @usb_get_intf(%struct.usb_interface* %35)
  %37 = load i32, i32* @vflip, align 4
  %38 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %39 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @hflip, align 4
  %42 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %43 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %46 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %45, i32 0, i32 5
  store i64 0, i64* %46, align 8
  %47 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %48 = call i32 @set_present(%struct.stk_camera* %47)
  %49 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %50 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %49, i32 0, i32 0
  %51 = load %struct.usb_host_interface*, %struct.usb_host_interface** %50, align 8
  store %struct.usb_host_interface* %51, %struct.usb_host_interface** %10, align 8
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %81, %22
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %55 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %52
  %60 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %61 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %66, %struct.usb_endpoint_descriptor** %11, align 8
  %67 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %68 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %59
  %72 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %73 = call i64 @usb_endpoint_is_isoc_in(%struct.usb_endpoint_descriptor* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %77 = call i64 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %76)
  %78 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %79 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %78, i32 0, i32 4
  store i64 %77, i64* %79, align 8
  br label %84

80:                                               ; preds = %71, %59
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %52

84:                                               ; preds = %75, %52
  %85 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %86 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = call i32 @STK_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  br label %122

93:                                               ; preds = %84
  %94 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %95 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 32767, i32* %96, align 4
  %97 = load i32, i32* @V4L2_PIX_FMT_RGB565, align 4
  %98 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %99 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* @MODE_VGA, align 4
  %102 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %103 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  %105 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %106 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %105, i32 0, i32 0
  store i32 614400, i32* %106, align 8
  %107 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %108 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %107, i32 0, i32 2
  %109 = call i32 @INIT_LIST_HEAD(i32* %108)
  %110 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %111 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %110, i32 0, i32 1
  %112 = call i32 @INIT_LIST_HEAD(i32* %111)
  %113 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %114 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %115 = call i32 @usb_set_intfdata(%struct.usb_interface* %113, %struct.stk_camera* %114)
  %116 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %117 = call i32 @stk_register_video_device(%struct.stk_camera* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %93
  br label %122

121:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %126

122:                                              ; preds = %120, %89
  %123 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %124 = call i32 @kfree(%struct.stk_camera* %123)
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %122, %121, %18
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.stk_camera* @kzalloc(i32, i32) #1

declare dso_local i32 @STK_ERROR(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32 @set_present(%struct.stk_camera*) #1

declare dso_local i64 @usb_endpoint_is_isoc_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.stk_camera*) #1

declare dso_local i32 @stk_register_video_device(%struct.stk_camera*) #1

declare dso_local i32 @kfree(%struct.stk_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
