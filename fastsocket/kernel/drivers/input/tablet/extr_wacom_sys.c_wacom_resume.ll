; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.wacom = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wacom_features* }
%struct.wacom_features = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @wacom_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.wacom*, align 8
  %4 = alloca %struct.wacom_features*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.wacom* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.wacom* %7, %struct.wacom** %3, align 8
  %8 = load %struct.wacom*, %struct.wacom** %3, align 8
  %9 = getelementptr inbounds %struct.wacom, %struct.wacom* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.wacom_features*, %struct.wacom_features** %11, align 8
  store %struct.wacom_features* %12, %struct.wacom_features** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.wacom*, %struct.wacom** %3, align 8
  %14 = getelementptr inbounds %struct.wacom, %struct.wacom* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %17 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %18 = call i32 @wacom_retrieve_hid_descriptor(%struct.usb_interface* %16, %struct.wacom_features* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %22 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %23 = call i32 @wacom_query_tablet_data(%struct.usb_interface* %21, %struct.wacom_features* %22)
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.wacom*, %struct.wacom** %3, align 8
  %26 = call i32 @wacom_led_control(%struct.wacom* %25)
  %27 = load %struct.wacom*, %struct.wacom** %3, align 8
  %28 = getelementptr inbounds %struct.wacom, %struct.wacom* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.wacom*, %struct.wacom** %3, align 8
  %33 = getelementptr inbounds %struct.wacom, %struct.wacom* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GFP_NOIO, align 4
  %36 = call i64 @usb_submit_urb(i32 %34, i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %31, %24
  %42 = load %struct.wacom*, %struct.wacom** %3, align 8
  %43 = getelementptr inbounds %struct.wacom, %struct.wacom* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.wacom* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wacom_retrieve_hid_descriptor(%struct.usb_interface*, %struct.wacom_features*) #1

declare dso_local i32 @wacom_query_tablet_data(%struct.usb_interface*, %struct.wacom_features*) #1

declare dso_local i32 @wacom_led_control(%struct.wacom*) #1

declare dso_local i64 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
