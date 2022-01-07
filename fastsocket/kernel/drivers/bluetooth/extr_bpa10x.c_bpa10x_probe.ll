; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bpa10x.c_bpa10x_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bpa10x.c_bpa10x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.usb_device_id = type { i32 }
%struct.bpa10x_data = type { %struct.hci_dev*, i32, i32, i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, i32, %struct.bpa10x_data*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"intf %p id %p\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCI_USB = common dso_local global i32 0, align 4
@bpa10x_open = common dso_local global i32 0, align 4
@bpa10x_close = common dso_local global i32 0, align 4
@bpa10x_flush = common dso_local global i32 0, align 4
@bpa10x_send_frame = common dso_local global i32 0, align 4
@bpa10x_destruct = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@HCI_QUIRK_NO_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @bpa10x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpa10x_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.bpa10x_data*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.usb_interface* %9, %struct.usb_device_id* %10)
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %99

22:                                               ; preds = %2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.bpa10x_data* @kzalloc(i32 24, i32 %23)
  store %struct.bpa10x_data* %24, %struct.bpa10x_data** %6, align 8
  %25 = load %struct.bpa10x_data*, %struct.bpa10x_data** %6, align 8
  %26 = icmp ne %struct.bpa10x_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %99

30:                                               ; preds = %22
  %31 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %32 = call i32 @interface_to_usbdev(%struct.usb_interface* %31)
  %33 = load %struct.bpa10x_data*, %struct.bpa10x_data** %6, align 8
  %34 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.bpa10x_data*, %struct.bpa10x_data** %6, align 8
  %36 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %35, i32 0, i32 2
  %37 = call i32 @init_usb_anchor(i32* %36)
  %38 = load %struct.bpa10x_data*, %struct.bpa10x_data** %6, align 8
  %39 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %38, i32 0, i32 1
  %40 = call i32 @init_usb_anchor(i32* %39)
  %41 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %41, %struct.hci_dev** %7, align 8
  %42 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %43 = icmp ne %struct.hci_dev* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %30
  %45 = load %struct.bpa10x_data*, %struct.bpa10x_data** %6, align 8
  %46 = call i32 @kfree(%struct.bpa10x_data* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %99

49:                                               ; preds = %30
  %50 = load i32, i32* @HCI_USB, align 4
  %51 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %52 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 8
  %53 = load %struct.bpa10x_data*, %struct.bpa10x_data** %6, align 8
  %54 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %55 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %54, i32 0, i32 7
  store %struct.bpa10x_data* %53, %struct.bpa10x_data** %55, align 8
  %56 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %57 = load %struct.bpa10x_data*, %struct.bpa10x_data** %6, align 8
  %58 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %57, i32 0, i32 0
  store %struct.hci_dev* %56, %struct.hci_dev** %58, align 8
  %59 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %60 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %61 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %60, i32 0, i32 0
  %62 = call i32 @SET_HCIDEV_DEV(%struct.hci_dev* %59, i32* %61)
  %63 = load i32, i32* @bpa10x_open, align 4
  %64 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %65 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @bpa10x_close, align 4
  %67 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %68 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @bpa10x_flush, align 4
  %70 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %71 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @bpa10x_send_frame, align 4
  %73 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %74 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @bpa10x_destruct, align 4
  %76 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %77 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @THIS_MODULE, align 4
  %79 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %80 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @HCI_QUIRK_NO_RESET, align 4
  %82 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %83 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %82, i32 0, i32 0
  %84 = call i32 @set_bit(i32 %81, i32* %83)
  %85 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %86 = call i32 @hci_register_dev(%struct.hci_dev* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %49
  %90 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %91 = call i32 @hci_free_dev(%struct.hci_dev* %90)
  %92 = load %struct.bpa10x_data*, %struct.bpa10x_data** %6, align 8
  %93 = call i32 @kfree(%struct.bpa10x_data* %92)
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %99

95:                                               ; preds = %49
  %96 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %97 = load %struct.bpa10x_data*, %struct.bpa10x_data** %6, align 8
  %98 = call i32 @usb_set_intfdata(%struct.usb_interface* %96, %struct.bpa10x_data* %97)
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %95, %89, %44, %27, %19
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @BT_DBG(i8*, %struct.usb_interface*, %struct.usb_device_id*) #1

declare dso_local %struct.bpa10x_data* @kzalloc(i32, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @kfree(%struct.bpa10x_data*) #1

declare dso_local i32 @SET_HCIDEV_DEV(%struct.hci_dev*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.bpa10x_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
