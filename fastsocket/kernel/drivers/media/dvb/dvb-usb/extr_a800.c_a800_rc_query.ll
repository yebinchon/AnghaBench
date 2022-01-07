; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_a800.c_a800_rc_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_a800.c_a800_rc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"key: %x %x %x %x %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*, i32*)* @a800_rc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a800_rc_query(%struct.dvb_usb_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [5 x i64], align 16
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @usb_rcvctrlpipe(i32 %14, i32 0)
  %16 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %17 = load i32, i32* @USB_DIR_IN, align 4
  %18 = or i32 %16, %17
  %19 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0
  %20 = call i32 @usb_control_msg(i32 %11, i32 %15, i32 4, i32 %18, i32 0, i32 0, i64* %19, i32 5, i32 2000)
  %21 = icmp ne i32 %20, 5
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %47

25:                                               ; preds = %3
  %26 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %27 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @dvb_usb_nec_rc_key_to_event(%struct.dvb_usb_device* %26, i64* %27, i32* %28, i32* %29)
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0
  %32 = load i64, i64* %31, align 16
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %25
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0
  %36 = load i64, i64* %35, align 16
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 2
  %40 = load i64, i64* %39, align 16
  %41 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 3
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 4
  %44 = load i64, i64* %43, align 16
  %45 = call i32 @deb_rc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %38, i64 %40, i64 %42, i64 %44)
  br label %46

46:                                               ; preds = %34, %25
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %22
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i64*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dvb_usb_nec_rc_key_to_event(%struct.dvb_usb_device*, i64*, i32*, i32*) #1

declare dso_local i32 @deb_rc(i8*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
