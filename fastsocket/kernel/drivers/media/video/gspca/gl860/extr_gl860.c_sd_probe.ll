; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860.c_sd_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860.c_sd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.gspca_dev = type { i32 }

@sd_desc_mi1320 = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Camera is now controlling video device %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @sd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i64, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %4, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %8 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %9 = load i32, i32* @THIS_MODULE, align 4
  %10 = call i64 @gspca_dev_probe(%struct.usb_interface* %7, %struct.usb_device_id* %8, i32* @sd_desc_mi1320, i32 4, i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %15 = call %struct.gspca_dev* @usb_get_intfdata(%struct.usb_interface* %14)
  store %struct.gspca_dev* %15, %struct.gspca_dev** %5, align 8
  %16 = load i32, i32* @D_PROBE, align 4
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %18 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %17, i32 0, i32 0
  %19 = call i32 @video_device_node_name(i32* %18)
  %20 = call i32 @PDEBUG(i32 %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %13, %2
  %22 = load i64, i64* %6, align 8
  %23 = trunc i64 %22 to i32
  ret i32 %23
}

declare dso_local i64 @gspca_dev_probe(%struct.usb_interface*, %struct.usb_device_id*, i32*, i32, i32) #1

declare dso_local %struct.gspca_dev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @video_device_node_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
