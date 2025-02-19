; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_conex.c_reg_r.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_conex.c_reg_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, %struct.usb_device* }
%struct.usb_device = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@D_USBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"reg read [%02x] -> %02x ..\00", align 1
@USB_BUF_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i64, i64)* @reg_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_r(%struct.gspca_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.usb_device*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 1
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %7, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %13 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %12, i32 0)
  %14 = load i32, i32* @USB_DIR_IN, align 4
  %15 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %18 = or i32 %16, %17
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %21 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @usb_control_msg(%struct.usb_device* %11, i32 %13, i32 0, i32 %18, i32 0, i64 %19, i32* %22, i64 %23, i32 500)
  %25 = load i32, i32* @D_USBI, align 4
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %28 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PDEBUG(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %26, i32 %31)
  ret void
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i64, i32*, i64, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
