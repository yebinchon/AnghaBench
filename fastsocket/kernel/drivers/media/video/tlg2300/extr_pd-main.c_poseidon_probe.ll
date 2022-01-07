; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-main.c_poseidon_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-main.c_poseidon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.device }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.poseidon = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@pd_device_list = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@PM_SUSPEND_DELAY = common dso_local global i32 0, align 4
@hibernation_resume = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @poseidon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poseidon_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.poseidon*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %11)
  store %struct.usb_device* %12, %struct.usb_device** %6, align 8
  store %struct.poseidon* null, %struct.poseidon** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %14 = call i32 @check_firmware(%struct.usb_device* %13, i32* %8)
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

18:                                               ; preds = %2
  %19 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %20 = call %struct.poseidon* @find_old_poseidon(%struct.usb_device* %19)
  store %struct.poseidon* %20, %struct.poseidon** %7, align 8
  %21 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  %22 = icmp ne %struct.poseidon* %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.poseidon* @kzalloc(i32 40, i32 %24)
  store %struct.poseidon* %25, %struct.poseidon** %7, align 8
  %26 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  %27 = icmp ne %struct.poseidon* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %93

31:                                               ; preds = %23
  %32 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  %33 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %32, i32 0, i32 6
  %34 = call i32 @kref_init(i32* %33)
  %35 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  %36 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %37 = call i32 @set_map_flags(%struct.poseidon* %35, %struct.usb_device* %36)
  store i32 1, i32* %9, align 4
  br label %38

38:                                               ; preds = %31, %18
  %39 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %40 = call %struct.TYPE_6__* @usb_get_dev(%struct.usb_device* %39)
  %41 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  %42 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %41, i32 0, i32 1
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %42, align 8
  %43 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %44 = call i32 @usb_get_intf(%struct.usb_interface* %43)
  %45 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  %46 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %48 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  %49 = call i32 @usb_set_intfdata(%struct.usb_interface* %47, %struct.poseidon* %48)
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %89

52:                                               ; preds = %38
  %53 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %54 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %53, i32 0, i32 0
  store %struct.device* %54, %struct.device** %10, align 8
  %55 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  %56 = call i32 @logpm(%struct.poseidon* %55)
  %57 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  %58 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %57, i32 0, i32 4
  %59 = call i32 @mutex_init(i32* %58)
  %60 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  %61 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.device*, %struct.device** %10, align 8
  %65 = getelementptr inbounds %struct.device, %struct.device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.device*, %struct.device** %10, align 8
  %70 = call i8* @dev_name(%struct.device* %69)
  %71 = call i32 @snprintf(i32 %63, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %68, i8* %70)
  %72 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  %73 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %72, i32 0, i32 3
  %74 = call i32 @v4l2_device_register(i32* null, %struct.TYPE_5__* %73)
  store i32 %74, i32* %8, align 4
  %75 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  %76 = call i32 @pd_video_init(%struct.poseidon* %75)
  store i32 %76, i32* %8, align 4
  %77 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  %78 = call i32 @poseidon_audio_init(%struct.poseidon* %77)
  %79 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  %80 = call i32 @poseidon_fm_init(%struct.poseidon* %79)
  %81 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  %82 = call i32 @pd_dvb_usb_device_init(%struct.poseidon* %81)
  %83 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  %84 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %83, i32 0, i32 2
  %85 = call i32 @INIT_LIST_HEAD(i32* %84)
  %86 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  %87 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %86, i32 0, i32 2
  %88 = call i32 @list_add_tail(i32* %87, i32* @pd_device_list)
  br label %89

89:                                               ; preds = %52, %38
  %90 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %91 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %90, i32 0, i32 0
  %92 = call i32 @device_init_wakeup(i32* %91, i32 1)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %28, %17
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @check_firmware(%struct.usb_device*, i32*) #1

declare dso_local %struct.poseidon* @find_old_poseidon(%struct.usb_device*) #1

declare dso_local %struct.poseidon* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @set_map_flags(%struct.poseidon*, %struct.usb_device*) #1

declare dso_local %struct.TYPE_6__* @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.poseidon*) #1

declare dso_local i32 @logpm(%struct.poseidon*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @pd_video_init(%struct.poseidon*) #1

declare dso_local i32 @poseidon_audio_init(%struct.poseidon*) #1

declare dso_local i32 @poseidon_fm_init(%struct.poseidon*) #1

declare dso_local i32 @pd_dvb_usb_device_init(%struct.poseidon*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
