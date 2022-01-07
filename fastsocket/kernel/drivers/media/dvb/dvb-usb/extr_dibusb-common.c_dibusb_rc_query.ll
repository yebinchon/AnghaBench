; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dibusb-common.c_dibusb_rc_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dibusb-common.c_dibusb_rc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@DIBUSB_REQ_POLL_REMOTE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"key: %x %x %x %x %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dibusb_rc_query(%struct.dvb_usb_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [5 x i64], align 16
  %8 = alloca i64, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i64, i64* @DIBUSB_REQ_POLL_REMOTE, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %11 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0
  %12 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %10, i64* %8, i32 1, i64* %11, i32 5, i32 0)
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %14 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @dvb_usb_nec_rc_key_to_event(%struct.dvb_usb_device* %13, i64* %14, i32* %15, i32* %16)
  %18 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0
  %19 = load i64, i64* %18, align 16
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0
  %23 = load i64, i64* %22, align 16
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 2
  %27 = load i64, i64* %26, align 16
  %28 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 3
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 4
  %31 = load i64, i64* %30, align 16
  %32 = call i32 @deb_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %25, i64 %27, i64 %29, i64 %31)
  br label %33

33:                                               ; preds = %21, %3
  ret i32 0
}

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i64*, i32, i64*, i32, i32) #1

declare dso_local i32 @dvb_usb_nec_rc_key_to_event(%struct.dvb_usb_device*, i64*, i32*, i32*) #1

declare dso_local i32 @deb_info(i8*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
