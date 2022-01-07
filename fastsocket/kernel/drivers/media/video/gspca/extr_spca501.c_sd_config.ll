; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca501.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca501.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.gspca_dev = type { %struct.cam }
%struct.cam = type { i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32, i32, i32, i32 }

@vga_mode = common dso_local global i32 0, align 4
@sd_ctrls = common dso_local global %struct.TYPE_4__* null, align 8
@MY_BRIGHTNESS = common dso_local global i64 0, align 8
@MY_CONTRAST = common dso_local global i64 0, align 8
@MY_COLOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  %5 = alloca %struct.sd*, align 8
  %6 = alloca %struct.cam*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %4, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %5, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 0
  store %struct.cam* %10, %struct.cam** %6, align 8
  %11 = load i32, i32* @vga_mode, align 4
  %12 = load %struct.cam*, %struct.cam** %6, align 8
  %13 = getelementptr inbounds %struct.cam, %struct.cam* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @vga_mode, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = load %struct.cam*, %struct.cam** %6, align 8
  %17 = getelementptr inbounds %struct.cam, %struct.cam* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %19 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sd*, %struct.sd** %5, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sd_ctrls, align 8
  %24 = load i64, i64* @MY_BRIGHTNESS, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sd*, %struct.sd** %5, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sd_ctrls, align 8
  %32 = load i64, i64* @MY_CONTRAST, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sd*, %struct.sd** %5, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sd_ctrls, align 8
  %40 = load i64, i64* @MY_COLOR, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sd*, %struct.sd** %5, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
