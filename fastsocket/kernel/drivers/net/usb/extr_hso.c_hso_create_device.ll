; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_create_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_create_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_device = type { i32, i32, i32, i32, i32, %struct.usb_interface*, i32 }
%struct.usb_interface = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@async_get_intf = common dso_local global i32 0, align 4
@async_put_intf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hso_device* (%struct.usb_interface*, i32)* @hso_create_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hso_device* @hso_create_device(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.hso_device*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hso_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.hso_device* @kzalloc(i32 40, i32 %7)
  store %struct.hso_device* %8, %struct.hso_device** %6, align 8
  %9 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  %10 = icmp ne %struct.hso_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.hso_device* null, %struct.hso_device** %3, align 8
  br label %38

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  %15 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %17 = call i32 @interface_to_usbdev(%struct.usb_interface* %16)
  %18 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  %19 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %21 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  %22 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %21, i32 0, i32 5
  store %struct.usb_interface* %20, %struct.usb_interface** %22, align 8
  %23 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  %24 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %23, i32 0, i32 4
  %25 = call i32 @kref_init(i32* %24)
  %26 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  %27 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %26, i32 0, i32 3
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  %30 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %29, i32 0, i32 2
  %31 = load i32, i32* @async_get_intf, align 4
  %32 = call i32 @INIT_WORK(i32* %30, i32 %31)
  %33 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  %34 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %33, i32 0, i32 1
  %35 = load i32, i32* @async_put_intf, align 4
  %36 = call i32 @INIT_WORK(i32* %34, i32 %35)
  %37 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  store %struct.hso_device* %37, %struct.hso_device** %3, align 8
  br label %38

38:                                               ; preds = %12, %11
  %39 = load %struct.hso_device*, %struct.hso_device** %3, align 8
  ret %struct.hso_device* %39
}

declare dso_local %struct.hso_device* @kzalloc(i32, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
