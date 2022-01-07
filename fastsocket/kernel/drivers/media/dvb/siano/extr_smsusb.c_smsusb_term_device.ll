; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsusb.c_smsusb_term_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsusb.c_smsusb_term_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.smsusb_device_t = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"device %p destroyed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @smsusb_term_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsusb_term_device(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.smsusb_device_t*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.smsusb_device_t* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.smsusb_device_t* %5, %struct.smsusb_device_t** %3, align 8
  %6 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %3, align 8
  %7 = icmp ne %struct.smsusb_device_t* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %3, align 8
  %10 = call i32 @smsusb_stop_streaming(%struct.smsusb_device_t* %9)
  %11 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %3, align 8
  %12 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %3, align 8
  %17 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @smscore_unregister_device(i64 %18)
  br label %20

20:                                               ; preds = %15, %8
  %21 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %3, align 8
  %22 = call i32 @kfree(%struct.smsusb_device_t* %21)
  %23 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %3, align 8
  %24 = call i32 @sms_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.smsusb_device_t* %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %27 = call i32 @usb_set_intfdata(%struct.usb_interface* %26, i32* null)
  ret void
}

declare dso_local %struct.smsusb_device_t* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @smsusb_stop_streaming(%struct.smsusb_device_t*) #1

declare dso_local i32 @smscore_unregister_device(i64) #1

declare dso_local i32 @kfree(%struct.smsusb_device_t*) #1

declare dso_local i32 @sms_info(i8*, %struct.smsusb_device_t*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
