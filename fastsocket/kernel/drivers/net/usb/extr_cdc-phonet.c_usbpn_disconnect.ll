; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc-phonet.c_usbpn_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc-phonet.c_usbpn_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usbpn_dev = type { i32, i32, %struct.usb_interface*, %struct.usb_interface*, %struct.usb_device* }
%struct.usb_device = type { i32 }

@usbpn_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @usbpn_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbpn_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usbpn_dev*, align 8
  %4 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.usbpn_dev* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.usbpn_dev* %6, %struct.usbpn_dev** %3, align 8
  %7 = load %struct.usbpn_dev*, %struct.usbpn_dev** %3, align 8
  %8 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %7, i32 0, i32 4
  %9 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  store %struct.usb_device* %9, %struct.usb_device** %4, align 8
  %10 = load %struct.usbpn_dev*, %struct.usbpn_dev** %3, align 8
  %11 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %40

15:                                               ; preds = %1
  %16 = load %struct.usbpn_dev*, %struct.usbpn_dev** %3, align 8
  %17 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.usbpn_dev*, %struct.usbpn_dev** %3, align 8
  %19 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %18, i32 0, i32 2
  %20 = load %struct.usb_interface*, %struct.usb_interface** %19, align 8
  %21 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %22 = icmp eq %struct.usb_interface* %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.usbpn_dev*, %struct.usbpn_dev** %3, align 8
  %25 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %24, i32 0, i32 3
  %26 = load %struct.usb_interface*, %struct.usb_interface** %25, align 8
  br label %31

27:                                               ; preds = %15
  %28 = load %struct.usbpn_dev*, %struct.usbpn_dev** %3, align 8
  %29 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %28, i32 0, i32 2
  %30 = load %struct.usb_interface*, %struct.usb_interface** %29, align 8
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi %struct.usb_interface* [ %26, %23 ], [ %30, %27 ]
  %33 = call i32 @usb_driver_release_interface(i32* @usbpn_driver, %struct.usb_interface* %32)
  %34 = load %struct.usbpn_dev*, %struct.usbpn_dev** %3, align 8
  %35 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @unregister_netdev(i32 %36)
  %38 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %39 = call i32 @usb_put_dev(%struct.usb_device* %38)
  br label %40

40:                                               ; preds = %31, %14
  ret void
}

declare dso_local %struct.usbpn_dev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_driver_release_interface(i32*, %struct.usb_interface*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
