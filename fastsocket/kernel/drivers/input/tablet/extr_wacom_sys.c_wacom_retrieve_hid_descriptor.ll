; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_retrieve_hid_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_retrieve_hid_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.usb_host_interface* }
%struct.wacom_features = type { i64, i32 }
%struct.hid_descriptor = type { i32 }

@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@TABLETPC = common dso_local global i64 0, align 8
@TABLETPC2FG = common dso_local global i64 0, align 8
@HID_DEVICET_HID = common dso_local global i32 0, align 4
@HID_DEVICET_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"wacom: can not retrieve extra class descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.wacom_features*)* @wacom_retrieve_hid_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_retrieve_hid_descriptor(%struct.usb_interface* %0, %struct.wacom_features* %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.wacom_features*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.hid_descriptor*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store %struct.wacom_features* %1, %struct.wacom_features** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %9 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %8, i32 0, i32 0
  %10 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  store %struct.usb_host_interface* %10, %struct.usb_host_interface** %6, align 8
  %11 = load i32, i32* @BTN_TOOL_PEN, align 4
  %12 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %13 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %15 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TABLETPC, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %21 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TABLETPC2FG, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %51

26:                                               ; preds = %19, %2
  %27 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %28 = load i32, i32* @HID_DEVICET_HID, align 4
  %29 = call i64 @usb_get_extra_descriptor(%struct.usb_host_interface* %27, i32 %28, %struct.hid_descriptor** %7)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %33 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %32, i32 0, i32 0
  %34 = load %struct.usb_host_interface*, %struct.usb_host_interface** %33, align 8
  %35 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %34, i64 0
  %36 = load i32, i32* @HID_DEVICET_REPORT, align 4
  %37 = call i64 @usb_get_extra_descriptor(%struct.usb_host_interface* %35, i32 %36, %struct.hid_descriptor** %7)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %51

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %26
  %43 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %44 = load %struct.hid_descriptor*, %struct.hid_descriptor** %7, align 8
  %45 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %46 = call i32 @wacom_parse_hid(%struct.usb_interface* %43, %struct.hid_descriptor* %44, %struct.wacom_features* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %51

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %49, %39, %25
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @usb_get_extra_descriptor(%struct.usb_host_interface*, i32, %struct.hid_descriptor**) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @wacom_parse_hid(%struct.usb_interface*, %struct.hid_descriptor*, %struct.wacom_features*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
