; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca508.c_reg_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca508.c_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@D_USBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"reg read i:%04x --> %02x\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"reg_read err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_read(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %8 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %11 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @usb_rcvctrlpipe(i32 %12, i32 0)
  %14 = load i32, i32* @USB_DIR_IN, align 4
  %15 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %21 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @usb_control_msg(i32 %9, i32 %13, i32 0, i32 %18, i32 0, i32 %19, i32* %22, i32 1, i32 500)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @D_USBI, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %27 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PDEBUG(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %44

38:                                               ; preds = %2
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %40 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
