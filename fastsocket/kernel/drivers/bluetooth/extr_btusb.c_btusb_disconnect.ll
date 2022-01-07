; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.btusb_data = type { %struct.usb_interface*, %struct.usb_interface*, %struct.hci_dev* }
%struct.hci_dev = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"intf %p\00", align 1
@btusb_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @btusb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btusb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.btusb_data*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.btusb_data* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.btusb_data* %6, %struct.btusb_data** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.usb_interface* %7)
  %9 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %10 = icmp ne %struct.btusb_data* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %60

12:                                               ; preds = %1
  %13 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %14 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %13, i32 0, i32 2
  %15 = load %struct.hci_dev*, %struct.hci_dev** %14, align 8
  store %struct.hci_dev* %15, %struct.hci_dev** %4, align 8
  %16 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %17 = call i32 @__hci_dev_hold(%struct.hci_dev* %16)
  %18 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %19 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %18, i32 0, i32 1
  %20 = load %struct.usb_interface*, %struct.usb_interface** %19, align 8
  %21 = call i32 @usb_set_intfdata(%struct.usb_interface* %20, i32* null)
  %22 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %23 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %22, i32 0, i32 0
  %24 = load %struct.usb_interface*, %struct.usb_interface** %23, align 8
  %25 = icmp ne %struct.usb_interface* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %12
  %27 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %28 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %27, i32 0, i32 0
  %29 = load %struct.usb_interface*, %struct.usb_interface** %28, align 8
  %30 = call i32 @usb_set_intfdata(%struct.usb_interface* %29, i32* null)
  br label %31

31:                                               ; preds = %26, %12
  %32 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %33 = call i32 @hci_unregister_dev(%struct.hci_dev* %32)
  %34 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %35 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %36 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %35, i32 0, i32 0
  %37 = load %struct.usb_interface*, %struct.usb_interface** %36, align 8
  %38 = icmp eq %struct.usb_interface* %34, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %41 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %40, i32 0, i32 1
  %42 = load %struct.usb_interface*, %struct.usb_interface** %41, align 8
  %43 = call i32 @usb_driver_release_interface(i32* @btusb_driver, %struct.usb_interface* %42)
  br label %55

44:                                               ; preds = %31
  %45 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %46 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %45, i32 0, i32 0
  %47 = load %struct.usb_interface*, %struct.usb_interface** %46, align 8
  %48 = icmp ne %struct.usb_interface* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %51 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %50, i32 0, i32 0
  %52 = load %struct.usb_interface*, %struct.usb_interface** %51, align 8
  %53 = call i32 @usb_driver_release_interface(i32* @btusb_driver, %struct.usb_interface* %52)
  br label %54

54:                                               ; preds = %49, %44
  br label %55

55:                                               ; preds = %54, %39
  %56 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %57 = call i32 @__hci_dev_put(%struct.hci_dev* %56)
  %58 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %59 = call i32 @hci_free_dev(%struct.hci_dev* %58)
  br label %60

60:                                               ; preds = %55, %11
  ret void
}

declare dso_local %struct.btusb_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.usb_interface*) #1

declare dso_local i32 @__hci_dev_hold(%struct.hci_dev*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @hci_unregister_dev(%struct.hci_dev*) #1

declare dso_local i32 @usb_driver_release_interface(i32*, %struct.usb_interface*) #1

declare dso_local i32 @__hci_dev_put(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
