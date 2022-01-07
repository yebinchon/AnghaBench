; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.usb_interface = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @cdc_ncm_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdc_ncm_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %9 = call i32 @cdc_ncm_select_altsetting(%struct.usbnet* %7, %struct.usb_interface* %8)
  %10 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @cdc_ncm_comm_intf_is_mbim(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %20 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %21 = call i32 @cdc_ncm_bind_common(%struct.usbnet* %19, %struct.usb_interface* %20, i32 1)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %23 = call i32 @usbnet_link_change(%struct.usbnet* %22, i32 0, i32 0)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @cdc_ncm_select_altsetting(%struct.usbnet*, %struct.usb_interface*) #1

declare dso_local i64 @cdc_ncm_comm_intf_is_mbim(i32) #1

declare dso_local i32 @cdc_ncm_bind_common(%struct.usbnet*, %struct.usb_interface*, i32) #1

declare dso_local i32 @usbnet_link_change(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
