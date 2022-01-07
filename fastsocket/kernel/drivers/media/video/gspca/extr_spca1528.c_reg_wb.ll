; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca1528.c_reg_wb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca1528.c_reg_wb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32*, %struct.usb_device* }
%struct.usb_device = type { i32 }

@D_USBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"SET %02x %04x %04x %02x\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"reg_w err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32, i32, i32)* @reg_wb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_wb(%struct.gspca_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.gspca_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %14 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %13, i32 0, i32 2
  %15 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  store %struct.usb_device* %15, %struct.usb_device** %11, align 8
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %17 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %56

21:                                               ; preds = %5
  %22 = load i32, i32* @D_USBO, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @PDEBUG(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %30 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %34 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %35 = call i32 @usb_sndctrlpipe(%struct.usb_device* %34, i32 0)
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @USB_DIR_OUT, align 4
  %38 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %45 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @usb_control_msg(%struct.usb_device* %33, i32 %35, i32 %36, i32 %41, i32 %42, i32 %43, i32* %46, i32 1, i32 500)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %21
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %55 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %20, %50, %21
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
