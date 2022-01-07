; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_set_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_set_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device = type { i32 }

@USB_REQ_SET_REPORT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32, i32, i8*, i64, i32)* @wacom_set_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_set_report(%struct.usb_interface* %0, i32 %1, i32 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_device*, align 8
  %14 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %16 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %15)
  store %struct.usb_device* %16, %struct.usb_device** %13, align 8
  br label %17

17:                                               ; preds = %53, %6
  %18 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %20 = call i32 @usb_sndctrlpipe(%struct.usb_device* %19, i32 0)
  %21 = load i32, i32* @USB_REQ_SET_REPORT, align 4
  %22 = load i32, i32* @USB_TYPE_CLASS, align 4
  %23 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 %25, 8
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %26, %27
  %29 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %30 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @usb_control_msg(%struct.usb_device* %18, i32 %20, i32 %21, i32 %24, i32 %28, i32 %35, i8* %36, i64 %37, i32 1000)
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %17
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @ETIMEDOUT, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @EPIPE, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %12, align 4
  %51 = add i32 %50, -1
  store i32 %51, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %49, %44
  %54 = phi i1 [ false, %44 ], [ %52, %49 ]
  br i1 %54, label %17, label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %14, align 4
  ret i32 %56
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
