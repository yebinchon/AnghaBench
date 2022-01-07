; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_au6610.c_au6610_usb_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_au6610.c_au6610_usb_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"wlen = %x, aborting.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@AU6610_USB_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32, i32*, i32, i32*, i32)* @au6610_usb_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au6610_usb_msg(%struct.dvb_usb_device* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dvb_usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [6 x i32], align 16
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* %13, align 4
  switch i32 %19, label %35 [
    i32 1, label %20
    i32 2, label %25
  ]

20:                                               ; preds = %7
  %21 = load i32*, i32** %12, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  store i32 %24, i32* %17, align 4
  br label %40

25:                                               ; preds = %7
  %26 = load i32*, i32** %12, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 8
  store i32 %29, i32* %17, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %17, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %17, align 4
  br label %40

35:                                               ; preds = %7
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %71

40:                                               ; preds = %25, %20
  %41 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %42 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %45 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @usb_rcvctrlpipe(i32 %46, i32 0)
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %50 = load i32, i32* @USB_DIR_IN, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %11, align 4
  %53 = shl i32 %52, 1
  %54 = load i32, i32* %17, align 4
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %18, i64 0, i64 0
  %56 = load i32, i32* @AU6610_USB_TIMEOUT, align 4
  %57 = call i32 @usb_control_msg(i32 %43, i32 %47, i32 %48, i32 %51, i32 %53, i32 %54, i32* %55, i32 24, i32 %56)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %40
  %61 = load i32, i32* %16, align 4
  store i32 %61, i32* %8, align 4
  br label %71

62:                                               ; preds = %40
  %63 = load i32, i32* %10, align 4
  switch i32 %63, label %69 [
    i32 129, label %64
    i32 128, label %64
  ]

64:                                               ; preds = %62, %62
  %65 = getelementptr inbounds [6 x i32], [6 x i32]* %18, i64 0, i64 4
  %66 = load i32, i32* %65, align 16
  %67 = load i32*, i32** %14, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %64, %62
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %69, %60, %35
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
