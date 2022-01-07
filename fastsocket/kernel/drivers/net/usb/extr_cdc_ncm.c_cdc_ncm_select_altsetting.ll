; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_select_altsetting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_select_altsetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.usb_interface = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.usb_host_interface = type { i32 }

@prefer_mbim = common dso_local global i64 0, align 8
@CDC_NCM_COMM_ALTSETTING_MBIM = common dso_local global i32 0, align 4
@CDC_NCM_DATA_ALTSETTING_MBIM = common dso_local global i32 0, align 4
@CDC_NCM_DATA_ALTSETTING_NCM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdc_ncm_select_altsetting(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.usb_host_interface*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %7 = load i64, i64* @prefer_mbim, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %40

14:                                               ; preds = %9
  %15 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %16 = load i32, i32* @CDC_NCM_COMM_ALTSETTING_MBIM, align 4
  %17 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface* %15, i32 %16)
  store %struct.usb_host_interface* %17, %struct.usb_host_interface** %6, align 8
  %18 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %19 = icmp ne %struct.usb_host_interface* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %14
  %21 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %22 = call i64 @cdc_ncm_comm_intf_is_mbim(%struct.usb_host_interface* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %26 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %29 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CDC_NCM_COMM_ALTSETTING_MBIM, align 4
  %35 = call i32 @usb_set_interface(i32 %27, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %24
  %38 = load i32, i32* @CDC_NCM_DATA_ALTSETTING_MBIM, align 4
  store i32 %38, i32* %3, align 4
  br label %42

39:                                               ; preds = %24, %20, %14
  br label %40

40:                                               ; preds = %39, %9, %2
  %41 = load i32, i32* @CDC_NCM_DATA_ALTSETTING_NCM, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface*, i32) #1

declare dso_local i64 @cdc_ncm_comm_intf_is_mbim(%struct.usb_host_interface*) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
