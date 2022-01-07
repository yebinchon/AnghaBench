; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_get_config_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_get_config_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.usb_device = type { i32 }

@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HSO_PORT_DIAG = common dso_local global i32 0, align 4
@HSO_PORT_GPS = common dso_local global i32 0, align 4
@HSO_PORT_GPS_CONTROL = common dso_local global i32 0, align 4
@HSO_PORT_APP = common dso_local global i32 0, align 4
@HSO_PORT_APP2 = common dso_local global i32 0, align 4
@HSO_PORT_CONTROL = common dso_local global i32 0, align 4
@HSO_PORT_NETWORK = common dso_local global i32 0, align 4
@HSO_PORT_MODEM = common dso_local global i32 0, align 4
@HSO_PORT_MSD = common dso_local global i32 0, align 4
@HSO_PORT_PCSC = common dso_local global i32 0, align 4
@HSO_PORT_VOICE = common dso_local global i32 0, align 4
@HSO_INTF_BULK = common dso_local global i32 0, align 4
@HSO_INFO_CRC_BUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @hso_get_config_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_get_config_data(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca [17 x i32], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %9 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %8)
  store %struct.usb_device* %9, %struct.usb_device** %4, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %18 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %17, i32 0)
  %19 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 0
  %20 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %21 = call i32 @usb_control_msg(%struct.usb_device* %16, i32 %18, i32 134, i32 192, i32 0, i32 0, i32* %19, i32 17, i32 %20)
  %22 = icmp ne i32 %21, 17
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %72

26:                                               ; preds = %1
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %53 [
    i32 0, label %30
    i32 1, label %31
    i32 2, label %33
    i32 3, label %35
    i32 4, label %37
    i32 5, label %39
    i32 6, label %41
    i32 7, label %43
    i32 8, label %45
    i32 9, label %47
    i32 10, label %49
    i32 11, label %51
  ]

30:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %54

31:                                               ; preds = %26
  %32 = load i32, i32* @HSO_PORT_DIAG, align 4
  store i32 %32, i32* %7, align 4
  br label %54

33:                                               ; preds = %26
  %34 = load i32, i32* @HSO_PORT_GPS, align 4
  store i32 %34, i32* %7, align 4
  br label %54

35:                                               ; preds = %26
  %36 = load i32, i32* @HSO_PORT_GPS_CONTROL, align 4
  store i32 %36, i32* %7, align 4
  br label %54

37:                                               ; preds = %26
  %38 = load i32, i32* @HSO_PORT_APP, align 4
  store i32 %38, i32* %7, align 4
  br label %54

39:                                               ; preds = %26
  %40 = load i32, i32* @HSO_PORT_APP2, align 4
  store i32 %40, i32* %7, align 4
  br label %54

41:                                               ; preds = %26
  %42 = load i32, i32* @HSO_PORT_CONTROL, align 4
  store i32 %42, i32* %7, align 4
  br label %54

43:                                               ; preds = %26
  %44 = load i32, i32* @HSO_PORT_NETWORK, align 4
  store i32 %44, i32* %7, align 4
  br label %54

45:                                               ; preds = %26
  %46 = load i32, i32* @HSO_PORT_MODEM, align 4
  store i32 %46, i32* %7, align 4
  br label %54

47:                                               ; preds = %26
  %48 = load i32, i32* @HSO_PORT_MSD, align 4
  store i32 %48, i32* %7, align 4
  br label %54

49:                                               ; preds = %26
  %50 = load i32, i32* @HSO_PORT_PCSC, align 4
  store i32 %50, i32* %7, align 4
  br label %54

51:                                               ; preds = %26
  %52 = load i32, i32* @HSO_PORT_VOICE, align 4
  store i32 %52, i32* %7, align 4
  br label %54

53:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %30
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @HSO_INTF_BULK, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %57, %54
  %62 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 16
  %63 = load i32, i32* %62, align 16
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @HSO_INFO_CRC_BUG, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %23
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
